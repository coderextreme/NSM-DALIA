while (<STDIN>) {
	$_ =~ s/[\0]//g;
	print $_;
}
