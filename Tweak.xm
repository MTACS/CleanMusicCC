@interface MPUAVRouteHeaderView: UIControl
{

   UIImageView *_disclosureIndicatorImageView;
   UIImageView *_iconImageView;

}

+ (id)sharedInstance;

@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@end

%hook MPUAVRouteHeaderView

- (void)layoutSubviews
{

  self.hidden = YES;
  self.alpha = 0.0;

}

%end

@interface MPUEmptyNowPlayingView
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@property (nonatomic, assign, readwrite) CGFloat alpha;
@end

%hook MPUEmptyNowPlayingView

- (void)layoutSubviews
{

  self.hidden = YES;
  self.alpha = 0;

}

%end
