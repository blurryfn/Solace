class ProfileController < ApplicationController
    def client_operation
      account_id = params[:accountId]
      operation = params[:operation]
      
      Rails.logger.info "Account ID: #{account_id}, Operation: #{operation}"
  
      render json: { status: "OK", code: 200 }, status: :ok
    end
  end
  