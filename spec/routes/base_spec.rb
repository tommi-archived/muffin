require 'spec_helper'

describe Muffin do
  def app
    Muffin.new
  end

  describe 'GET /' do
    it "says '200'" do
      get '/'
      expect(last_response.body).to eq('200')
    end
  end
end
