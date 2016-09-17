require 'singleton'

module Routes

  # This file is part of the Resize module
  # (c) Londerson Araújo <londerson@gmail.com>
  # For the full copyright and license information, please view the LICENSE
  # file that was distributed with this source code.
  #

  class Collection
    include Singleton
    attr_reader :routes

    def initialize
      @routes = []      
    end

    def append(route)
      @routes.push(route)
    end
  end
end
