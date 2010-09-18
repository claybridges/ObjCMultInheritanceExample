//
//  Man.m
//  ObjCMultInheritanceExample
//
//  Created by Clay Bridges on 9/16/10.
//

#import "Man.h"

@implementation Man

- (id)init {
	[super init];
	if (self) {
		inhumane = [[Inhumane alloc] init];
		hilarious = [[Hilarious alloc] init];
		forwardingTargets = [[NSArray alloc] initWithObjects:inhumane,hilarious,nil];
	}
	return self;
}

- (void) dealloc {
	[forwardingTargets release]; forwardingTargets = nil;
	[inhumane release]; inhumane = nil;
	[hilarious release]; inhumane = nil;
	[super dealloc];
}

-(id)forwardingTargetForSelector:(SEL)sel {
	for (id candidate in forwardingTargets)
		if ([candidate respondsToSelector:sel])
			return candidate;

	return [super forwardingTargetForSelector:sel];
}

@end
