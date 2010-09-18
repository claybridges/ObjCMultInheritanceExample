//
//  Hilarious.m
//  ObjCMultInheritanceExample
//
//  Created by Clay Bridges on 9/17/10.
//

#import "Hilarious.h"

@implementation Hilarious 

- (void)makeMeLaugh {
	NSLog(@"%@: \"... and it won't stop 'til it gets 10 gallons!\"",NSStringFromClass([self class]));
}

@end
