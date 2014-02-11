//
//  Inhumane.m
//  ObjCMultInheritanceExample
//
//  Created by Clay Bridges on 9/17/10.
//

#import "Inhumane.h"

@implementation Inhumane 

- (void)killThatInnocentPerson
{
    NSLog(@"%@: Killed that innocent person, sir!",NSStringFromClass([self class]));
}

@end
