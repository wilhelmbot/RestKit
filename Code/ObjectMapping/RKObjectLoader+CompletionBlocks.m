//
//  RKObjectLoader+CompletionBlocks.m
//  StatuQuo
//
//  Created by Rodolfo Wilhelmy on 2/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "RKObjectLoader+CompletionBlocks.h"

@implementation RKObjectLoader (CompletionBlocks)

// The following code adds a new property to RKObjectLoader
// References:
// http://goo.gl/A9hfd
// http://goo.gl/1BQ9W

static char completionHandlerKey;

- (RKObjectLoaderCompletionHandler)completionHandler {
    return objc_getAssociatedObject(self, &completionHandlerKey);
}

- (void)setCompletionHandler:(RKObjectLoaderCompletionHandler)completionHandler {
    objc_setAssociatedObject(self, &completionHandlerKey, completionHandler, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void)unsetCompletionHandler {
    objc_setAssociatedObject(self, &completionHandlerKey, nil, OBJC_ASSOCIATION_ASSIGN);
}

@end
