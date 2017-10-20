#!/usr/bin/env perl

#
use common::sense;

my $filename = 'dummy_data.csv';
my @phone_rand = (1..10);
my @name_rand = ('a'..'z');

open(FH,">>", $filename) || die "$!";

#00_000
for (my $i = 1; $i<= 3_000_000; $i++) {
    say FH _get_line($i);
}

close(FH);

=head2 _get_line($)


=cut
sub _get_line {
    my $num = shift;
    my $name = join( "", @name_rand[map { rand @name_rand } (0..11) ] );
    my $phone = join( "", @phone_rand[map { rand @phone_rand } (0..10) ] );
    return sprintf( '%d,%s,%d', $num, substr($name,0,12), substr($phone,0,11) );
}






