#!/usr/bin/perl

use strict;
use warnings FATAL => 'all';
use diagnostics;



use lib '/Users/vovolurdes/Developer/emolga/lib/';
use Flag;


my $arquivo = "bolinha.gz"; 
Flag::download("http://172.17.2.43/vd/xmls/foobar",$arquivo);
#Flag::ler_sem_descompactar("tmp/$arquivo");
Flag::descompactar_de_verdade("/tmp/$arquivo","testa");

my $bla = '/Users/vovolurdes/Developer/emolga/bin/testa';

open my $fh, '<', $bla;

my $contador=0;
my $narquivo=1;

while (my $solo = <$fh>)
{ 
open my $fh_bla, '>>', "louco$narquivo";
print  $fh_bla $solo;

	if ($solo =~/<\/produto>/){ $contador++;}
 	if ($contador==10){$narquivo++; close $fh_bla; $contador=0;}
}
  
#close $fh;
