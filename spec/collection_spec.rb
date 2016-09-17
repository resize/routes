require 'spec_helper'

describe Routes::Collection do

  let(:route) { Routes::Route }

  before(:each) do
    @route = route.new.get('/path', controller: 'users', action: 'create')
    @route2 = route.new.get('/path', controller: 'clients', action: 'create')
  end

  describe '.routes' do
    it 'return array of routes' do
      @collection = Routes::Collection.instance
      @collection.append(@route)
      @collection.append(@route2)
      expect(@collection.routes).to eq([@route, @route2])
    end
  end
end
