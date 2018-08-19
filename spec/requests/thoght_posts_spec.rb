require 'rails_helper'

RSpec.describe "ThoghtPosts", type: :request do
  describe "GET /thoght_posts" do
    it "works! (now write some real specs)" do
      get thoght_posts_path
      expect(response).to have_http_status(200)
    end
  end
end
