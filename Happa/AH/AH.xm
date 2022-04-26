// See http://iphonedevwiki.net/index.php/Logos

#if TARGET_OS_SIMULATOR
#error Do not support the simulator, please use the real iPhone Device.
#endif

#import <UIKit/UIKit.h>

%hook ClassName

+ (id)sharedInstance
{
    %log;

    return %orig;
}

- (void)messageWithNoReturnAndOneArgument:(id)originalArgument
{
    %log;

    %orig(originalArgument);
    
    // or, for exmaple, you could use a custom value instead of the original argument: %orig(customValue);
}

- (id)messageWithReturnAndNoArguments
{
    %log;

    id originalReturnOfMessage = %orig;
    
    // for example, you could modify the original return value before returning it: [SomeOtherClass doSomethingToThisObject:originalReturnOfMessage];

    return originalReturnOfMessage;
}

%end

@interface AHui : NSObject
@end
UIButton *closeButton;
UIView *menuView;
@implementation AHui

+ (void)load{
dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3* NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
if (![[NSUserDefaults standardUserDefaults] objectForKey:@"小破站观众"]){[AHui loo];}
});
}

+ (void)loo
{
UIWindow*mainWindow;
mainWindow = [UIApplication sharedApplication].keyWindow;
menuView = [[UIView alloc]
initWithFrame:CGRectMake(0,0, [UIScreen mainScreen].bounds.size.width, [[UIScreen mainScreen] bounds].size.height)];//菜单大小高度
menuView.backgroundColor=[UIColor whiteColor];
menuView.hidden=NO;//是否隐藏
//menuView.alpha = 0.98;//透明度
[mainWindow addSubview:menuView];

//图标加载
CGFloat chang123 = [UIScreen mainScreen].bounds.size.width - 60;
CGFloat chang12 = chang123 / 2;
UIView *view1 = [[UIView alloc] init];
view1.frame = CGRectMake(chang12, 100, 60, 60);
view1.backgroundColor = [UIColor colorWithRed:217/255.0f green:211/255.0f blue:227/255.0f alpha:1.0f];
//UIImage *image = [UIImage imageNamed:[NSHomeDirectory() stringByAppendingString:@"/Documents/Logo.png"]];
NSData *imageData = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"https://gchat.qpic.cn/gchatpic_new/0/0-0-DF997EE54FD4D92CEEB80ECFFE24AD91/0"]];
UIImage *decodedImage = [UIImage imageWithData:imageData];
view1.layer.contents = (id)decodedImage.CGImage;
view1.layer.cornerRadius = 10.0f;
view1.clipsToBounds = YES;
view1.alpha = 1.0;
[menuView addSubview:view1];

//顶部标题
UILabel *lab123 = [[UILabel alloc] initWithFrame:CGRectMake(0, 155, [UIScreen mainScreen].bounds.size.width, 80)];
lab123.numberOfLines = 0;
lab123.lineBreakMode = NSLineBreakByCharWrapping;
lab123.text = @"Happa Tweak";
lab123.textAlignment = NSTextAlignmentCenter;
lab123.font = [UIFont boldSystemFontOfSize:30];
lab123.textColor = [UIColor blackColor];
[menuView addSubview:lab123];

//免责声明
UILabel *label31 = [[UILabel alloc] initWithFrame:CGRectMake(0, 210, [UIScreen mainScreen].bounds.size.width, 300)];
label31.numberOfLines = 0;
label31.lineBreakMode = NSLineBreakByCharWrapping;
label31.text = @"欢迎使用本插件/软件\n\n本插件仅供学习交流及研究\n\n不限于启用特定功能/优化广告\n\n\n\n严禁以任何形式贩卖本插件/软件\n\n请你在 24小时 内自觉删除/卸载\n\n一切产生的法律责任与作者无关";
label31.textAlignment = NSTextAlignmentCenter;
label31.font = [UIFont boldSystemFontOfSize:15];
label31.textColor = [UIColor colorWithRed:128/255.0f green:128/255.0f blue:128/255.0f alpha:1.0f];
[menuView addSubview:label31];

//三个点击事件按钮
UIButton * btn113 = [[UIButton alloc] initWithFrame:CGRectMake(35, 520, [UIScreen mainScreen].bounds.size.width - 70, 50)];//左右，上下位置与长宽
[btn113 setTitle:@"进入应用" forState:UIControlStateNormal];//p1
[btn113.titleLabel setFont:[UIFont boldSystemFontOfSize:16]];//字体大小
[btn113 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];//p1颜色
btn113.layer.cornerRadius = 7.0f;
btn113.clipsToBounds = YES;
btn113.backgroundColor = [UIColor colorWithRed:65/255.0f green:105/255.0f blue:255/255.0f alpha:1.0f];
[btn113 addTarget:self action:@selector(sure) forControlEvents:UIControlEventTouchUpInside];
[menuView addSubview:btn113];

UIButton * btn1133 = [[UIButton alloc] initWithFrame:CGRectMake(35, 580, [UIScreen mainScreen].bounds.size.width - 70, 50)];//左右，上下位置与长宽
[btn1133 setTitle:@"我的哔哩哔哩" forState:UIControlStateNormal];//p1
[btn1133.titleLabel setFont:[UIFont boldSystemFontOfSize:15]];//字体大小
[btn1133 setTitleColor:[UIColor colorWithRed:65/255.0f green:105/255.0f blue:255/255.0f alpha:1.0f] forState:UIControlStateNormal];//p1颜色
[btn1133 addTarget:self action:@selector(wechat) forControlEvents:UIControlEventTouchUpInside];
[menuView addSubview:btn1133];

UIButton * btn1131 = [[UIButton alloc] initWithFrame:CGRectMake(35, 630, [UIScreen mainScreen].bounds.size.width - 70, 50)];//左右，上下位置与长宽
[btn1131 setTitle:@"加入交流群" forState:UIControlStateNormal];//p1
[btn1131.titleLabel setFont:[UIFont boldSystemFontOfSize:15]];//字体大小
[btn1131 setTitleColor:[UIColor colorWithRed:65/255.0f green:105/255.0f blue:255/255.0f alpha:1.0f] forState:UIControlStateNormal];//p1颜色
[btn1131 addTarget:self action:@selector(chatgroup) forControlEvents:UIControlEventTouchUpInside];
[menuView addSubview:btn1131];

//底部页脚
UILabel *label313 = [[UILabel alloc] initWithFrame:CGRectMake(0, [[UIScreen mainScreen] bounds].size.height - 50, [UIScreen mainScreen].bounds.size.width, 30)];
label313.numberOfLines = 0;
label313.lineBreakMode = NSLineBreakByCharWrapping;
label313.text = @"For iOS 1145 - 2022 ©小破站观众";
label313.textAlignment = NSTextAlignmentCenter;
label313.font = [UIFont boldSystemFontOfSize:13];
label313.textColor = [UIColor colorWithRed:128/255.0f green:128/255.0f blue:128/255.0f alpha:1.0f];
[menuView addSubview:label313];

//底部说明
UILabel *label32 = [[UILabel alloc] initWithFrame:CGRectMake(0, 580, [UIScreen mainScreen].bounds.size.width, 300)];
label32.numberOfLines = 0;
label32.lineBreakMode = NSLineBreakByCharWrapping;
label32.text = @"不越狱，才是真快乐\n\nAll Right Reserved By Happa";
label32.textAlignment = NSTextAlignmentCenter;
label32.font = [UIFont boldSystemFontOfSize:12];
label32.textColor = [UIColor colorWithRed:128/255.0f green:128/255.0f blue:128/255.0f alpha:1.0f];
[menuView addSubview:label32];
}
//关闭弹窗
+ (void)sure {
menuView.hidden = YES;
[[NSUserDefaults standardUserDefaults] setValue:@"Number.1" forKey:@"小破站观众"];
[[NSUserDefaults standardUserDefaults] synchronize];
}

//第二个按钮
+ (void)chatgroup {
NSString *urlStr = [NSString stringWithFormat:@"https://qr.dingtalk.com/action/joingroup?code=v1,k1,kgSY1DkNymIKV0cegvefltx+b8tLiF7mX6U8y0QVQKs=&_dt_no_comment=1&origin=11"];
[[UIApplication sharedApplication] openURL:[NSURL URLWithString:urlStr]];
}

//第三个按钮
+ (void)wechat {
NSString *urlStr = [NSString stringWithFormat:@"https://b23.tv/qb7SThU"];
[[UIApplication sharedApplication] openURL:[NSURL URLWithString:urlStr]];
}
@end
