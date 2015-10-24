# This is the main entrypoint into the program
# It requires the other files/gems that it needs

require 'pry'
require './candidates'
require './filters'
require 'active_support/all'

# binding.pry

pp qualified_candidates(@candidates)
pp ordered_by_qualifications(@candidates)