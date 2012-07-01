class MainController < ApplicationController
  # require 'active_record'

  def index
    # Referral.generate_referral(params[:referral], 1) if !params[:referral].nil?
    # ReferThis.setup
    # puts __FILE__
    # ReferThis.setup
    # puts request.url
    ReferThis.url(params[:referral], 1, request.base_url, 'Drew') if !params[:referral].nil?
  end
end