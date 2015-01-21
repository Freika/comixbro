require 'rails_helper'

RSpec.describe "Comixes", :type => :request do
  describe "GET /admin/comixes" do
    it "works! (now write some real specs)" do
      get admin_comixes_path
      expect(response).to have_http_status(200)
    end
  end
end
