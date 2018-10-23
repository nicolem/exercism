package Raindrops;
use strict;
use warnings;
use Exporter 'import';
our @EXPORT_OK = qw(raindrop);

sub raindrop {
  my ($number) = @_;
  my $translation = "";
  $translation .= "Pling" if $number % 3 == 0;
  $translation .= "Plang" if $number % 5 == 0;
  $translation .= "Plong" if $number % 7 == 0;
  return $translation || $number;
}

1;
