#!/usr/bin/perl
use strict; use warnings;

use lib 'lib';
use Test::More;
use Config;

use_ok('Machine::Epsilon');

my $expected;

my %expected = (
   4 => 2**-23,
   8 => 2**-52,
  10 => 2**-63,
  16 => 2**-112
);


my $got = machine_epsilon();
is ($got, $expected{$Config{nvsize}}, 'machine_epsilon()');

done_testing();

