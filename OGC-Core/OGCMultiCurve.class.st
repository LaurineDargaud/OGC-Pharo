"
###6.1.8 MultiCurve

###6.1.8.1 Description

A MultiCurve is a 1-dimensional GeometryCollection whose elements are Curves. 

MultiCurve is a non-instantiable class in this standard: I am an **abstract** class.
It defines a set of methods for its subclasses and is included for reasons of extensibility.

A MultiCurve is simple if and only if all of its elements are simple and the only intersections between any two elements occur at Points that are on the boundaries of both elements.
The boundary of a MultiCurve is obtained by applying the “mod 2” union rule: A Point is in the boundary of a MultiCurve if it is in the boundaries of an odd number of elements of the MultiCurve (Reference [1], section
3.12.3.2).
A MultiCurve is closed if all of its elements are closed. The boundary of a closed MultiCurve is always empty.
A MultiCurve is defined as topologically closed. 
"
Class {
	#name : #OGCMultiCurve,
	#superclass : #OGCGeometryCollection,
	#category : #'OGC-Core'
}

{ #category : #accessing }
OGCMultiCurve class >> geometryType [
	^ 'MultiCurve'
]

{ #category : #testing }
OGCMultiCurve class >> isAbstract [
	^ self == OGCMultiCurve
]

{ #category : #basic }
OGCMultiCurve >> dimension [
	^ 1
]

{ #category : #testing }
OGCMultiCurve >> isClosed [
	"A MultiCurve is closed if all of its elements are closed."
	^ self geometries allSatisfy: [ :each | each isClosed ]
]

{ #category : #accessing }
OGCMultiCurve >> length [
	^ self geometries sum: [ :each | each length ]
]
