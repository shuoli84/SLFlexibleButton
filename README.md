SLFlexibleButton
================

A flexible button which utilize UIGlossyButton, able to supply the bezel through relative location.

Example
================

```objc
#define PV(x,y) [NSValue valueWithCGPoint:CGPointMake((x), (y))]
    button.buttonPoints = @[
            PV(10, 0),
            PV(0, -0.5),
            PV(10, -1),
            PV(-0.5, -0.8),
            PV(-1,-1),
            PV(-1,0)
    ];
```

When specify the button point as negative value, if it is between [-1,0), then it is used as the percentage. if it is less than -1, then it is used as the tail absolute offset, -10 means (self.bounds.size.width - 10) for x;

point(10, -0.1) means with x as 10 and y as (self.bounds.size.height * (-0.1))

The example code create a button like

```
*****************
 *             *
***************** 
```

TODO
==================
* Add arc, curve support
