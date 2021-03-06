class AddAttachmentImageToContents < ActiveRecord::Migration[6.0]
  def self.up
    change_table :contents do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :contents, :image
  end
end
