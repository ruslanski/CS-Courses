use utf8;
package suny_csc_scr::Schema::Result::Comment;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

suny_csc_scr::Schema::Result::Comment

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

=head1 TABLE: C<comment>

=cut

__PACKAGE__->table("comment");

=head1 ACCESSORS

=head2 courseid

  data_type: 'integer'
  default_value: 0
  is_foreign_key: 1
  is_nullable: 0

=head2 studentid

  data_type: 'integer'
  default_value: 0
  is_foreign_key: 1
  is_nullable: 0

=head2 posts

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 couresname

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=cut

__PACKAGE__->add_columns(
  "courseid",
  {
    data_type      => "integer",
    default_value  => 0,
    is_foreign_key => 1,
    is_nullable    => 0,
  },
  "studentid",
  {
    data_type      => "integer",
    default_value  => 0,
    is_foreign_key => 1,
    is_nullable    => 0,
  },
  "posts",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "couresname",
  { data_type => "varchar", is_nullable => 1, size => 20 },
);

=head1 PRIMARY KEY

=over 4

=item * L</courseid>

=item * L</studentid>

=back

=cut

__PACKAGE__->set_primary_key("courseid", "studentid");

=head1 RELATIONS

=head2 courseid

Type: belongs_to

Related object: L<suny_csc_scr::Schema::Result::ListOfclass>

=cut

__PACKAGE__->belongs_to(
  "courseid",
  "suny_csc_scr::Schema::Result::ListOfclass",
  { courseid => "courseid" },
  { is_deferrable => 1, on_delete => "RESTRICT", on_update => "RESTRICT" },
);

=head2 studentid

Type: belongs_to

Related object: L<suny_csc_scr::Schema::Result::Student>

=cut

__PACKAGE__->belongs_to(
  "studentid",
  "suny_csc_scr::Schema::Result::Student",
  { studentid => "studentid" },
  { is_deferrable => 1, on_delete => "RESTRICT", on_update => "RESTRICT" },
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-04-30 03:46:45
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:tGErHIFEp9vp84I0mbh+yw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
