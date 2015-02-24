#!/usr/bin/perl

use strict;
use warnings FATAL => 'all';
use diagnostics;



use lib '/Users/vovolurdes/Developer/emolga/lib/';
use Flag;


my $arquivo = "bolinha.gz"; 
Flag::download("http://172.17.2.43/vd/xmls/foobar",$arquivo);
#Flag::ler_sem_descompactar("tmp/$arquivo");
#Flag::descompactar_de_verdade("tmp/$arquivo","$arquivo");

#$bla = '/Users/vovolurdes/Developer/emolga/bin/$arquivo';

#open my $fh, '<', $bla or croak "Não foi possível abrir o arquivo '$arquivo' $OS_ERROR";

#my $contador=0;
#my $narquivo=1;

#while (my $solo = <$fh>)
#{ 
#open my $fh_bla, '>', $arquivo_$narquivo;
#print $arquivo_$narquivo $solo;

#	if (m/<[\]produto>/xms){ $contador++;}
# 	if ($contador==10){$n_arquivo++; close $fh_bla;}
#}
  
#close $fh;
