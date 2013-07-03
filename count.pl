#!/bin/env perl
for my $db ( split /\s+/m, `mysql -e 'show databases\\G'|grep -v row|cut -d ' ' -f2|sort` ) {
    next unless $db;
    for my $tbl ( split /\s+/m, `mysql $db -e 'show tables\\G'|grep -v row|cut -d ' ' -f2|sort` ) {
        next unless $tbl;
        my $count = `mysql $db -e 'select count(*) from $tbl\\G'|grep -v row|cut -d ' ' -f2`;
        chomp $count;
        print "$db $tbl $count\n";
    }
}
