module Routes
  
  ##
  # This file is part of the Resize module
  # (c) Londerson Araújo <londerson@gmail.com>
  # For the full copyright and license information, please view the LICENSE
  # file that was distributed with this source code.

  class Route
    attr_accessor :path, :defaults, :controller, :action

    def initialize(path="", defaults={})
      @path, @defaults, @controller, @action = path, defaults, defaults[:controller], defaults[:action]
    
      raise_args if @path.empty? or @defaults.empty?
    end

    # Return a raise if dont have @path or @defaults
    def raise_args
      raise "You need set a correctly route ex: (path, controller: 'controller', action: 'action')" 
    end
  end
end
