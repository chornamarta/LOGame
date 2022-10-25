"
Клас LOCell моделює одну клітинку ігрового поля, вміє рагувати на клацання мишею.
"
Class {
	#name : #LOCell,
	#superclass : #SimpleSwitchMorph,
	#instVars : [
		'mouseAction'
	],
	#category : #LightsOutGame
}

{ #category : #initialization }
LOCell >> initialize [
  super initialize.
  self label: ''.
  self borderWidth: 2.
  bounds := 0@0 corner: 16@16.
  offColor := Color paleYellow.
  onColor := Color paleBlue darker.
  self useSquareCorners.
  self turnOff.
]

{ #category : #initialization }
LOCell >> mouseAction: aBlock [
^ mouseAction := aBlock.

]

{ #category : #'event handling' }
LOCell >> mouseUp: anEvent [
mouseAction value.
]
