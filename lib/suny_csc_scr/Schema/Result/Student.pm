use utf8;
package suny_csc_scr::Schema::Result::Student;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

suny_csc_scr::Schema::Result::Student

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

=head1 TABLE: C<student>

=cut

__PACKAGE__->table("student");

=head1 ACCESSORS

=head2 studentid

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 studentname

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 major

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=cut

__PACKAGE__->add_columns(
  "studentid",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "studentname",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "major",
  { data_type => "varchar", is_nullable => 1, size => 20 },
);

=head1 PRIMARY KEY

=over 4

=item * L</studentid>

=back

=cut

__PACKAGE__->set_primary_key("studentid");

=head1 UNIQUE CONSTRAINTS

=head2 C<infromation>

=over 4

=item * L</studentname>

=back

=cut

__PACKAGE__->add_unique_constraint("infromation", ["studentname"]);

=head1 RELATIONS

=head2 comments

Type: has_many

Related object: L<suny_csc_scr::Schema::Result::Comment>

=cut

__PACKAGE__->has_many(
  "comments",
  "suny_csc_scr::Schema::Result::Comment",
  { "foreign.studentid" => "self.studentid" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-04-30 03:46:45
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:trTjkioj1kmyhLG6Dg1zpg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
