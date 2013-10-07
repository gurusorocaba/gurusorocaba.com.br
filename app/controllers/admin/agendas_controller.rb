class Admin::AgendasController < Admin::AdminController

  def index
    @agendas = Agenda.all.desc(:date)

    respond_to do |format|
      format.html
    end
  end

  def new
    @agenda = Agenda.new

    respond_to do |format|
      format.html
    end
  end

  def edit
    @agenda = Agenda.find(params[:id])
  end

  def create
    @agenda = Agenda.new(params[:agenda])

    respond_to do |format|
      if @agenda.save
        format.html { redirect_to edit_admin_agenda_path(@agenda), notice: 'Agenda was successfully created.' }
      else
        format.html { render "new" }
      end
    end
  end

  def update
    @agenda = Agenda.find(params[:id])

    respond_to do |format|
      if @agenda.update_attributes(params[:agenda])
        format.html { redirect_to edit_admin_agenda_path(@agenda), notice: 'Agenda was successfully updated.' }
      else
        format.html { render "edit" }
      end
    end
  end

  def destroy
    @agenda = Agenda.find(params[:id])
    @agenda.destroy

    respond_to do |format|
      format.html { redirect_to admin_agendas_url }
    end
  end
end
