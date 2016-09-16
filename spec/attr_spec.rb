require 'spec_helper'

describe Routes::Attr do
  
  let(:attr) { Routes::Attr }

  describe '.has_path?' do
    context 'when path exists' do
      it 'return true' do
        obj = attr.new('GET', '/users', controller: 'users', action: 'create')
        expect(obj.path).to eql('/users')
      end
    end

    context 'when no path exists' do
      it 'return false' do
        expect{ attr.new('GET', controller: 'users', action: 'create') }.to raise_error(RuntimeError)
      end
    end
  end

  describe '.has_defaults?' do
    context 'when defaults exists' do
      it 'dont raise exception' do
        obj = attr.new('GET', '/users', controller: 'users', action: 'create')
        expect(obj.instance_variable_get(:@defaults)).to eql(controller: 'users', action: 'create')
      end
    end

    context 'when defaults dont exists' do
      it 'raise exception' do
        expect{ attr.new('GET', '/users') }.to raise_error(RuntimeError)
      end
    end
  end
end
