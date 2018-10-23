# Declare package 'Bob'
package Bob;
use strict;
use warnings;
use Exporter 'import';
our @EXPORT_OK = qw(hey);

sub hey {
  my ($msg) = @_;
  my $upper_check = ($msg =~ /\p{Uppercase}/ and not $msg =~ /\p{Lowercase}/);
  my $reply = "Whatever.";

  if ($msg =~ /\?\s*$/ and $upper_check) { $reply = "Calm down, I know what I'm doing!"; }
  elsif ($upper_check)                   { $reply = "Whoa, chill out!"; }
  elsif ($msg =~ /\?\s*$/)               { $reply = "Sure."; }
  elsif ($msg =~ /^\s*$/)                { $reply = "Fine. Be that way!"; }

  return $reply
}

1;
