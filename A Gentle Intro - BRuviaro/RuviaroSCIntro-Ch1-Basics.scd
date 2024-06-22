//Ch. 1 of A Gentle Intro to SC by B. Ruviaro

//useful commands:
// [ctrl+.] stop audio
// [ctrl+Enter] evaluate line/block
// [ctrl+shift+P] : clear the Post window
//  [Ctrl+shift+=]: increase font size in editor or post window
// [Ctrl+-]: decrease font size


//fun with sounds
{SinOsc.ar}.play;
s.volume.gui;

{SinOsc.ar(LFNoise0.kr(100).range(20, 10000), mul: 0.3)}.play(fadeTime: 0);
{SinOsc.ar(LFNoise0.kr(1000).range(20, 10000), mul: 0.3)}.play(fadeTime: 0);

{RLPF.ar(Dust.ar([48, 50]), LFNoise1.ar([4, 77]).range(100, 3000), 0.1, 1.0)}.play;
{RLPF.ar(SinOsc.ar(LFNoise0.kr(10).range(20, 10000), mul: 0.1), LFNoise1.ar([4, 77]).range(100, 3000), 0.65, 0.5)}.play;
{RLPF.ar(SinOsc.ar(LFNoise0.kr(100).range(20, 10000), mul: 0.1), LFNoise1.ar([4, 77]).range(100, 3000), 0.65, 0.5)}.play;
{RLPF.ar(SinOsc.ar(LFNoise0.kr(10).range(94000, 100000), mul: 0.3), LFNoise1.ar([4, 77]).range(1, 5000), 0.65, 0.5)}.play;
{RLPF.ar(SinOsc.ar(LFNoise0.kr(100).range(94000, 100000), mul: 0.3), LFNoise1.ar([4, 77]).range(1, 5000), 0.65, 0.5)}.play;
{RLPF.ar(SinOsc.ar(LFNoise0.kr(1000).range(94000, 100000), mul: 0.3), LFNoise1.ar([4, 77]).range(1, 5000), 0.65, 0.5)}.play;
{RLPF.ar(SinOsc.ar(LFNoise0.kr(10000).range(94000, 100000), mul: 0.3), LFNoise1.ar([4, 77]).range(1, 5000), 0.65, 0.5)}.play

//blocks wrapped in ()
({RLPF.ar(Dust.ar([48, 50]), LFNoise1.ar([4, 77]).range(100, 3000), 0.1, 1.0)}.play;
{RLPF.ar(SinOsc.ar(LFNoise0.kr(10).range(20, 10000), mul: 0.1), LFNoise1.ar([4, 77]).range(100, 3000), 0.65, 0.5)}.play;
{RLPF.ar(SinOsc.ar(LFNoise0.kr(100).range(20, 10000), mul: 0.1), LFNoise1.ar([4, 77]).range(100, 3000), 0.65, 0.5)}.play;
{RLPF.ar(SinOsc.ar(LFNoise0.kr(10).range(94000, 100000), mul: 0.3), LFNoise1.ar([4, 77]).range(1, 5000), 0.65, 0.5)}.play;
{RLPF.ar(SinOsc.ar(LFNoise0.kr(100).range(94000, 100000), mul: 0.3), LFNoise1.ar([4, 77]).range(1, 5000), 0.65, 0.5)}.play;
{RLPF.ar(SinOsc.ar(LFNoise0.kr(1000).range(94000, 100000), mul: 0.3), LFNoise1.ar([4, 77]).range(1, 5000), 0.65, 0.5)}.play;
{RLPF.ar(SinOsc.ar(LFNoise0.kr(10000).range(94000, 100000), mul: 0.3), LFNoise1.ar([4, 77]).range(1, 5000), 0.65, 0.5)}.play;)

("first line".postln;
"second line".postln;
(2+2).postln;)

100.do({"Print this line over and over...".scramble.postln});

//ways to record
//'s' denotes the Server, and is by convention reserved for it, so we don't
//use it as a variable name
s.record;
s.stopRecording;
s.makeWindow;

x = 100;
y = 660;
y;
x;
y-x;

a = [0, 0.245, 3, 5, 6];
typeOf(a);

c = Pbind(\note, Pwhite(0,10), \dur, 0.1); //piano sounding, huh
c;
c.play;

// Variables
//can use a ~ for a longer global variable name, otherwise use a char (not s)
// tilde variables are Environment variables, single char are Interpreter vars
~myFreqs = [415, 660, 220, 440];
~myDurs = [0.1, 0.1, 0.2, 0.5, 0.2, 0.1];

~myFreqs;

Pbind(\freq, Pseq(~myFreqs), \dur, Pseq(~myDurs)).play;


//local variabels are only within block scope
( var apples = 4, oranges = 3, lemons = 7 ;
["Citrus fruits", oranges + lemons].postln;
["Non-citrus fruits", apples].postln;
"end".postln;)
apples; //gone