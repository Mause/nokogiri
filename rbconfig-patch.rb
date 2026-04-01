require 'rbconfig'

RbConfig::CONFIG["rubyhdrdir"] = File.join("@TERMUX_PREFIX@", "include", "ruby-#{RbConfig::CONFIG['ruby_version']}")
$hdrdir = RbConfig::CONFIG["rubyhdrdir"]
puts "Using rubyhdrdir=#{$hdrdir}"
if not File.exist?($hdrdir + "/ruby/ruby.h")
  abort "#{$hdrdir}/ruby/ruby.h does not exist"
end
