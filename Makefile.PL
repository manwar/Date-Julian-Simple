#!/usr/bin/perl

use 5.006;
use strict;
use warnings FATAL => 'all';
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME               => 'Date::Julian::Simple',
    AUTHOR             => q{Mohammad S Anwar <mohammad.anwar@yahoo.com>},
    VERSION_FROM       => 'lib/Date/Julian/Simple.pm',
    ABSTRACT_FROM      => 'lib/Date/Julian/Simple.pm',
    LICENSE            => 'artistic_2',
    MIN_PERL_VERSION   => 5.006,
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => 0,
    },
    BUILD_REQUIRES   => {
        'Test::More' => 0,
    },
    PREREQ_PM => {
        'Moo'                  => '2.000000',
        'namespace::autoclean' => '0.28',
        'Date::Utils'          => '0.28',
        'Date::Calc'           => '6.0',
        'Time::localtime'      => '1.02',
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'Date-Julian-Simple-*' },
    (eval { ExtUtils::MakeMaker->VERSION(6.46) } ? (META_MERGE => {
        'meta-spec' => { version => 2 },
        provides    => {
            'Date::Julian::Simple' => { file => 'lib/Date/Julian/Simple.pm', version => '0.17' },
        },
        resources => {
            repository => {
                type => 'git',
                url  => 'https://github.com/manwar/Date-Julian-Simple.git',
                web  => 'https://github.com/manwar/Date-Julian-Simple',
            },
        }})
     : ()
    ),
);
