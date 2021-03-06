class AdminController < ApplicationController
  def index
    authenticate_user!
    @urls = Url.all
    @tags = Tag.all
  end

  def delete_tag
    authenticate_user!
    @url = Url.find(params[:url_id])
    @tag = Tag.find(params[:tag_id])
    @url.tags.delete(@tag)
    redirect_to edit_url_path(@url)
  end
end
