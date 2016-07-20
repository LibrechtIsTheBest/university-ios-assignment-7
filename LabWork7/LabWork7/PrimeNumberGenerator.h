//
//  PrimeNumberGenerator.h
//  LabWork7
//
//  Created by Vladislav Librecht on 20.07.16.
//  Copyright © 2016 Vladislav Librecht. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PrimeNumberGenerator : NSObject

- (instancetype)initWithStartNumber:(NSInteger)start;
- (NSInteger)yield;

@end
