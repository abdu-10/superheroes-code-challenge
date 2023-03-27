class ApplicationController < ActionController::API
    rescue_from ActiveRecord::RecordInvalid, with: :invalid_entry_params



    private

    def invalid_entry_params(invalid)
        render json: {errors: [invalid.record.errors]}, status: :unprocessable_entity
    end
end
