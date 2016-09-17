require 'spec_helper'

describe Routes::Recognize do
  
  let(:recognize) { Routes::Recognize }

  describe '.has_route?' do
    context 'when route exist' do
      it 'return true' do
        route = Routes::Route.new.get('/path', controller: '/users', action: 'create')
        collection = Routes::Collection.instance.append(route)
        expect(recognize.new(collection).has_route?(route)).to be(true)
      end
    end
  end
end
