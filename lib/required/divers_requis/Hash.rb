# encoding: UTF-8
# frozen_string_literal: true
class Hash

  # Retourne une ou plusieurs valeurs aléatoire prises dans la table
  # cf. Array#rand pour le détail
  def rand(options = nil)
    self[self.keys.rand(options)]
  end #/ rand

end #/Hash
