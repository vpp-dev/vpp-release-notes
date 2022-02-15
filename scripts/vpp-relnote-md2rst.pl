#!/usr/bin/perl
#
#
# Quick and dirty script to convert the VPP release note text from .md to .rst
#
# NB: it is *not* the general purpose converter, so do not expect it to work on anything else.
#
# usage: perl scripts/vpp-relnote-md2rst.pl <RELEASE.md >~/vpp/docs/aboutvpp/releasenotes/v22.02.rst
#

my $ul_indent = 0;
my $in_api_table = 0;
my $in_api_patches = 0;

sub api_table_separator {
	print(("=" x $in_api_table) . " " . ("=" x 18) . "\n");
}

sub title {
	my $aPad = shift;
	my $aTitle = shift;
	if ($ul_indent > 0) {
		print("\n");
		$ul_indent = 0;
	}
	print("$aTitle\n");
	print(($aPad x length($aTitle)) . "\n");
}

sub x_linkify {
	my $aText = shift;
	my $aLink = shift;
	return "`$aText <$aLink>`_";
}

sub cnv_inline {
	my $aText = shift;
	$aText =~ s/\[([^]]+)\]\((http[^\)]+)\)/x_linkify($1,$2)/ge;
	$aText =~ s/_Definition changed_/*Definition changed*/g;
	$aText =~ s/_Only in image_/*Only in image*/g;
	$aText =~ s/_Only in file_/*Only in file*/g;
	return($aText);

}

sub ul {
	my $aIndent = shift;
	my $aInfo = shift;
	$aInfo = cnv_inline($aInfo);
	print((" " x $aIndent) . "- " . $aInfo . "\n");
}

sub line {
	my $aLine = shift;
	if ($in_api_table) {
		if (length($aLine) == 0) {
			api_table_separator();
			$in_api_table = 0;
		}
		$aLine =~ s/\| / /g;
		if (!($aLine =~ /^----------------/)) {
			print("$aLine\n");
		}
	} elsif ($in_api_patches) {
		if ($aLine =~ /^\| ([^\|]+) \| ([^\|]+) \|$/) {
			my $aPatch = cnv_inline($1);
			my $aTitle = $2;
			print("* $aPatch $aTitle\n");
		}
	} else {
		$aLine = cnv_inline($aLine);
		print("$aLine\n");
	}
}


while (my $aLine = <>) {
	chomp($aLine);

   if ($aLine =~ /^\@page release_notes_(\d+) (.*)$/) {
	   my $aTitle = $2;
	   my $aVersion = $1;
	   title("=", $aTitle);
   } elsif ($aLine =~ /^## (.*)$/) {
	   my $aTitle = $1;
	   title("-", $aTitle);
   } elsif ($aLine =~ /^### (.*)$/) {
	   my $aTitle = $1;
	   title("~", $aTitle);
   } elsif ($aLine =~ /^([ ]*)- (.+)$/) {
	   my $aIndent = length($1);
	   my $aInfo = $2;
	   if ($aIndent != $ul_indent) {
		   $ul_indent = $aIndent;
		   print("\n");
	   }
	   ul($ul_indent, $aInfo);


   } elsif ($aLine =~ /^([ ]*)\* (.+)$/) {
	   my $aIndent = length($1);
	   my $aInfo = $2;
	   if ($aIndent != $ul_indent) {
		   $ul_indent = $aIndent;
		   print("\n");
	   }
	   ul($ul_indent, $aInfo);
   } elsif ($aLine =~ /^(Message Name[ ]+)| Result$/) {
	   my $aMsgName = $1;
	   $in_api_table = length($aMsgName);
	   api_table_separator();
	   print($aMsgName . " " . "Result\n");
	   api_table_separator();
   } elsif ($aLine =~ /^\| \@c (\S+) \|\|$/) {
	   $in_api_patches = 1;
	   print("\n");
	   print("``$1``\n");
   } elsif ($aLine eq '| ------- | ------- |') {
	   print("\n");
   } else {
	   line($aLine);
   }
}
