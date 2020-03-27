#!/usr/bin/perl

use strict ;

my ($motiffile, $fastafile, $rna) = @ARGV ;
open I, "< $motiffile" ;
while(my $re = <I>){
	$re =~ s/\s+$// ;
	my $res = `programs/genregexp -reldist 0 -fastafile $fastafile -rna $rna -re \"$re\"` ;
	print ">$re", "\n", $res if ($res) ;
}