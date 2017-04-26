use strict;
use warnings;
use Test::More;


use Catalyst::Test 'SUNY_CSC_SCR';
use SUNY_CSC_SCR::Controller::ListOfclasses;

ok( request('/listofclasses')->is_success, 'Request should succeed' );
done_testing();
