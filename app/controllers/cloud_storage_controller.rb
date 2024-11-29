class CloudStorageController < ApplicationController
    def system
      render json: { status: "OK", code: 200 }, status: :ok
    end
  
    def user
      render json: { status: "OK", code: 200 }, status: :ok
    end
  
    def upload_file
      render json: { status: "OK", code: 200 }, status: :ok
    end
  end
  