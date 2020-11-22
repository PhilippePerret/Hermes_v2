# encoding: UTF-8
# frozen_string_literal: true
=begin
  Test de la commande principale
=end

describe 'main.rb' do
  it 'peut être lancé sans erreur' do
    TEST_CHOIX = [:nil] # pour renoncer tout de suite
    expect { load './main.rb' }.not_to raise_error
  end
end
