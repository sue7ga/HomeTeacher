package HomeTeacher::Web::C::Root;

sub home{
 my($class,$c) = @_;
 return $c->render('home.tx');
}

1;
