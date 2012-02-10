//
//  RKObjectLoader+CompletionBlocks.h
//  StatuQuo
//
//  Created by Rodolfo Wilhelmy on 2/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "RKObjectLoader.h"
#import <objc/runtime.h>

#if NS_BLOCKS_AVAILABLE 

// NSArray will be nil when objectLoader:didFailWithError: is invoked
// NSError will be nil when objectLoader:didLoadObjects: is invoked
typedef void (^RKObjectLoaderCompletionHandler)(RKObjectLoader *, NSArray *, NSError *);

#endif

@interface RKObjectLoader (CompletionBlocks)

@property (nonatomic, strong) RKObjectLoaderCompletionHandler completionHandler;

@end
