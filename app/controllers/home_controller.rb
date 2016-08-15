class HomeController < ApplicationController
  def index
    @button_enabled = Features.enabled?["feature"]
  end
end
