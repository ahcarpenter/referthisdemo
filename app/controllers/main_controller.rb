class MainController < ApplicationController
  def index
    ReferThis.url(params[:referral], 1, request.base_url, 'Drew') if !params[:referral].nil?
    @email_clicked_through_rate = ReferThis.clicked_through_rate(true, true)['email']
    @sms_clicked_through_rate = ReferThis.clicked_through_rate(true, true)['sms']
    @overall_clicked_through_rate = ReferThis.clicked_through_rate(true, true)['overall']
  end
end