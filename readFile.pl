#!/usr/bin/perl
# -*- coding: UTF-8 -*-

use strict;
use warnings;
 
my $filename = 'data.txt';
my $isOpen = open(my $fh, '<:encoding(UTF-8)', $filename); 
if( $isOpen) {
 while (my $row = <$fh>) {
  chomp $row;
  print "$row\n";
 }
}else {
 open $fh, ">data.txt";
 print $fh "This is the firstline in the file\n";
 close $fh;
}
