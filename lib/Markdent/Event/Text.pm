package Markdent::Event::Text;

use strict;
use warnings;
use namespace::autoclean;

use Markdent::Types qw( Str ArrayRef );

use Moose;
use MooseX::StrictConstructor;

has text => (
    is       => 'ro',
    isa      => Str,
    required => 1,
);

has _converted_from => (
    is        => 'ro',
    isa       => Str,
    predicate => '_has_converted_from',
);

has _merged_from => (
    is        => 'ro',
    isa       => ArrayRef [Str],
    predicate => '_has_merged_from',
);

with 'Markdent::Role::Event';

__PACKAGE__->meta()->make_immutable();

1;

# ABSTRACT: An event for plaint text

__END__

=pod

=head1 DESCRIPTION

This class represents plain text.

=head1 ATTRIBUTES

This class has the following attributes:

=head2 text

The text.

=head1 ROLES

This class does the L<Markdent::Role::Event> role.

=head1 BUGS

See L<Markdent> for bug reporting details.

=cut
