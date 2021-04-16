#!/usr/bin/env perl
use strict;
use warnings;

# Not yet familiar with the new Test2::Suite library that replaces Test::More
use Test::More;

use TechnicalPrompt qw(findPair);

plan tests => 9;

is_deeply(
    findPair([1,2,3,4], 5) => [1,4],
    'findPair([1,2,3,4], 5) returns pair that contains the smallest value ([1,4] instead of [2,3])'
);

is_deeply(
    findPair([2,5,1,3,4,6,7], 8) => [1,7],
    'findPair([2,5,1,3,4,6,7], 8) returns [1,7]'
);

is_deeply(
    findPair([3,3,5,6,7], 11) => undef,
    'findPair([3,3,5,6,7], 11) returns null'
);

is_deeply(
    findPair([4,2,8,25], 26) => undef,
    'findPair([4,2,8,25], 26) returns null'
);

is_deeply(
    findPair(['1','2','3','4'], 5) => [1,4],
    "findPair handles array of strings that can be parsed as integers"
);

is_deeply(
    findPair(['a',1,2,3,4], 5) => undef,
    'Array contains element other than integers or strings that can be parsed as integers'
);

is_deeply(
    findPair([-1,1,2,3,4], 5) => undef,
    'All array values must be greater than 0',
);

is_deeply(
    findPair([1,1,2,3,4], 5) => undef,
    'All array values must unique'
);

fail('Write out performance based test case for large dataset')
