class IndexController < ApplicationController
  def index
    @agendas = Agenda.future
  end
end
