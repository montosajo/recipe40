//
//  UIresa.m
//  ReactNativeBlog
//
//  Created by giorgio borgia on 5/19/16.
//  Copyright © 2016 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
//  UIImage+Scale.h

#import "UIresa.h"

@implementation UIImage (scale)

-(UIImage*)scaleToSize:(CGSize)size
{
  // Create a bitmap graphics context
  // This will also set it as the current context
  UIGraphicsBeginImageContext(size);
  
  // Draw the scaled image in the current context
  [self drawInRect:CGRectMake(0, 0, size.width, size.height)];
  
  // Create a new image from current context
  UIImage* scaledImage = UIGraphicsGetImageFromCurrentImageContext();
  
  // Pop the current context from the stack
  UIGraphicsEndImageContext();
  
  // Return our new scaled image
  return scaledImage;
}

@end