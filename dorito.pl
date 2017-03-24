#!/usr/bin/perl

##############################################################
#  Script     : dorito.pl
#  Author     : Kane Valentine
#  Date       : 2017/03/24
#  Last Edited: 2017/03/24
#  Description: creates unlimited doritos at your command!
##############################################################

use strict;
use warnings;
use MIME::Base64 qw();

my $dorito64 = <<IMAGE64;
R0lGODlhMgAyAPEDAAAAAP2BAP///wAAACH/C05FVFNDQVBFMi4wAwEAAAAh+QQJAwADACwAAAAA
MgAyAAAC0pyPqcvtD6OctNqLs84A7N8F3oeFgUha5tml03qKo+vAMUo39o3nCsAL9nwGoJDXIg52
x2SOKesYhy6p9Ih8YrdOENDanLJmm29HIFhZrzEyx3xOj6Vo+RjESqNh8f20q3KzZmRVlybmViGG
hATWWMK1JZQosdj2J3mpYsnSydkUiLWWqfnyScpFcSoyhloacWrW6QpY43rLUik5iku5sIobVKsT
nDn8wFY8d1zpaLxGMyg9SOQmjeALoqqU/cu9/V2ptPQy3p1wPq6+zt7u/o5QAAAh+QQFAwADACwH
AAcAJAAmAAACspyPaQDqDw8LLVo4A70cZc103KdRlfiQ5YY66sq2HkzHMlDT4Y3n8C56gRifU4dI
9K2Mlp6yBoxMkDlVNGUCCARFJImpmBK3Pe+WW7omylyy03TmOtWLpXfIiH+x1R/VH6b09gQSCDVH
OOQxmAZCkVgoIfiXuCMEKVjnU8b4FNLpmAFa1TCKuWmadTl52vrZWmmUBGtHlELp6TXixdsLJhXG
K3GD8itl7CKzEKQ8gBwWUQAAOw==
IMAGE64

open my $spawnChip, '>', "dorito.gif" or die "Couldn't create a dorito!: $!\n";
binmode $spawnChip;
print $spawnChip MIME::Base64::decode ($dorito64);
close $spawnChip;
