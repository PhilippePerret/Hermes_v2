# encoding: UTF-8
# frozen_string_literal: true
def log(msg, context = nil)
  Log.add(msg, context)
end #/ log

class Log
class << self
  def add(msg, context = nil)
    rf.puts("--- #{Time.now} #{msg} #{context.inspect unless context.nil?}")
  end #/ add

  def rf
    @rf ||= begin
      File.delete(path) if File.exists?(path)
      File.open(path, 'a')
    end
  end #/ rf

  def path
    @path ||= File.expand_path('./journal.log')
  end #/ path
end # /<< self
end #/Log
