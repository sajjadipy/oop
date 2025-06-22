
#!/usr/bin/perl
use strict;
use warnings;

# Node structure using a hash
my $root = {
    data  => 10,
    left  => undef,
    right => undef,
};

my $left_child = {
    data  => 5,
    left  => undef,
    right => undef,
};

my $right_child = {
    data  => 20,
    left  => undef,
    right => undef,
};

# Connecting nodes to form the tree
$root->{left}  = $left_child;
$root->{right} = $right_child;

# Traversing the tree (In-order traversal)
sub in_order_traversal {
    my ($node) = @_;
    return unless $node;

    in_order_traversal($node->{left});
    print "Node data: $node->{data}\n";  # Output: 5, 10, 20
    in_order_traversal($node->{right});
}

in_order_traversal($root);
