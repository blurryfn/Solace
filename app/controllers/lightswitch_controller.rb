class LightswitchController < ApplicationController
  #  /lightswitch/api/service/fortnite/status
  def fortnite_status
    render json: {
      serviceInstanceId: "fortnite",
      status: "UP",
      message: "Fortnite is online",
      maintenanceUri: nil,
      overrideCatalogIds: ["a7f138b2e51945ffbfdacc1af0541053"],
      allowedActions: [],
      banned: false,
      launcherInfoDTO: {
        appName: "Fortnite",
        catalogItemId: "4fe75bbc5a674f4f9b356b5c90567da5",
        namespace: "fn"
      }
    }, status: :ok
  end

  #  /lightswitch/api/service/bulk/status
  def bulk_status
    render json: [
      {
        serviceInstanceId: "fortnite",
        status: "UP",
        message: "Fortnite is online",
        maintenanceUri: nil,
        overrideCatalogIds: ["a7f138b2e51945ffbfdacc1af0541053"],
        allowedActions: [],
        banned: false,
        launcherInfoDTO: {
          appName: "Fortnite",
          catalogItemId: "4fe75bbc5a674f4f9b356b5c90567da5",
          namespace: "fn"
        }
      }
    ], status: :ok
  end
end