@interface SBDockView : UIView
-(void)didMoveToWindow;
@end

@interface MTMaterialView : UIView
@end

%hook SBDockView

-(void)didMoveToWindow {
	%orig;
	for(UIView* subview in self.subviews) {
		if([subview isKindOfClass:%c(MTMaterialView)]) {
			[subview removeFromSuperview];
		}
	}
}

%end