//
//  UILabel+VerticalAlign.m
//  TestForLabel
//
//  Created by dvt04 on 2018/2/7.
//  Copyright © 2018年 dvt04. All rights reserved.
//

#import "UILabel+VerticalAlign.h"

@implementation UILabel (VerticalAlign)

- (void)alignTop
{
    CGSize fontSize = [self.text sizeWithAttributes:@{NSFontAttributeName:self.font}];
    fontSize.width = ceil(fontSize.width);
    fontSize.height = ceil(fontSize.height);
    
    double finalHeight = fontSize.height * self.numberOfLines;
    double finalWidth = self.frame.size.width;    //expected width of label
    
    NSStringDrawingOptions options =  NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading;
    CGRect theStringRect = [self.text boundingRectWithSize:CGSizeMake(finalWidth, finalHeight) options:options attributes:@{NSFontAttributeName:self.font} context:nil];
    CGSize theStringSize = theStringRect.size;
    
    int newLinesToPad = (finalHeight  - theStringSize.height) / fontSize.height;
    
    for(int i=0; i<= newLinesToPad; i++)
    {
        self.text = [self.text stringByAppendingString:@" \n"];
    }
}

- (void)alignBottom
{
    CGSize fontSize = [self.text sizeWithAttributes:@{NSFontAttributeName:self.font}];
    fontSize.width = ceil(fontSize.width);
    fontSize.height = ceil(fontSize.height);
    
    double finalHeight = fontSize.height * self.numberOfLines;
    double finalWidth = self.frame.size.width;    //expected width of label
    
    NSStringDrawingOptions options =  NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading;
    CGRect theStringRect = [self.text boundingRectWithSize:CGSizeMake(finalWidth, finalHeight) options:options attributes:@{NSFontAttributeName:self.font} context:nil];
    CGSize theStringSize = theStringRect.size;
    
    int newLinesToPad = (finalHeight  - theStringSize.height) / fontSize.height;
    
    for(int i=0; i< newLinesToPad; i++)
    {
        self.text = [NSString stringWithFormat:@" \n%@",self.text];
    }
}

@end
