class LinebotController < ApplicationController

  protect_from_forgery except: :sort

  def callback
    'OK'
  end
end
