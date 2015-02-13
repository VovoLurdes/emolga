package Flag;

use strict;
use warnings FATAL => 'all';
use diagnostics;
require LWP::UserAgent;

my $ua = LWP::UserAgent->new;
$ua->timeout(10);
$ua->env_proxy;


sub foo {
        print 'bar';
	return 1;
}

sub baz {
         my($a) = @_;
	print "$a";
        return 1;
}

sub url {
        my ($url) = @_;
	my $entrada = $ua->get($url);
	my $conteudo = $entrada->content;
	print $conteudo;
}
1;
