require 'rbconfig'

RbConfig::CONFIG["rubyhdrdir"] = File.join("@TERMUX_PREFIX@", "include", "ruby-#{RbConfig::CONFIG['ruby_version']}")
puts "Using rubyhdrdir=#{RbConfig::CONFIG['rubyhdrdir']}"
if not File.exist?(($hdrdir = RbConfig::CONFIG["rubyhdrdir"]) + "/ruby/ruby.h")
  abort "#{hdrdir}/ruby/ruby.h does not exist"
end
