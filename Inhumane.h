//
//  Inhumane.h
//  ObjCMultInheritanceExample
//
//  Created by Clay Bridges on 9/17/10.
// 
// The protocol and interface def's could easily be broken into two files, say Inhumane{,Class}.h

@protocol Inhumane

- (void)killThatInnocentPerson;

@end

@interface Inhumane : NSObject <Inhumane>

@end 

