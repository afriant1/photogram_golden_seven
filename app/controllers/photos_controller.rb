class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @photo = Photo.find(params["id"])
  end

  def new_form
    render("new_form.html.erb")
  end

  def create_row
    p = Photo.new
    p.source = params["the_source"]
    p.caption = params["the_caption"]
    p.save
    redirect_to("http://localhost:3000/photos")
  end

  def destroy
    @photo = Photo.find(params["id"])
    @photo.destroy
    redirect_to("http://localhost:3000/photos")
  end

  def edit_form
    @photo = Photo.find(params["id"])
    render("edit_form.html.erb")
  end

  def update_row
      p = Photo.find(params["id"])
      p.source = params["the_source"]
      p.caption = params["the_caption"]
      p.save
      redirect_to("http://localhost:3000/photos")
  end


end
