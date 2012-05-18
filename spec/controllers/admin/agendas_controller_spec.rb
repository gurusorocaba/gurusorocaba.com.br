require 'spec_helper'

describe Admin::AgendasController do

  login_administrator
  
  def valid_attributes
    FactoryGirl.attributes_for(:agenda)
  end

  describe "GET index" do
    it "assigns all agendas as @agendas" do
      agenda = Agenda.create! valid_attributes
      get :index
      assigns(:agendas).should eq([agenda])
    end
  end

  describe "GET new" do
    it "assigns a new agenda as @agenda" do
      get :new
      assigns(:agenda).should be_a_new(Agenda)
    end
  end

  describe "GET edit" do
    it "assigns the requested agenda as @agenda" do
      agenda = Agenda.create! valid_attributes
      get :edit, :id => agenda.to_param
      assigns(:agenda).should eq(agenda)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Agenda" do
        expect {
          post :create, :agenda => valid_attributes
        }.to change(Agenda, :count).by(1)
      end

      it "assigns a newly created agenda as @agenda" do
        post :create, :agenda => valid_attributes
        assigns(:agenda).should be_a(Agenda)
        assigns(:agenda).should be_persisted
      end

      it "redirects to the created agenda" do
        post :create, :agenda => valid_attributes
        response.should redirect_to(edit_admin_agenda_path(Agenda.last))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved agenda as @agenda" do
        # Trigger the behavior that occurs when invalid params are submitted
        Agenda.any_instance.stub(:save).and_return(false)
        post :create, :agenda => {}
        assigns(:agenda).should be_a_new(Agenda)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Agenda.any_instance.stub(:save).and_return(false)
        post :create, :agenda => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested agenda" do
        agenda = Agenda.create! valid_attributes
        # Assuming there are no other agendas in the database, this
        # specifies that the Agenda created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Agenda.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => agenda.to_param, :agenda => {'these' => 'params'}
      end

      it "assigns the requested agenda as @agenda" do
        agenda = Agenda.create! valid_attributes
        put :update, :id => agenda.to_param, :agenda => valid_attributes
        assigns(:agenda).should eq(agenda)
      end

      it "redirects to the agenda" do
        agenda = Agenda.create! valid_attributes
        put :update, :id => agenda.to_param, :agenda => valid_attributes
        response.should redirect_to(edit_admin_agenda_path(agenda))
      end
    end

    describe "with invalid params" do
      it "assigns the agenda as @agenda" do
        agenda = Agenda.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Agenda.any_instance.stub(:save).and_return(false)
        put :update, :id => agenda.to_param, :agenda => {}
        assigns(:agenda).should eq(agenda)
      end

      it "re-renders the 'edit' template" do
        agenda = Agenda.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Agenda.any_instance.stub(:save).and_return(false)
        put :update, :id => agenda.to_param, :agenda => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested agenda" do
      agenda = Agenda.create! valid_attributes
      expect {
        delete :destroy, :id => agenda.to_param
      }.to change(Agenda, :count).by(-1)
    end

    it "redirects to the agendas list" do
      agenda = Agenda.create! valid_attributes
      delete :destroy, :id => agenda.to_param
      response.should redirect_to(admin_agendas_url)
    end
  end

end
