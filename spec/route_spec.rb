require 'spec_helper'

describe Routes::Route do
  
  let(:route) { Routes::Route }

  describe '.get' do
    it 'return verb, path and defaults' do
      obj = route.new
      obj = obj.get('/users', controller: 'users', action: 'create')
      expect(obj).to be_an_instance_of(Routes::Attr)
      expect(obj.verb).to       eq('GET')
      expect(obj.path).to       eq('/users')
      expect(obj.defaults).to   eq(controller: 'users', action: 'create')
      expect(obj.controller).to eq('users')
      expect(obj.action).to     eq('create')
    end
  end

  describe '.post' do
    it 'return verb, path and defaults' do
      obj = route.new
      obj = obj.post('/users', controller: 'users', action: 'create')
      expect(obj).to be_an_instance_of(Routes::Attr)
      expect(obj.verb).to       eq('POST')
      expect(obj.path).to       eq('/users')
      expect(obj.defaults).to   eq(controller: 'users', action: 'create')
      expect(obj.controller).to eq('users')
      expect(obj.action).to     eq('create')
    end
  end

  describe '.put' do
    it 'return verb, path and defaults' do
      obj = route.new
      obj = obj.put('/users', controller: 'users', action: 'create')
      expect(obj).to be_an_instance_of(Routes::Attr)
      expect(obj.verb).to       eq('PUT')
      expect(obj.path).to       eq('/users')
      expect(obj.defaults).to   eq(controller: 'users', action: 'create')
      expect(obj.controller).to eq('users')
      expect(obj.action).to     eq('create')
    end
  end

  describe '.delete' do
    it 'return verb, path and defaults' do
      obj = route.new
      obj = obj.delete('/users', controller: 'users', action: 'create')
      expect(obj).to be_an_instance_of(Routes::Attr)
      expect(obj.verb).to       eq('DELETE')
      expect(obj.path).to       eq('/users')
      expect(obj.defaults).to   eq(controller: 'users', action: 'create')
      expect(obj.controller).to eq('users')
      expect(obj.action).to     eq('create')
    end
  end
end
