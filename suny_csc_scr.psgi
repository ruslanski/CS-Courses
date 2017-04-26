use strict;
use warnings;

use SUNY_CSC_SCR;

my $app = SUNY_CSC_SCR->apply_default_middlewares(SUNY_CSC_SCR->psgi_app);
$app;

