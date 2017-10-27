#!/usr/bin/perl
$NETSTAT = "/bin/netstat";

#open(NS, "ldap1.conn") or die $!;
open(NS, "$NETSTAT -t |") or die $!;
while(<NS>) {
	chomp;
	@Parts = split(/\s+/);
#	next if (@Parts[0] !~ /\.2468/);
	next if (@Parts[3] !~ /\:qip-msgd/);
	next if (@Parts[5] !~ /ESTABLISHED/);
	$FQPort = @Parts[4];
#	print "FQPort /$FQPort/\n";
	($Host, $Port) = split (/:/, $FQPort);
	@Dots = split(/\./, $Host);
	if ($Dots[0] =~ /^\d/) {
		$Host = $Dots[0] . "." . $Dots[1] . "." . $Dots[2] . "." . $Dots[3];
	}
	else {
		$Host = $Dots[0];
	}
	$Count = $#Dots;
	$Port = @Dots[$Count];
#	print "$Host at $Port, count $Count\n";
	$Hcount{$Host}++;
}
close NS;
print "Host\t\tConnection count\n";
$Total = 0;
foreach $Host (sort keys %Hcount) {
	$Count = $Hcount{$Host};
	$TT = "\t";
	$TT = "\t\t" if (length($Host) < 8);
	print "$Host$TT$Count\n";
	$Total += $Count;
}
print "-------------------------\n";
print "Total\t\t$Total\n";
