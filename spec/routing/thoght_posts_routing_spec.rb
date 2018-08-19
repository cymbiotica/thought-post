require "rails_helper"

RSpec.describe ThoghtPostsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/thoght_posts").to route_to("thoght_posts#index")
    end


    it "routes to #show" do
      expect(:get => "/thoght_posts/1").to route_to("thoght_posts#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/thoght_posts").to route_to("thoght_posts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/thoght_posts/1").to route_to("thoght_posts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/thoght_posts/1").to route_to("thoght_posts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/thoght_posts/1").to route_to("thoght_posts#destroy", :id => "1")
    end

  end
end
