require 'spec_helper'

describe "HelloController" do
  it "should return hello world for /" do
    get '/'
    last_response.body.should == "hello world"
  end

  it "should return goodbye for /bye" do
    get '/bye'
    last_response.body.should == "goodbye"
  end

  it "should return for /hello/:name" do
    get '/hello/jon'
    last_response.body.should == "hello jon"
  end

  it "should return for /hi with a param" do
    get '/hi', :qsname => 'jon'
    last_response.body.should == "hi jon"
  end

  it "should work with post data" do
    post '/goodnight', :name => 'jon'
    last_response.body.should == 'post goodnight jon'
  end

  it "should work with put" do
    put '/goodnight', :name => 'jon'
    last_response.body.should == 'put goodnight jon'
  end

end
