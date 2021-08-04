class Content < ApplicationRecord
  validates :page_name, uniqueness: true
  has_attached_file :image, styles: { large: "600x600>", medium: "350x350>", square: "350x350#", thumb: "100x100>" }
  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

  def image_file
    if image.present?
      {
        original: ApplicationController.helpers.asset_url(image.url(:original)),
        thumb: ApplicationController.helpers.asset_url(image.url(:thumb)),
        medium: ApplicationController.helpers.asset_url(image.url(:medium)),
        square: ApplicationController.helpers.asset_url(image.url(:square)),
        large: ApplicationController.helpers.asset_url(image.url(:large)),
      }
    end
  end

  def image_attributes=(attributes)
    image.clear if has_destroy_flag?(attributes) && !image.dirty?
  end

  def display_art
    all_art.map do |art|
      json_generator art
    end
  end

  def art_randomizer
    all_art.sample(5).map do |art|
      json_generator art
    end
  end

  private

  def all_art
    Content.where(content_type: "art")
  end

  def json_generator(art)
    {
      page_name: art.page_name,
      title: art.title,
      image_file: art.image_file,
    }
  end
end
