class BattleController < ApplicationController
  def combat
    #@entity = Entity.find(params[:id])
    @entity = Entity.find(1)
    
  end
end
