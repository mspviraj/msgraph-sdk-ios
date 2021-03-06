// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphODataEntities.h"

@implementation MSGraphUserOwnedDevicesCollectionWithReferencesRequestBuilder : MSCollectionRequestBuilder

- (MSGraphUserOwnedDevicesCollectionWithReferencesRequest*) request
{
    return [self requestWithOptions:nil];
}

- (MSGraphUserOwnedDevicesCollectionWithReferencesRequest *)requestWithOptions:(NSArray *)options
{
    return [[MSGraphUserOwnedDevicesCollectionWithReferencesRequest alloc] initWithURL:self.requestURL options:options client:self.client];
}
- (MSGraphDirectoryObjectRequestBuilder *)directoryObject:(NSString *)directoryObject
{
    return [[MSGraphDirectoryObjectRequestBuilder alloc] initWithURL:[self.requestURL URLByAppendingPathComponent:directoryObject]
                                                   client:self.client];
}
- (MSGraphUserOwnedDevicesCollectionReferencesRequestBuilder *) references
{
    return [[MSGraphUserOwnedDevicesCollectionReferencesRequestBuilder alloc] initWithURL:[self.requestURL URLByAppendingPathComponent:@"$ref"] client:self.client];
}

@end
