# encoding: UTF-8
# frozen_string_literal: true
=begin
  Ce module contient les éléments minimums requis au démarrage
  Notamment la classe Log qui va permettre de consigner les journaux.
=end

require_relative './Log'

APP_FOLDER = File.dirname(File.dirname(__dir__))
log "APP_FOLDER : #{APP_FOLDER}"

require_relative './_required'
