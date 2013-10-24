require 'spec_helper'

describe IntroductionPagesController do

  describe "GET 'officea'" do
    it "returns http success" do
      get 'officea'
      response.should be_success
    end
  end

  describe "GET 'officeb'" do
    it "returns http success" do
      get 'officeb'
      response.should be_success
    end
  end

  describe "GET 'basea'" do
    it "returns http success" do
      get 'basea'
      response.should be_success
    end
  end

  describe "GET 'baseb'" do
    it "returns http success" do
      get 'baseb'
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
