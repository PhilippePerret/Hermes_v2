# encoding: UTF-8
# frozen_string_literal: true
=begin
  Classe Hermes
=end
class Hermes
class << self
def init
  log("--> init")
  log("<-- init")
end #/ init
def run
  log("--> run")
  define_story || return
  log("<-- run")
end #/ run
def finish
  log("--> finish")
  log("<-- finish")
end #/ finish
# ---------------------------------------------------------------------
#
#   Méthode de deuxième niveau
#
# ---------------------------------------------------------------------

def define_story
  clear
  puts "Nous allons définir quelques éléments, mais tu peux aussi choisir le mode entièrement aléatoire.".bleu
  choix = TEST_CHOIX.shift || Q.select("Choisis le type de protagoniste voulu") do |q|
    q.choices TYPES_PROTAGONISTES << {name:"Renoncer", value: :nil}
    q.per_page TYPES_PROTAGONISTES.count + 1
  end
  return false if choix == :nil
end #/ define_story



end # /<< self

TYPES_PROTAGONISTES = [
  {name: "Une femme", value: 0},
  {name: "Un homme",  value: 1},
  {name: "Un animal", value: 2},
]
end #/Hermes
