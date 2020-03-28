# IncidentResponse
大部分情况控制器与视图之间的交互大部分都是以代理来处理相应的点击事件,但是这样做虽然符合iOS设计和实现,但是会导致代码量增加,并且也会让我们增加
很多重复性代码,并且影响效率
如果是通知会让后期维护相对繁琐代码容易混乱
所以本人及团队,根据经验总结以 Runloop 的source1事件配合 - (id)performSelector:(SEL)aSelector withObject:(id)object; 方法
来做控制器和视图之间交互

只需要继承base 控制器 和 视图 就可以调用
- (void)safePerformAction:(NSString *)action params:(id)params 响应事件在控制器实现就可以简单交互省去复杂代码

控制器逻辑是
- (void)viewDidLoad {
    [super viewDidLoad];
    //添加要响应控制器
    kRuntimeInstance.curentViewController = self;
}
要去获取子视图响应的控制器 所以创建控制器要继承BaseViewController

子视图想要把事件传出需要调用
[self safePerformAction:@"" withObject:self];
@"viewModel_MeView_clickAction:" 这里是自命名根据实际情况

响应的控制器只需要从写
- (void)viewModel_MeView_clickAction:(MeView *)view {
    NSLog(@"返回点击事件");
}

可以完成 所有东西都可自定义,这里只是提供实践的思想和思路
