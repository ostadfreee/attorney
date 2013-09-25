require 'spec_helper'

describe TestPagesController do

  describe "GET 'baseatest'" do
    it "returns http success" do
      get 'baseatest'
      response.should be_success
    end
  end

  describe "GET 'basebtest'" do
    it "returns http success" do
      get 'basebtest'
      response.should be_success
    end
  end

  describe "GET 'officeatest'" do
    it "returns http success" do
      get 'officeatest'
      response.should be_success
    end
  end

  describe "GET 'officebtest'" do
    it "returns http success" do
      get 'officebtest'
      response.should be_success
    end
  end

  describe "GET 'worktest'" do
    it "returns http success" do
      get 'worktest'
      response.should be_success
    end
  end

  describe "GET 'article'" do
    it "returns http success" do
      get 'article'
      response.should be_success
    end
  end

end
