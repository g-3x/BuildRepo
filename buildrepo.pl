#!/opt/local/bin/perl -l

use Config::IniFiles;
use enum qw(DO_FULL DO_MAJOR DO_MINOR DO_BUILD);

# settings

$config_file = 'config-file.ini';

# check if new build (-b), minor (-mi) , major (-ma) or full (-f) release

print '';
print 'BuildRepo.pl (0.1) by Jannik Kramer (c) 2015';
print '';
print 'Prepare:';

print ' -get config:' . $config_file;
my $cfg = Config::IniFiles->new( -file => $config_file );

print ' -get all packages to be packed';
@sections = $cfg->Sections();

foreach (@sections) {
	buildPackage($_);
}

sub buildPackage{
	$source_folder = $full = $cfg->val(@_, 'path');;
	if (!(-d $source_folder)) {
		
	}
	$full = $cfg->val(@_, 'full');
	$major = $cfg->val(@_, 'major');
	$minor = $cfg->val(@_, 'minor');
	$build = $cfg->val(@_, 'build');
	
}