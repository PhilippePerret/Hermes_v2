# encoding: UTF-8
# frozen_string_literal: true
class Source
class << self
def init_run_and_finish
  _ "--> Source::init_run_and_finish"
  init
  run
  finish
  _ "<-- Source::init_run_and_finish"
end #/ init_run_and_finish
def init
  _ "--> Source::init"

  _ "<-- Source::init"
end #/ init
def run
  _ "--> Source::run"

  _ "<-- Source::run"
end
def finish
  _ "--> Source::finish"

  _ "<-- Source::finish"
end
end # /<< self
end #/Source
