module Routes
  
  ##
  # This file is part of the Resize module
  # (c) Londerson Araújo <londerson@gmail.com>
  # For the full copyright and license information, please view the LICENSE
  # file that was distributed with this source code.

  class Attr
    attr_accessor :verb, :path, :defaults, :controller, :action

    def initialize(verb, path="", defaults={})
      @verb, @path, @defaults, @controller, @action = verb, path, defaults, defaults[:controller], defaults[:action]
      raise_args if @path.empty? or @defaults.empty?
    end

    # Return a raise if dont have @path or @defaults
    def raise_args
      raise "You need set a correctly route ex: (path, controller: 'controller', action: 'action')" 
    end
  end
end
