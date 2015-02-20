use strict;
use warnings FATAL => 'all';
use diagnostics;

local $\ = "\n";

my @qualquercoisa = ();


$qualquercoisa[5] = 2;
$qualquercoisa[7] = "k";

my %tentafazerumhash = (banana => "amarelo");

print $tentafazerumhash{banana};
$tentafazerumhash{carro} = "Gol";
print $tentafazerumhash{carro}."\n";

$tentafazerumhash{livro} = ['Game of Thrones','Inferno', 'Guia dos mochilheiros das galaxias'];

    foreach ( @{$tentafazerumhash{livro}} )  {
        print $_;
    }

print $tentafazerumhash{livro}[0];

my $scalar = ['Game of Thrones','Inferno', 'Guia dos mochilheiros das galaxias'];

print $scalar;

