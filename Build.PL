#!/usr/bin/perl -w
use strict;
use Module::Build;

Module::Build->new(
	module_name => 'Data::Rmap',
	license => 'perl',
	requires => {
		'Scalar::Util' => 0,
		'Test::Exception' => 0,
		# ?? perl => 5.6.0
	},
	create_makefile_pl => 'traditional',
	#pm_files => { 'Rmap.pm' => 'lib/Data/Rmap.pm' },
)->create_build_script;

__END__
my $class = Module::Build->subclass(
	code => q{
		sub ACTION_xxx {
			my $class = shift;
			$class->SUPER::ACTION_xxx(@_);
			#`perl -pie 's/\t/    /g'`;
		}
	},
sub ACTION_distdir {
    my $self = shift;
    $self->SUPER::ACTION_distdir; # do default stuff
    ... do tabs2spaces to files in $self->dist_dir; ...
}
);
