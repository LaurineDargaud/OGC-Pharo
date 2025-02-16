"
###6.1.13 MultiSurface

###6.1.13.1 Description

A MultiSurface is a 2-dimensional GeometryCollection whose elements are Surfaces, all using coordinates from
the same coordinate reference system. The geometric interiors of any two Surfaces in a MultiSurface may not
intersect in the full coordinate system. The boundaries of any two coplanar elements in a MultiSurface may
intersect, at most, at a finite number of Points. If they were to meet along a curve, they could be merged into a
single surface.
MultiSurface is an instantiable class in this Standard, and may be used to represent heterogeneous surfaces
collections of polygons and polyhedral surfaces. It defines a set of methods for its subclasses. The subclass of
MultiSurface is MultiPolygon corresponding to a collection of Polygons only. Other collections shall use
MultiSurface.
"
Class {
	#name : #OGCMultiSurface,
	#superclass : #OGCGeometryCollection,
	#category : #'OGC-Core'
}

{ #category : #testing }
OGCMultiSurface class >> isAbstract [
	^ self = OGCMultiSurface 
]
