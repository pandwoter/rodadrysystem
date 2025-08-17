# NOTE: should be started with `--quiet` flag in order to skip default
# `common_logger` middleware
require "roda"
require "rack"
require_relative "system"
require_relative "app"
System.finalize!
run App.freeze
