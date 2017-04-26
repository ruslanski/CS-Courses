package SUNY_CSC_SCR::Model::Courses;
use Moose;
use namespace::autoclean;

extends 'Catalyst::Model';
our $coursedescription={
	start => "A list of CSC classes: ",
	CSC221 => "Intro to programming, Python",
	CSC223 => "Data Structure using Python",
	CSC311 => "Perl language ..",
	CSC319 => "C++ language ..",
	CSC341 => "Database and web application"
	
};

our $nextcourse={
	start=> {CSC221 => "CSC221", CSC223 => "CSC223", 
	CSC311 => "CSC311", CSC319 =>"CSC319", CSC341 => "CSC341"},
	CSC221=> {start => "Restart", },
	CSC223=> {start => "Restart"},
	CSC311=> {start => "Restart"},
	CSC319=> {start => "Restart"},
	CSC341=> {start => "Restart"},

};


=head1 NAME

SUNY_CSC_SCR::Model::Courses - Catalyst Model

=head1 DESCRIPTION

Catalyst Model.

=cut
sub getdescription($$)
{ 	my($self, $part) = @_;
  	return $coursedescription->{$part};
}

=head2 getNext

=cut

sub getNext($$){
	my($self, $part)=@_;
	return $nextcourse->{$part};
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
