class UserSettingsController < ApplicationController
    def update
      render json: { status: "OK", code: 200 }, status: :ok
    end
  end
  