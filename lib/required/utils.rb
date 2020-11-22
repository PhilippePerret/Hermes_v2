# encoding: UTF-8
=begin
  Méthodes utiles
=end

def require_folder(dossier)
  Dir["#{APP_FOLDER}/#{dossier}/**/*.rb"].each{|m|require m}
end #/ require_folder

# Pour nettoyer la console
def clear
  puts "\n" # pour certaines méthodes
  puts "\033c"
end
