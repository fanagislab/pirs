use strict;

my $base_calling_matrix_PE100 = shift;
my $wanted_read_length = shift;

my $cycles = $wanted_read_length * 2;
my $times = $wanted_read_length / 100;

open IN, $base_calling_matrix_PE100 || die "fail $base_calling_matrix_PE100";
$/ = "[DistMatrix]\n";
my $head = <IN>;
$head =~ s/Cycle_number\s\d+/Cycle_number $cycles/;
print $head;

$/ = "<<END";
my $Dist_matrix = <IN>; 
chomp $Dist_matrix;

my @lines = split("\n", $Dist_matrix);
my $Dist_matrix_head = shift @lines;
print $Dist_matrix_head."\n";
my %hash;
foreach  (@lines) {
	my ($refbase,$cycle) = ($1,$2) if(/(\w)\s+(\d+)/);
	$hash{$refbase}{$cycle} = $_;
}

foreach my $refbase (sort keys %hash) {
	
	for (my $i=0; $i<$cycles; $i++) {
		my $new_cycle = $i + 1;
		my $old_cycle = int($i/$times) + 1;
		my $line = $hash{$refbase}{$old_cycle};
		$line =~ s/^$refbase\t$old_cycle/$refbase\t$new_cycle/;
		print $line."\n";
	}
}

close IN;

print "<<END\n";