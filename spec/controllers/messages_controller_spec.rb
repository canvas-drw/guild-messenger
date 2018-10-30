require 'rails_helper'

RSpec.describe MessagesController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do
    it "creates a new message" do
      expect {
        post :create, params: { message: attributes_for(:message) }
      }.to change(Message, :count).by(1)
    end
  end
end
