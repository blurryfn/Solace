class DataRouterController < ApplicationController
    def public_data
      render json: { status: "OK", code: 200 }, status: :ok
    end
  end
  