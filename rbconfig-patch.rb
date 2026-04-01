require 'rbconfig'

RbConfig::CONFIG["rubyhdrdir"] = File.join("@TERMUX_PREFIX@", "include", "ruby-#{RbConfig::CONFIG['ruby_version']}")
puts "Using rubyhdrdir=#{RbConfig::CONFIG['rubyhdrdir']}"
