class OauthController < ApplicationController
    def token
      render json: {
        access_token: "eg1~fortnite",
        expires_in: 28800,
        expires_at: "9999-12-02T01:12:01.100Z",
        token_type: "bearer",
        refresh_token: "eg1~fortnite",
        refresh_expires: 86400,
        refresh_expires_at: "9999-12-02T01:12:01.100Z",
        account_id: "fornite",
        client_id: "fornite",
        internal_client: true,
        client_service: "fortnite",
        displayName: "fornite",
        app: "fortnite",
        in_app_id: "fornite",
        device_id: "fornite"
      }, status: :ok
    end
  
    def verify
      render json: {
        access_token: "eg1~fortnite",
        expires_in: 28800,
        expires_at: "9999-12-02T01:12:01.100Z",
        token_type: "bearer",
        refresh_token: "eg1~fortnite",
        refresh_expires: 86400,
        refresh_expires_at: "9999-12-02T01:12:01.100Z",
        account_id: "fornite",
        client_id: "fornite",
        internal_client: true,
        client_service: "fortnite",
        displayName: "fornite",
        app: "fortnite",
        in_app_id: "fornite",
        device_id: "fornite"
      }, status: :ok
    end
  
    def kill_session
      render json: { status: "OK", code: 200 }, status: :ok
    end
  
    def kill_specific_session
      render json: { status: "OK", code: 200 }, status: :ok
    end
  end
  