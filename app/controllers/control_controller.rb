class ControlController < ApplicationController
  def index
    @game = Game.first
  end

  def update
    # number, reset, or doubles
    value = params[:value]

    game = Game.first
    game.bank = UpdateBank.(value, game.bank)
    game.turns_occurred = UpdateTurns.(value, game.turns_occurred)
    game.save
  end
end
