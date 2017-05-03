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


 $c->stash(listOfclasses => [$c->model('DB::listOfclass')->all]);

        # Set the TT template to use.  You will almost always want to do this
        # in your action methods (action methods respond to user input in
        # your controllers).
     $c->stash(template => 'index.tt');

}

=head2 
=cut

#sub Courses :Local Args(1) {
  #  my ( $self, $c, $nextPage ) = @_;
 #   my $description=$c->model("Courses")->getdescription($nextPage);
#    my $next=$c->model("Courses")->getNext($nextPage);
    

    #Goal: First listOfclass then courses then comment page
    #my $next=$c->model("Comments")->getNext($nextPage);
#    $c->stash(template=>'List.tt', coursedescription => $description,
#	      nextcourse => $next);
#}


sub list :Local {
        # Retrieve the usual Perl OO '$self' for this object. $c is the Catalyst
        # 'Context' that's used to 'glue together' the various components
        # that make up the application
  #   my ($self, $c) = @_;

        # Retrieve all of the book records as book model objects and store
        # in the stash where they can be accessed by the TT template
 #    $c->stash(listOfclasses => [$c->model('DB::listOfclass')->all]);

        # Set the TT template to use.  You will almost always want to do this
        # in your action methods (action methods respond to user input in
        # your controllers).
#     $c->stash(template => 'list.tt');
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
