class HerosController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

    def index
      heros = Hero.all
      render json: heros
    end

    def show
      hero = Hero.find(params[:id])
      
      render json: hero, include: :powers
      
    end
    private
    def render_not_found
        render json: { error: 'Hero not found' }, status: :not_found
    end


end
