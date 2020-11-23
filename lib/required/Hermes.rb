# encoding: UTF-8
# frozen_string_literal: true
=begin
  Classe Hermes
=end
class Hermes
class << self
def init
  _ "--> init"
  if ENV['TESTS_REPONSES']
    TESTS_REPONSES.clear
    JSON.parse(ENV['TESTS_REPONSES']).each{|e| TESTS_REPONSES << e}
  end
  _ "= TESTS_REPONSES: #{TESTS_REPONSES.inspect}"
  _ "<-- init"
end #/ init
def run
  _ "--> run"
  case TESTS_REPONSES.shift || define_what_to_do
  when 0 then return
  when 1
    require_module 'Story'
    Story.init_run_and_finish
  when 2
    require_module 'Source'
    Source.init_run_and_finish
  end
  _ "<-- run"
end #/ run
def finish
  _ "--> finish"
  _ "<-- finish"
  _ "<-- END"
end #/ finish
# ---------------------------------------------------------------------
#
#   Méthode de deuxième niveau
#
# ---------------------------------------------------------------------

def define_what_to_do
  # clear
  Q.select("Que faire ?") do |q|
    q.choices [{name:"Construire une histoire", value: 1}, {name:"Entrer des données", value: 2}, {name:"Renoncer", value: 0}]
    q.per_page 3
  end
end #/ define_what_to_do
end # /<< self

TYPES_PROTAGONISTES = [
  {name: "Une femme", value: 0},
  {name: "Un homme",  value: 1},
  {name: "Un animal", value: 2},
]
end #/Hermes
