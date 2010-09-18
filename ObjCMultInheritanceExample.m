#import "Man.h"

int main (int argc, const char * argv[]) {
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
	Man *man = [[[Man alloc] init] autorelease];
	[man killThatInnocentPerson];
	[man makeMeLaugh];
	
	[pool drain];
	return 0;
}
