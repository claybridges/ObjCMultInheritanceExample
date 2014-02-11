//
//  Human.h
//  ObjCMultInheritanceExample
//
//  Created by Clay Bridges on 9/16/10.
//
// This is as close as I believe that Objective-C comes to allowing one class to "be" multiple
// different classes, aka multiple inheritance. For more information, check this thread on
// cocoa-unbound, and specifically Mike Ash's post:
//
// http://groups.google.com/group/cocoa-unbound/browse_thread/thread/7e7d1ca2659b933c

#import "Inhumane.h"
#import "Hilarious.h"

@interface Human : NSObject

@end

@interface Human (Inheritance) <Inhumane, Hilarious>
// this space intentionally left blank
@end
// no @implementation


