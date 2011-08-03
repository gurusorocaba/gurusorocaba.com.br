class Admin::AgendasController < Admin::AdminController

  def index
    @agendas = Agenda.all.desc(:date)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @agendas }
    end
  end

  def new
    @agenda = Agenda.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @agenda }
    end
  end

  def edit
    @agenda = Agenda.find_by_slug(params[:id])
  end

  def create
    @agenda = Agenda.new(params[:agenda])

    respond_to do |format|
      if @agenda.save
        format.html { redirect_to edit_admin_agenda_path(@agenda), notice: 'Agenda was successfully created.' }
        format.json { render json: @agenda, status: :created, location: @agenda }
      else
        format.html { render action: "new" }
        format.json { render json: @agenda.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @agenda = Agenda.find_by_slug(params[:id])

    respond_to do |format|
      if @agenda.update_attributes(params[:agenda])
        format.html { redirect_to edit_admin_agenda_path(@agenda), notice: 'Agenda was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @agenda.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @agenda = Agenda.find_by_slug(params[:id])
    @agenda.destroy

    respond_to do |format|
      format.html { redirect_to admin_agendas_url }
      format.json { head :ok }
    end
  end
end