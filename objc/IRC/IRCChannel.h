// Created by Satoshi Nakagawa.
// You can redistribute it and/or modify it under the Ruby's license or the GPL2.

#import <Cocoa/Cocoa.h>
#import "IRCTreeItem.h"
#import "IRCChannelConfig.h"
#import "LogController.h"
#import "IRCUser.h"


@class IRCClient;


@interface IRCChannel : IRCTreeItem
{
	IRCClient* client;
	IRCChannelConfig* config;
	
	NSMutableArray* members;
	NSString* topic;
	
	BOOL isActive;
	BOOL hasOp;
	BOOL namesInit;
	BOOL whoInit;
}

@property (nonatomic, assign) IRCClient* client;
@property (nonatomic, readonly) IRCChannelConfig* config;

@property (nonatomic, assign) NSString* name;
@property (nonatomic, readonly) NSString* password;
@property (nonatomic, readonly) BOOL isChannel;
@property (nonatomic, readonly) BOOL isTalk;
@property (nonatomic, readonly) NSString* channelTypeString;
@property (nonatomic, retain) NSString* topic;
@property (nonatomic, assign) BOOL isActive;
@property (nonatomic, assign) BOOL hasOp;
@property (nonatomic, assign) BOOL namesInit;
@property (nonatomic, assign) BOOL whoInit;

- (void)setup:(IRCChannelConfig*)seed;
- (void)updateConfig:(IRCChannelConfig*)seed;
- (void)updateAutoOp:(IRCChannelConfig*)seed;

- (void)terminate;
- (void)activate;
- (void)deactivate;
- (void)closeDialogs;

- (BOOL)print:(LogLine*)line;

- (void)addMember:(IRCUser*)user;
- (void)addMember:(IRCUser*)user reload:(BOOL)reload;
- (void)removeMember:(NSString*)nick;
- (void)removeMember:(NSString*)nick reload:(BOOL)reload;
- (void)renameMember:(NSString*)fromNick to:(NSString*)toNick;
- (void)updateOrAddMember:(IRCUser*)user;
- (void)changeMember:(NSString*)nick mode:(char)mode value:(BOOL)value;
- (void)clearMembers;
- (int)indexOfMember:(NSString*)nick;
- (IRCUser*)findMember:(NSString*)nick;
- (int)numberOfMembers;
- (void)reloadMemberList;

@end