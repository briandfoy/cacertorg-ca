use ExtUtils::MakeMaker;

eval 'use Test::Manifest 1.21';

WriteMakefile(
	NAME          => "CACertOrg::CA",
	VERSION_FROM  => "lib/CACertOrg/CA.pm",
	ABSTRACT_FROM => "lib/CACertOrg/CA.pm",
	AUTHOR        => 'brian d foy <bdfoy@cpan.org>',
	LICENSE       => 'mozilla_1_1 gpl-2 lgpl_2_1',
	META_MERGE => {
		resources => {
			repository => 'http://github.com/briandfoy/cacertorg-ca',
		},
   },
);
