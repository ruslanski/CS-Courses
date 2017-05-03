use utf8;
package SUNY_CSC_SCR::Schema::Result::ListOfclass;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SUNY_CSC_SCR::Schema::Result::ListOfclass

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

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 7

=head2 coursename

  data_type: 'varchar'
  is_nullable: 1
  size: 64

=head2 fileds

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 rating

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "courseid",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 7 },
  "coursename",
  { data_type => "varchar", is_nullable => 1, size => 64 },
  "fileds",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "rating",
  { data_type => "integer", is_nullable => 1 },
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


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-05-02 20:35:47
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:55HpyUB1sx2/gxOpQxZV6g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
