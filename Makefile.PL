use strict;
use warnings;

my $github    = 'https://github.com/briandfoy/';
my $main_file = 'lib/CACertOrg/CA.pm';

my %WriteMakefile = (
	NAME          => "CACertOrg::CA",
	VERSION_FROM  => "lib/CACertOrg/CA.pm",
	ABSTRACT_FROM => "lib/CACertOrg/CA.pm",
	AUTHOR        => 'brian d foy <bdfoy@cpan.org>',
	LICENSE       => 'mozilla_1_1 gpl-2 lgpl_2_1',

	'META_MERGE' => {
        'meta-spec' => { version => 2 },
		resources => {
			repository => {
				type => 'git',
				url  => 'git@github.com:briandfoy/cacertorg-ca',
				web  => 'https://github.com/briandfoy/cacertorg-ca',
				},
			},
		},
);

sub arguments { \%WriteMakefile }

do_it() unless caller;
sub do_it {
	require File::Spec;
	my $MM ='ExtUtils::MakeMaker';
	my $MM_version =
		eval{ "$MM " . $WriteMakefile{'CONFIGURE_REQUIRES'}{'ExtUtils::MakeMaker'} }
			//
		"$MM 6.64";
	eval "use $MM_version";
	eval "use Test::Manifest 1.21" 
		if -e File::Spec->catfile( qw(t test_manifest) );
	WriteMakefile( %WriteMakefile );
	}


no warnings;
__PACKAGE__;
