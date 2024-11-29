class FortniteController < ApplicationController
    def try_play_on_platform
      response.headers['Content-Type'] = 'text/plain'
      render plain: "true", status: :ok
    end
  
    def enabled_features
      render json: [], status: :ok
    end
  
    def privacy
      render json: [], status: :ok
    end
  end
  
  class FortniteController < ApplicationController
    def version_check
      render json: { type: "NO_UPDATE" }, status: :ok
    end
  
    def version_check_with_version
      render json: { type: "NO_UPDATE" }, status: :ok
    end
  
    def timeline
      render json: {
        channels: {
          "client-matchmaking": {
            states: [],
            cacheExpire: "9999-01-01T00:00:00.000Z"
          },
          "client-events": {
            states: [{
              validFrom: "0001-01-01T00:00:00.000Z",
              activeEvents: [],
              state: {
                activeStorefronts: [],
                eventNamedWeights: {},
                seasonNumber: 6.00,
                seasonTemplateId: "AthenaSeason:athenaseason6",
                matchXpBonusPoints: 0,
                seasonBegin: "2020-01-01T00:00:00Z",
                seasonEnd: "9999-01-01T00:00:00Z",
                seasonDisplayedEnd: "9999-01-01T00:00:00Z",
                weeklyStoreEnd: "9999-01-01T00:00:00Z",
                stwEventStoreEnd: "9999-01-01T00:00:00.000Z",
                stwWeeklyStoreEnd: "9999-01-01T00:00:00.000Z",
                sectionStoreEnds: {
                  Featured: "9999-01-01T00:00:00.000Z"
                },
                dailyStoreEnd: "9999-01-01T00:00:00Z"
              }
            }],
            cacheExpire: "9999-01-01T00:00:00.000Z"
          }
        },
        eventsTimeOffsetHrs: 0,
        cacheIntervalMins: 10,
        currentTime: Time.now.utc.iso8601
      }, status: :ok
    end
  end