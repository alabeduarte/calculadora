require 'rails_helper'

RSpec.describe CalculadoraMachineController, :type => :controller do

  describe "GET #new" do
    it "responds successfully with an HTTP 200 status code" do
      get :new
      expect(response).to be_success
      expect(response.status).to eq(200)
    end

    it "renders the index template" do
      get :new
      expect(response).to render_template("new")
    end
  end

  describe "POST #create" do
    it "should assign created attendee" do
      post :create, calculadora_machine: { a: 2, b: 4 }

      expect(response).to redirect_to "/calculadora_machine/index"
      expect(assigns :result).to eq 6
    end
  end

end
