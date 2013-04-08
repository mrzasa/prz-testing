require 'spec_helper'

describe StudentsController do
  describe "create" do
    it "saves a new student" do
      expect {
        post :create, student: { first_name: "Stefan", last_name: "Natory" }
      }.to change{Student.count}
    end
  end


  describe "index" do
    it "is success" do
      get :index
      expect(response.code).to eq('200')
    end

    it "sets student data" do
      get :index
      expect(assigns[:students]).not_to be_nil
    end
  end
end
