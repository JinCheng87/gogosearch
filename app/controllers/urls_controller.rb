class UrlsController < ApplicationController
  def new
    @url = Url.new
  end

  def create
    @url = Url.new(url_params)
    if @url.save
      redirect_to urls_path, notice: 'URL created successfully'
    else
      render :new
    end
  end

  def index
    @urls = Url.all
    @tags = Tag.all
  end

  def edit
   @url = Url.find(params[:id])
 end

 def update
  @url = Url.find(params[:id])
  if @url.update_attributes(url_params)
    redirect_to urls_path, notice: 'URL updated successfully'
  else
    render :edit
  end
end

def destroy
  @url = Url.find(params[:id])
  @url.destroy
  redirect_to urls_path, notice: 'URL deleted successfully'
end

def add_tag
  @url = Url.find(params[:url_id])

  if !(tag = Tag.find_by(name:params[:name]))
    @url.tags.push(Tag.create(name: params[:name]))

  elsif tag = Tag.find_by(name:params[:name])
    if !@url.tags.include?(tag)
      @url.tags.push(tag)
    end
  end
  redirect_to edit_url_path(@url)
end




private

def url_params
  params.require(:url).permit(:title, :address)
end


end
