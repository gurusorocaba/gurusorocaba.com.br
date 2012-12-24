class AgendasController < ApplicationController
  def show
  	@agenda = Agenda.find(params[:id])
  end

  def past
    @agendas = Agenda.past
  end

end
