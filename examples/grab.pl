#!/usr/bin/env perl

use strict;
use warnings;

use lib '../lib';
use WWW::DoctypeGrabber;

die "Usage: perl grab.pl <URI_of_webpage>\n"
    unless @ARGV;

my $URI = shift;

my $grabber = WWW::DoctypeGrabber->new;

my $res_ref = $grabber->grab($URI)
    or die "Error: " . $grabber->error;

print "Results: $grabber\n";