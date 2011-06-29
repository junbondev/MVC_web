#!/usr/bin/perl

use strict;
use warnings;
use Test::More;
use WWW::Selenium;
use WWW::Selenium::Util qw(server_is_running);

my $sel = WWW::Selenium->new (
    port => 4444,
    host => 'localhost',
    browser => '*chrome',
    browser_url => 'http://www.google.com'
);

$sel->start;
$sel->open ('/');
$sel->wait_for_page_to_load (3000);
$sel->stop;
