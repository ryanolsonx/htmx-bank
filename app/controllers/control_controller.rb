class ControlController < ApplicationController
  def index
    @game = Game.first
  end

  def update
    game = Game.first
    value = params[:value]
    if value == "reset"
      game.bank = 0
    elsif value == "doubles"
      game.bank = game.bank * 2
    else
      value = value.to_i
      game.bank = game.bank + value
    end
    game.save
  end
end
