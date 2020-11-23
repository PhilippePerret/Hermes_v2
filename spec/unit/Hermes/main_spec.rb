# encoding: UTF-8
# frozen_string_literal: true
=begin
  Test de la commande principale
=end

describe '_run_.rb' do
  it 'peut être lancé sans erreur' do
    expect { run(nil, [0]) }.not_to raise_error
    expect(journal).to include("<-- END")
  end
end
