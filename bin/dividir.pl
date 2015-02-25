#!/usr/bin/perl

use strict;
use warnings FATAL => 'all';
use diagnostics;

use lib '/Users/vovolurdes/Developer/emolga/lib/';
use Flag;

print "\t\tEscreva o nome do arquivo que você quer renomear:\n";
chomp (my $arquivo=<ARGV>);

print "\n\t\tDigite a url?\n";
chomp (my $url=<ARGV>);

print "\n\t\tDigita o nome do arquivo junto com o caminho: \n";
chomp (my $arquivo_destino=<ARGV>);

Flag::download($url,$arquivo);

Flag::descompactar_de_verdade("/tmp/$arquivo",$arquivo_destino);
open my $fh, '<', $arquivo_destino;

my $contador=0;
my $narquivo=1;

#Flag::remover_arquivo("/Users/vovolurdes/Developer/emolga/bin","louco");

my $comeco_xml = "<?xml version=\"1.0\" encoding=\"ISO-8859-1\"?>\n<bagaggio>\n<data_atualizacao>2015-02-13T15:30:02GMT-3</data_atualizacao>\n<produtos>\n";
my $final_xml = "\n</produtos>\n</bagaggio>";
while (my $solo = <$fh>)
{ 
	
	open my $fh_bla, '>>', "louco$narquivo";
	if(-z "louco$narquivo") {
		if ($narquivo>1){print $fh_bla $comeco_xml;}
		}

	print  $fh_bla $solo;

	if ($solo =~/<\/produto>/){ $contador++;}
 	if ($contador==10){$narquivo++; $contador=0; print $fh_bla $final_xml}

close $fh_bla;
}
 

 
close $fh;
