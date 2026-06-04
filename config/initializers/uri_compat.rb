# config/initializers/uri_compat.rb
# Temporary compatibility shim for URI parser constant name differences.
# Remove this after upgrading to a Ruby/gem set that provides RFC2396_PARSER.
begin
  require "uri"
rescue LoadError
  # nothing
end

unless defined?(URI::RFC2396_PARSER)
  if defined?(URI::RFC2396_Parser)
    URI.const_set(:RFC2396_PARSER, URI::RFC2396_Parser.new)
  else
    # Fallback to DEFAULT_PARSER if RFC2396_Parser is not present
    URI.const_set(:RFC2396_PARSER, URI::DEFAULT_PARSER)
  end
end

unless defined?(URI::RFC3986_PARSER)
  if defined?(URI::RFC3986_Parser)
    URI.const_set(:RFC3986_PARSER, URI::RFC3986_Parser.new)
  else
    URI.const_set(:RFC3986_PARSER, URI::DEFAULT_PARSER)
  end
end
