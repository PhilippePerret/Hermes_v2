#!/usr/bin/env ruby
# encoding: UTF-8
# frozen_string_literal: true
=begin
  Module qui lance l'application
=end
begin
  # Librairie minimale de départ
  Dir.chdir(__dir__) do
    require './lib/required/amorce'
    Hermes.init
    Hermes.run
    Hermes.finish
  end
rescue Exception => e
  # TODO
  # Faire un état des lieux de l'erreur

  # Retourne l'erreur
  raise "ERREUR FATALE : #{e.message}\n#{e.backtrace.join("\n")}"
end
