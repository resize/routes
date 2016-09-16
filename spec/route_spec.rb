require 'spec_helper'

describe Routes::Route do
  
  let(:route) { Routes::Route }

  describe '.get' do
    it 'return verb, path and defaults' do
      obj = route.new
      obj = obj.get('/users', controller: 'users', action: 'create')
      params = { verb: "GET", path: "/users", defaults: { controller: 'users', action: 'create' }}
      expect(obj).to be_an_instance_of(Routes::Attr)
      expect(obj.verb).to       eq("GET")
      expect(obj.path).to       eq("/users")
      expect(obj.defaults).to   eq(controller: 'users', action: 'create')
      expect(obj.controller).to eq('users')
      expect(obj.action).to     eq('create')
    end
  end
end
