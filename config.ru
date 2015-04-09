require 'rack'
require_relative './my_awesome_middleware'
require_relative './bear_determinator'

run MyAwesomeMiddleware.new(%w|bunday morimoto milburn bui costolo etc|, BearDeterminator)
