require "spec_helper"

describe PlatePhotosController do
  describe "routing" do

    it "routes to #index" do
      get("/plate_photos").should route_to("plate_photos#index")
    end

    it "routes to #new" do
      get("/plate_photos/new").should route_to("plate_photos#new")
    end

    it "routes to #show" do
      get("/plate_photos/1").should route_to("plate_photos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/plate_photos/1/edit").should route_to("plate_photos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/plate_photos").should route_to("plate_photos#create")
    end

    it "routes to #update" do
      put("/plate_photos/1").should route_to("plate_photos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/plate_photos/1").should route_to("plate_photos#destroy", :id => "1")
    end

  end
end
