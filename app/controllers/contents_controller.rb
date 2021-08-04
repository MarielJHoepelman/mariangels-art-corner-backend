class ContentsController < ApplicationController
  def show
    content = Content.find_by(page_name: params[:page_name])

    render :json => content.to_json(:methods => [:image_file, :display_art, :art_randomizer])
  end
end
