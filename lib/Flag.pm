package Flag;

use strict;
use warnings FATAL => 'all';
use diagnostics;

sub foo {
        print 'bar';
	return 1;
}

sub baz {
         my($a) = @_;
	print "$a";
        return 1;
}

1;
