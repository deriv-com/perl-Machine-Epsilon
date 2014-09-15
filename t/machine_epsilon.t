#!/usr/bin/perl
use strict; use warnings;

use lib 'lib';
use Test::More;

use_ok('Machine::Epsilon');

my $expected;

# find out the bitness of the perl binary
my $w = `which perl`;
my $o = `file $w`;

if ( $o =~ /ELF 32-bit/ ) {
    $expected = 2**-23;
}
elsif ( $o =~ /ELF 64-bit/ ) {
    $expected = 2**-52;
}
else {
    die "Not on a 32-bit or 64-bit perl. $o";
}

my $got = machine_epsilon();
is ($got, $expected, 'machine_epsilon()');

done_testing();

