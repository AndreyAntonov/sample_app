require 'spec_helper'

describe PagesController do
  render_views

  before(:each) do
    @base_title = "Ruby on Rails Tutorial Sample App | "
  end

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    it "should have the right title" do
      get 'home'
      response.should have_selector("title",
                                     :content => @base_title + "Home")
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
    it "should have the right title" do
      get 'contact'
      response.should have_selector("title",
                                     :content => @base_title + "Contact")
    end
  end

  describe "static page 'About'" do
    it "muss verfügbar sein" do
      get 'about'
      #response.status.should == 200
      response.should be_success
    end
    it "muss richtige title haben" do
      get 'about'
      response.should have_selector("title",
                                     :content => @base_title + "About")
    end
  end

  describe "GET 'help'" do
    it "should be successful" do
      get 'help'
      response.should be_success
    end
    it "should have the right title" do
      get 'help'
      response.should have_selector("title",
                                     :content => @base_title + "Help")
    end
  end


end
