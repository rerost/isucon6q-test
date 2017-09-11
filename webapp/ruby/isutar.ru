#!rackup
require 'rack-mini-profiler'
require_relative './lib/isutar/web.rb'

run Isutar::Web
