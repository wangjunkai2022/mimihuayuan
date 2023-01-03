package com.umeng.analytics.pro;

import f.b.a.a.a;

/* compiled from: UMLogAnalytics.java */
/* loaded from: classes.dex */
public class h {
    public static final String A = "MobclickAgent.setSecret方法参数secretkey不能为null，也不能为空字符串。|secretkey参数必须是非空 字符串。";
    public static final String B = "统计SDK常见问题索引贴 详见链接 http://developer.umeng.com/docs/66650/cate/66650";
    public static final String M = "MobclickAgent.onDeepLinkReceived方法Context参数不能为null。|参数Context需要指定ApplicationContext值。";
    public static final String N = "MobclickAgent.onDeepLinkReceived方法link参数不能为null，也不能为空字符串。|参数link必须为非空字符串。";
    public static final String O = "MobclickAgent.onDeepLinkReceived方法link参数长度超过限制。|参数link长度不能超过1024字符。";
    public static final String z = "MobclickAgent.setSecret方法参数context不能为null|参数Context需要指定ApplicationContext值。";
    public static final String a = a.h("66946", a.o("事件属性集合参数为空|onEvent接口必须传入非空的属性集合。详见问题链接 "));
    public static final String b = a.h("66946", a.o("事件ID和保留字冲突|onEvent接口传入的事件ID不能和保留字冲突。详见问题链接 "));

    /* renamed from: c  reason: collision with root package name */
    public static final String f2803c = a.h("66946", a.o("事件ID为null或者为空字符串|onEvent接口传入的事件ID不能为null，也不能为空字符串。详见问题链接 "));

    /* renamed from: d  reason: collision with root package name */
    public static final String f2804d = a.h("66946", a.o("事件属性集合map没有加入K-V值|事件属性集合参数map必须添加K-V值。详见问题链接 "));

    /* renamed from: e  reason: collision with root package name */
    public static final String f2805e = a.h("66946", a.o("事件属性集合map中key值和保留字冲突|事件属性集合map中key值不能和保留字冲突。详见问题链接 "));

    /* renamed from: f  reason: collision with root package name */
    public static final String f2806f = a.h("66946", a.o("事件ID为null或者长度超过限制|事件ID不能为null、空串，且长度不能超过128个字符。详见问题链接 "));

    /* renamed from: g  reason: collision with root package name */
    public static final String f2807g = a.h("66946", a.o("事件属性集合参数为空或者事件属性集合map没有加入K-V值|事件属性集合参数map必须添加K-V值。详见问题链接 "));

    /* renamed from: h  reason: collision with root package name */
    public static final String f2808h = a.h("66946", a.o("事件属性集合map中key非法|事件属性集合参数map中key不能为非法的。详见问题链接 "));

    /* renamed from: i  reason: collision with root package name */
    public static final String f2809i = a.h("66946", a.o("事件属性集合map中value为null|事件属性集合参数map中value不能为null。详见问题链接 "));

    /* renamed from: j  reason: collision with root package name */
    public static final String f2810j = a.h("66946", a.o("事件属性集合map中value长度超过限制|事件属性集合参数map中value如果为字符串时，其长度不能超过256个字符。详见问题链接 "));

    /* renamed from: k  reason: collision with root package name */
    public static final String f2811k = a.h("66946", a.o("事件标签为null或者为空字符串|onEvent接口传入的事件标签不能为null，也不能为空字符串。详见问题链接 "));

    /* renamed from: l  reason: collision with root package name */
    public static final String f2812l = a.h("66946", a.o("事件ID为null或者长度超过限制，或事件标签长度超过限制|事件ID不能为null、空串，且长度不能超过128个字符。事件标签长度不能超过256个字符。详见问题链接 "));

    /* renamed from: m  reason: collision with root package name */
    public static final String f2813m = a.h("66946", a.o("事件ID和保留字冲突|onEvent接口传入的事件ID不能和保留字冲突。详见问题链接 "));
    public static final String n = a.h("66948", a.o("MobclickAgent.onResume接口参数不能为null|MobclickAgent.onResume接口参数应该传入当前Activity的上下文。详见问题链接 "));
    public static final String o = a.h("66948", a.o("MobclickAgent.onResume接口参数不是Activity的上下文|MobclickAgent.onResume接口参数应该传入当前Activity的上下文。详见问题链接 "));
    public static final String p = a.h("66948", a.o("MobclickAgent.onPause接口参数不能为null|MobclickAgent.onPause接口参数应该传入当前Activity的上下文。详见问题链接 "));
    public static final String q = a.h("66948", a.o("MobclickAgent.onPause接口参数不是Activity的上下文|MobclickAgent.onPause接口参数应该传入当前Activity的上下文。详见问题链接 "));
    public static final String r = a.h("66948", a.o("@ 遗漏了Mobclick.onResume函数调用|每个Activity的onResume中都必须调用MobclickAgent.onResume。详见问题链接 "));
    public static final String s = a.h("66948", a.o("@ 遗漏了Mobclick.onPaused函数调用|每个Activity的onPaused中都必须调用MobclickAgent.onPaused。详见问题链接 "));
    public static final String t = a.h("66951", a.o("MobclickAgent.onProfileSignIn接口参数 账号ID 不能为null|账号ID不能为空。详见问题链接 "));
    public static final String u = a.h("66951", a.o("MobclickAgent.onProfileSignIn接口参数 账号ID 长度超过限制|账号ID 长度不能超过64个字符。详见问题链接 "));
    public static final String v = a.h("66951", a.o("MobclickAgent.onProfileSignIn接口参数 账号来源 长度超过限制|账号来源 长度不能超过32个字符。详见问题链接 "));
    public static final String w = a.h("66971", a.o("MobclickAgent.reportError方法参数context不能为null|参数Context需要指定ApplicationContext值。详见问题链接 "));
    public static final String x = a.h("66971", a.o("MobclickAgent.reportError方法参数error不能为null，也不能为空字符串。|error参数必须是非空字符串。详见问题链接 "));
    public static final String y = a.h("66971", a.o("MobclickAgent.reportError方法 Context和Throwable参数都不能为空。|参数Context需要指定ApplicationContext值，Throwable参数传入捕获到的异常对象。详见问题链接 "));
    public static final String C = a.h("66975", a.o("MobclickAgent.onPageStart方法参数不能为null，也不能为空字符串。|参数viewName必须为非空字符串。详见链接 "));
    public static final String D = a.h("66975", a.o("MobclickAgent.onPageEnd方法参数不能为null，也不能为空字符串。|参数viewName必须为非空 字符串。详见链接 "));
    public static final String E = a.h("66975", a.o("对于页面@，onPageStart和onPageEnd调用对的参数不一致。|对于同一个页面，请先调用onPageStart，再调用onPageEnd。详见链接 "));
    public static final String F = a.h("66975", a.o("对于页面@，请确保先依序成对调用onPageStart，onPageEnd接口，再调用onPageStart接口对其它页面进行统计。|对于任意一个页面，必须依序成对调用onPageStart以及onPageEnd，不能有遗漏。详见链接 "));
    public static final String G = a.h("66975", a.o("对于页面@，请检查是否遗漏onPageStart接口调用。|对于任意一个页面，必须依序成对调用onPageStart以及onPageEnd，不能有遗漏。详见链接 "));
    public static final String H = a.h("66976", a.o("当前发送策略为：启动时发送。详见链接 "));
    public static final String I = a.h("66976", a.o("当前发送策略为: 间隔发送。间隔时间为：@秒。详见链接 "));
    public static final String J = a.h("66976", a.o("当前发送策略为: 集成测试。但是SDK未切换到调试模式，所以后台设置未生效。|如想切换到集成测试发送策略，请调用UMConfigure.setLogEnabled(true)将SDK切换到调试模式。详见链接 "));
    public static final String K = a.h("66976", a.o("当前发送策略为：集成测试。详见链接 "));
    public static final String L = a.h("66976", a.o("当前发送策略为: 准实时发送。间隔时间为：@秒。详见链接 "));
    public static final String P = a.h("66978", a.o("发送数据时发生java.net.UnknownHostException异常|友盟后端对设备端证书验证失败。请确保设备端没有运行抓包代理类程序。详见链接 "));
    public static final String Q = a.h("66978", a.o("发送数据时发生javax.net.sslHandshakeException异常|导致友盟后端域名解析失败。请检查系统DNS服务器配置是否正确。详见链接 "));
    public static final String R = a.h("67310", a.o("track接口调用非法。|当前处于非DPLUS场景中，不能使用DPLUS相关接口，详见问题连接："));
    public static final String S = a.h("67310", a.o("registerSuperProperty接口调用非法。|当前处于非DPLUS场景中，不能使用DPLUS相关接口，详见问题连接："));
    public static final String T = a.h("67310", a.o("unregisterSuperProperty接口调用非法。|当前处于非DPLUS场景中，不能使用DPLUS相关接口，详见问题连接："));
    public static final String U = a.h("67310", a.o("getSuperProperty接口调用非法。|当前处于非DPLUS场景中，不能使用DPLUS相关接口，详见问题连接: "));
    public static final String V = a.h("67310", a.o("getSuperProperties接口调用非法。|当前处于非DPLUS场景中，不能使用DPLUS相关接口，详见问题连接："));
    public static final String W = a.h("67310", a.o("clearSuperProperties接口调用非法。|当前处于非DPLUS场景中，不能使用DPLUS相关接口，详见问题连接："));
    public static final String X = a.h("67310", a.o("setFirstLaunchEvent接口调用非法。|当前处于非DPLUS场景中，不能使用DPLUS相关接口，详见问题连接："));
    public static final String Y = a.h("67310", a.o("registerPreProperties接口调用非法。|当前处于非DPLUS场景中，不能使用DPLUS相关接口，详见问题连接："));
    public static final String Z = a.h("67310", a.o("unregisterPreProperty接口调用非法。|当前处于非DPLUS场景中，不能使用DPLUS相关接口，详见问题连接："));
    public static final String aa = a.h("67310", a.o("clearPreProperties接口调用非法。|当前处于非DPLUS场景中，不能使用DPLUS相关接口，详见问题连接："));
    public static final String ab = a.h("67310", a.o("getPreProperties接口调用非法。|当前处于非DPLUS场景中，不能使用DPLUS相关接口，详见问题连接："));
    public static final String ac = a.h("67311", a.o("eventName为空，请检查|eventName参数不能为空，详见问题连接："));
    public static final String ad = a.h("67311", a.o("请注意：map为空|track接口的参数说明，详见问题连接："));
    public static final String ae = a.h("67312", a.o("context参数为空｜context参数不能为空，详见问题连接："));
    public static final String af = a.h("67312", a.o("propertyName参数或propertyValue参数为空｜propertyName、propertyValue参数不能为空，详见问题连接："));
    public static final String ag = a.h("67313", a.o("context参数为空|context参数不能为空，详见问题连接："));
    public static final String ah = a.h("67316", a.o("context参数为空|context参数不能为空，详见问题连接："));
    public static final String ai = a.h("67318", a.o("context参数为空|context参数不能为空，详见问题连接："));
    public static final String aj = a.h("67318", a.o("trackID参数为空|trackID参数不能为空，详见问题连接："));
    public static final String ak = a.h("67319", a.o("context参数为空|context参数不能为空，详见问题连接："));
    public static final String al = a.h("67319", a.o("propertics参数为空|propertics参数不能为空，详见问题连接："));
    public static final String am = a.h("67320", a.o("context参数为空|context参数不能为空，详见问题连接："));
    public static final String an = a.h("67320", a.o("未匹配到您传入的property参数|property参数不能匹配，"));
    public static final String ao = a.h("67321", a.o("context参数为空|context参数不能为空，详见问题连接："));
    public static final String ap = a.h("67322", a.o("context参数为空|context参数不能为空，详见问题连接："));
    public static final String aq = a.h("67340", a.o("startLevel接口调用非法。|当前处于非Game场景中，不能使用Game相关接口，详见问题连接："));
    public static final String ar = a.h("67340", a.o("finishLevel接口调用非法。|当前处于非Game场景中，不能使用Game相关接口，详见问题连接："));
    public static final String as = a.h("67340", a.o("failLevel接口调用非法。|当前处于非Game场景中，不能使用Game相关接口，详见问题连接："));
    public static final String at = a.h("67340", a.o("pay接口调用非法。|当前处于非Game场景中，不能使用Game相关接口，详见问题连接："));
    public static final String au = a.h("67340", a.o("exchange接口调用非法。|当前处于非Game场景中，不能使用Game相关接口，详见问题连接："));
    public static final String av = a.h("67340", a.o("buy接口调用非法。|当前处于非Game场景中，不能使用Game相关接口，详见问题连接："));
    public static final String aw = a.h("67340", a.o("use接口调用非法。|当前处于非Game场景中，不能使用Game相关接口，详见问题连接："));
    public static final String ax = a.h("67340", a.o("bonus接口调用非法。|当前处于非Game场景中，不能使用Game相关接口，详见问题连接："));
    public static final String ay = a.h("67340", a.o("onAppResume接口调用非法。|当前处于非Game场景中，不能使用Game相关接口，详见问题连接："));
    public static final String az = a.h("67340", a.o("onAppPause接口调用非法。|当前处于非Game场景中，不能使用Game相关接口，详见问题连接："));
    public static final String aA = a.h("67341", a.o("level参数为空|level参数不能为空，详见问题连接："));
    public static final String aB = a.h("67341", a.o("level参数超出64 chars|level参数不能超出64 chars，详见问题连接："));
    public static final String aC = a.h("67341", a.o("level参数为空|level参数不能为空，详见问题连接："));
    public static final String aD = a.h("67341", a.o("level参数超出64 chars|level参数不能超出64 chars，详见问题连接："));
    public static final String aE = a.h("67341", a.o("level参数为空|level参数不能为空，详见问题连接："));
    public static final String aF = a.h("67341", a.o("level参数超出64 chars|level参数不能超出64 chars，详见问题连接："));
    public static final String aG = a.h("67342", a.o("money参数小于0或coin参数小于0|money参数不能小于0或coin参数不能小于0，详见问题链接："));
    public static final String aH = a.h("67342", a.o("source参数小于等于0或source参数大于等于100|source参数不能小于等于0或source参数不能大于等于100，详见问题链接："));
    public static final String aI = a.h("67342", a.o("source参数小于等于0或source参数大于等于100|source参数不能小于等于0或source参数不能大于等于100，详见问题链接："));
    public static final String aJ = a.h("67342", a.o("money参数小于0或number参数小于0或price参数小于0|money参数不能小于0或number参数不能小于0或price参数不能小于0，详见问题链接："));
    public static final String aK = a.h("67342", a.o("item参数为空|item参数不能为空，详见问题链接："));
    public static final String aL = a.h("67343", a.o("currencyAmount参数小于0或virtualAmount参数小于0|currencyAmount参数不能小于0或virtualAmount参数不能小于0，详见问题链接："));
    public static final String aM = a.h("67343", a.o("channel参数小于0或channel参数大于等于100|channel参数不能小于0或channel参数不能大于等于100，详见问题链接："));
    public static final String aN = a.h("67344", a.o("item参数为空|item参数不能为空，详见问题链接："));
    public static final String aO = a.h("67344", a.o("number参数小于0或price参数小于0|number参数不能小于0或price参数不能小于0，详见问题链接："));
    public static final String aP = a.h("67345", a.o("coin参数小于0|coin参数不能小于0，详见问题链接："));
    public static final String aQ = a.h("67345", a.o("source参数小于0或source参数大于等于100|source参数不能小于0或source参数不能大于等于100，详见问题链接："));
    public static final String aR = a.h("67345", a.o("item参数为空|item参数不能为空，详见问题链接："));
    public static final String aS = a.h("67345", a.o("number参数小于0或price参数小于0|number参数不能小于0或price参数不能小于0，详见问题链接："));
    public static final String aT = a.h("67345", a.o("source参数小于0或source参数大于等于100|source参数不能小于0或source参数不能大于等于100，详见问题链接："));
    public static final String aU = a.h("67346", a.o("item参数为空|item参数不能为空，详见问题链接："));
    public static final String aV = a.h("67346", a.o("number参数小于0或price参数小于0|number参数不能小于0或price参数不能小于0，详见问题链接："));
}
