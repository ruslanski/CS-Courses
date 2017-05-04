package SUNY_CSC_SCR::Controller::descriptions;
use Moose;
use namespace::autoclean;

BEGIN { extends 'Catalyst::Controller'; }

=head1 NAME

SUNY_CSC_SCR::Controller::descriptions - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;

}        
sub csc119 :Local {
my ($self, $c) = @_;

        # Retrieve all of the book records as book model objects and store
        # in the stash where they can be accessed by the TT template
     $c->stash(descriptions => [$c->model('DB::description')->all]);
     $c->stash(template => 'descriptions/csc119.tt');
}



=encoding utf8

=head1 AUTHOR

Ruslan Shakirov,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
