use utf8;
package suny_csc_scr::Schema::Result::NameOfcourse;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

suny_csc_scr::Schema::Result::NameOfcourse

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

=head1 TABLE: C<nameOfcourse>

=cut

__PACKAGE__->table("nameOfcourse");

=head1 ACCESSORS

=head2 description

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 rating

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 professor

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 courseid

  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "description",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "rating",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "professor",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "courseid",
  { data_type => "integer", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</courseid>

=back

=cut

__PACKAGE__->set_primary_key("courseid");

=head1 UNIQUE CONSTRAINTS

=head2 C<experssion>

=over 4

=item * L</description>

=back

=cut

__PACKAGE__->add_unique_constraint("experssion", ["description"]);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-04-30 03:46:45
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:QyALMMwPL+vxNl6BqCRdDg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
