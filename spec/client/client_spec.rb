require File.expand_path('../../spec_helper', __FILE__)

describe Soundcloud::Client do
  context "Client" do
    before(:all) do
      @api_key = "734a173874da8c420aeb59fd03623454"
      @client = Soundcloud::Client.new(@api_key)
    end

    it ".initialize" do
      puts "TESTING: .api_key"
      puts "TESTING: .inspect"
      puts @client.api_key
      puts @client.inspect
    end
  
    it ".groups" do
      puts "TESTING: .groups"
      data = @client.groups(:q => 'dubstep')
      puts data.inspect
    end
    
    it ".playlists" do
      puts "TESTING: .playlists"
      data = @client.playlists(:q => 'dubstep')
      puts data.inspect
    end
    
    it ".tracks" do
      puts "TESTING: .tracks"
      data = @client.tracks(:q => 'A new world')
      puts data.inspect
    end
    
    it ".users" do
      puts "TESTING: .users"
      data = @client.users(:q => 'skrillex')
      puts data.inspect
    end
  end
end
