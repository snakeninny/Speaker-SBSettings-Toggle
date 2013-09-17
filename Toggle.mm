extern "C" void _AXSSetDefaultRouteForCall(int route);
extern "C" int _AXSDefaultRouteForCall(void);

// Required
extern "C" BOOL isCapable()
{
	if (kCFCoreFoundationVersionNumber >= kCFCoreFoundationVersionNumber_iOS_5_0 && [[[UIDevice currentDevice] model] isEqualToString:@"iPhone"])
		return YES;
	return NO;
}

// Required
extern "C" BOOL isEnabled()
{
	// :)
	return _AXSDefaultRouteForCall() == 0 ? NO : YES;
}

// Optional
// Faster isEnabled. Remove this if it's not necessary. Keep it if isEnabled() is expensive and you can make it faster here.
extern "C" BOOL getStateFast()
{
	return isEnabled();
}

// Required
extern "C" void setState(BOOL enabled)
{
	// :)
	_AXSSetDefaultRouteForCall(enabled ? 2 : 0);
}

// Required
// How long the toggle takes to toggle, in seconds.
extern "C" float getDelayTime()
{
	return 0.6f;
}
