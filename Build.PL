use Module::Build;
Module::Build->new(
	module_name => 'Data::Rmap',
	license => 'perl',
	requires => {
		Scalar::Util => 0,
		# ?? perl => 5.6.0
	},
	create_makefile_pl => 'traditional',
	#pm_files => { 'Rmap.pm' => 'lib/Data/Rmap.pm' },
)->create_build_script;

