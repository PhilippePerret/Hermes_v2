# encoding: UTF-8
# frozen_string_literal: true
class Story
class << self
attr_accessor :current # histoire courante
def init_run_and_finish
  _ "--> Story::init_run_and_finish"
  init
  run
  finish
  _ "<-- Story::init_run_and_finish"
end #/ init_run_and_finish
def init
  _ "--> Story::init"

  _ "<-- Story::init"
end #/ init
def run
  _ "--> Story::run"
  self.current = new
  current.define_fondements || return
  _ "<-- Story::run"
end
def finish
  _ "--> Story::finish"

  _ "<-- Story::finish"
end
end # /<< self


# ---------------------------------------------------------------------
#
#   INSTANCE
#
# ---------------------------------------------------------------------
def initialize

end #/ initialize

# Produit l'histoire aléatoire
def output(options = nil)

end

# Pour définir les fondements de l'histoire
def define_fondements
  case TESTS_REPONSES.shift || define_what_to_do
  when 0 then return false # renoncement
  when 1
    puts "Je définis toute la base de l'histoire aléatoirement"
    base_histoire_aleatoire
  when 2 then base_histoire_definie
  end
  puts "base: #{@base.inspect}"
end #/ define_fondements


def base_histoire_aleatoire
  @base = {
    protagoniste: Personnage.new(self, type: :protagoniste),
    antagoniste:  Personnage.new(self, type: :antagoniste)
  }
end #/ base_histoire_default

def base_histoire_definie
  @base = base_histoire_default
  @base[:protagoniste].define
end #/ base_histoire_definie


end #/Story
