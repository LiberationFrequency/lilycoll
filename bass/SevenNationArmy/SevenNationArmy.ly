\version "2.19.82"
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
  title = "Seven Nation Army"
  instrument = "4 String Bass"
  composer = "White Stripes"
%  copyright = ""  
  tagline = ""  % removed lilypond footer
}

global = {
  \language "deutsch"
  \key e \minor
  \tempo "Animato" 4 = 120 -125
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
% medio-Mittelfinger-middle finger/
% anular-Ringfinger-ring finger
% meñique-Kleiner Finger-little finger
}

electricBass = \relative c, {
  \global

%  \mark \markup "Intro"
  \bar ".|:"
  <e-3\3-\RH #2 >4. <e-3\3\RH #3 >8[ <g-1\2\RH #2 >8 <e-3\3\RH #2 >8.] <d-2\3\RH #2 >8. <c-1\3\RH #2 >2 <h-1\3\RH #2 >2 |
  <e-3\3-\RH #2 >4. <e-3\3\RH #3 >8[ <g-1\2\RH #2 >8 <e-3\3\RH #2 >8.] <d-2\3\RH #2 >8. <c-1\3\RH #2 >2 <h-1\3\RH #2 >2 |

  <e-3\3-\RH #2 >4. <e-3\3\RH #3 >8[ <g-1\2\RH #2 >8 <e-3\3\RH #2 >8.] <d-2\3\RH #2 >8. <c-1\3\RH #2 >2 <h-1\3\RH #2 >2 |
  <e-3\3-\RH #2 >4. <e-3\3\RH #3 >8[ <g-1\2\RH #2 >8 <e-3\3\RH #2 >8.] <d-2\3\RH #2 >8. <c-1\3\RH #2 >2 <h-1\3\RH #2 >2 |
  <e-3\3-\RH #2 >4. <e-3\3\RH #3 >8[ <g-1\2\RH #2 >8 <e-3\3\RH #2 >8.] <d-2\3\RH #2 >8. <c-1\3\RH #2 >2 <h-1\3\RH #2 >2 |
  <e-3\3-\RH #2 >4. <e-3\3\RH #3 >8[ <g-1\2\RH #2 >8 <e-3\3\RH #2 >8.] <d-2\3\RH #2 >8. <c-1\3\RH #2 >2 <h-1\3\RH #2 >2 |
  <e-3\3-\RH #2 >4. <e-3\3\RH #3 >8[ <g-1\2\RH #2 >8 <e-3\3\RH #2 >8.] <d-2\3\RH #2 >8. <c-1\3\RH #2 >2 <h-1\3\RH #2 >2 |
  <e-3\3-\RH #2 >4. <e-3\3\RH #3 >8[ <g-1\2\RH #2 >8 <e-3\3\RH #2 >8.] <d-2\3\RH #2 >8. <c-1\3\RH #2 >2 <h-1\3\RH #2 >2 |
  <e-3\3-\RH #2 >4. <e-3\3\RH #3 >8[ <g-1\2\RH #2 >8 <e-3\3\RH #2 >8.] <d-2\3\RH #2 >8. <c-1\3\RH #2 >2 <h-1\3\RH #2 >2 |
  <e-3\3-\RH #2 >4. <e-3\3\RH #3 >8[ <g-1\2\RH #2 >8 <e-3\3\RH #2 >8.] <d-2\3\RH #2 >8. <c-1\3\RH #2 >2 <h-1\3\RH #2 >2 |
  <e-3\3-\RH #2 >4. <e-3\3\RH #3 >8[ <g-1\2\RH #2 >8 <e-3\3\RH #2 >8.] <d-2\3\RH #2 >8. <c-1\3\RH #2 >2 <h-1\3\RH #2 >2 |
  <e-3\3-\RH #2 >4. <e-3\3\RH #3 >8[ <g-1\2\RH #2 >8 <e-3\3\RH #2 >8.] <d-2\3\RH #2 >8. <c-1\3\RH #2 >2 <h-1\3\RH #2 >2 |
  
  <g-1\4\RH #2 >8[ <g-1\4\RH #2 >8 <g-1\4\RH #3 >8 <g-1\4\RH #2 >8 <g-1\4\RH #3 >8 <g-1\4\RH #2 >8 <g-1\4\RH #3 >8 <g-1\4\RH #2 >8] |
  <a-1\4\RH #2 >8[ <a-1\4\RH #2 >8 <a-1\4\RH #3 >8 <a-1\4\RH #2 >8 <a-1\4\RH #3 >8 <a-1\4\RH #2 >8 <a-1\4\RH #3 >8.] r16 |

  <e'-3\3\RH #2 >4. <e-3\3\RH #3 >8[ <g-1\2\RH #2 >8 <e-3\3\RH #2 >8.] <d-2\3\RH #2 >8. <c-1\3\RH #2 >2 <h-1\3\RH #2 >2 |
  <e-3\3\RH #2 >4. <e-3\3\RH #3 >8[ <g-1\2\RH #2 >8 <e-3\3\RH #2 >8.] <d-2\3\RH #2 >8. <c-1\3\RH #2 >8 <d-3\3\RH #2 >8 <c-1\3\RH #3 >4 <h-1\3\RH #2 >2 | 
  <e-3\3\RH #2 >4. <e-3\3\RH #3 >8[ <g-1\2\RH #2 >8 <e-3\3\RH #2 >8.] <d-2\3\RH #2 >8. <c-1\3\RH #2 >2 <h-1\3\RH #2 >2 |
  <e-3\3\RH #2 >4. <e-3\3\RH #3 >8[ <g-1\2\RH #2 >8 <e-3\3\RH #2 >8.] <d-2\3\RH #2 >8. <c-1\3\RH #2 >8 <d-3\3\RH #2 >8 <c-1\3\RH #3 >4 <h-1\3\RH #2 >2 | 

  <g-1\4\RH #2 >8[ <g-1\4\RH #2 >8 <g-1\4\RH #3 >8 <g-1\4\RH #2 >8 <g-1\4\RH #3 >8 <g-1\4\RH #2 >8 <g-1\4\RH #3 >8 <g-1\4\RH #2 >8] |
  <a-1\4\RH #2 >8[ <a-1\4\RH #2 >8 <a-1\4\RH #3 >8 <a-1\4\RH #2 >8 <a-1\4\RH #3 >8 <a-1\4\RH #2 >8 <a-1\4\RH #3 >8.] r16 |
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
    instrumentName = "EBass"
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
 %     \set TabStaff.restrainOpenStrings = ##t
      \electricBass
    }

  >>
  \layout { 
    \context {
    \Score
    % no calculated BarLines
%    defaultBarType = ""
  } 
  }
  \midi {
    \tempo 4=120
  }
}