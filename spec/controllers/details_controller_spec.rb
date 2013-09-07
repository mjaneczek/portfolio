require 'spec_helper'

describe DetailsController do
  describe "GET" do
    it "get" do
      expected = { 
        success: true
      }.to_json
      
      get :index, type: "project", id: "1", format: :json

      expect(response.body).to eq expected

    end
  end
end