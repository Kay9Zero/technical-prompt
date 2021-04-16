package TechnicalPrompt;
use strict;
use warnings;

use Scalar::Util qw(looks_like_number);
use Exporter 'import';
our @EXPORT_OK = qw(findPair);

use Try::Tiny;

sub findPair {
    my ($integers, $desired_sum) = @_;

    $integers = try {
        [
            sort {
                die "Invalid element\n" unless looks_like_number($a) && $a > 0 && $a != $b;
                $a <=> $b
            } @$integers
        ];
    }
    catch {
        my $err = $_;
        return undef if $err eq "Invalid element\n";
        die $err;
    };

    return undef unless defined $integers;

    while (my $element = shift @$integers) {
        foreach my $sibling (@$integers) {
            return [$element, $sibling] if ($element + $sibling) == $desired_sum;
        }
    }

    return undef;
}

1;
