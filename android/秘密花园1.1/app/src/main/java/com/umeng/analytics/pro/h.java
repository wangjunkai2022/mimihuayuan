package com.umeng.analytics.pro;

/* compiled from: UMLogAnalytics.java */
/* loaded from: classes.dex */
public class h {
    public static final String A = "MobclickAgent.setSecret方法参数secretkey不能为null，也不能为空字符串。|secretkey参数必须是非空 字符串。";
    public static final String B = "统计SDK常见问题索引贴 详见链接 http://developer.umeng.com/docs/66650/cate/66650";
    public static final String M = "MobclickAgent.onDeepLinkReceived方法Context参数不能为null。|参数Context需要指定ApplicationContext值。";
    public static final String N = "MobclickAgent.onDeepLinkReceived方法link参数不能为null，也不能为空字符串。|参数link必须为非空字符串。";
    public static final String O = "MobclickAgent.onDeepLinkReceived方法link参数长度超过限制。|参数link长度不能超过1024字符。";
    public static final String z = "MobclickAgent.setSecret方法参数context不能为null|参数Context需要指定ApplicationContext值。";
    public static final String a = f.b.a.a.a.h("66946", f.b.a.a.a.o("事件属性集合参数为空|onEvent接口必须传入非空的属性集合。详见问题链接 "));
    public static final String b = f.b.a.a.a.h("66946", f.b.a.a.a.o("事件ID和保留字冲突|onEvent接口传入的事件ID不能和保留字冲突。详见问题链接 "));

    /* renamed from: c  reason: collision with root package name */
    public static final String f2803c = f.b.a.a.a.h("66946", f.b.a.a.a.o("事件ID为null或者为空字符串|onEvent接口传入的事件ID不能为null，也不能为空字符串。详见问题链接 "));

    /* renamed from: d  reason: collision with root package name */
    public static final String f2804d = f.b.a.a.a.h("66946", f.b.a.a.a.o("事件属性集合map没有加入K-V值|事件属性集合参数map必须添加K-V值。详见问题链接 "));

    /* renamed from: e  reason: collision with root package name */
    public static final String f2805e = f.b.a.a.a.h("66946", f.b.a.a.a.o("事件属性集合map中key值和保留字冲突|事件属性集合map中key值不能和保留字冲突。详见问题链接 "));

    /* renamed from: f  reason: collision with root package name */
    public static final String f2806f = f.b.a.a.a.h("66946", f.b.a.a.a.o("事件ID为null或者长度超过限制|事件ID不能为null、空串，且长度不能超过128个字符。详见问题链接 "));

    /* renamed from: g  reason: collision with root package name */
    public static final String f2807g = f.b.a.a.a.h("66946", f.b.a.a.a.o("事件属性集合参数为空或者事件属性集合map没有加入K-V值|事件属性集合参数map必须添加K-V值。详见问题链接 "));

    /* renamed from: h  reason: collision with root package name */
    public static final String f2808h = f.b.a.a.a.h("66946", f.b.a.a.a.o("事件属性集合map中key非法|事件属性集合参数map中key不能为非法的。详见问题链接 "));

    /* renamed from: i  reason: collision with root package name */
    public static final String f2809i = f.b.a.a.a.h("66946", f.b.a.a.a.o("事件属性集合map中value为null|事件属性集合参数map中value不能为null。详见问题链接 "));

    /* renamed from: j  reason: collision with root package name */
    public static final String f2810j = f.b.a.a.a.h("66946", f.b.a.a.a.o("事件属性集合map中value长度超过限制|事件属性集合参数map中value如果为字符串时，其长度不能超过256个字符。详见问题链接 "));

    /* renamed from: k  reason: collision with root package name */
    public static final String f2811k = f.b.a.a.a.h("66946", f.b.a.a.a.o("事件标签为null或者为空字符串|onEvent接口传入的事件标签不能为null，也不能为空字符串。详见问题链接 "));

    /* renamed from: l  reason: collision with root package name */
    public static final String f2812l = f.b.a.a.a.h("66946", f.b.a.a.a.o("事件ID为null或者长度超过限制，或事件标签长度超过限制|事件ID不能为null、空串，且长度不能超过128个字符。事件标签长度不能超过256个字符。详见问题链接 "));

    /* renamed from: m  reason: collision with root package name */
    public static final String f2813m = f.b.a.a.a.h("66946", f.b.a.a.a.o("事件ID和保留字冲突|onEvent接口传入的事件ID不能和保留字冲突。详见问题链接 "));
    public static final String n = f.b.a.a.a.h("66948", f.b.a.a.a.o("MobclickAgent.onResume接口参数不能为null|MobclickAgent.onResume接口参数应该传入当前Activity的上下文。详见问题链接 "));
    public static final String o = f.b.a.a.a.h("66948", f.b.a.a.a.o("MobclickAgent.onResume接口参数不是Activity的上下文|MobclickAgent.onResume接口参数应该传入当前Activity的上下文。详见问题链接 "));
    public static final String p = f.b.a.a.a.h("66948", f.b.a.a.a.o("MobclickAgent.onPause接口参数不能为null|MobclickAgent.onPause接口参数应该传入当前Activity的上下文。详见问题链接 "));
    public static final String q = f.b.a.a.a.h("66948", f.b.a.a.a.o("MobclickAgent.onPause接口参数不是Activity的上下文|MobclickAgent.onPause接口参数应该传入当前Activity的上下文。详见问题链接 "));
    public static final String r = f.b.a.a.a.h("66948", f.b.a.a.a.o("@ 遗漏了Mobclick.onResume函数调用|每个Activity的onResume中都必须调用MobclickAgent.onResume。详见问题链接 "));
    public static final String s = f.b.a.a.a.h("66948", f.b.a.a.a.o("@ 遗漏了Mobclick.onPaused函数调用|每个Activity的onPaused中都必须调用MobclickAgent.onPaused。详见问题链接 "));
    public static final String t = f.b.a.a.a.h("66951", f.b.a.a.a.o("MobclickAgent.onProfileSignIn接口参数 账号ID 不能为null|账号ID不能为空。详见问题链接 "));
    public static final String u = f.b.a.a.a.h("66951", f.b.a.a.a.o("MobclickAgent.onProfileSignIn接口参数 账号ID 长度超过限制|账号ID 长度不能超过64个字符。详见问题链接 "));
    public static final String v = f.b.a.a.a.h("66951", f.b.a.a.a.o("MobclickAgent.onProfileSignIn接口参数 账号来源 长度超过限制|账号来源 长度不能超过32个字符。详见问题链接 "));
    public static final String w = f.b.a.a.a.h("66971", f.b.a.a.a.o("MobclickAgent.reportError方法参数context不能为null|参数Context需要指定ApplicationContext值。详见问题链接 "));
    public static final String x = f.b.a.a.a.h("66971", f.b.a.a.a.o("MobclickAgent.reportError方法参数error不能为null，也不能为空字符串。|error参数必须是非空字符串。详见问题链接 "));
    public static final String y = f.b.a.a.a.h("66971", f.b.a.a.a.o("MobclickAgent.reportError方法 Context和Throwable参数都不能为空。|参数Context需要指定ApplicationContext值，Throwable参数传入捕获到的异常对象。详见问题链接 "));
    public static final String C = f.b.a.a.a.h("66975", f.b.a.a.a.o("MobclickAgent.onPageStart方法参数不能为null，也不能为空字符串。|参数viewName必须为非空字符串。详见链接 "));
    public static final String D = f.b.a.a.a.h("66975", f.b.a.a.a.o("MobclickAgent.onPageEnd方法参数不能为null，也不能为空字符串。|参数viewName必须为非空 字符串。详见链接 "));
    public static final String E = f.b.a.a.a.h("66975", f.b.a.a.a.o("对于页面@，onPageStart和onPageEnd调用对的参数不一致。|对于同一个页面，请先调用onPageStart，再调用onPageEnd。详见链接 "));
    public static final String F = f.b.a.a.a.h("66975", f.b.a.a.a.o("对于页面@，请确保先依序成对调用onPageStart，onPageEnd接口，再调用onPageStart接口对其它页面进行统计。|对于任意一个页面，必须依序成对调用onPageStart以及onPageEnd，不能有遗漏。详见链接 "));
    public static final String G = f.b.a.a.a.h("66975", f.b.a.a.a.o("对于页面@，请检查是否遗漏onPageStart接口调用。|对于任意一个页面，必须依序成对调用onPageStart以及onPageEnd，不能有遗漏。详见链接 "));
    public static final String H = f.b.a.a.a.h("66976", f.b.a.a.a.o("当前发送策略为：启动时发送。详见链接 "));
    public static final String I = f.b.a.a.a.h("66976", f.b.a.a.a.o("当前发送策略为: 间隔发送。间隔时间为：@秒。详见链接 "));
    public static final String J = f.b.a.a.a.h("66976", f.b.a.a.a.o("当前发送策略为: 集成测试。但是SDK未切换到调试模式，所以后台设置未生效。|如想切换到集成测试发送策略，请调用UMConfigure.setLogEnabled(true)将SDK切换到调试模式。详见链接 "));
    public static final String K = f.b.a.a.a.h("66976", f.b.a.a.a.o("当前发送策略为：集成测试。详见链接 "));
    public static final String L = f.b.a.a.a.h("66976", f.b.a.a.a.o("当前发送策略为: 准实时发送。间隔时间为：@秒。详见链接 "));
    public static final String P = f.b.a.a.a.h("66978", f.b.a.a.a.o("发送数据时发生java.net.UnknownHostException异常|友盟后端对设备端证书验证失败。请确保设备端没有运行抓包代理类程序。详见链接 "));
    public static final String Q = f.b.a.a.a.h("66978", f.b.a.a.a.o("发送数据时发生javax.net.sslHandshakeException异常|导致友盟后端域名解析失败。请检查系统DNS服务器配置是否正确。详见链接 "));
    public static final String R = f.b.a.a.a.h("67310", f.b.a.a.a.o("track接口调用非法。|当前处于非DPLUS场景中，不能使用DPLUS相关接口，详见问题连接："));
    public static final String S = f.b.a.a.a.h("67310", f.b.a.a.a.o("registerSuperProperty接口调用非法。|当前处于非DPLUS场景中，不能使用DPLUS相关接口，详见问题连接："));
    public static final String T = f.b.a.a.a.h("67310", f.b.a.a.a.o("unregisterSuperProperty接口调用非法。|当前处于非DPLUS场景中，不能使用DPLUS相关接口，详见问题连接："));
    public static final String U = f.b.a.a.a.h("67310", f.b.a.a.a.o("getSuperProperty接口调用非法。|当前处于非DPLUS场景中，不能使用DPLUS相关接口，详见问题连接: "));
    public static final String V = f.b.a.a.a.h("67310", f.b.a.a.a.o("getSuperProperties接口调用非法。|当前处于非DPLUS场景中，不能使用DPLUS相关接口，详见问题连接："));
    public static final String W = f.b.a.a.a.h("67310", f.b.a.a.a.o("clearSuperProperties接口调用非法。|当前处于非DPLUS场景中，不能使用DPLUS相关接口，详见问题连接："));
    public static final String X = f.b.a.a.a.h("67310", f.b.a.a.a.o("setFirstLaunchEvent接口调用非法。|当前处于非DPLUS场景中，不能使用DPLUS相关接口，详见问题连接："));
    public static final String Y = f.b.a.a.a.h("67310", f.b.a.a.a.o("registerPreProperties接口调用非法。|当前处于非DPLUS场景中，不能使用DPLUS相关接口，详见问题连接："));
    public static final String Z = f.b.a.a.a.h("67310", f.b.a.a.a.o("unregisterPreProperty接口调用非法。|当前处于非DPLUS场景中，不能使用DPLUS相关接口，详见问题连接："));
    public static final String aa = f.b.a.a.a.h("67310", f.b.a.a.a.o("clearPreProperties接口调用非法。|当前处于非DPLUS场景中，不能使用DPLUS相关接口，详见问题连接："));
    public static final String ab = f.b.a.a.a.h("67310", f.b.a.a.a.o("getPreProperties接口调用非法。|当前处于非DPLUS场景中，不能使用DPLUS相关接口，详见问题连接："));
    public static final String ac = f.b.a.a.a.h("67311", f.b.a.a.a.o("eventName为空，请检查|eventName参数不能为空，详见问题连接："));
    public static final String ad = f.b.a.a.a.h("67311", f.b.a.a.a.o("请注意：map为空|track接口的参数说明，详见问题连接："));
    public static final String ae = f.b.a.a.a.h("67312", f.b.a.a.a.o("context参数为空｜context参数不能为空，详见问题连接："));
    public static final String af = f.b.a.a.a.h("67312", f.b.a.a.a.o("propertyName参数或propertyValue参数为空｜propertyName、propertyValue参数不能为空，详见问题连接："));
    public static final String ag = f.b.a.a.a.h("67313", f.b.a.a.a.o("context参数为空|context参数不能为空，详见问题连接："));
    public static final String ah = f.b.a.a.a.h("67316", f.b.a.a.a.o("context参数为空|context参数不能为空，详见问题连接："));
    public static final String ai = f.b.a.a.a.h("67318", f.b.a.a.a.o("context参数为空|context参数不能为空，详见问题连接："));
    public static final String aj = f.b.a.a.a.h("67318", f.b.a.a.a.o("trackID参数为空|trackID参数不能为空，详见问题连接："));
    public static final String ak = f.b.a.a.a.h("67319", f.b.a.a.a.o("context参数为空|context参数不能为空，详见问题连接："));
    public static final String al = f.b.a.a.a.h("67319", f.b.a.a.a.o("propertics参数为空|propertics参数不能为空，详见问题连接："));
    public static final String am = f.b.a.a.a.h("67320", f.b.a.a.a.o("context参数为空|context参数不能为空，详见问题连接："));
    public static final String an = f.b.a.a.a.h("67320", f.b.a.a.a.o("未匹配到您传入的property参数|property参数不能匹配，"));
    public static final String ao = f.b.a.a.a.h("67321", f.b.a.a.a.o("context参数为空|context参数不能为空，详见问题连接："));
    public static final String ap = f.b.a.a.a.h("67322", f.b.a.a.a.o("context参数为空|context参数不能为空，详见问题连接："));
    public static final String aq = f.b.a.a.a.h("67340", f.b.a.a.a.o("startLevel接口调用非法。|当前处于非Game场景中，不能使用Game相关接口，详见问题连接："));
    public static final String ar = f.b.a.a.a.h("67340", f.b.a.a.a.o("finishLevel接口调用非法。|当前处于非Game场景中，不能使用Game相关接口，详见问题连接："));
    public static final String as = f.b.a.a.a.h("67340", f.b.a.a.a.o("failLevel接口调用非法。|当前处于非Game场景中，不能使用Game相关接口，详见问题连接："));
    public static final String at = f.b.a.a.a.h("67340", f.b.a.a.a.o("pay接口调用非法。|当前处于非Game场景中，不能使用Game相关接口，详见问题连接："));
    public static final String au = f.b.a.a.a.h("67340", f.b.a.a.a.o("exchange接口调用非法。|当前处于非Game场景中，不能使用Game相关接口，详见问题连接："));
    public static final String av = f.b.a.a.a.h("67340", f.b.a.a.a.o("buy接口调用非法。|当前处于非Game场景中，不能使用Game相关接口，详见问题连接："));
    public static final String aw = f.b.a.a.a.h("67340", f.b.a.a.a.o("use接口调用非法。|当前处于非Game场景中，不能使用Game相关接口，详见问题连接："));
    public static final String ax = f.b.a.a.a.h("67340", f.b.a.a.a.o("bonus接口调用非法。|当前处于非Game场景中，不能使用Game相关接口，详见问题连接："));
    public static final String ay = f.b.a.a.a.h("67340", f.b.a.a.a.o("onAppResume接口调用非法。|当前处于非Game场景中，不能使用Game相关接口，详见问题连接："));
    public static final String az = f.b.a.a.a.h("67340", f.b.a.a.a.o("onAppPause接口调用非法。|当前处于非Game场景中，不能使用Game相关接口，详见问题连接："));
    public static final String aA = f.b.a.a.a.h("67341", f.b.a.a.a.o("level参数为空|level参数不能为空，详见问题连接："));
    public static final String aB = f.b.a.a.a.h("67341", f.b.a.a.a.o("level参数超出64 chars|level参数不能超出64 chars，详见问题连接："));
    public static final String aC = f.b.a.a.a.h("67341", f.b.a.a.a.o("level参数为空|level参数不能为空，详见问题连接："));
    public static final String aD = f.b.a.a.a.h("67341", f.b.a.a.a.o("level参数超出64 chars|level参数不能超出64 chars，详见问题连接："));
    public static final String aE = f.b.a.a.a.h("67341", f.b.a.a.a.o("level参数为空|level参数不能为空，详见问题连接："));
    public static final String aF = f.b.a.a.a.h("67341", f.b.a.a.a.o("level参数超出64 chars|level参数不能超出64 chars，详见问题连接："));
    public static final String aG = f.b.a.a.a.h("67342", f.b.a.a.a.o("money参数小于0或coin参数小于0|money参数不能小于0或coin参数不能小于0，详见问题链接："));
    public static final String aH = f.b.a.a.a.h("67342", f.b.a.a.a.o("source参数小于等于0或source参数大于等于100|source参数不能小于等于0或source参数不能大于等于100，详见问题链接："));
    public static final String aI = f.b.a.a.a.h("67342", f.b.a.a.a.o("source参数小于等于0或source参数大于等于100|source参数不能小于等于0或source参数不能大于等于100，详见问题链接："));
    public static final String aJ = f.b.a.a.a.h("67342", f.b.a.a.a.o("money参数小于0或number参数小于0或price参数小于0|money参数不能小于0或number参数不能小于0或price参数不能小于0，详见问题链接："));
    public static final String aK = f.b.a.a.a.h("67342", f.b.a.a.a.o("item参数为空|item参数不能为空，详见问题链接："));
    public static final String aL = f.b.a.a.a.h("67343", f.b.a.a.a.o("currencyAmount参数小于0或virtualAmount参数小于0|currencyAmount参数不能小于0或virtualAmount参数不能小于0，详见问题链接："));
    public static final String aM = f.b.a.a.a.h("67343", f.b.a.a.a.o("channel参数小于0或channel参数大于等于100|channel参数不能小于0或channel参数不能大于等于100，详见问题链接："));
    public static final String aN = f.b.a.a.a.h("67344", f.b.a.a.a.o("item参数为空|item参数不能为空，详见问题链接："));
    public static final String aO = f.b.a.a.a.h("67344", f.b.a.a.a.o("number参数小于0或price参数小于0|number参数不能小于0或price参数不能小于0，详见问题链接："));
    public static final String aP = f.b.a.a.a.h("67345", f.b.a.a.a.o("coin参数小于0|coin参数不能小于0，详见问题链接："));
    public static final String aQ = f.b.a.a.a.h("67345", f.b.a.a.a.o("source参数小于0或source参数大于等于100|source参数不能小于0或source参数不能大于等于100，详见问题链接："));
    public static final String aR = f.b.a.a.a.h("67345", f.b.a.a.a.o("item参数为空|item参数不能为空，详见问题链接："));
    public static final String aS = f.b.a.a.a.h("67345", f.b.a.a.a.o("number参数小于0或price参数小于0|number参数不能小于0或price参数不能小于0，详见问题链接："));
    public static final String aT = f.b.a.a.a.h("67345", f.b.a.a.a.o("source参数小于0或source参数大于等于100|source参数不能小于0或source参数不能大于等于100，详见问题链接："));
    public static final String aU = f.b.a.a.a.h("67346", f.b.a.a.a.o("item参数为空|item参数不能为空，详见问题链接："));
    public static final String aV = f.b.a.a.a.h("67346", f.b.a.a.a.o("number参数小于0或price参数小于0|number参数不能小于0或price参数不能小于0，详见问题链接："));
}
