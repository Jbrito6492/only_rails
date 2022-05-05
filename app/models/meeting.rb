class Meeting < ApplicationRecord
  before_create do
    opentok = OpenTok::OpenTok.new(Rails.application.credentials.vonage_api[:key],
                                   Rails.application.credentials.vonage_api[:secret])
    self.vonage_session_id = opentok.create_session.session_id
  end
end
