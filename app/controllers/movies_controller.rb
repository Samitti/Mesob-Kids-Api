class MoviesController < ApplicationController
    def index
        @movies = Movie.all 
        render json: @movies
    end

    def show
        @movie = Movie.find(params[:id])
        render json: @movie
    end 

    def create
        @movie = Movie.create(
            title: params[:title],
            thumb_nail: params[:thumb_nail],
            video_url: params[:video_url]
        )
        render json: @movie
    end 

    
    def update
        @movie = Movie.find(params[:id])
        @movie.update(
            title: params[:title],
            thumb_nail: params[:thumb_nail],
            video_url: params[:video_url]
        )
        render json: @movie
    end 

    def destroy
        @movies = Movie.all 
        @movie = Movie.find(params[:id])
        @movie.destroy
        render json: @movies
    end 
end
