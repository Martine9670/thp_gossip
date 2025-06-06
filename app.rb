require 'pry'
require_relative 'lib/router'
require_relative 'lib/controller'
require_relative 'gossip'

router = Router.new.perform