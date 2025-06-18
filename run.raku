#!/usr/bin/env raku

if $*DISTRO.is-win {
    note "Run cmake yourself, Windows plebian!";
    exit 1;
}
my $exit_code;
END $*ERR.say: "+++ Exit code: $exit_code" if defined $exit_code;
my sub echo-cmd($cmd) { $*ERR.print: "+++ {join ' ', $cmd<>}\n" }
my @script = slurp "assets/sprites/road_runner.webp";
shell @script;

