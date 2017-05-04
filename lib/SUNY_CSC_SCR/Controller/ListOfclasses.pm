package SUNY_CSC_SCR::Controller::ListOfclasses;
use Moose;
use Catalyst 'Redirect';
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

sub course :Chained('/') :PathPart('listofclasses/course') :Args(1){
#Chained('/') :PathPart('books/url_create') :Args(5)
    my($self, $c, $crsID) = @_;
    $c->stash(course => $c->model('DB::listOfclass')->search({courseid => $crsID})->all);
    $c->stash(desc => [$c->model('DB::description')->search({courseid => $crsID})->all]);
    #$c->stash(comment => [$c->model('DB::comment')->search({courseid => $crsID})->all]);
    $c->stash(template => 'csc119.tt');
}

sub comment :Chained('/') :PathPart('listofclasses/comment') {
    my($self, $c) = @_;
    my $courseid = $c->request->params->{courseID};
    my $comment = $c->request->params->{comment};

    $c->model('DB::comment')->create({courseid => $courseid, comment=>$comment});
    #$c->stash(template => 'csc119.tt');
    return $c->response->redirect($c->uri_for_action('/listofclasss/course/'.$courseid));
}


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
