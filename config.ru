require "roda"
require_relative "system"
require_relative "app"
System.finalize!
run App.freeze
