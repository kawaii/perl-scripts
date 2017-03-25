#!/usr/bin/perl
print "What is your name? ";
$name = <STDIN>;
chop($name);
if ($name eq "Kane") {
  print "Hello $name! You are the server administrator!\n"
} else {
  print "Hello, $name!\n";
}
