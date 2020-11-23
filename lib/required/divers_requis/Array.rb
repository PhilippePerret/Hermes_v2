# encoding: UTF-8
# frozen_string_literal: true
=begin
  Extension de la class Array
=end
class Array

  # OUT   Retourne x élément de la liste en fonction de +options+
  #
  # IN    +options+ peut être une de ces valeurs :
  #         :one        Seulement un élément
  #         0-9+        Le nombre d'éléments à retourner
  #         {count: x}  Où x est le nombre d'éléments à retourner
  #         {nombre: x} idem
  def rand(options = nil)
    options_ini = options.freeze
    nombre = case options
    when :one then 1
    when Integer then options
    when Hash then options[:count] || options[:nombre]
    end
    items = self.shuffle.shuffle[0...nombre]
    options_ini[:one] ? items.first : items
  end #/ rand

end #/Array
