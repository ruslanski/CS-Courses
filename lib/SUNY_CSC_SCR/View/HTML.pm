package SUNY_CSC_SCR::View::HTML;
use Moose;
use namespace::autoclean;

extends 'Catalyst::View::TT';

__PACKAGE__->config(
    TEMPLATE_EXTENSION => '.tt',
    render_die => 1,
);

=head1 NAME

SUNY_CSC_SCR::View::HTML - TT View for SUNY_CSC_SCR

=head1 DESCRIPTION

TT View for SUNY_CSC_SCR.

=head1 SEE ALSO

L<SUNY_CSC_SCR>

=head1 AUTHOR

Ahmed Alotaibi,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
