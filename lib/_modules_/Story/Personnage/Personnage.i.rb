# encoding: UTF-8
# frozen_string_literal: true
=begin
  Instance Personnage
=end
class Personnage
  attr_reader :story
  def initialize(story, specs = nil)
    @story = story
  end #/ initialize


# ---------------------------------------------------------------------
#
#   PROPERTIES
#
# ---------------------------------------------------------------------

def sexe
  @sexe ||= SEXES.rand(:one)
end #/ sexe

def caracteristics
  @caracteristics ||= CARACTERISTICS.rand(3)
end #/ caracteristics

# ---------------------------------------------------------------------
#
#   DÉFINITION
#
# ---------------------------------------------------------------------

# Méthode générale appelée pour définir interactivement le personnage
def define
  ask_for_sexe
  ask_for_caracteristics
end #/ define

end #/Personnage
