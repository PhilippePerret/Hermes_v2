# encoding: UTF-8
# frozen_string_literal: true


class Personnage

SEXES = {
  1 => {name:'femme'},
  2 => {name:'homme'},
  3 => {name:'animal'}
}

# *** Caractéristiques de personnage ***
# :ambi   Définit une caractéristique CLAIREMENT ambivalente, c'est-à-dire une
#         caractéristique qui peut s'avérer être autant un défaut qu'une
#         qualité.
CARACTERISTICS = {
  1 => {name: "fort(|e)"},
    11 => {name: "vi(f|ve)"},
  2 => {name: "faible"},
  3 => {name: "intelligent(|e)"},
    31 => {name: "rusé(|e)"},
  4 => {name: "prudent(|e)", ambi: true},
}
end #/Personnage
