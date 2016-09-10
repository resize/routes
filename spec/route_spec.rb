require 'rspec'
require './spec_helper'
require 'routes/route'

describe Routes::Route do
  
  let(:route) { Routes::Route }

  describe '.has_path?' do
    context 'when path exists' do
      it 'return true' do
        object = route.new('/users', controller: 'users', action: 'create')
        expect(object.instance_variable_get(:@path)).to eql('/users')
      end
    end

    context 'when no path exists' do
      it 'return false' do
        expect{ route.new(controller: 'users', action: 'create') }.to raise_error(RuntimeError)
      end
    end
  end

  describe '.has_defaults?' do
    context 'when defaults exists' do
      it 'dont raise exception' do
        object = route.new('/users', controller: 'users', action: 'create')
        expect(object.instance_variable_get(:@defaults)).to eql(controller: 'users', action: 'create')
      end
    end

    context 'when defaults dont exists' do
      it 'raise exception' do
        expect{ route.new('/users') }.to raise_error(RuntimeError)
      end
    end
  end
end
