package TechnicalPrompt;
use strict;
use warnings;

use Scalar::Util qw(looks_like_number);
use Exporter 'import';
our @EXPORT_OK = qw(findPair);

use Try::Tiny;

sub findPair {
    my ($integers, $desired_sum) = @_;

    $integers = _validate_and_sort($integers) or return undef;

    return _iterate_siblings($integers, $desired_sum);
}


# Caution: Uncle Bob advocates having functions do one thing as a best practice, this violates that principle...
sub _validate_and_sort {
    my $integers = shift;

    try {
        return [
            sort {
                die "Invalid element\n" unless looks_like_number($a) && $a > 0 && $a != $b;
                $a <=> $b
            } @$integers
        ];
    }
    catch {
        die $_ unless $_ eq "Invalid element\n";
        return undef
    };
}

# FIXME: Perhaps a better name which self-describes intent?
sub _iterate_siblings {
    my ($integers, $desired_sum) = @_;

    while (my $element = shift @$integers) {
        foreach my $sibling (@$integers) {
            return [$element, $sibling] if ($element + $sibling) == $desired_sum;
        }
    }

    return undef
}

1;
