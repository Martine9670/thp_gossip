require 'pry'
require_relative 'lib/router'
require_relative 'lib/controller'
require_relative 'lib/gossip'

router = Router.new.perform