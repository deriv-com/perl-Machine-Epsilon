#!/usr/bin/perl
use strict; use warnings;

use lib 'lib';
use Test::More;

use_ok('Machine::Epsilon');

my $expected;

my %expected = (
   4 => 2**-23,
   8 => 2**-52,
  16 => 2**-105
);


my $got = machine_epsilon();
is ($got, $expected{length(pack('d', 1.001))}, 'machine_epsilon()');

done_testing();

