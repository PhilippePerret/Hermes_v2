# encoding: UTF-8
# frozen_string_literal: true
describe 'Story' do
  context 'avec des choix intégralement aléatoire' do
    it 'produit une histoire aléatoire' do
      touches = []
      touches << 1 # produire une histoire
      touches << 1 # la base de l'histoire aléatoire
      res = run(nil, touches)
      puts "Retour : #{res.inspect}"
    end
  end
end
