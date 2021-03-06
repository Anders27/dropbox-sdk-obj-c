///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"
#import "DBTEAMRevokeLinkedAppBatchResult.h"
#import "DBTEAMRevokeLinkedAppStatus.h"

#pragma mark - API Object

@implementation DBTEAMRevokeLinkedAppBatchResult

#pragma mark - Constructors

- (instancetype)initWithRevokeLinkedAppStatus:(NSArray<DBTEAMRevokeLinkedAppStatus *> *)revokeLinkedAppStatus {
  [DBStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](revokeLinkedAppStatus);

  self = [super init];
  if (self) {
    _revokeLinkedAppStatus = revokeLinkedAppStatus;
  }
  return self;
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBTEAMRevokeLinkedAppBatchResultSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBTEAMRevokeLinkedAppBatchResultSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBTEAMRevokeLinkedAppBatchResultSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBTEAMRevokeLinkedAppBatchResultSerializer

+ (NSDictionary *)serialize:(DBTEAMRevokeLinkedAppBatchResult *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  jsonDict[@"revoke_linked_app_status"] =
      [DBArraySerializer serialize:valueObj.revokeLinkedAppStatus
                         withBlock:^id(id elem) {
                           return [DBTEAMRevokeLinkedAppStatusSerializer serialize:elem];
                         }];

  return jsonDict;
}

+ (DBTEAMRevokeLinkedAppBatchResult *)deserialize:(NSDictionary *)valueDict {
  NSArray<DBTEAMRevokeLinkedAppStatus *> *revokeLinkedAppStatus =
      [DBArraySerializer deserialize:valueDict[@"revoke_linked_app_status"]
                           withBlock:^id(id elem) {
                             return [DBTEAMRevokeLinkedAppStatusSerializer deserialize:elem];
                           }];

  return [[DBTEAMRevokeLinkedAppBatchResult alloc] initWithRevokeLinkedAppStatus:revokeLinkedAppStatus];
}

@end
