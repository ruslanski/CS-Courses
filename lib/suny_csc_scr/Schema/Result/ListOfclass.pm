use utf8;
package suny_csc_scr::Schema::Result::ListOfclass;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

suny_csc_scr::Schema::Result::ListOfclass

=cut

use strict;
use warnings;

use Moose;
use MooseX::NonMoose;
use MooseX::MarkAsMethods autoclean => 1;
extends 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 TABLE: C<listOfclasses>

=cut

__PACKAGE__->table("listOfclasses");

=head1 ACCESSORS

=head2 courseid

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 coursename

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 fileds

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=cut

__PACKAGE__->add_columns(
  "courseid",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "coursename",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "fileds",
  { data_type => "varchar", is_nullable => 1, size => 50 },
);

=head1 PRIMARY KEY

=over 4

=item * L</courseid>

=back

=cut

__PACKAGE__->set_primary_key("courseid");

=head1 UNIQUE CONSTRAINTS

=head2 C<nameofcourse>

=over 4

=item * L</coursename>

=back

=cut

__PACKAGE__->add_unique_constraint("nameofcourse", ["coursename"]);

=head1 RELATIONS

=head2 comments

Type: has_many

Related object: L<suny_csc_scr::Schema::Result::Comment>

=cut

__PACKAGE__->has_many(
  "comments",
  "suny_csc_scr::Schema::Result::Comment",
  { "foreign.courseid" => "self.courseid" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-04-30 03:46:45
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:v69OYK0l/RBXgeAhjvylqQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
