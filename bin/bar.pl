use strict;
use warnings FATAL => 'all';
use diagnostics;

#local $\ = "\n";

my @qualquercoisa = ();


$qualquercoisa[5] = 2;
$qualquercoisa[7] = "k";

my %tentafazerumhash = (banana => "amarelo");

print "\n".$tentafazerumhash{banana};
$tentafazerumhash{carro} = "Gol";
print $tentafazerumhash{carro}."\n";

#adicionando um array dentro de um hash
$tentafazerumhash{livro} = ['Game of Thrones','Inferno', 'Guia dos mochilheiros das galaxias'];


print "Exibir na tela os valores dos array que esta dentro do Hash";
    foreach ( @{$tentafazerumhash{livro}} )  {
        print $_;
    }


#my $scalar = ['Game of Thrones','Inferno', 'Guia dos mochilheiros das galaxias'];
#print $scalar;

<STDIN>;

#hash dentro de hash
my %cartoon = (

    cdz => {
      pegasus => "Seya",
      aquario => "Camus",
      andromeda => "Shun viado",
},

    onepiece => {
      capitao => "Luffy",
      espadachim => "Roronoa Zoro",
      cozinheiro => "Sanji",
},
    pokemon => {
      mestrepokemon => "Ashe",
      enfermeira    => "Joy",
      professor     => "Carvalho",
},
     
);

print "\n\n\t\tUm hash de um hash:\n";
#sh de um hash:\n";
print $cartoon{cdz}{pegasus};

 for my $chaves (sort keys %cartoon){
	print "\n$chaves:\n";
	for my $i (sort keys %{$cartoon{$chaves}}){
		print "$i: $cartoon{$chaves}{$i} \n";
	}
}

<STDIN>;

#arrays com hash
my @desenho = ( 
{
      pegasus => "Seya",
      aquario => "Camus",
      andromeda => "Shun viado",
},

{
      capitao => "Luffy",
      espadachim => "Roronoa Zoro",
      cozinheiro => "Sanji",
},
{
      mestrepokemon => "Ashe",
      enfermeira    => "Joy",
      professor     => "Carvalho",
},

);

print "\n\n\t\tUm hash de um Array:\n";

 for my $chaves (@desenho){
         for my $i (sort keys %$chaves){
         print "$$chaves{$i} \n";
       }
	#print @desenho[$chaves];
}

<STDIN>;

my @anime = (["Seya","Camus","Shun"],["Luffy","Roronoa Zoro","Sanji"],["Ashe","Joy","Carvalho"]);

print "\n\n\t\tUm Array de um Array:\n";

#$i esta com a posição da memoria do array, para referenciar precisa colocar o @$i
for my $i (@anime){

#$j está pegando as chaves do array
	for my $j (sort keys @$i){

        #$$i esta pegando o valor que contem dentro do array do array 
            print $$i[$j]."\n";
	}
} 






