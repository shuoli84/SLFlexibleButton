SLFlexibleButton
================

A flexible button which utilize UIGlossyButton, able to supply the bezel through relative location.

Example
================

```objc
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    SLFlexibleButton *button = [[SLFlexibleButton alloc] init];
#define PV(x,y) [NSValue valueWithCGPoint:CGPointMake((x), (y))]
    button.buttonPoints = @[
            PV(0, 0),
            PV(10, -0.5),
            PV(0, -1),
            PV(-1, -1),
            PV(-10,-0.5),
            PV(-1,0)
    ];

    button.titleEdgeInsets = UIEdgeInsetsMake(3, 10, 3, 10);
    button.tintColor = [UIColor blueColor];
    [button setTitle:@"Tag this!" forState:UIControlStateNormal];
    [button sizeToFit];
    button.frame = CGRectMake(button.frame.origin.x, button.frame.origin.y, 100, button.frame.size.height);
    [self.view addSubview:button];
}
```

The example code create a button like

![Alt example](/example.jpg)

When specify the button point as negative value, if it is between [-1,0), then it is used as the percentage. if it is less than -1, then it is used as the tail absolute offset, -10 means (self.bounds.size.width - 10) for x;

point(10, -0.1) means with x as 10 and y as (self.bounds.size.height * (-0.1))

```
> 0: absolute point position
[-1, 0]: percentable position, -0.5 means the half.
<-1: reverse offset -10 means self.bounds.size.width - 10 for x. height for y
```

TODO
==================
* Add arc, curve support
