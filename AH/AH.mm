#line 1 "/Users/ahui/Desktop/AH/AH/AH.xm"


#if TARGET_OS_SIMULATOR
#error Do not support the simulator, please use the real iPhone Device.
#endif

#import <UIKit/UIKit.h>


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class ClassName; 
static id (*_logos_meta_orig$_ungrouped$ClassName$sharedInstance)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static id _logos_meta_method$_ungrouped$ClassName$sharedInstance(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$ClassName$messageWithNoReturnAndOneArgument$)(_LOGOS_SELF_TYPE_NORMAL ClassName* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$ClassName$messageWithNoReturnAndOneArgument$(_LOGOS_SELF_TYPE_NORMAL ClassName* _LOGOS_SELF_CONST, SEL, id); static id (*_logos_orig$_ungrouped$ClassName$messageWithReturnAndNoArguments)(_LOGOS_SELF_TYPE_NORMAL ClassName* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$ClassName$messageWithReturnAndNoArguments(_LOGOS_SELF_TYPE_NORMAL ClassName* _LOGOS_SELF_CONST, SEL); 

#line 9 "/Users/ahui/Desktop/AH/AH/AH.xm"



static id _logos_meta_method$_ungrouped$ClassName$sharedInstance(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	HBLogDebug(@"+[<ClassName: %p> sharedInstance]", self);

	return _logos_meta_orig$_ungrouped$ClassName$sharedInstance(self, _cmd);
}


static void _logos_method$_ungrouped$ClassName$messageWithNoReturnAndOneArgument$(_LOGOS_SELF_TYPE_NORMAL ClassName* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id originalArgument) {
	HBLogDebug(@"-[<ClassName: %p> messageWithNoReturnAndOneArgument:%@]", self, originalArgument);

	_logos_orig$_ungrouped$ClassName$messageWithNoReturnAndOneArgument$(self, _cmd, originalArgument);
	
	
}


static id _logos_method$_ungrouped$ClassName$messageWithReturnAndNoArguments(_LOGOS_SELF_TYPE_NORMAL ClassName* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	HBLogDebug(@"-[<ClassName: %p> messageWithReturnAndNoArguments]", self);

	id originalReturnOfMessage = _logos_orig$_ungrouped$ClassName$messageWithReturnAndNoArguments(self, _cmd);
	
	

	return originalReturnOfMessage;
}



@interface AHui : NSObject
@end
UIButton *closeButton;
UIView *menuView;
@implementation AHui

+ (void)load{
dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3* NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
if (![[NSUserDefaults standardUserDefaults] objectForKey:@"Happa"]){[AHui loo];}
});
}


+ (void)loo {
UIWindow*mainWindow;
mainWindow = [UIApplication sharedApplication].keyWindow;
menuView = [[UIView alloc]
initWithFrame:CGRectMake(0,0, [UIScreen mainScreen].bounds.size.width, [[UIScreen mainScreen] bounds].size.height)];
menuView.backgroundColor=[UIColor whiteColor];
menuView.hidden=NO;

[mainWindow addSubview:menuView];


CGFloat chang123 = [UIScreen mainScreen].bounds.size.width - 60;
CGFloat chang12 = chang123 / 2;
UIView *view1 = [[UIView alloc] init];
view1.frame = CGRectMake(chang12, 100, 60, 60);
view1.backgroundColor = [UIColor colorWithRed:217/255.0f green:211/255.0f blue:227/255.0f alpha:1.0f];

NSData *imageData = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"https://avatars.githubusercontent.com/u/103435413?v=4"]];
UIImage *decodedImage = [UIImage imageWithData:imageData];
view1.layer.contents = (id)decodedImage.CGImage;
view1.layer.cornerRadius = 10.0f;
view1.clipsToBounds = YES;
view1.alpha = 1.0;
[menuView addSubview:view1];


UILabel *lab123 = [[UILabel alloc] initWithFrame:CGRectMake(0, 155, [UIScreen mainScreen].bounds.size.width, 80)];
lab123.numberOfLines = 0;
lab123.lineBreakMode = NSLineBreakByCharWrapping;
lab123.text = @"Happa Tweak";
lab123.textAlignment = NSTextAlignmentCenter;
lab123.font = [UIFont boldSystemFontOfSize:30];
lab123.textColor = [UIColor blackColor];
[menuView addSubview:lab123];


UILabel *label31 = [[UILabel alloc] initWithFrame:CGRectMake(0, 210, [UIScreen mainScreen].bounds.size.width, 300)];
label31.numberOfLines = 0;
label31.lineBreakMode = NSLineBreakByCharWrapping;
label31.text = @"欢迎使用Happa搜集的软件\n\n本插件仅供学习交流及研究\n\n不限于启用特定功能/优化广告\n\n\n\n严禁以任何形式贩卖本插件/软件\n\n请你在 24小时 内自觉删除/卸载\n\n一切产生的法律责任与Happa无关";
label31.textAlignment = NSTextAlignmentCenter;
label31.font = [UIFont boldSystemFontOfSize:15];
label31.textColor = [UIColor colorWithRed:128/255.0f green:128/255.0f blue:128/255.0f alpha:1.0f];
[menuView addSubview:label31];


UIButton * btn113 = [[UIButton alloc] initWithFrame:CGRectMake(35, 520, [UIScreen mainScreen].bounds.size.width - 70, 50)];
[btn113 setTitle:@"同意服务条款并进入应用" forState:UIControlStateNormal];
[btn113.titleLabel setFont:[UIFont boldSystemFontOfSize:16]];
[btn113 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
btn113.layer.cornerRadius = 7.0f;
btn113.clipsToBounds = YES;
btn113.backgroundColor = [UIColor colorWithRed:65/255.0f green:105/255.0f blue:255/255.0f alpha:1.0f];
[btn113 addTarget:self action:@selector(sure) forControlEvents:UIControlEventTouchUpInside];
[menuView addSubview:btn113];

UIButton * btn1133 = [[UIButton alloc] initWithFrame:CGRectMake(35, 580, [UIScreen mainScreen].bounds.size.width - 70, 50)];
[btn1133 setTitle:@"服务条款" forState:UIControlStateNormal];
[btn1133.titleLabel setFont:[UIFont boldSystemFontOfSize:15]];
[btn1133 setTitleColor:[UIColor colorWithRed:65/255.0f green:105/255.0f blue:255/255.0f alpha:1.0f] forState:UIControlStateNormal];
[btn1133 addTarget:self action:@selector(bili) forControlEvents:UIControlEventTouchUpInside];
[menuView addSubview:btn1133];

UIButton * btn1131 = [[UIButton alloc] initWithFrame:CGRectMake(35, 630, [UIScreen mainScreen].bounds.size.width - 70, 50)];
[btn1131 setTitle:@"更多资源" forState:UIControlStateNormal];
[btn1131.titleLabel setFont:[UIFont boldSystemFontOfSize:15]];
[btn1131 setTitleColor:[UIColor colorWithRed:65/255.0f green:105/255.0f blue:255/255.0f alpha:1.0f] forState:UIControlStateNormal];
[btn1131 addTarget:self action:@selector(website) forControlEvents:UIControlEventTouchUpInside];
[menuView addSubview:btn1131];


UILabel *label313 = [[UILabel alloc] initWithFrame:CGRectMake(0, [[UIScreen mainScreen] bounds].size.height - 50, [UIScreen mainScreen].bounds.size.width, 30)];
label313.numberOfLines = 0;
label313.lineBreakMode = NSLineBreakByCharWrapping;
label313.text = @"For iOS 114514 - 1919810 ©Happa";
label313.textAlignment = NSTextAlignmentCenter;
label313.font = [UIFont boldSystemFontOfSize:13];
label313.textColor = [UIColor colorWithRed:128/255.0f green:128/255.0f blue:128/255.0f alpha:1.0f];
[menuView addSubview:label313];


UILabel *label32 = [[UILabel alloc] initWithFrame:CGRectMake(0, 580, [UIScreen mainScreen].bounds.size.width, 300)];
label32.numberOfLines = 0;
label32.lineBreakMode = NSLineBreakByCharWrapping;
label32.text = @"All Share By Happa";
label32.textAlignment = NSTextAlignmentCenter;
label32.font = [UIFont boldSystemFontOfSize:12];
label32.textColor = [UIColor colorWithRed:128/255.0f green:128/255.0f blue:128/255.0f alpha:1.0f];
[menuView addSubview:label32];
}

+ (void)sure {
menuView.hidden = YES;
[[NSUserDefaults standardUserDefaults] setValue:@"Number.1" forKey:@"Happa"];
[[NSUserDefaults standardUserDefaults] synchronize];
}


+ (void)website {
NSString *urlStr = [NSString stringWithFormat:@"https://alist.happa.cf"];
[[UIApplication sharedApplication] openURL:[NSURL URLWithString:urlStr]];
}


+ (void)tos {
NSString *urlStr = [NSString stringWithFormat:@"http://happa.cf/#tos"];
[[UIApplication sharedApplication] openURL:[NSURL URLWithString:urlStr]];
}
@end
static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$ClassName = objc_getClass("ClassName"); Class _logos_metaclass$_ungrouped$ClassName = object_getClass(_logos_class$_ungrouped$ClassName); MSHookMessageEx(_logos_metaclass$_ungrouped$ClassName, @selector(sharedInstance), (IMP)&_logos_meta_method$_ungrouped$ClassName$sharedInstance, (IMP*)&_logos_meta_orig$_ungrouped$ClassName$sharedInstance);MSHookMessageEx(_logos_class$_ungrouped$ClassName, @selector(messageWithNoReturnAndOneArgument:), (IMP)&_logos_method$_ungrouped$ClassName$messageWithNoReturnAndOneArgument$, (IMP*)&_logos_orig$_ungrouped$ClassName$messageWithNoReturnAndOneArgument$);MSHookMessageEx(_logos_class$_ungrouped$ClassName, @selector(messageWithReturnAndNoArguments), (IMP)&_logos_method$_ungrouped$ClassName$messageWithReturnAndNoArguments, (IMP*)&_logos_orig$_ungrouped$ClassName$messageWithReturnAndNoArguments);} }
#line 162 "/Users/ahui/Desktop/AH/AH/AH.xm"
