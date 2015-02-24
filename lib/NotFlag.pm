package NotFlag;

use strict;
use warnings FATAL => 'all';
use diagnostics;

sub new
{
    my ( $class) = @_;

    my $self = bless {
      cdz => 'Pegasus',
      naruto => 'Uzumaki',
      monkey => 'D. Luffy',
    } , $class;

    return $self;
}

sub tem_vogais
{
    my ( $self , $array ) = @_;

    return grep { /[aeiou]/i } @{$array};
}

sub primeiras_duas_letras
{
    my ( $self , $array ) = @_;

    return map { /^(..?)/ } @{$array};
}

1;
