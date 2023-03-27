class HeroPowersController < ApplicationController
   
    def create
        hero_power = HeroPower.create!(new_params)
        render json: hero_power
    end

    private

    def new_params
        params.permit(:strength, :power_id, :hero_id)
    end
end
