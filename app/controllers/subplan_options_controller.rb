class SubplanOptionsController < ApplicationController

    def index
        @subplanOptions = SubplanOption.all
        render json: @subplanOptions
    end

    def show
        if SubplanOption.find_by(id: params[:id])
            @subplanOption = SubplanOption.find_by(id: params[:id])
            render json: @subplanOption
        else 
            @subplanOptions = SubplanOption.where(grade: params[:id])
            render json: @subplanOptions
        end
    end

    def create
        @subplanOption = SubplanOption.create(
            title: params[:title],
            grade: params[:grade],
            overview: params[:overview],
            link: params[:link],
        )
        render json: @subplanOption
    end

    def destroy
        @subplanOption = SubplanOption.where(grade: params[:id])
        @subplanOption.destroy
        render json: 'Subplan has been destroyed'
    end

end
