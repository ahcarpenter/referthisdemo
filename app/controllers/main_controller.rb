class MainController < ApplicationController
  def index
    ReferThis.url(params[:referral], 1, request.base_url, 'Drew') if !params[:referral].nil?
    @email_clicked_through_rate = ReferThis.clicked_through_rate(true, true)['email'].to_s.truncate(8)
    @sms_clicked_through_rate = ReferThis.clicked_through_rate(true, true)['sms'].to_s.truncate(8)
    @overall_clicked_through_rate = ReferThis.clicked_through_rate(true, true)['overall'].to_s.truncate(8)
  end
end