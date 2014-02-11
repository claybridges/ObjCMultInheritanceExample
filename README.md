This is a proof of concept. It's as close as I believe Objective-C comes to 
allowing a class to "be" multiple different classes, à la multiple inheritance. 
It takes advantage of the different namespaces for classes and protocols, e.g. `NSObject` 
class conforms to the `NSObject` protocol, and uses efficient `-forwardingTargetForSelector:` to
dispatch methods to the right "superclass".

For more information, check this [thread][1] on cocoa-unbound, and specifically Mike Ash's post.

  [1]:http://groups.google.com/group/cocoa-unbound/browse_thread/thread/7e7d1ca2659b933c
