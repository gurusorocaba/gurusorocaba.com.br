class IndexController < ApplicationController
  def index
    @agendas = Agenda.where(:date.gte => Date.today).desc(:date)
  end

end
