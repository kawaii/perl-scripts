#!/usr/bin/perl

$secret = "hannah";

print "What is your name? ";
$name = <STDIN>;
chop($name);
if ($name eq "Kane") {
  print "Hello $name! You are the server administrator!\n"
} else {
  print "Hello, $name!\n";
  print "What is the secret word? ";
  $answer = <STDIN>;
  chop($answer);
  while ($answer ne $secret) {
    print "Incorrect secret word. Please try again. ";
    $answer = <STDIN>;
    chop($answer);
  }
}
