# encoding: UTF-8
=begin
  Méthodes utiles
=end

def require_folder(dossier)
  Dir["#{APP_FOLDER}/#{dossier}/**/*.rb"].each{|m|require m}
end #/ require_folder

# Requérir un dossier du dossier ./lib/_modules_
def require_module(module_relpath)
  require_folder(File.join('lib','_modules_',module_relpath))
end #/ require_module

# Pour nettoyer la console
def clear
  puts "\n" # pour certaines méthodes
  puts "\033c"
end
