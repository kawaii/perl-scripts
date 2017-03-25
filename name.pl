#!/usr/bin/perl

@secrets = ("hannah","peach","lolita","kawaii");

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
  $i = 0; # try this word first
  $correct = "maybe"; # is the answer correct or not?
  while ($correct eq "maybe") { # use a while loop to keep checking until we know
    if ($secrets[$i] eq $answer) { # right?
      $correct = "yes"; # yes!
    } elsif ($i < 3) { # if not, check for more words
        $i = $i + 1; # look at the next word
    } else {
      print "Incorrect secret. Please try again. ";
      $answer = <STDIN>;
      chop($answer);
      $i = 0;
    }
  }
}
