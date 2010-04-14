// Created by Satoshi Nakagawa.
// You can redistribute it and/or modify it under the Ruby's license or the GPL2.

#import "Preferences.h"
#import "NSLocaleHelper.h"
#import "NSDictionaryHelper.h"


@implementation Preferences

+ (DCCActionType)dccAction
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud integerForKey:@"Preferences.Dcc.action"];
}

+ (AddressDetectionType)dccAddressDetectionMethod
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud integerForKey:@"Preferences.Dcc.address_detection_method"];
}

+ (NSString*)dccMyaddress
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud objectForKey:@"Preferences.Dcc.myaddress"];
}

+ (BOOL)autoRejoin
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud boolForKey:@"Preferences.General.auto_rejoin"];
}

+ (BOOL)confirmQuit
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud boolForKey:@"Preferences.General.confirm_quit"];
}

+ (BOOL)connectOnDoubleclick
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud boolForKey:@"Preferences.General.connect_on_doubleclick"];
}

+ (BOOL)disconnectOnDoubleclick
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud boolForKey:@"Preferences.General.disconnect_on_doubleclick"];
}

+ (BOOL)joinOnDoubleclick
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud boolForKey:@"Preferences.General.join_on_doubleclick"];
}

+ (BOOL)leaveOnDoubleclick
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud boolForKey:@"Preferences.General.leave_on_doubleclick"];
}

+ (BOOL)logTranscript
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud boolForKey:@"Preferences.General.log_transcript"];
}

+ (MainWindowLayoutType)mainWindowLayout
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud integerForKey:@"Preferences.General.main_window_layout"];
}

+ (BOOL)openBrowserInBackground
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud boolForKey:@"Preferences.General.open_browser_in_background"];
}

+ (BOOL)showInlineImages
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud boolForKey:@"Preferences.General.show_inline_images"];
}

+ (BOOL)showJoinLeave
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud boolForKey:@"Preferences.General.show_join_leave"];
}

+ (BOOL)stopGrowlOnActive
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud boolForKey:@"Preferences.General.stop_growl_on_active"];
}

+ (TabActionType)tabAction
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud integerForKey:@"Preferences.General.tab_action"];
}

+ (BOOL)useGrowl
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud boolForKey:@"Preferences.General.use_growl"];
}

+ (BOOL)useHotkey
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud boolForKey:@"Preferences.General.use_hotkey"];
}

+ (BOOL)keywordCurrentNick
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud boolForKey:@"Preferences.Keyword.current_nick"];
}

+ (NSArray*)keywordDislikeWords
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud objectForKey:@"Preferences.Keyword.dislike_words"];
}

+ (NSArray*)keywordIgnoreWords
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud objectForKey:@"Preferences.Keyword.ignore_words"];
}

+ (KeywordMatchType)keywordMatchingMethod
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud integerForKey:@"Preferences.Keyword.matching_method"];
}

+ (BOOL)keywordWholeLine
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud boolForKey:@"Preferences.Keyword.whole_line"];
}

+ (NSArray*)keywordWords
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud objectForKey:@"Preferences.Keyword.words"];
}

#pragma mark -
#pragma mark Paste

+ (NSString*)pasteCommand
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud objectForKey:@"Preferences.General.paste_command"];
}

+ (void)setPasteCommand:(NSString*)value
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	[ud setObject:value forKey:@"Preferences.General.paste_command"];
}

+ (NSString*)pasteSyntax
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud objectForKey:@"Preferences.General.paste_syntax"];
}

+ (void)setPasteSyntax:(NSString*)value
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	[ud setObject:value forKey:@"Preferences.General.paste_syntax"];
}

#pragma mark -
#pragma mark Theme

+ (NSString*)themeName
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud objectForKey:@"Preferences.Theme.name"];
}

+ (void)setThemeName:(NSString*)value
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	[ud setObject:value forKey:@"Preferences.Theme.name"];
}

+ (NSString*)themeLogFontName
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud objectForKey:@"Preferences.Theme.log_font_name"];
}

+ (void)setThemeLogFontName:(NSString*)value
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	[ud setObject:value forKey:@"Preferences.Theme.log_font_name"];
}

+ (double)themeLogFontSize
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud doubleForKey:@"Preferences.Theme.log_font_size"];
}

+ (void)setThemeLogFontSize:(double)value
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	[ud setDouble:value forKey:@"Preferences.Theme.log_font_size"];
}

+ (NSString*)themeNickFormat
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud objectForKey:@"Preferences.Theme.nick_format"];
}

+ (BOOL)themeOverrideLogFont
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud boolForKey:@"Preferences.Theme.override_log_font"];
}

+ (BOOL)themeOverrideNickFormat
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud boolForKey:@"Preferences.Theme.override_nick_format"];
}

+ (BOOL)themeOverrideTimestampFormat
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud boolForKey:@"Preferences.Theme.override_timestamp_format"];
}

+ (NSString*)themeTimestampFormat
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud objectForKey:@"Preferences.Theme.timestamp_format"];
}

+ (double)themeTransparency
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud doubleForKey:@"Preferences.Theme.transparency"];
}

#pragma mark -
#pragma mark DCC Ports

+ (int)dccFirstPort
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud integerForKey:@"Preferences.Dcc.first_port"];
}

+ (void)setDccFirstPort:(int)value
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	[ud setInteger:value forKey:@"Preferences.Dcc.first_port"];
}

+ (int)dccLastPort
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud integerForKey:@"Preferences.Dcc.last_port"];
}

+ (void)setDccLastPort:(int)value
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	[ud setInteger:value forKey:@"Preferences.Dcc.last_port"];
}

#pragma mark -
#pragma mark Max Log Lines

+ (int)maxLogLines
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud integerForKey:@"Preferences.General.max_log_lines"];
}

+ (void)setMaxLogLines:(int)value
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	[ud setInteger:value forKey:@"Preferences.General.max_log_lines"];
}

#pragma mark -
#pragma mark Transcript Folder

+ (NSString*)transcriptFolder
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud objectForKey:@"Preferences.General.transcript_folder"];
}

+ (void)setTranscriptFolder:(NSString*)value
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	[ud setObject:value forKey:@"Preferences.General.transcript_folder"];
}

#pragma mark -
#pragma mark Sounds

+ (NSString*)soundChanneltext
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud objectForKey:@"Preferences.Sound.channeltext"];
}

+ (void)setSoundChanneltext:(NSString*)value
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	[ud setObject:value forKey:@"Preferences.Sound.channeltext"];
}

+ (NSString*)soundChannelnotice
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud objectForKey:@"channelNoticeSound"];
}

+ (void)setSoundChannelnotice:(NSString*)value
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	[ud setObject:value forKey:@"channelNoticeSound"];
}

+ (NSString*)soundTalktext
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud objectForKey:@"Preferences.Sound.talktext"];
}

+ (void)setSoundTalktext:(NSString*)value
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	[ud setObject:value forKey:@"Preferences.Sound.talktext"];
}

+ (NSString*)soundTalknotice
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud objectForKey:@"talkNoticeSound"];
}

+ (void)setSoundTalknotice:(NSString*)value
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	[ud setObject:value forKey:@"talkNoticeSound"];
}

+ (NSString*)soundDisconnect
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud objectForKey:@"Preferences.Sound.disconnect"];
}

+ (void)setSoundDisconnect:(NSString*)value
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	[ud setObject:value forKey:@"Preferences.Sound.disconnect"];
}

+ (NSString*)soundFileReceiveFailure
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud objectForKey:@"Preferences.Sound.file_receive_failure"];
}

+ (void)setSoundFileReceiveFailure:(NSString*)value
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	[ud setObject:value forKey:@"Preferences.Sound.file_receive_failure"];
}

+ (NSString*)soundFileReceiveRequest
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud objectForKey:@"Preferences.Sound.file_receive_request"];
}

+ (void)setSoundFileReceiveRequest:(NSString*)value
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	[ud setObject:value forKey:@"Preferences.Sound.file_receive_request"];
}

+ (NSString*)soundFileReceiveSuccess
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud objectForKey:@"Preferences.Sound.file_receive_success"];
}

+ (void)setSoundFileReceiveSuccess:(NSString*)value
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	[ud setObject:value forKey:@"Preferences.Sound.file_receive_success"];
}

+ (NSString*)soundFileSendFailure
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud objectForKey:@"Preferences.Sound.file_send_failure"];
}

+ (void)setSoundFileSendFailure:(NSString*)value
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	[ud setObject:value forKey:@"Preferences.Sound.file_send_failure"];
}

+ (NSString*)soundFileSendSuccess
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud objectForKey:@"Preferences.Sound.file_send_success"];
}

+ (void)setSoundFileSendSuccess:(NSString*)value
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	[ud setObject:value forKey:@"Preferences.Sound.file_send_success"];
}

+ (NSString*)soundHighlight
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud objectForKey:@"Preferences.Sound.highlight"];
}

+ (void)setSoundHighlight:(NSString*)value
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	[ud setObject:value forKey:@"Preferences.Sound.highlight"];
}

+ (NSString*)soundInvited
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud objectForKey:@"Preferences.Sound.invited"];
}

+ (void)setSoundInvited:(NSString*)value
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	[ud setObject:value forKey:@"Preferences.Sound.invited"];
}

+ (NSString*)soundKicked
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud objectForKey:@"Preferences.Sound.kicked"];
}

+ (void)setSoundKicked:(NSString*)value
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	[ud setObject:value forKey:@"Preferences.Sound.kicked"];
}

+ (NSString*)soundLogin
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud objectForKey:@"Preferences.Sound.login"];
}

+ (void)setSoundLogin:(NSString*)value
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	[ud setObject:value forKey:@"Preferences.Sound.login"];
}

+ (NSString*)soundNewtalk
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud objectForKey:@"Preferences.Sound.newtalk"];
}

+ (void)setSoundNewtalk:(NSString*)value
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	[ud setObject:value forKey:@"Preferences.Sound.newtalk"];
}

#pragma mark -
#pragma mark World

+ (BOOL)spellCheckEnabled
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	if (![ud objectForKey:@"spellCheck2"]) return YES;
	return [ud boolForKey:@"spellCheck2"];
}

+ (void)setSpellCheckEnabled:(BOOL)value
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	[ud setBool:value forKey:@"spellCheck2"];
}

+ (BOOL)grammarCheckEnabled
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud boolForKey:@"grammarCheck"];
}

+ (void)setGrammarCheckEnabled:(BOOL)value
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	[ud setBool:value forKey:@"grammarCheck"];
}

+ (BOOL)spellingCorrectionEnabled
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud boolForKey:@"spellingCorrection"];
}

+ (void)setSpellingCorrectionEnabled:(BOOL)value
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	[ud setBool:value forKey:@"spellingCorrection"];
}

+ (BOOL)smartInsertDeleteEnabled
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	if (![ud objectForKey:@"smartInsertDelete"]) return YES;
	return [ud boolForKey:@"smartInsertDelete"];
}

+ (void)setSmartInsertDeleteEnabled:(BOOL)value
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	[ud setBool:value forKey:@"smartInsertDelete"];
}

+ (BOOL)quoteSubstitutionEnabled
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud boolForKey:@"quoteSubstitution"];
}

+ (void)setQuoteSubstitutionEnabled:(BOOL)value
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	[ud setBool:value forKey:@"quoteSubstitution"];
}

+ (BOOL)dashSubstitutionEnabled
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud boolForKey:@"dashSubstitution"];
}

+ (void)setDashSubstitutionEnabled:(BOOL)value
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	[ud setBool:value forKey:@"dashSubstitution"];
}

+ (BOOL)linkDetectionEnabled
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud boolForKey:@"linkDetection"];
}

+ (void)setLinkDetectionEnabled:(BOOL)value
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	[ud setBool:value forKey:@"linkDetection"];
}

+ (BOOL)dataDetectionEnabled
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud boolForKey:@"dataDetection"];
}

+ (void)setDataDetectionEnabled:(BOOL)value
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	[ud setBool:value forKey:@"dataDetection"];
}

+ (BOOL)textReplacementEnabled
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud boolForKey:@"textReplacement"];
}

+ (void)setTextReplacementEnabled:(BOOL)value
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	[ud setBool:value forKey:@"textReplacement"];
}

#pragma mark -
#pragma mark Growl

+ (BOOL)registeredToGrowl
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud boolForKey:@"registeredToGrowl"];
}

+ (void)setRegisteredToGrowl:(BOOL)value
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	[ud setBool:value forKey:@"registeredToGrowl"];
}

#pragma mark -
#pragma mark World

+ (NSDictionary*)loadWorld
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud objectForKey:@"world"];
}

+ (void)saveWorld:(NSDictionary*)value
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	[ud setObject:value forKey:@"world"];
}

#pragma mark -
#pragma mark Window

+ (NSDictionary*)loadWindowStateWithName:(NSString*)name
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud objectForKey:name];
}

+ (void)saveWindowState:(NSDictionary*)value name:(NSString*)name
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	[ud setObject:value forKey:name];
}

#pragma mark -
#pragma mark Hot Keys

+ (int)hotKeyKeyCode
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud integerForKey:@"Preferences.General.hotkey_key_code"];
}

+ (void)setHotKeyKeyCode:(int)value
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	[ud setInteger:value forKey:@"Preferences.General.hotkey_key_code"];
}

+ (NSUInteger)hotKeyModifierFlags
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	return [ud integerForKey:@"Preferences.General.hotkey_modifier_flags"];
}

+ (void)setHotKeyModifierFlags:(NSUInteger)value
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	[ud setInteger:value forKey:@"Preferences.General.hotkey_modifier_flags"];
}

#pragma mark -
#pragma mark Keywords

static NSMutableArray* keywords;
static NSMutableArray* excludeWords;
static NSMutableArray* ignoreWords;

+ (void)loadKeywords
{
	if (keywords) {
		[keywords removeAllObjects];
	}
	else {
		keywords = [NSMutableArray new];
	}
	
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	NSArray* ary = [ud objectForKey:@"keywords"];
	for (NSDictionary* e in ary) {
		NSString* s = [e objectForKey:@"string"];
		if (s) [keywords addObject:s];
	}
}

+ (void)loadExcludeWords
{
	if (excludeWords) {
		[excludeWords removeAllObjects];
	}
	else {
		excludeWords = [NSMutableArray new];
	}
	
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	NSArray* ary = [ud objectForKey:@"excludeWords"];
	for (NSDictionary* e in ary) {
		NSString* s = [e objectForKey:@"string"];
		if (s) [excludeWords addObject:s];
	}
}

+ (void)loadIgnoreWords
{
	if (ignoreWords) {
		[ignoreWords removeAllObjects];
	}
	else {
		ignoreWords = [NSMutableArray new];
	}
	
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	NSArray* ary = [ud objectForKey:@"ignoreWords"];
	for (NSDictionary* e in ary) {
		NSString* s = [e objectForKey:@"string"];
		if (s) [ignoreWords addObject:s];
	}
}

+ (NSArray*)keywords
{
	return keywords;
}

+ (NSArray*)excludeWords
{
	return excludeWords;
}

+ (NSArray*)ignoreWords
{
	return ignoreWords;
}

#pragma mark -
#pragma mark KVO

+ (void)observeValueForKeyPath:(NSString*)key
					  ofObject:(id)object
						change:(NSDictionary *)change
					   context:(void *)context
{
	if ([key isEqualToString:@"keywords"]) {
		[self loadKeywords];
	}
	else if ([key isEqualToString:@"excludeWords"]) {
		[self loadExcludeWords];
	}
	else if ([key isEqualToString:@"ignoreWords"]) {
		[self loadIgnoreWords];
	}
}

+ (void)initPreferences
{
	NSMutableDictionary* d = [NSMutableDictionary dictionary];
	[d setInt:DCC_SHOW_DIALOG forKey:@"Preferences.Dcc.action"];
	[d setInt:ADDRESS_DETECT_JOIN forKey:@"Preferences.Dcc.address_detection_method"];
	[d setObject:@"" forKey:@"Preferences.Dcc.myaddress"];
	[d setBool:NO forKey:@"Preferences.General.auto_rejoin"];
	[d setBool:YES forKey:@"Preferences.General.confirm_quit"];
	[d setBool:NO forKey:@"Preferences.General.connect_on_doubleclick"];
	[d setBool:NO forKey:@"Preferences.General.disconnect_on_doubleclick"];
	[d setBool:NO forKey:@"Preferences.General.join_on_doubleclick"];
	[d setBool:NO forKey:@"Preferences.General.leave_on_doubleclick"];
	[d setBool:NO forKey:@"Preferences.General.log_transcript"];
	[d setInt:MAIN_WINDOW_LAYOUT_2_COLUMN forKey:@"Preferences.General.main_window_layout"];
	[d setBool:YES forKey:@"Preferences.General.open_browser_in_background"];
	[d setBool:YES forKey:@"Preferences.General.show_inline_images"];
	[d setBool:YES forKey:@"Preferences.General.show_join_leave"];
	[d setBool:YES forKey:@"Preferences.General.stop_growl_on_active"];
	[d setInt:TAB_COMPLETE_NICK forKey:@"Preferences.General.tab_action"];
	[d setBool:YES forKey:@"Preferences.General.use_growl"];
	[d setBool:NO forKey:@"Preferences.General.use_hotkey"];
	[d setBool:YES forKey:@"Preferences.Keyword.current_nick"];
	[d setInt:KEYWORD_MATCH_PARTIAL forKey:@"Preferences.Keyword.matching_method"];
	[d setBool:NO forKey:@"Preferences.Keyword.whole_line"];
	[d setObject:@"privmsg" forKey:@"Preferences.General.paste_command"];
	[d setObject:@"plain text" forKey:@"Preferences.General.paste_syntax"];
	[d setObject:@"resource:Default" forKey:@"Preferences.Theme.name"];
	[d setObject:@"Lucida Grande" forKey:@"Preferences.Theme.log_font_name"];
	[d setDouble:12 forKey:@"Preferences.Theme.log_font_size"];
	[d setObject:@"%n: " forKey:@"Preferences.Theme.nick_format"];
	[d setBool:NO forKey:@"Preferences.Theme.override_log_font"];
	[d setBool:NO forKey:@"Preferences.Theme.override_nick_format"];
	[d setBool:NO forKey:@"Preferences.Theme.override_timestamp_format"];
	[d setObject:@"%H:%M" forKey:@"Preferences.Theme.timestamp_format"];
	[d setDouble:1 forKey:@"Preferences.Theme.transparency"];
	[d setInt:1096 forKey:@"Preferences.Dcc.first_port"];
	[d setInt:1115 forKey:@"Preferences.Dcc.last_port"];
	[d setInt:300 forKey:@"Preferences.General.max_log_lines"];
	[d setObject:@"~/Documents/LimeChat Transcripts" forKey:@"Preferences.General.transcript_folder"];
	[d setInt:0 forKey:@"Preferences.General.hotkey_key_code"];
	[d setInt:0 forKey:@"Preferences.General.hotkey_modifier_flags"];
	
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	[ud registerDefaults:d];
	[ud addObserver:self forKeyPath:@"keywords" options:NSKeyValueObservingOptionNew context:NULL];
	[ud addObserver:self forKeyPath:@"excludeWords" options:NSKeyValueObservingOptionNew context:NULL];
	[ud addObserver:self forKeyPath:@"ignoreWords" options:NSKeyValueObservingOptionNew context:NULL];

	[self loadKeywords];
	[self loadExcludeWords];
	[self loadIgnoreWords];
}

#pragma mark -
#pragma mark Migration

+ (void)migrate
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	int version = [ud integerForKey:@"version"];
	
	if (version == 0) {
		// migrate string arrays
		
		NSString* oldKey;
		NSString* newKey;
		NSArray* ary;
		
		oldKey = @"Preferences.Keyword.words";
		newKey = @"keywords";
		ary = [ud objectForKey:oldKey];
		if (ary) {
			NSMutableArray* result = [NSMutableArray array];
			for (NSString* s in ary) {
				[result addObject:[NSMutableDictionary dictionaryWithObject:s forKey:@"string"]];
			}
			[ud setObject:result forKey:newKey];
			[ud removeObjectForKey:oldKey];
		}
		
		oldKey = @"Preferences.Keyword.dislike_words";
		newKey = @"excludeWords";
		ary = [ud objectForKey:oldKey];
		if (ary) {
			NSMutableArray* result = [NSMutableArray array];
			for (NSString* s in ary) {
				[result addObject:[NSMutableDictionary dictionaryWithObject:s forKey:@"string"]];
			}
			[ud setObject:result forKey:newKey];
			[ud removeObjectForKey:oldKey];
		}
		
		oldKey = @"Preferences.Keyword.ignore_words";
		newKey = @"ignoreWords";
		ary = [ud objectForKey:oldKey];
		if (ary) {
			NSMutableArray* result = [NSMutableArray array];
			for (NSString* s in ary) {
				[result addObject:[NSMutableDictionary dictionaryWithObject:s forKey:@"string"]];
			}
			[ud setObject:result forKey:newKey];
			[ud removeObjectForKey:oldKey];
		}
		
		[ud setInteger:1 forKey:@"version"];
		[ud synchronize];
	}
}

+ (void)sync
{
	[[NSUserDefaults standardUserDefaults] synchronize];
}

@end