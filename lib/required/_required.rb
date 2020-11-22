# encoding: UTF-8
# frozen_string_literal: true
require 'tty-prompt'
Q = TTY::Prompt.new(symbols: {radio_on:"☒", radio_off:"☐"}) # cross : essai pour utiliser disabled dans les listes pour des sous-titres

require_relative './utils'
require_folder('lib/required/divers_requis')

require_relative './Hermes'
