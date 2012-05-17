#!/usr/bin/perl -w

# Fortran 95 Depenedency Scanner
# Joseph A. Levin

use strict;
use warnings;
use Getopt::Long;

use constant VERSION => "1.0-SNAPSHOT";


sub main(){
	arguments();
	
	foreach my $line (<>){
		print $line;
	}
}

sub arguments(){
	my $help;
	unless(GetOptions ('help|h|?' => sub { usage(); exit();})){
		usage();
		exit (1);
	}
}

sub usage(){
	print "Hello, world.\n";
}

# get the ball rolling
main();
