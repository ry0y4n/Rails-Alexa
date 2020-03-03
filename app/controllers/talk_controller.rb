class TalkController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    request = AlexaRubykit::build_request(params)
    response = AlexaRubykit::Response.new
    response.add_speech("あなたの名前は#{request.slots[:MyName][:value]}ですね")
    render json: response.build_response
  end
end
