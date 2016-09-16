module Routes
  
  ##
  # This file is part of the Resize module
  # (c) Londerson Araújo <londerson@gmail.com>
  # For the full copyright and license information, please view the LICENSE
  # file that was distributed with this source code.

  class Route

    def get(*args)
      Attr.new("GET", *args)
    end
  end
end
