use Test::More tests => 7;

use YAML::Accessor;
our $yml = './testdata/testdata.yaml';

my $ya = YAML::Accessor->new(
	file       => $yml,    # Can be a filehandle.
	autocommit => 0,       # This is a default. Can be 1 (true).
	readonly   => 1,       # This is a default. Can be 1 (true).
	damian     => 1,       # See below. Can be 0 (false).
);

my $rya = $ya->refresh();

ok( $rya );
ok( $rya->get_ordered_mapping() );
ok( $rya->get_mapping() );

ok( $rya->get_nested() );
ok( $rya->get_string() );
ok( $rya->get_heredoc() );
ok( $rya->get_concatenated() );
