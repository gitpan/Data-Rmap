#!/usr/bin/perl -w
use strict;
use Module::Build;

my $class = Module::Build->subclass(
	code => q{
		sub ACTION_code {
			my $class = shift;
			$class->SUPER::ACTION_code(@_);
			#`perl -pie 's/\t/    /g'`;
		}
	},
);

$class->new(
	module_name => 'Data::Rmap',
	license => 'perl',
	requires => {
		Scalar::Util => 0,
		# ?? perl => 5.6.0
	},
	create_makefile_pl => 'traditional',
	#pm_files => { 'Rmap.pm' => 'lib/Data/Rmap.pm' },
)->create_build_script;

__END__
         my $class = Module::Build->subclass
           (
            class => 'My::Builder',
            code => q{
             sub ACTION_foo {
               print "I'm fooing to death!\n";
             }
            },
           );

         my $m = $class->new(module_name => 'Module::Build');
         $m->create_build_script;

