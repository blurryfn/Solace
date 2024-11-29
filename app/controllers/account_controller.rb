class AccountController < ApplicationController
    def external_auths
      render json: [], status: :ok
    end
  
    def public_account
      render json: {
        id: "fortnite",
        displayName: "fortnite",
        externalAuth: {}
      }, status: :ok
    end
  
    def account_details
      render json: {
        id: "fortnite",
        displayName: "fortnite",
        name: "fortnite",
        email: "fortnite@ruby.dev",
        failedLoginAttempts: 0,
        lastLogin: "Timestamp",
        numberOfDisplayNameChanges: 0,  
        ageGroup: "UNKNOWN",
        headless: false,
        country: "US",
        lastName: "User",
        links: {},
        preferredLanguage: "en",
        canUpdateDisplayName: false,
        tfaEnabled: true,
        emailVerified: true,
        minorVerified: true,
        minorExpected: true,
        minorStatus: "UNKNOWN"
      }, status: :ok
    end
  end
  