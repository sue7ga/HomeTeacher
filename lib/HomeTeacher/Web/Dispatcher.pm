package HomeTeacher::Web::Dispatcher;
use strict;
use warnings;
use utf8;
use Amon2::Web::Dispatcher::RouterBoom;

use Module::Find;

useall 'HomeTeacher::Web::C';
base 'HomeTeacher::Web::C';
use Data::Dumper;

any '/' => sub {
    my ($c) = @_;
    my $counter = $c->session->get('counter') || 0;
    $counter++;
    $c->session->set('counter' => $counter);
    return $c->render('index.tx', {
        counter => $counter,
    });
};

get '/teacher/register' => "Teacher#register";

post '/teacherregister' => "Teacher#teacherregister";

get 'home' => "Root#home";

1;
