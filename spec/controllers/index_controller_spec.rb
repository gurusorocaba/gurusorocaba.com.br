require 'spec_helper'

describe IndexController do
  
  def agenda_attributes
    Factory.attributes_for(:agenda)
  end

  describe "GET 'index'" do
    it "should be successful" do
      agenda = Agenda.create! agenda_attributes
      get :index
      assigns(:agendas).should eq([agenda])
      response.should be_success
    end
  end

end