#!rackup
require 'rack-mini-profiler'
require_relative './lib/isuda/web.rb'

run Isuda::Web
