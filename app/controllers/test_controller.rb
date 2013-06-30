class TestController < ApplicationController
  def index

  end

  def save 
  	
	 bytes = ActiveSupport::Base64.decode64(params[:test][:image])
	 img   = Magick::Image.from_blob(bytes).first
	 fmt   = img.format

  end 
end
