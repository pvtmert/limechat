// Created by Satoshi Nakagawa.
// You can redistribute it and/or modify it under the Ruby's license or the GPL2.

#import <Cocoa/Cocoa.h>


typedef enum {
	ADDRESS_DETECT_SPECIFY = 0,
	ADDRESS_DETECT_JOIN = 2,
} AddressDetectionType;

typedef enum {
	DCC_AUTO_ACCEPT = 0,
	DCC_SHOW_DIALOG,
	DCC_IGNORE,
} DCCActionType;

typedef enum {
	MAIN_WINDOW_LAYOUT_2_COLUMN = 0,
	MAIN_WINDOW_LAYOUT_3_COLUMN,
} MainWindowLayoutType;

typedef enum {
	KEYWORD_MATCH_PARTIAL = 0,
	KEYWORD_MATCH_EXACT,
} KeywordMatchType;

typedef enum {
	TAB_COMPLETE_NICK = 0,
	TAB_UNREAD,
	TAB_NONE = 100,
} TabActionType;


@interface Preferences : NSObject

+ (DCCActionType)dccAction;
+ (AddressDetectionType)dccAddressDetectionMethod;
+ (NSString*)dccMyaddress;
+ (BOOL)autoRejoin;
+ (BOOL)confirmQuit;
+ (BOOL)connectOnDoubleclick;
+ (BOOL)disconnectOnDoubleclick;
+ (BOOL)joinOnDoubleclick;
+ (BOOL)leaveOnDoubleclick;
+ (BOOL)logTranscript;
+ (MainWindowLayoutType)mainWindowLayout;
+ (BOOL)openBrowserInBackground;
+ (BOOL)showInlineImages;
+ (BOOL)showJoinLeave;
+ (BOOL)stopGrowlOnActive;
+ (TabActionType)tabAction;
+ (BOOL)useGrowl;
+ (BOOL)useHotkey;
+ (BOOL)keywordCurrentNick;
+ (KeywordMatchType)keywordMatchingMethod;
+ (BOOL)keywordWholeLine;

+ (NSString*)pasteCommand;
+ (void)setPasteCommand:(NSString*)value;
+ (NSString*)pasteSyntax;
+ (void)setPasteSyntax:(NSString*)value;

+ (NSString*)themeName;
+ (void)setThemeName:(NSString*)value;
+ (NSString*)themeLogFontName;
+ (void)setThemeLogFontName:(NSString*)value;
+ (double)themeLogFontSize;
+ (void)setThemeLogFontSize:(double)value;
+ (NSString*)themeNickFormat;
+ (BOOL)themeOverrideLogFont;
+ (BOOL)themeOverrideNickFormat;
+ (BOOL)themeOverrideTimestampFormat;
+ (NSString*)themeTimestampFormat;
+ (double)themeTransparency;

+ (int)dccFirstPort;
+ (void)setDccFirstPort:(int)value;
+ (int)dccLastPort;
+ (void)setDccLastPort:(int)value;

+ (int)maxLogLines;
+ (void)setMaxLogLines:(int)value;

+ (NSString*)transcriptFolder;
+ (void)setTranscriptFolder:(NSString*)value;

+ (NSString*)soundChanneltext;
+ (void)setSoundChanneltext:(NSString*)value;
+ (NSString*)soundChannelnotice;
+ (void)setSoundChannelnotice:(NSString*)value;
+ (NSString*)soundTalktext;
+ (void)setSoundTalktext:(NSString*)value;
+ (NSString*)soundTalknotice;
+ (void)setSoundTalknotice:(NSString*)value;
+ (NSString*)soundDisconnect;
+ (void)setSoundDisconnect:(NSString*)value;
+ (NSString*)soundFileReceiveFailure;
+ (void)setSoundFileReceiveFailure:(NSString*)value;
+ (NSString*)soundFileReceiveRequest;
+ (void)setSoundFileReceiveRequest:(NSString*)value;
+ (NSString*)soundFileReceiveSuccess;
+ (void)setSoundFileReceiveSuccess:(NSString*)value;
+ (NSString*)soundFileSendFailure;
+ (void)setSoundFileSendFailure:(NSString*)value;
+ (NSString*)soundFileSendSuccess;
+ (void)setSoundFileSendSuccess:(NSString*)value;
+ (NSString*)soundHighlight;
+ (void)setSoundHighlight:(NSString*)value;
+ (NSString*)soundInvited;
+ (void)setSoundInvited:(NSString*)value;
+ (NSString*)soundKicked;
+ (void)setSoundKicked:(NSString*)value;
+ (NSString*)soundLogin;
+ (void)setSoundLogin:(NSString*)value;
+ (NSString*)soundNewtalk;
+ (void)setSoundNewtalk:(NSString*)value;

+ (BOOL)spellCheckEnabled;
+ (void)setSpellCheckEnabled:(BOOL)value;
+ (BOOL)grammarCheckEnabled;
+ (void)setGrammarCheckEnabled:(BOOL)value;
+ (BOOL)spellingCorrectionEnabled;
+ (void)setSpellingCorrectionEnabled:(BOOL)value;
+ (BOOL)smartInsertDeleteEnabled;
+ (void)setSmartInsertDeleteEnabled:(BOOL)value;
+ (BOOL)quoteSubstitutionEnabled;
+ (void)setQuoteSubstitutionEnabled:(BOOL)value;
+ (BOOL)dashSubstitutionEnabled;
+ (void)setDashSubstitutionEnabled:(BOOL)value;
+ (BOOL)linkDetectionEnabled;
+ (void)setLinkDetectionEnabled:(BOOL)value;
+ (BOOL)dataDetectionEnabled;
+ (void)setDataDetectionEnabled:(BOOL)value;
+ (BOOL)textReplacementEnabled;
+ (void)setTextReplacementEnabled:(BOOL)value;

+ (BOOL)registeredToGrowl;
+ (void)setRegisteredToGrowl:(BOOL)value;

+ (NSDictionary*)loadWorld;
+ (void)saveWorld:(NSDictionary*)value;

+ (NSDictionary*)loadWindowStateWithName:(NSString*)name;
+ (void)saveWindowState:(NSDictionary*)value name:(NSString*)name;

+ (int)hotKeyKeyCode;
+ (void)setHotKeyKeyCode:(int)value;
+ (NSUInteger)hotKeyModifierFlags;
+ (void)setHotKeyModifierFlags:(NSUInteger)value;

+ (NSArray*)keywords;
+ (NSArray*)excludeWords;
+ (NSArray*)ignoreWords;

+ (void)initPreferences;
+ (void)migrate;

+ (void)sync;

@end