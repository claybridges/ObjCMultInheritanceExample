//
//  Human.m
//  ObjCMultInheritanceExample
//
//  Created by Clay Bridges on 9/16/10.
//

#import "Human.h"

// Human is "inheriting" from these classes by dispatching to an instance
// when they respond to a particular selector. We can keep our type safety
// and autocompletion by using only the protocols for the external
// interface of the "superclasses".
//
@interface Human () {
    Inhumane *inhumane;
    Hilarious *hilarious;
    NSArray *forwardingTargets;
}

@end

@implementation Human

- (instancetype)init
{
    if ((self = [super init])) {
        inhumane = [[Inhumane alloc] init];
        hilarious = [[Hilarious alloc] init];
        forwardingTargets = @[inhumane,hilarious];
    }
    return self;
}

-(id)forwardingTargetForSelector:(SEL)sel
{
    for (id candidate in forwardingTargets)
        if ([candidate respondsToSelector:sel])
            return candidate;

    return [super forwardingTargetForSelector:sel];
}

@end
