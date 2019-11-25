\version "2.19.2"
% myversion 0.00.001
% more Info:

\paper {
  #(set-default-paper-size "a4")
%  #(set-paper-size "a4" 'landscape) % Querformat
%  ragged-last-bottom = ##f
  line-width = 7.5\in
%  left-margin = 0.5\in
  bottom-margin = 0.25\in
  top-margin = 0.25\in
}

\header {
  title = "Ice Ice Baby / Under Pressure"
  instrument = "4 String Bass"
  composer = "Vanilla Ice / Queen"
%  copyright = ""
  tagline = ""  % removed lilypond footer
}

global = {
  \language "deutsch"
  \key g \major
  \tempo "Animato" 4 = 116
% 21. Jh., japanisch	
% Grave		40–44				
% Largo		44–48	
% Lento		48–54				
% Adagio	54–58				
% Larghetto	58–63		
% Adagietto	63–69		
% Andante	69–76	
% Andantino	76–84			
% Maestoso	84–92				
% Moderato	92–104	
% Allegretto	104–116		
% Animato	116–126				
% Allegro	126–138	
% Assai		138–152				
% Vivace	152–176	
% Presto	176–200	
% Prestissimo	≥ 208
  \numericTimeSignature \time 4/4
  \set fingeringOrientations = #'(down)
  \override Fingering.add-stem-support = ##t
  \set TabStaff.instrumentName = \markup 
                                 \override #'(baseline-skip . 1)
%                                 \override #'(font-name . "FreeSans")
                                 \abs-fontsize #5.5
                                 { \null \hspace #6 { \column { [G] [D] [,A] [,E] } } }
%  \override Score.SpacingSpanner.shortest-duration-space = #4.0
  #(define RH rightHandFinger) 
% p-i-m-a-q 
% pulgar-Daumen-thump
% índice-Zeigefinger-index finger
% medio-Mittelfinger-middle finger
% anular-Ringfinger-ring finger
% meñique-Kleiner Finger-little finger
}

electricBass = \relative c, {
  \global                                 
                                 
  \mark \markup "Intro"
  \bar ".|:"
  <d-2\3>8[ <d-2\3>8 <d-2\3>8]
  <d-2\3>16[ <d-2\3>16 <d-2\3>8] <a-1\4>4  \bar "||"
  <d-2\3>8[ <d-2\3>8 <d-2\3>8 <d-2\3>8] 
  <d-2\3>16[ <d-2\3>16 <d-2\3>8 <a-1\4>4] r8 \bar "|."

  <d-2\3>8[ <d-2\3>8 <d-2\3>8]
  <d-2\3>16[ <d-2\3>16 <d-2\3>8 <a-1\4>4] \bar "||" 
  <d-2\3>8[ <d-2\3>8 <d-2\3>8 <d-2\3>8]
  <d-2\3>16[ <d-2\3>16 <d-2\3>8 <a-1\4>4] r8 \bar "|."
  
  <d-2\3>8[ <d-2\3>8 <d-2\3>8]
  <d-2\3>16[ <d-2\3>16 <d-2\3>8 <a-1\4>4] \bar "||" 
  <d-2\3>8[ <d-2\3>8 <d-2\3>8 <d-2\3>8]
  <d-2\3>16[ <d-2\3>16 <d-2\3>8 <a-1\4>4]  r8 \bar "|."
  
    <d-2\3>8[ <d-2\3>8 <d-2\3>8]
  <d-2\3>16[ <d-2\3>16 <d-2\3>8 <a-1\4>4] \bar "||" 
  <d-2\3>8[ <d-2\3>8 <d-2\3>8 <d-2\3>8]
  <d-2\3>16[ <d-2\3>16 <d-2\3>8 <a-1\4>4]  r8 \bar "|."
  \bar ":|."
}

\score {
  \new StaffGroup <<
    \new Staff \with {
%    midiInstrument = #"acoustic bass"
%    midiInstrument = #"electric bass (finger)"
    midiInstrument = #"electric bass (pick)"
%    midiInstrument = #"fretless bass"
%    midiInstrument = #"slap bass 1" 
%    midiInstrument = #"slap bass 2" 
%    midiInstrument = #"synth bass 1"
%    midiInstrument = #"synth bass 2"
%    midiInstrument = #"contrabass"
%    midiInstrument = #"bassoon"
    instrumentName = "eBass"
    } { \clef "bass_8" \electricBass }

    \new TabStaff \with {
      \clef moderntab
      \tabFullNotation
      \stemDown
      \override Beam.concaveness = #10000
      stringTunings = #bass-tuning
%      \override Staff.Clef #'stencil = #ly:text-interface::print
%      tablatureFormat = #fret-letter-tablature-format
    }
    {
      \set TabStaff.minimumFret = #4
     \set TabStaff.restrainOpenStrings = ##t
      \electricBass
    }

  >>
  \layout { 
    \context {
    \Score
    defaultBarType = ""       % disable calculated BarLines
  } 
  }
  \midi {
    \tempo 4=116
  }
}