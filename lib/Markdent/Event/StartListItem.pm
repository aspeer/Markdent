package Markdent::Event::StartListItem;

use strict;
use warnings;
use namespace::autoclean;

use Markdent::Types qw( Str );

use Moose;
use MooseX::StrictConstructor;

has bullet => (
    is       => 'ro',
    isa      => Str,
    required => 1,
);

with 'Markdent::Role::Event';

__PACKAGE__->meta()->make_immutable();

1;

# ABSTRACT: An event for the start of a list item

__END__

=pod

=head1 DESCRIPTION

This class represents the start of a list item.

=head1 ATTRIBUTES

This class has the following attributes:

=head2 bullet

The bullet text for the list item.

=head1 ROLES

This class does the L<Markdent::Role::Event> role.

=head1 BUGS

See L<Markdent> for bug reporting details.

=cut
