class HomeController < ApplicationController
  def index
    # do things in here
  end

  def search
    tag = Tag.find_by(name: params[:tag])
    if tag
      tag.update_attributes(frequency: tag.frequency+1)
    else
      tag = Tag.create(name: params[:tag], frequency: 1)
    end
    redirect_to search_result_path(tag_id: tag.id)
  end

  def search_result
    @tag = Tag.find(params[:tag_id])
    @urls = @tag.urls
  end

end
