# Standard Library Dependencies:
require 'uri'
require 'erb'
require 'zlib'
require 'base64'
require 'pathname'
require 'fileutils'

# Gem Dependencies:
require 'rubygems'
gem     'rails', '~> 2.0'
require 'yui/compressor'
require 'active_support'
require 'active_support/core_ext/hash'

# Load initial configuration before the rest of Jammit.
Jammit.load_configuration(Jammit::DEFAULT_CONFIG_PATH) if defined?(Rails)

# Jammit Core:
require 'jammit/compressor'
require 'jammit/packager'

# Jammit Rails Integration:
if defined?(Rails)
  require 'jammit/controller' # Rails will auto-load 'jammit/helper' for us.
  require 'jammit/routes'
end