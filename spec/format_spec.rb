require 'spec_helper'

describe Routes::Format do
  
  let(:format) { Routes::Format }
  let(:attr) { Routes::Attr }

  describe '.has_valid_path?' do
    context 'when path have a valid format' do
      it 'return true' do
        object = attr.new('GET', '/users', { controller: 'users', action: 'create' })
        check = format.new(object.path, object.defaults).has_valid_path?
        expect(check).to eq(1)
      end
    end
  end
end
