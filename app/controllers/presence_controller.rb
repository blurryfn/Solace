class PresenceController < ApplicationController
    def subscriptions
      render json: [], status: :ok
    end
  end
  