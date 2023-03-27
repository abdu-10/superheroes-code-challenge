class PowersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

    def index
        powers = Power.all
        render json: powers
    end

    def show
        powers = Power.find(params[:id])
        render json: powers
        
    end

    def update
        power = Power.find(params[:id])
        
            power.update!(power_params)
            render json: power
       
    end
    private
    def power_params
        params.permit(:description)
    end
    def render_not_found
        render json: { error: 'Power not found' }, status: :not_found
    end
end
