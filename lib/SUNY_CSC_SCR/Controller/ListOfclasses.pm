package SUNY_CSC_SCR::Controller::ListOfclasses;
use Moose;
use namespace::autoclean;
BEGIN { extends 'Catalyst::Controller'; }

=head1 NAME

SUNY_CSC_SCR::Controller::ListOfclasses - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;

}

=head2 
=cut

sub Courses :Local Args(1) {
    my ( $self, $c, $nextPage ) = @_;
    my $description=$c->model("Courses")->getdescription($nextPage);
    my $next=$c->model("Courses")->getNext($nextPage);
    

    #Goal: First listOfclass then courses then comment page
    #my $next=$c->model("Comments")->getNext($nextPage);
    $c->stash(template=>'List.tt', coursedescription => $description,
	      nextcourse => $next);
}

=encoding utf8

=head1 AUTHOR

Ahmed Alotaibi,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
