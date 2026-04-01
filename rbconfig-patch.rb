require 'rbconfig'

$hdrdir = RbConfig::CONFIG["rubyhdrdir"]
puts "Original hdrdir: #{$hdrdir}"
$ruby_version = '3.4.0'
RbConfig::CONFIG["rubyhdrdir"] = File.join("@TERMUX_PREFIX@", "include", "ruby-#{$ruby_version}")
$hdrdir = RbConfig::CONFIG["rubyhdrdir"]
puts "Using rubyhdrdir=#{$hdrdir}"
puts "include children: #{Dir.children(File.join("@TERMUX_PREFIX@", "include"))}"
puts "hdrdir children: #{Dir.children($hdrdir)}"
$target = $hdrdir + "/ruby.h"
if not File.exist?($hdrdir + "/ruby.h")
  abort "#{$hdrdir}/ruby.h does not exist"
end
