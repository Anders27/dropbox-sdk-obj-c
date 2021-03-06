///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"
#import "DBTEAMTeamFolderGetInfoItem.h"
#import "DBTEAMTeamFolderMetadata.h"

#pragma mark - API Object

@implementation DBTEAMTeamFolderGetInfoItem

@synthesize idNotFound = _idNotFound;
@synthesize teamFolderMetadata = _teamFolderMetadata;

#pragma mark - Constructors

- (instancetype)initWithIdNotFound:(NSString *)idNotFound {
  self = [super init];
  if (self) {
    _tag = DBTEAMTeamFolderGetInfoItemIdNotFound;
    _idNotFound = idNotFound;
  }
  return self;
}

- (instancetype)initWithTeamFolderMetadata:(DBTEAMTeamFolderMetadata *)teamFolderMetadata {
  self = [super init];
  if (self) {
    _tag = DBTEAMTeamFolderGetInfoItemTeamFolderMetadata;
    _teamFolderMetadata = teamFolderMetadata;
  }
  return self;
}

#pragma mark - Instance field accessors

- (NSString *)idNotFound {
  if (![self isIdNotFound]) {
    [NSException raise:@"IllegalStateException"
                format:@"Invalid tag: required DBTEAMTeamFolderGetInfoItemIdNotFound, but was %@.", [self tagName]];
  }
  return _idNotFound;
}

- (DBTEAMTeamFolderMetadata *)teamFolderMetadata {
  if (![self isTeamFolderMetadata]) {
    [NSException
         raise:@"IllegalStateException"
        format:@"Invalid tag: required DBTEAMTeamFolderGetInfoItemTeamFolderMetadata, but was %@.", [self tagName]];
  }
  return _teamFolderMetadata;
}

#pragma mark - Tag state methods

- (BOOL)isIdNotFound {
  return _tag == DBTEAMTeamFolderGetInfoItemIdNotFound;
}

- (BOOL)isTeamFolderMetadata {
  return _tag == DBTEAMTeamFolderGetInfoItemTeamFolderMetadata;
}

- (NSString *)tagName {
  switch (_tag) {
  case DBTEAMTeamFolderGetInfoItemIdNotFound:
    return @"DBTEAMTeamFolderGetInfoItemIdNotFound";
  case DBTEAMTeamFolderGetInfoItemTeamFolderMetadata:
    return @"DBTEAMTeamFolderGetInfoItemTeamFolderMetadata";
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an unknown value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBTEAMTeamFolderGetInfoItemSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBTEAMTeamFolderGetInfoItemSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBTEAMTeamFolderGetInfoItemSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBTEAMTeamFolderGetInfoItemSerializer

+ (NSDictionary *)serialize:(DBTEAMTeamFolderGetInfoItem *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if ([valueObj isIdNotFound]) {
    jsonDict[@"id_not_found"] = valueObj.idNotFound;
    jsonDict[@".tag"] = @"id_not_found";
  } else if ([valueObj isTeamFolderMetadata]) {
    jsonDict[@"team_folder_metadata"] =
        [[DBTEAMTeamFolderMetadataSerializer serialize:valueObj.teamFolderMetadata] mutableCopy];
    jsonDict[@".tag"] = @"team_folder_metadata";
  } else {
    @throw([NSException exceptionWithName:@"InvalidTag"
                                   reason:@"Object not properly initialized. Tag has an unknown value."
                                 userInfo:nil]);
  }

  return jsonDict;
}

+ (DBTEAMTeamFolderGetInfoItem *)deserialize:(NSDictionary *)valueDict {
  NSString *tag = valueDict[@".tag"];

  if ([tag isEqualToString:@"id_not_found"]) {
    NSString *idNotFound = valueDict[@"id_not_found"];
    return [[DBTEAMTeamFolderGetInfoItem alloc] initWithIdNotFound:idNotFound];
  } else if ([tag isEqualToString:@"team_folder_metadata"]) {
    DBTEAMTeamFolderMetadata *teamFolderMetadata = [DBTEAMTeamFolderMetadataSerializer deserialize:valueDict];
    return [[DBTEAMTeamFolderGetInfoItem alloc] initWithTeamFolderMetadata:teamFolderMetadata];
  }

  @throw([NSException
      exceptionWithName:@"InvalidTag"
                 reason:[NSString stringWithFormat:@"Tag has an invalid value: \"%@\".", valueDict[@".tag"]]
               userInfo:nil]);
}

@end
