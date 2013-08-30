require 'spec_helper'

describe TechnologiesController do
  let(:valid_attributes) { { "name" => "MyString" } }
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all technologies as @technologies" do
      technology = Technology.create! valid_attributes
      get :index, {}, valid_session
      assigns(:technologies).should eq([technology])
    end
  end

  describe "GET show" do
    it "assigns the requested technology as @technology" do
      technology = Technology.create! valid_attributes
      get :show, {:id => technology.to_param}, valid_session
      assigns(:technology).should eq(technology)
    end
  end

  describe "GET new" do
    it "assigns a new technology as @technology" do
      get :new, {}, valid_session
      assigns(:technology).should be_a_new(Technology)
    end
  end

  describe "GET edit" do
    it "assigns the requested technology as @technology" do
      technology = Technology.create! valid_attributes
      get :edit, {:id => technology.to_param}, valid_session
      assigns(:technology).should eq(technology)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Technology" do
        expect {
          post :create, {:technology => valid_attributes}, valid_session
        }.to change(Technology, :count).by(1)
      end

      it "assigns a newly created technology as @technology" do
        post :create, {:technology => valid_attributes}, valid_session
        assigns(:technology).should be_a(Technology)
        assigns(:technology).should be_persisted
      end

      it "redirects to the created technology" do
        post :create, {:technology => valid_attributes}, valid_session
        response.should redirect_to(Technology.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved technology as @technology" do
        # Trigger the behavior that occurs when invalid params are submitted
        Technology.any_instance.stub(:save).and_return(false)
        post :create, {:technology => { "name" => "invalid value" }}, valid_session
        assigns(:technology).should be_a_new(Technology)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Technology.any_instance.stub(:save).and_return(false)
        post :create, {:technology => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested technology" do
        technology = Technology.create! valid_attributes
        # Assuming there are no other technologies in the database, this
        # specifies that the Technology created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Technology.any_instance.should_receive(:update).with({ "name" => "MyString" })
        put :update, {:id => technology.to_param, :technology => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested technology as @technology" do
        technology = Technology.create! valid_attributes
        put :update, {:id => technology.to_param, :technology => valid_attributes}, valid_session
        assigns(:technology).should eq(technology)
      end

      it "redirects to the technology" do
        technology = Technology.create! valid_attributes
        put :update, {:id => technology.to_param, :technology => valid_attributes}, valid_session
        response.should redirect_to(technology)
      end
    end

    describe "with invalid params" do
      it "assigns the technology as @technology" do
        technology = Technology.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Technology.any_instance.stub(:save).and_return(false)
        put :update, {:id => technology.to_param, :technology => { "name" => "invalid value" }}, valid_session
        assigns(:technology).should eq(technology)
      end

      it "re-renders the 'edit' template" do
        technology = Technology.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Technology.any_instance.stub(:save).and_return(false)
        put :update, {:id => technology.to_param, :technology => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested technology" do
      technology = Technology.create! valid_attributes
      expect {
        delete :destroy, {:id => technology.to_param}, valid_session
      }.to change(Technology, :count).by(-1)
    end

    it "redirects to the technologies list" do
      technology = Technology.create! valid_attributes
      delete :destroy, {:id => technology.to_param}, valid_session
      response.should redirect_to(technologies_url)
    end
  end

end
