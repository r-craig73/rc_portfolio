require 'rails_helper'

RSpec.describe InterestsController, :type => :controller do
  describe "GET interests#index" do
    it "responds successfully with an HTTP 200 status code" do
      expect(response).to be_successful
      expect(response).to have_http_status(200)
    end

    it "adds a new interest when admin enters a new interest" do
      # save_and_open page
      get :new


    end


  end
end
