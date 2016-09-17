module Routes

  # This file is part of the Resize module
  # (c) Londerson Araújo <londerson@gmail.com>
  # For the full copyright and license information, please view the LICENSE
  # file that was distributed with this source code.
  #

  class Recognize
    
    def initialize(collection)
      @routes = collection
    end

    def has_route?(to_compare)
      route = @routes.detect {|route| to_compare.path == route.path and route.defaults == to_compare.defaults }
      route != nil ? true : false
    end
  end
end
