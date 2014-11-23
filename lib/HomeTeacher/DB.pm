package HomeTeacher::DB;
use strict;
use warnings;
use utf8;
use parent qw(Teng);

__PACKAGE__->load_plugin('Count');
__PACKAGE__->load_plugin('Replace');
__PACKAGE__->load_plugin('Pager');

use Data::Dumper;

sub register_teacher{
  my ($self,$args) = @_; 
  print Dumper $args;
 $self->insert('teachers',{email => $args->{email},password=>$args->{password},name => $args->{name},school => $args->{school},age => $args->{age},prefecture=> $args->{prefecture},income => $args->{income},day => $args->{day},teaching => $args->{teaching},profile => $args->{profile},gender => $args->{gender}}); 
}

sub search_latest_teachers{
 my($self) = @_;
 my @rows = $self->search(
   'teachers', 
                         {},
    {order_by => {'age' => 'ASC'},limit => 10}
 );
 return @rows;
}

1;
