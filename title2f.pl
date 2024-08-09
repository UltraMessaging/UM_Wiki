#!/usr/bin/env perl
# title2f.pl
#
# This code and its documentation is Copyright 2023-2023 Steven Ford
# and licensed "public domain" style under Creative Commons "CC0":
#   http://creativecommons.org/publicdomain/zero/1.0/
# To the extent possible under law, the contributors to this project have
# waived all copyright and related or neighboring rights to this work.
# In other words, you can use this code for any purpose without any
# restrictions.  This work is published from: United States.  The project home
# is https://github.com/fordsfords/um_wiki

use strict;
use warnings;
use Getopt::Std;
use File::Basename;
use Carp;

# globals
my $tool = basename($0);

# Main loop; read each line in each file.
while (<>) {
  chomp;

  if (/^# (.*\S)\s*$/) {
    my $title_tag = mk_id($1);
    if (basename($ARGV, ".md") ne $title_tag) { die "file $ARGV not match title tag $title_tag"; }
    print "$1\n";
    exit(0);
  }
}

# All done.
die "No title found\n";


# End of main program, start subroutines.


sub mk_id {
  my ($hdr_text) = @_;

  my $id = lc($hdr_text);
  $id =~ s/ /-/g;
  $id =~ s/[^a-z0-9_-]//g;

  return $id;
}  # mk_id
