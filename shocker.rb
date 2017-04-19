#!/usr/bin/ruby

require 'colorize'

def argerror
  `docker`
   exit(1)
end

def ps(args)
  puts 'Name   Command   Status'.yellow
  puts '----------------------'
  result = `docker ps #{args} --format '{{.Names}}  {{.Command}}  {{.Status}}'`
  puts result
  puts '----------------------'
end

return argerror unless ARGV.length != 0

command = ARGV[0]
other_arguments = ARGV[1..-1].join(' ').chomp

case command
  when 'ps'
  ps(other_arguments)
  when 'start'
  when 'stop'
end
