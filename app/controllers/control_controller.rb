class ControlController < ApplicationController
  def index
    @game = Game.first
  end
end
