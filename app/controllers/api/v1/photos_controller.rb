class Api::V1::PhotosController < ApplicationController

    def index
        all_photos = Photo.all
        all_photos_with_url = all_photos.map{|photo| {info: photo, url: photo.photo.service_url}}
        render json: all_photos_with_url
    end

    def user_params
        params.require(:photo).permit(:title, :category, :location, :year, :photo)
    end
end
