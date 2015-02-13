package Flag;

use strict;
use warnings FATAL => 'all';
use diagnostics;
use Compress::Zlib ;
use IO::Uncompress::Unzip qw(unzip $UnzipError) ;

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
        #Passa a URL como parametro
        my ($url) = @_;
      
        #Captura as informações da url passada e passa para entrada
	my $entrada = $ua->get($url);

        #Pega o conteudo da variavel entrada, que no caso é o cod fonte e passa para a variavel conteudo
	my $conteudo = $entrada->content;

        #retorna o valor de conteudo
	return $conteudo;
}

sub download {
        #Passa a URL que quer puxar e coloca o nome do arquivo com a url
	my ($url,$arquivo) = @_;
      
	#Coloca o valor retornado da função URL para a variavel variavel
	my $variavel = url($url);
        
        #Abrio arquivo com o nome que escolheu por parametro
        open my $fh, '>', '/tmp/$arquivo';

       	print $fh $variavel;
	close $fh;	
}

sub ler_sem_descompactar{
        #Passa o caminho da pasta para descompactar
	my ($arquivo) = @_;
       
        my $gz = gzopen($arquivo,'rb') or die "Nao abre";
	my $line;
	while( $gz->gzreadline($line) > 0 ) {
    		print $line;
	}
	
	$gz->gzclose();   

	return 1;
}

sub descompactar_de_verdade{

        my ( $arquivo , $arquivo_destino ) = @_;

        local $/ = undef;
        open my $fucking_arquivo , '<' , $arquivo;
        my $fucking_conteudo = <$fucking_arquivo>;
        close $fucking_arquivo;

        my $dest = Compress::Zlib::memGunzip($fucking_conteudo) or die "Cannot uncompress: $gzerrno\n";

        open my $destino_handler , '>' , $arquivo_destino;

        #O conteudo da variavel $dest esta sendo passada para o manipulador dh do arquivo destino
        print $destino_handler $dest;
        close $destino_handler;

        return 1;
}
1;
