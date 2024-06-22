"hello world".postln;
{SinOsc.ar}.play;
s.volume.gui;
{SinOsc.ar(LFNoise0.kr(10).range(100, 10000), mul: 0.1)}.play;