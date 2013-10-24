require 'spec_helper'

describe ReferencePagesController do

  describe "GET 'office'" do
    it "returns http success" do
      get 'office'
      response.should be_success
    end
  end

  describe "GET 'base'" do
    it "returns http success" do
      get 'base'
      response.should be_success
    end
  end

  describe "GET 'work'" do
    it "returns http success" do
      get 'work'
      response.should be_success
    end
  end

end
