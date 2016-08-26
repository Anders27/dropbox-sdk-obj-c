///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DBXSerializableProtocol.h"

@class DBXTEAMMemberProfile;
@class DBXTEAMTeamMemberStatus;
@class DBXTEAMTeamMembershipType;
@class DBXUSERSName;

/// 
/// The `DBXTEAMMemberProfile` struct.
/// 
/// This class implements the `DBXSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
/// Basic member profile.
/// 
@interface DBXTEAMMemberProfile : NSObject <DBXSerializable> 

/// ID of user as a member of a team.
@property (nonatomic, copy) NSString * _Nonnull teamMemberId;

/// External ID that a team can attach to the user. An application using the API
/// may find it easier to use their own IDs instead of Dropbox IDs like
/// account_id or team_member_id.
@property (nonatomic, copy) NSString * _Nullable externalId;

/// A user's account identifier.
@property (nonatomic, copy) NSString * _Nullable accountId;

/// Email address of user.
@property (nonatomic, copy) NSString * _Nonnull email;

/// Is true if the user's email is verified to be owned by the user.
@property (nonatomic, copy) NSNumber * _Nonnull emailVerified;

/// The user's status as a member of a specific team.
@property (nonatomic) DBXTEAMTeamMemberStatus * _Nonnull status;

/// Representations for a person's name.
@property (nonatomic) DBXUSERSName * _Nonnull name;

/// The user's membership type: full (normal team member) vs limited (does not
/// use a license; no access to the team's shared quota).
@property (nonatomic) DBXTEAMTeamMembershipType * _Nonnull membershipType;

/// Full constructor for the `MemberProfile` struct (exposes all instance
/// variables).
- (nonnull instancetype)initWithTeamMemberId:(NSString * _Nonnull)teamMemberId email:(NSString * _Nonnull)email emailVerified:(NSNumber * _Nonnull)emailVerified status:(DBXTEAMTeamMemberStatus * _Nonnull)status name:(DBXUSERSName * _Nonnull)name membershipType:(DBXTEAMTeamMembershipType * _Nonnull)membershipType externalId:(NSString * _Nullable)externalId accountId:(NSString * _Nullable)accountId;

/// Convenience constructor for the `MemberProfile` struct (exposes only
/// non-nullable instance variables with no default value).
- (nonnull instancetype)initWithTeamMemberId:(NSString * _Nonnull)teamMemberId email:(NSString * _Nonnull)email emailVerified:(NSNumber * _Nonnull)emailVerified status:(DBXTEAMTeamMemberStatus * _Nonnull)status name:(DBXUSERSName * _Nonnull)name membershipType:(DBXTEAMTeamMembershipType * _Nonnull)membershipType;

/// Returns a human-readable representation of the `DBXTEAMMemberProfile`
/// object.
- (NSString * _Nonnull)description;

@end


/// 
/// The serialization class for the `DBXTEAMMemberProfile` struct.
/// 
@interface DBXTEAMMemberProfileSerializer : NSObject 

/// Returns a json-compatible dictionary representation of the
/// `DBXTEAMMemberProfile` object from an instantiation.
+ (NSDictionary * _Nonnull)serialize:(DBXTEAMMemberProfile * _Nonnull)obj;

/// Returns an instantiation of the `DBXTEAMMemberProfile` object from a
/// json-compatible dictionary representation.
+ (DBXTEAMMemberProfile * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end