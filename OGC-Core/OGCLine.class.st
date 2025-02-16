"
###6.1.7 LineString, Line, LinearRing

###6.1.7.1 Description 

A Line is a LineString with exactly 2 Points = a segment.

Instanciation: `OGCLine class>>#withPoints:`
"
Class {
	#name : #OGCLine,
	#superclass : #OGCLineString,
	#category : #'OGC-Core'
}

{ #category : #'as yet unclassified' }
OGCLine class >> errorIncorrectNumberOfPoints: anInteger [
	OGCIncorrectNumberOfPointsError signalWith: anInteger
]

{ #category : #accessing }
OGCLine class >> geometryType [
	^ 'Line'
]

{ #category : #'as yet unclassified' }
OGCLine class >> withPoints: aCollectionOfPoints [
	(aCollectionOfPoints size = 2) 
		ifTrue: [ ^ self new points: aCollectionOfPoints ]
		ifFalse: [ self errorIncorrectNumberOfPoints: aCollectionOfPoints size]
]

{ #category : #'methods analysis' }
OGCLine >> intersection: anotherGeometry [
	"Returns a geometric object that represents the
Point set intersection of this geometric object with anotherGeometry."
	^ spatialReferenceSystem intersection: anotherGeometry withLine: self
]

{ #category : #accessing }
OGCLine >> length [
	^ spatialReferenceSystem length: self
]
