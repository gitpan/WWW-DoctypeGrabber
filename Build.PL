use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'WWW::DoctypeGrabber',
    license             => 'perl',
    dist_author         => 'Zoffix Znet <zoffix@cpan.org>',
    dist_version_from   => 'lib/WWW/DoctypeGrabber.pm',
    build_requires => {
        'Test::More' => 0,
    },
    requires => {
        'Carp'                  => 1.04,
        'LWP::UserAgent'        => 2.036,
        'Class::Data::Accessor' => 0.04001,
        'overload'              => 1.04,
    },
    add_to_cleanup      => [ 'WWW-DoctypeGrabber-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
