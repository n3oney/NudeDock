@interface SBDockView : UIView
-(void)didMoveToWindow;
@property CGFloat dockHeight;
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