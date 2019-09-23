//
//  BugView.m
//  Bug
//
//  Created by Smile on 2019/9/20.
//  Copyright © 2019年 Mac. All rights reserved.
//

#import "BugView.h"
@interface BugView ()

@property (nonatomic, strong) NSImageView *fImageView;
@property (nonatomic, assign) CGFloat angle;

@end

@implementation BugView

- (instancetype)initWithFrame:(NSRect)frame isPreview:(BOOL)isPreview
{
    self = [super initWithFrame:frame isPreview:isPreview];
    if (self) {
        [self setAnimationTimeInterval:1/30.0];
        
        NSBundle *bundle = [NSBundle bundleWithIdentifier:@"demo.Bug"];
        NSLog(@"bundle.bundlePath: %@",bundle.bundlePath);
        
        CGRect rect = self.bounds;
        CGRect fRect = CGRectMake(0, 0, rect.size.width, rect.size.height);
        
        NSString *fPath = [bundle pathForResource:@"x1" ofType:@"gif"];
        NSImage *floatImage = [[NSImage alloc] initWithContentsOfFile:fPath];
        
        _fImageView = [[NSImageView alloc] initWithFrame:fRect];
        _fImageView.image = floatImage;
        _fImageView.imageScaling = NSImageScaleProportionallyUpOrDown;
        _fImageView.animates = YES;
        _fImageView.canDrawSubviewsIntoLayer = YES;
        [self addSubview:_fImageView];
        
    }
    return self;
}

- (void)startAnimation
{
    [super startAnimation];
}

- (void)stopAnimation
{
    [super stopAnimation];
}

- (void)drawRect:(NSRect)rect
{
    [super drawRect:rect];
}

- (void)animateOneFrame
{
    return;
}

- (BOOL)hasConfigureSheet
{
    return NO;
}

- (NSWindow*)configureSheet
{
    return nil;
}

@end
