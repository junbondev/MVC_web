#!/usr/bin/perl

use strict;
use warnings;
use WWW::Mechanize;
use File::Slurp;

my $mech = WWW::Mechanize->new (
    timeout => 30,
    agent_alias => 'Linux Mozilla',
);

$mech->get ('http://google.com');
print $mech->content (format => 'text');
