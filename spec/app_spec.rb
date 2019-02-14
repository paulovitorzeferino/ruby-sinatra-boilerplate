require_relative 'spec_helper.rb'
require_relative '../app.rb'

RSpec.describe App  do

  describe 'GET /' do 
    before(:each) do 
      get '/'
    end
    it 'returns json response' do
      expect(last_response.body).to eq({ message: 'hello world!'}.to_json)
    end

    it 'returns right code' do
      expect(last_response).to be_ok
    end
  end
end