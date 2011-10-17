require 'spec_helper'

describe AgendasController do

	def valid_attributes
    Factory.attributes_for(:agenda)
  end

  describe "GET 'show'" do
    it "assigns the requested agenda as @agenda" do
      agenda = Agenda.create! valid_attributes
      get :show, :id => agenda.to_param
      assigns(:agenda).should eq(agenda)
      response.should be_success
    end
  end

end
