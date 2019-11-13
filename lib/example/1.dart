 class _GSYTabBarState extends State<GSYTabBarWidget> with SingleTickerProviderStateMixin {
  	///···省略非关键代码
    @override
    void initState() {
      super.initState();
      ///初始化时创建控制器
      ///通过 with SingleTickerProviderStateMixin 实现动画效果。
      _tabController = new TabController(vsync: this, length: _tabItems.length);
    }

    @override
    void dispose() {
      ///页面销毁时，销毁控制器
      _tabController.dispose();
      super.dispose();
    }

    @override
    Widget build(BuildContext context) {
      ///底部TAbBar模式
      return new Scaffold(
          ///设置侧边滑出 drawer，不需要可以不设置
          drawer: _drawer,
          ///设置悬浮按键，不需要可以不设置
          floatingActionButton: _floatingActionButton,
          ///标题栏
          appBar: new AppBar(
            backgroundColor: _backgroundColor,
            title: _title,
          ),
          ///页面主体，PageView，用于承载Tab对应的页面
          body: new PageView(
            ///必须有的控制器，与tabBar的控制器同步
            controller: _pageController,
            ///每一个 tab 对应的页面主体，是一个List<Widget>
            children: _tabViews,
            onPageChanged: (index) {
              ///页面触摸作用滑动回调，用于同步tab选中状态
              _tabController.animateTo(index);
            },
          ),
          ///底部导航栏，也就是tab栏
          bottomNavigationBar: new Material(
            color: _backgroundColor,
            ///tabBar控件
            child: new TabBar(
              ///必须有的控制器，与pageView的控制器同步
              controller: _tabController,
              ///每一个tab item，是一个List<Widget>
              tabs: _tabItems,
              ///tab底部选中条颜色
              indicatorColor: _indicatorColor,
            ),
          ));
    }
  }
