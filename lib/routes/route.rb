module Routes
  
  ##
  # This file is part of the Resize module
  # (c) Londerson Araújo <londerson@gmail.com>
  # For the full copyright and license information, please view the LICENSE
  # file that was distributed with this source code.

  class Route
    def get(*args)
      attrs("GET", *args)
    end

    def post(*args)
      attrs("POST", *args)
    end

    def put(*args)
      attrs("PUT", *args)
    end

    def delete(*args)
      attrs("DELETE", *args)
    end

    private
      def attrs(verb, *args)
        Attr.new(verb, *args)
      end
  end
end
