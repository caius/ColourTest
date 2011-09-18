//TouchView.m

#import "TouchView.h"

@interface TouchView ()

- (void) advanceColour;

@end

@implementation TouchView

- (id) initWithFrame:(CGRect)frame
{
  [super initWithFrame:frame];
  self.backgroundColor = [UIColor redColor];
  return self;
}

- (id) initWithCoder:(NSCoder *)aDecoder
{
  [super initWithCoder:aDecoder];
  self.backgroundColor = [UIColor redColor];
  return self;
}

-(void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
  NSLog(@"touchesEnded");
  [self advanceColour];
}

- (void) advanceColour
{
  UIColor *bc = self.backgroundColor;
  NSLog(@"%@", bc);
  NSLog(@"%@", ([bc isEqual:[UIColor redColor]] ? @"YES" : @"NO"));
  if ([bc isEqual:[UIColor redColor]]) {
    self.backgroundColor = [UIColor greenColor];
  } else if ([bc isEqual:[UIColor greenColor]]) {
    self.backgroundColor = [UIColor blueColor];
  } else if ([bc isEqual:[UIColor blueColor]]) {
    self.backgroundColor = [UIColor redColor];
  }
}

@end
