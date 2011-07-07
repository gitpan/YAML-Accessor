package Foo;

use Test::More tests => 12;
use warnings;
use strict;
use Carp qw{ confess };

use base qw{ YAML::Accessor };

our $yml = './testdata/testdata.yml';

ok( -e $yml );

my $fh;

open $fh, "+<", $yml
	or die $!;

ok( $fh );

my $ya = Foo->new(
	file => $fh,           # Can be a filehandle.
	autocommit => 0,       # This is a default. Can be 1 (true).
	readonly   => 1,       # This is a default. Can be 1 (true).
	damian     => 1,       # See below. Can be 0 (false).
);

ok( $ya );
ok( $ya->get_Logging() );
ok( $ya->get_Database() );

# Now this is crummy. We /know/ what the yml file looks like
# but we're replicating the data here.

ok( $ya->get_Logging()->[0]->{logger} eq "database" );
ok( $ya->get_Logging()->[1]->{stdout} == 1 );
ok( $ya->get_Logging()->[2]->{stderr} == 0 );

ok( $ya->get_Database()->[0]->{dbname} eq "snort" );
ok( $ya->get_Database()->[1]->{dbhost} eq "localhost" );
ok( $ya->get_Database()->[2]->{dbuser} eq "snortuser" );
ok( $ya->get_Database()->[3]->{dbpass} eq "password" );