class HomeController < ApplicationController
  def index
    @game = Game.first
  end
end
