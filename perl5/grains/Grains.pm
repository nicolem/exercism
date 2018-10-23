package Grains;
use strict;
use warnings;
use Exporter 'import';
our @EXPORT_OK = qw(grains_on_square total_grains);

sub grains_on_square {
  my ($square) = @_;
  if ($square > 0 and $square < 65) {
    return 2**($square-1);
  } else {
    return "ERROR";
  }
}

sub total_grains {
  return 2**64 - 1;
}

1;
