package HomeTeacher::Web::C::Teacher;

use HomeTeacher::Model::Pref;
my $pref = new HomeTeacher::Model::Pref();
my @prefs = $pref->show();

sub register{
 my($class,$c) = @_;
 return $c->render('register.tx',{prefs => \@prefs});
}

sub teacherregister{
 my($class,$c) = @_;
 print Dumper $c->req->parameters;
 $c->db->register_teacher($c->req->parameters);
 return $c->redirect('/teacher/register');
}


1;
