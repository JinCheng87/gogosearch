class TagsController < ApplicationController
  def show
    authenticate_user!
    
    @tag = Tag.find(params[:id])
  end
end
