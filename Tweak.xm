#import <NSE/SAPhoneCall.h>
#import <NSE/SAPhoneCallEmergencySnippet.h>

%hook SAPhoneCall

+ (id)call {
	return NULL;
}

- (BOOL)requiresResponse {
	return TRUE;
}

%end

%hook SAPhoneCallEmergencySnippet

+ (id)callEmergencySnippet {
	return NULL;
}

- (int)countDownSeconds {
	return -1;
}

%end