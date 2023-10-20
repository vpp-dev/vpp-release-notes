#!/usr/bin/perl
#
#
# A small script to add the new version to docs/aboutvpp/releasenotes/index.rst
#
# NB: it is *not* the general purpose converter, so do not expect it to work on anything else.
#
# usage: 
#   perl scripts/vpp-relnote-list-add-version.pl v23.10  <~/vpp/docs/aboutvpp/releasenotes/index.rst >/tmp/index.rst
#   mv /tmp/index.rst ~/vpp/docs/aboutvpp/releasenotes/index.rst
#

my $insertion_done = 0;

while (my $aLine = <STDIN>) {
	chomp($aLine);

   if ($aLine =~ /^(\s+)v[0-9][0-9]\.[0-9][0-9]$/) {
	   my $spaces = $1;
	   if (!$insertion_done) {
		   print("$spaces$ARGV[0]\n");
		   $insertion_done = 1;
	   }
   }
   print("$aLine\n");
}
