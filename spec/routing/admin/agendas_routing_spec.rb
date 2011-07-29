require "spec_helper"

describe Admin::AgendasController do
  describe "routing" do

    it "routes to #index" do
      get("/admin/agenda").should route_to("admin/agendas#index")
    end

    it "routes to #new" do
      get("/admin/agenda/new").should route_to("admin/agendas#new")
    end

    it "routes to #show" do
      get("/admin/agenda/1").should route_to("admin/agendas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/admin/agenda/1/edit").should route_to("admin/agendas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/admin/agenda").should route_to("admin/agendas#create")
    end

    it "routes to #update" do
      put("/admin/agenda/1").should route_to("admin/agendas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/admin/agenda/1").should route_to("admin/agendas#destroy", :id => "1")
    end

  end
end
