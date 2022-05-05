class Meeting < ApplicationRecord
  before create do
    opentok = OpenTok::OpenTok.new Rails.application.credentials.vonage_api.key,
                                   Rails.application.credentials.vonage_api.secret
  end
end
