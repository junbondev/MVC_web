#!/usr/bin/perl

use strict;
use warnings;
use WWW::Mechanize;
use File::Slurp;

my $string = 'bet betting sersbetsdfkldsjf simple sorhsebsdure';

while ($string =~ /((\w+|\s)?bet(\w+|\s)?)/ig)
{
    print $1."\n";
}
