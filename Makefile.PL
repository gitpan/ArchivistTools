#
# Copyright (C) 2008 DMA.
#

use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'	=> 'ArchivistTools',
    'DISTNAME'  => 'ArchivistTools',
    'ABSTRACT'  => 'Bare beginnings of an Archival Document management tool suite.',
    'AUTHOR'    => 'Dale Amon',
    'VERSION_FROM' => 'Version',
    'INST_SCRIPT' => 'blib/usr/bin',
    'EXE_FILES' => [ qw(bin/ScanBooklet), qw(bin/scan), qw(bin/ArchiveName)],
    'PREREQ_PM' => {'Exporter' => 0, 'POSIX' => 0, 'Fault::Logger' => 0, 'Scanner::Job' => 0, 'Document::Directory' => 0, 'DMA' => 0, Term::Readline::Gnu => 0 },
    'dist'      => {'COMPRESS'  => 'gzip', 'SUFFIX'    => '.gz'},
    'clean'     => {FILES => "*/*/*~ *~ .#* */*/.#*"},
);
