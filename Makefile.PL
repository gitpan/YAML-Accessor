#!/usr/bin/perl

use warnings;
use strict;

use ExtUtils::MakeMaker;

WriteMakefile(
	NAME              => 'YAML::Accessor',
	VERSION           => '0.10',
	PREREQ_PM         => {
		'Params::Validate' => 0,
		'Class::Accessor'  => 0,
		'YAML::XS'         => 0,
		'File::Slurp'      => 0,
		
	},
	'dist'            => {
		'COMPRESS' => 'gzip -9f',
		'SUFFIX'   => 'gz',
	},
	ABSTRACT => 'A syntactical sugar wrapper for YAML::XS.',

);
