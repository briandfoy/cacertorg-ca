use strict;
use Test::More;

use Mozilla::CA;

my $ca_file = CACertOrg::CA::SSL_ca_file();
diag $ca_file;
ok( -e $ca_file, 'CA file exists' );

ok( open(my $fh, "<", $ca_file), 'Can open CA file' );

my $data = do { local $/; <$fh> };
like( $data, qr/-----BEGIN CERTIFICATE-----/, 'Found certificate start' ); 

done_testing();
