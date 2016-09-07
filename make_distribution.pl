#!/usr/bin/perl
use strict;
use File::Path qw(remove_tree make_path);
use File::Copy;

my $zipexe = "c:\\bin\\zip.exe";
die "Cannot find zip program\n" if ! -e $zipexe;
mkdir 'distribution' if ! -d 'distribution';
my ($y,$m,$d) = (localtime)[5,4,3];
$y += 1900;
$m++;
my $version = sprintf("%04d%02d%02d",$y,$m,$d);
my $zip = "distribution/snap$version.zip";
unlink $zip;
system($zipexe,
   "-j",
   "$zip",
   "ms/install/snap/release/snap_install.msi",
   );
print "Built $zip\n";

my $zip = "distribution/snap64_$version.zip";
unlink $zip;
system($zipexe,
   "-j",
   "$zip",
   "ms/install/snap64/release/snap64_install.msi",
   );
print "Built $zip\n";

print "Building concord zip file\n";
$zip = "concord$version.zip";
remove_tree('temp/concord');
make_path('temp/concord','temp/concord/config','temp/concord/config/coordsys');
copy('ms/built/Releasex86/concord.exe','temp/concord') || die "Cannot find concord.exe\n";
copy('src/help/concord.chm','temp/concord') || die "Cannot find concord.chm\n";
foreach my $cf (glob('src/coordsys/*'))
{
    copy($cf,'temp/concord/config/coordsys');
}
chdir('temp/concord');
system($zipexe,
   "-r",
   "../../distribution/$zip",
   "*"
   );
chdir('../..');
print "Built $zip\n";
