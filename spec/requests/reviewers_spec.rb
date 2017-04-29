require 'rails_helper'

RSpec.describe "Reviewers", type: :request do
  describe "GET /reviewers" do
    it "works! (now write some real specs)" do
      get reviewers_path
      expect(response).to have_http_status(200)
    end
  end
end
