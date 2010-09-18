//
//  Hilarious.h
//  ObjCMultInheritanceExample
//
//  Created by Clay Bridges on 9/17/10.
//

@protocol Hilarious

- (void)makeMeLaugh;

@end

@interface Hilarious : NSObject <Hilarious> {}
@end 

