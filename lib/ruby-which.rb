# ruby-which

# For those times when you don't know which version of a library you're require-ing,
# or from what path on your system it's coming from.

# by Pistos
# http://github.com/Pistos/ruby-which

# <manveru> you need organization...

class Which
  # Example usage:
  #   puts Which.which( 'rails' )
  # Or from your shell:
  #   rwhich rails
  # Returns the full library path if the given library is found in the $LOAD_PATH.
  # Under rare circumstances, an Array may be returned in the case of multiple
  # matches under one path.
  def self.which( lib )
    begin
      require( lib )
    rescue LoadError
      return nil
    end

    $LOAD_PATH.each do |path|
      extension = nil
      if File.extname( lib ).empty?
        extension = '.{rb,so,class}'
      end
      found = Dir[ "#{path}/#{lib}#{extension}" ]
      if found.size == 1
        return found[ 0 ]
      elsif found.any?
        return found
      end
    end
    nil
  end
end