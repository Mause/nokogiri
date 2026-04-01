require 'rbconfig'

$hdrdir = RbConfig::CONFIG["rubyhdrdir"]
puts "Original hdrdir: #{$hdrdir}"
RbConfig::CONFIG["rubyhdrdir"] = File.join("@TERMUX_PREFIX@", "include", "ruby-#{RbConfig::CONFIG['ruby_version']}")
$hdrdir = RbConfig::CONFIG["rubyhdrdir"]
puts "Using rubyhdrdir=#{$hdrdir}"
puts Dir.children($hdrdir)
$target = $hdrdir + "/ruby.h"
if not File.exist?($hdrdir + "/ruby.h")
  abort "#{$hdrdir}/ruby.h does not exist"
end
