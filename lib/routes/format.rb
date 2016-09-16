module Routes
  class Format

    ##
    # This file is part of the Resize module
    # (c) Londerson Araújo <londerson@gmail.com>
    # For the full copyright and license information, please view the LICENSE
    # file that was distributed with this source code.

    def initialize(path, defaults)
      @path, @defaults = path, defaults
    end
    
    # check if path have valid format
    def has_valid_path?
      @path =~ /\w+/
    end
  end
end
