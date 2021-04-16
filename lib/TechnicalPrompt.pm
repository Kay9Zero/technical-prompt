package TechnicalPrompt;
use strict;
use warnings;

use Exporter 'import';
our @EXPORT_OK = qw(findPair);

use Try::Tiny;

sub findPair {
    my ($integers, $desired_sum) = @_;

    # TODO While sorting validate input. Upon finding invalid value throw exception
    #      where in catch return undef (aka null outside of perl)

    # TODO Iterate over the sorted list, have an inner loop over the remaining
    #      siblings where it sums the pairs until the desired sum is matched

    return [0, 0];
}

1;
