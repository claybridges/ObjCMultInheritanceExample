//
//  Hilarious.m
//  ObjCMultInheritanceExample
//
//  Created by Clay Bridges on 9/17/10.
//

#import "Hilarious.h"

@implementation Hilarious 

- (void)makeMeLaugh {
    NSLog(@"%@: ... we call it \"The Aristocrats\"!",NSStringFromClass([self class]));
}

@end
