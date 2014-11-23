package HomeTeacher::Web::C::Root;

sub home{
 my($class,$c) = @_;
 my @latest_teachers = $c->db->search_latest_teachers();
 return $c->render('home.tx',{latest_teachers =>\@latest_teachers });
}

1;
