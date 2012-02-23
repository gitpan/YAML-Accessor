#!/usr/bin/perl

use ExtUtils::MakeMaker;

WriteMakefile(
	NAME              => 'YAML::Accessor',
	VERSION           => '0.44',
	PREREQ_PM         => {
		'Params::Validate' => 0,
		'Scalar::Util'     => 0,
		'Class::Accessor'  => 0,
		'YAML::XS'         => 0,
		'strictures'       => 0,
	},
	'dist'            => {
		'COMPRESS' => 'gzip -9f',
		'SUFFIX'   => 'gz',
	},
	ABSTRACT => 'A syntactical sugar wrapper for YAML::XS.',
	AUTHOR   => 'Alex J. Avriette <alex@cpan.org>',
);
