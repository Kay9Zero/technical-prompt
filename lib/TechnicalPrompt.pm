package TechnicalPrompt;
use strict;
use warnings;

use Exporter 'import';
our @EXPORT_OK = qw(findPair);

sub findPair {
    my ($integers, $desired_sum) = @_;

    # TODO Determine to validate first, sort first, or do both simultaneously.
    #      The later has the benifit of less processing cycles but at the cost
    #      of complicating code maintainability.

    # TODO Validate input, return undef (aka null outside of perl) upon finding
    #      any invalid parameters

    # TODO Sort input into ascending order

    # TODO Iterate over the sorted list, have an inner loop over the remaining
    #      siblings where it sums the pairs until the desired sum is matched

    return [0, 0]
}

1;
