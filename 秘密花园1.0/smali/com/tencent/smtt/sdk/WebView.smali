.class public Lcom/tencent/smtt/sdk/WebView;
.super Landroid/widget/FrameLayout;
.source "WebView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/smtt/sdk/WebView$a;,
        Lcom/tencent/smtt/sdk/WebView$PictureListener;,
        Lcom/tencent/smtt/sdk/WebView$HitTestResult;,
        Lcom/tencent/smtt/sdk/WebView$WebViewTransport;
    }
.end annotation


# static fields
.field public static final GETPVERROR:I = -0x1

.field public static NIGHT_MODE_ALPHA:I = 0x0

.field public static final NIGHT_MODE_COLOR:I = -0x1000000

.field public static final NORMAL_MODE_ALPHA:I = 0xff

.field public static final SCHEME_GEO:Ljava/lang/String; = "geo:0,0?q="

.field public static final SCHEME_MAILTO:Ljava/lang/String; = "mailto:"

.field public static final SCHEME_TEL:Ljava/lang/String; = "tel:"

.field public static final c:Ljava/util/concurrent/locks/Lock;

.field public static d:Ljava/io/OutputStream;

.field public static j:Landroid/content/Context;

.field public static l:Lcom/tencent/smtt/utils/o;

.field public static m:Ljava/lang/reflect/Method;

.field public static mSysWebviewCreated:Z

.field public static mWebViewCreated:Z

.field public static p:Ljava/lang/String;

.field public static v:Landroid/graphics/Paint;

.field public static w:Z


# instance fields
.field public a:I

.field public final b:Ljava/lang/String;

.field public e:Z

.field public f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

.field public g:Lcom/tencent/smtt/sdk/WebView$a;

.field public h:Lcom/tencent/smtt/sdk/WebSettings;

.field public i:Landroid/content/Context;

.field public k:Z

.field public mWebViewCallbackClient:Lcom/tencent/smtt/sdk/WebViewCallbackClient;

.field public n:Lcom/tencent/smtt/sdk/WebViewClient;

.field public o:Lcom/tencent/smtt/sdk/WebChromeClient;

.field public final q:I

.field public final r:I

.field public final s:I

.field public final t:Ljava/lang/String;

.field public final u:Ljava/lang/String;

.field public x:Ljava/lang/Object;

.field public y:Landroid/view/View$OnLongClickListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/tencent/smtt/sdk/WebView;->c:Ljava/util/concurrent/locks/Lock;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/tencent/smtt/sdk/WebView;->d:Ljava/io/OutputStream;

    .line 3
    sput-object v0, Lcom/tencent/smtt/sdk/WebView;->j:Landroid/content/Context;

    const/4 v1, 0x0

    .line 4
    sput-boolean v1, Lcom/tencent/smtt/sdk/WebView;->mWebViewCreated:Z

    .line 5
    sput-object v0, Lcom/tencent/smtt/sdk/WebView;->l:Lcom/tencent/smtt/utils/o;

    .line 6
    sput-object v0, Lcom/tencent/smtt/sdk/WebView;->m:Ljava/lang/reflect/Method;

    .line 7
    sput-object v0, Lcom/tencent/smtt/sdk/WebView;->p:Ljava/lang/String;

    .line 8
    sput-boolean v1, Lcom/tencent/smtt/sdk/WebView;->mSysWebviewCreated:Z

    .line 9
    sput-object v0, Lcom/tencent/smtt/sdk/WebView;->v:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 10
    sput-boolean v0, Lcom/tencent/smtt/sdk/WebView;->w:Z

    const/16 v0, 0x99

    .line 11
    sput v0, Lcom/tencent/smtt/sdk/WebView;->NIGHT_MODE_ALPHA:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/tencent/smtt/sdk/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/smtt/sdk/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/tencent/smtt/sdk/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;Z)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p3, "WebView"

    .line 22
    iput-object p3, p0, Lcom/tencent/smtt/sdk/WebView;->b:Ljava/lang/String;

    const/4 p4, 0x0

    .line 23
    iput-boolean p4, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    const/4 p5, 0x0

    .line 24
    iput-object p5, p0, Lcom/tencent/smtt/sdk/WebView;->h:Lcom/tencent/smtt/sdk/WebSettings;

    .line 25
    iput-object p5, p0, Lcom/tencent/smtt/sdk/WebView;->i:Landroid/content/Context;

    .line 26
    iput p4, p0, Lcom/tencent/smtt/sdk/WebView;->a:I

    .line 27
    iput-boolean p4, p0, Lcom/tencent/smtt/sdk/WebView;->k:Z

    .line 28
    iput-object p5, p0, Lcom/tencent/smtt/sdk/WebView;->n:Lcom/tencent/smtt/sdk/WebViewClient;

    .line 29
    iput-object p5, p0, Lcom/tencent/smtt/sdk/WebView;->o:Lcom/tencent/smtt/sdk/WebChromeClient;

    const/4 v0, 0x1

    .line 30
    iput v0, p0, Lcom/tencent/smtt/sdk/WebView;->q:I

    const/4 v1, 0x2

    .line 31
    iput v1, p0, Lcom/tencent/smtt/sdk/WebView;->r:I

    const/4 v1, 0x3

    .line 32
    iput v1, p0, Lcom/tencent/smtt/sdk/WebView;->s:I

    const-string v1, "javascript:document.getElementsByTagName(\'HEAD\').item(0).removeChild(document.getElementById(\'QQBrowserSDKNightMode\'));"

    .line 33
    iput-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->t:Ljava/lang/String;

    const-string v1, "javascript:var style = document.createElement(\'style\');style.type=\'text/css\';style.id=\'QQBrowserSDKNightMode\';style.innerHTML=\'html,body{background:none !important;background-color: #1d1e2a !important;}html *{background-color: #1d1e2a !important; color:#888888 !important;border-color:#3e4f61 !important;text-shadow:none !important;box-shadow:none !important;}a,a *{border-color:#4c5b99 !important; color:#2d69b3 !important;text-decoration:none !important;}a:visited,a:visited *{color:#a600a6 !important;}a:active,a:active *{color:#5588AA !important;}input,select,textarea,option,button{background-image:none !important;color:#AAAAAA !important;border-color:#4c5b99 !important;}form,div,button,span{background-color:#1d1e2a !important; border-color:#4c5b99 !important;}img{opacity:0.5}\';document.getElementsByTagName(\'HEAD\').item(0).appendChild(style);"

    .line 34
    iput-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->u:Ljava/lang/String;

    .line 35
    iput-object p5, p0, Lcom/tencent/smtt/sdk/WebView;->x:Ljava/lang/Object;

    .line 36
    iput-object p5, p0, Lcom/tencent/smtt/sdk/WebView;->y:Landroid/view/View$OnLongClickListener;

    .line 37
    sput-boolean v0, Lcom/tencent/smtt/sdk/WebView;->mWebViewCreated:Z

    .line 38
    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->getIsSysWebViewForcedByOuter()Z

    move-result v1

    const-string v2, "failed to createTBSWebview!"

    const/4 v3, -0x1

    if-eqz v1, :cond_0

    .line 39
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    iput-object p1, p0, Lcom/tencent/smtt/sdk/WebView;->i:Landroid/content/Context;

    .line 41
    iput-object p5, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    .line 42
    iput-boolean p4, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    .line 43
    invoke-static {p1, v2}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    new-instance v1, Lcom/tencent/smtt/sdk/WebView$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/smtt/sdk/WebView$a;-><init>(Lcom/tencent/smtt/sdk/WebView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    .line 45
    invoke-static {}, Lcom/tencent/smtt/sdk/CookieManager;->getInstance()Lcom/tencent/smtt/sdk/CookieManager;

    move-result-object p2

    invoke-virtual {p2, p1, v0, p4}, Lcom/tencent/smtt/sdk/CookieManager;->a(Landroid/content/Context;ZZ)V

    .line 46
    iget-object p2, p0, Lcom/tencent/smtt/sdk/WebView;->i:Landroid/content/Context;

    invoke-static {p2}, Lcom/tencent/smtt/sdk/CookieSyncManager;->createInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/CookieSyncManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tencent/smtt/sdk/CookieSyncManager;->startSync()V

    :try_start_0
    const-string p2, "android.webkit.WebViewWorker"

    .line 47
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    const-string v1, "getHandler"

    new-array v2, p4, [Ljava/lang/Class;

    .line 48
    invoke-virtual {p2, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 49
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array p4, p4, [Ljava/lang/Object;

    .line 50
    invoke-virtual {p2, p5, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 51
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p2

    .line 52
    new-instance p4, Lcom/tencent/smtt/sdk/e;

    invoke-direct {p4}, Lcom/tencent/smtt/sdk/e;-><init>()V

    invoke-virtual {p2, p4}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 53
    sput-boolean v0, Lcom/tencent/smtt/sdk/WebView;->mSysWebviewCreated:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :catch_0
    invoke-static {}, Lcom/tencent/smtt/sdk/CookieManager;->getInstance()Lcom/tencent/smtt/sdk/CookieManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tencent/smtt/sdk/CookieManager;->a()V

    .line 55
    iget-object p2, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 56
    iget-object p2, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    new-instance p4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p4, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, p4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string p2, "SystemWebView Created Success! #3"

    .line 57
    invoke-static {p3, p2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "sys WebView: IsSysWebViewForcedByOuter = true"

    .line 58
    invoke-static {p3, p2, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 59
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object p2

    const/16 p3, 0x192

    new-instance p4, Ljava/lang/Throwable;

    invoke-direct {p4}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {p2, p1, p3, p4}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    return-void

    .line 60
    :cond_0
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    invoke-static {v0}, Lcom/tencent/smtt/utils/TbsLog;->setWriteLogJIT(Z)V

    goto :goto_0

    .line 62
    :cond_1
    invoke-static {p4}, Lcom/tencent/smtt/utils/TbsLog;->setWriteLogJIT(Z)V

    .line 63
    :goto_0
    invoke-static {p1}, Lcom/tencent/smtt/utils/TbsLog;->initIfNeed(Landroid/content/Context;)V

    if-eqz p1, :cond_d

    .line 64
    sget-object v1, Lcom/tencent/smtt/sdk/WebView;->l:Lcom/tencent/smtt/utils/o;

    if-nez v1, :cond_2

    .line 65
    invoke-static {p1}, Lcom/tencent/smtt/utils/o;->a(Landroid/content/Context;)Lcom/tencent/smtt/utils/o;

    move-result-object v1

    sput-object v1, Lcom/tencent/smtt/sdk/WebView;->l:Lcom/tencent/smtt/utils/o;

    .line 66
    :cond_2
    sget-object v1, Lcom/tencent/smtt/sdk/WebView;->l:Lcom/tencent/smtt/utils/o;

    iget-boolean v1, v1, Lcom/tencent/smtt/utils/o;->a:Z

    if-eqz v1, :cond_3

    const-string v1, "sys WebView: debug.conf force syswebview"

    .line 67
    invoke-static {p3, v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "debug.conf force syswebview!"

    .line 68
    invoke-static {p1, v1}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 69
    :cond_3
    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/WebView;->c(Landroid/content/Context;)V

    .line 70
    iput-object p1, p0, Lcom/tencent/smtt/sdk/WebView;->i:Landroid/content/Context;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/tencent/smtt/sdk/WebView;->j:Landroid/content/Context;

    .line 72
    iget-boolean v1, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    const-string v4, "accessibilityTraversal"

    const-string v5, "accessibility"

    const-string v6, "searchBoxJavaBridge_"

    if-eqz v1, :cond_7

    sget-boolean v1, Lcom/tencent/smtt/sdk/QbSdk;->a:Z

    if-nez v1, :cond_7

    .line 73
    invoke-static {}, Lcom/tencent/smtt/sdk/t;->a()Lcom/tencent/smtt/sdk/t;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/smtt/sdk/t;->a(Z)Lcom/tencent/smtt/sdk/u;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tencent/smtt/sdk/u;->a(Landroid/content/Context;)Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    if-eqz v1, :cond_5

    .line 74
    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    const-string v1, "X5 WebView Created Success!!"

    .line 75
    invoke-static {p3, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 77
    invoke-direct {p0, p2}, Lcom/tencent/smtt/sdk/WebView;->a(Landroid/util/AttributeSet;)V

    .line 78
    iget-object p2, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {p2}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object p2

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    iget-object p2, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    new-instance v1, Lcom/tencent/smtt/sdk/b;

    iget-boolean v2, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    invoke-direct {v1, p0, p5, v2}, Lcom/tencent/smtt/sdk/b;-><init>(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/sdk/DownloadListener;Z)V

    invoke-interface {p2, v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->setDownloadListener(Lcom/tencent/smtt/export/external/interfaces/DownloadListener;)V

    .line 80
    iget-object p2, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {p2}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getX5WebViewExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;

    move-result-object p2

    new-instance v1, Lcom/tencent/smtt/sdk/WebView$1;

    invoke-static {}, Lcom/tencent/smtt/sdk/t;->a()Lcom/tencent/smtt/sdk/t;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/smtt/sdk/t;->a(Z)Lcom/tencent/smtt/sdk/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/u;->k()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/tencent/smtt/sdk/WebView$1;-><init>(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;)V

    invoke-interface {p2, v1}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;->setWebViewClientExtension(Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;)V

    goto/16 :goto_5

    :cond_5
    :goto_1
    const-string v1, "sys WebView: failed to createTBSWebview"

    .line 81
    invoke-static {p3, v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 82
    iput-object p5, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    .line 83
    iput-boolean p4, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    .line 84
    invoke-static {p1, v2}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 85
    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/WebView;->c(Landroid/content/Context;)V

    .line 86
    iget-object p5, p0, Lcom/tencent/smtt/sdk/WebView;->i:Landroid/content/Context;

    invoke-static {p5}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result p5

    if-eqz p5, :cond_6

    .line 87
    new-instance p5, Lcom/tencent/smtt/sdk/WebView$a;

    invoke-direct {p5, p0, p1, p2}, Lcom/tencent/smtt/sdk/WebView$a;-><init>(Lcom/tencent/smtt/sdk/WebView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p5, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    goto :goto_2

    .line 88
    :cond_6
    new-instance p2, Lcom/tencent/smtt/sdk/WebView$a;

    invoke-direct {p2, p0, p1}, Lcom/tencent/smtt/sdk/WebView$a;-><init>(Lcom/tencent/smtt/sdk/WebView;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    :goto_2
    const-string p2, "SystemWebView Created Success! #1"

    .line 89
    invoke-static {p3, p2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/tencent/smtt/sdk/CookieManager;->getInstance()Lcom/tencent/smtt/sdk/CookieManager;

    move-result-object p2

    invoke-virtual {p2, p1, v0, p4}, Lcom/tencent/smtt/sdk/CookieManager;->a(Landroid/content/Context;ZZ)V

    .line 91
    invoke-static {}, Lcom/tencent/smtt/sdk/CookieManager;->getInstance()Lcom/tencent/smtt/sdk/CookieManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tencent/smtt/sdk/CookieManager;->a()V

    .line 92
    iget-object p2, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 93
    iget-object p2, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p3, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    :try_start_1
    invoke-virtual {p0, v6}, Lcom/tencent/smtt/sdk/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0, v5}, Lcom/tencent/smtt/sdk/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0, v4}, Lcom/tencent/smtt/sdk/WebView;->removeJavascriptInterface(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p2

    .line 97
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 98
    :goto_3
    invoke-static {}, Lcom/tencent/smtt/utils/TbsLog;->writeLogToDisk()V

    .line 99
    invoke-static {p1}, Lcom/tencent/smtt/sdk/l;->a(Landroid/content/Context;)V

    return-void

    .line 100
    :cond_7
    iput-object p5, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    .line 101
    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->i:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 102
    new-instance v1, Lcom/tencent/smtt/sdk/WebView$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/smtt/sdk/WebView$a;-><init>(Lcom/tencent/smtt/sdk/WebView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    goto :goto_4

    .line 103
    :cond_8
    new-instance p2, Lcom/tencent/smtt/sdk/WebView$a;

    invoke-direct {p2, p0, p1}, Lcom/tencent/smtt/sdk/WebView$a;-><init>(Lcom/tencent/smtt/sdk/WebView;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    :goto_4
    const-string p2, "SystemWebView Created Success! #2"

    .line 104
    invoke-static {p3, p2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lcom/tencent/smtt/sdk/CookieManager;->getInstance()Lcom/tencent/smtt/sdk/CookieManager;

    move-result-object p2

    invoke-virtual {p2, p1, v0, p4}, Lcom/tencent/smtt/sdk/CookieManager;->a(Landroid/content/Context;ZZ)V

    .line 106
    invoke-static {}, Lcom/tencent/smtt/sdk/CookieManager;->getInstance()Lcom/tencent/smtt/sdk/CookieManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tencent/smtt/sdk/CookieManager;->a()V

    .line 107
    iget-object p2, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 108
    iget-object p2, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    invoke-virtual {p0, p5}, Lcom/tencent/smtt/sdk/WebView;->setDownloadListener(Lcom/tencent/smtt/sdk/DownloadListener;)V

    .line 110
    invoke-static {}, Lcom/tencent/smtt/utils/TbsLog;->writeLogToDisk()V

    .line 111
    invoke-static {p1}, Lcom/tencent/smtt/sdk/l;->a(Landroid/content/Context;)V

    .line 112
    :goto_5
    :try_start_2
    invoke-virtual {p0, v6}, Lcom/tencent/smtt/sdk/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0, v5}, Lcom/tencent/smtt/sdk/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0, v4}, Lcom/tencent/smtt/sdk/WebView;->removeJavascriptInterface(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception p2

    .line 115
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 116
    :goto_6
    iget-object p2, p0, Lcom/tencent/smtt/sdk/WebView;->i:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.tencent.mobileqq"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    iget-object p2, p0, Lcom/tencent/smtt/sdk/WebView;->i:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.tencent.mm"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 117
    :cond_9
    invoke-static {v0}, Lcom/tencent/smtt/sdk/d;->a(Z)Lcom/tencent/smtt/sdk/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tencent/smtt/sdk/d;->h()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 118
    invoke-virtual {p0, v0, p5}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 119
    :cond_a
    iget-object p2, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    if-eqz p2, :cond_c

    .line 120
    invoke-static {}, Lcom/tencent/smtt/utils/TbsLog;->writeLogToDisk()V

    .line 121
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_c

    .line 122
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object p2

    iget-object p2, p2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string p5, "tbs_decouplecoreversion"

    invoke-interface {p2, p5, p4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-lez p2, :cond_b

    .line 123
    invoke-static {}, Lcom/tencent/smtt/sdk/l;->a()Lcom/tencent/smtt/sdk/l;

    move-result-object p4

    invoke-virtual {p4, p1}, Lcom/tencent/smtt/sdk/l;->h(Landroid/content/Context;)I

    move-result p4

    if-eq p2, p4, :cond_b

    invoke-static {}, Lcom/tencent/smtt/sdk/l;->a()Lcom/tencent/smtt/sdk/l;

    move-result-object p4

    invoke-virtual {p4, p1}, Lcom/tencent/smtt/sdk/l;->i(Landroid/content/Context;)I

    move-result p4

    if-ne p2, p4, :cond_b

    .line 124
    invoke-static {}, Lcom/tencent/smtt/sdk/l;->a()Lcom/tencent/smtt/sdk/l;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tencent/smtt/sdk/l;->n(Landroid/content/Context;)Z

    goto :goto_7

    :cond_b
    const-string p4, "webview construction #1 deCoupleCoreVersion is "

    const-string p5, " getTbsCoreShareDecoupleCoreVersion is "

    .line 125
    invoke-static {p4, p2, p5}, Lf/b/a/a/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {}, Lcom/tencent/smtt/sdk/l;->a()Lcom/tencent/smtt/sdk/l;

    move-result-object p4

    invoke-virtual {p4, p1}, Lcom/tencent/smtt/sdk/l;->h(Landroid/content/Context;)I

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " getTbsCoreInstalledVerInNolock is "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/smtt/sdk/l;->a()Lcom/tencent/smtt/sdk/l;

    move-result-object p4

    invoke-virtual {p4, p1}, Lcom/tencent/smtt/sdk/l;->i(Landroid/content/Context;)I

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_c
    :goto_7
    invoke-static {p1}, Lcom/tencent/smtt/sdk/QbSdk;->continueLoadSo(Landroid/content/Context;)V

    return-void

    .line 127
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid context argument"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    .line 20
    invoke-direct/range {v0 .. v5}, Lcom/tencent/smtt/sdk/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string p1, "WebView"

    .line 2
    iput-object p1, p0, Lcom/tencent/smtt/sdk/WebView;->b:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    const/4 p2, 0x0

    .line 4
    iput-object p2, p0, Lcom/tencent/smtt/sdk/WebView;->h:Lcom/tencent/smtt/sdk/WebSettings;

    .line 5
    iput-object p2, p0, Lcom/tencent/smtt/sdk/WebView;->i:Landroid/content/Context;

    .line 6
    iput p1, p0, Lcom/tencent/smtt/sdk/WebView;->a:I

    .line 7
    iput-boolean p1, p0, Lcom/tencent/smtt/sdk/WebView;->k:Z

    .line 8
    iput-object p2, p0, Lcom/tencent/smtt/sdk/WebView;->n:Lcom/tencent/smtt/sdk/WebViewClient;

    .line 9
    iput-object p2, p0, Lcom/tencent/smtt/sdk/WebView;->o:Lcom/tencent/smtt/sdk/WebChromeClient;

    const/4 p1, 0x1

    .line 10
    iput p1, p0, Lcom/tencent/smtt/sdk/WebView;->q:I

    const/4 p1, 0x2

    .line 11
    iput p1, p0, Lcom/tencent/smtt/sdk/WebView;->r:I

    const/4 p1, 0x3

    .line 12
    iput p1, p0, Lcom/tencent/smtt/sdk/WebView;->s:I

    const-string p1, "javascript:document.getElementsByTagName(\'HEAD\').item(0).removeChild(document.getElementById(\'QQBrowserSDKNightMode\'));"

    .line 13
    iput-object p1, p0, Lcom/tencent/smtt/sdk/WebView;->t:Ljava/lang/String;

    const-string p1, "javascript:var style = document.createElement(\'style\');style.type=\'text/css\';style.id=\'QQBrowserSDKNightMode\';style.innerHTML=\'html,body{background:none !important;background-color: #1d1e2a !important;}html *{background-color: #1d1e2a !important; color:#888888 !important;border-color:#3e4f61 !important;text-shadow:none !important;box-shadow:none !important;}a,a *{border-color:#4c5b99 !important; color:#2d69b3 !important;text-decoration:none !important;}a:visited,a:visited *{color:#a600a6 !important;}a:active,a:active *{color:#5588AA !important;}input,select,textarea,option,button{background-image:none !important;color:#AAAAAA !important;border-color:#4c5b99 !important;}form,div,button,span{background-color:#1d1e2a !important; border-color:#4c5b99 !important;}img{opacity:0.5}\';document.getElementsByTagName(\'HEAD\').item(0).appendChild(style);"

    .line 14
    iput-object p1, p0, Lcom/tencent/smtt/sdk/WebView;->u:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/tencent/smtt/sdk/WebView;->x:Ljava/lang/Object;

    .line 16
    iput-object p2, p0, Lcom/tencent/smtt/sdk/WebView;->y:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public static synthetic a(Lcom/tencent/smtt/sdk/WebView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/smtt/sdk/WebView;->i:Landroid/content/Context;

    return-object p0
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 6

    if-eqz p1, :cond_3

    .line 21
    :try_start_0
    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 22
    invoke-interface {p1, v2}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "scrollbars"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 23
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10100de

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    const/4 v4, -0x1

    .line 24
    invoke-interface {p1, v2, v4}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v4

    const/4 v5, 0x1

    .line 25
    aget v5, v3, v5

    if-ne v4, v5, :cond_0

    .line 26
    iget-object v3, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v3}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 27
    iget-object v3, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v3}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    goto :goto_1

    :cond_0
    const/4 v5, 0x2

    .line 28
    aget v5, v3, v5

    if-ne v4, v5, :cond_1

    .line 29
    iget-object v3, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v3}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    goto :goto_1

    :cond_1
    const/4 v5, 0x3

    .line 30
    aget v3, v3, v5

    if-ne v4, v3, :cond_2

    .line 31
    iget-object v3, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v3}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return-void
.end method

.method public static synthetic a(Lcom/tencent/smtt/sdk/WebView;IIII)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onScrollChanged(IIII)V

    return-void
.end method

.method private a(Landroid/view/View;)Z
    .locals 5

    .line 46
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->i:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 47
    invoke-static {v0}, Lcom/tencent/smtt/sdk/WebView;->getTbsCoreVersion(Landroid/content/Context;)I

    move-result v0

    const v2, 0x8d68

    if-le v0, v2, :cond_0

    return v1

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->x:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/view/View;

    aput-object v4, v3, v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "onLongClick"

    invoke-static {v0, p1, v3, v2}, Lcom/tencent/smtt/utils/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 49
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public static synthetic b(Lcom/tencent/smtt/sdk/WebView;IIII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onScrollChanged(IIII)V

    return-void
.end method

.method private b(Landroid/content/Context;)Z
    .locals 1

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.tencent.mobileqq"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private c(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->i:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;->getInstance()Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;->initTbsBuglyIfNeed(Landroid/content/Context;)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/tencent/smtt/sdk/t;->a()Lcom/tencent/smtt/sdk/t;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/t;->a(Landroid/content/Context;)V

    .line 5
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/t;->b()Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    return-void
.end method

.method private d(Landroid/content/Context;)I
    .locals 8

    const-string v0, "TbsInstaller--getTbsCorePV IOException="

    const-string v1, "getTbsCorePV"

    const/4 v2, 0x1

    const-string v3, "tbslock.txt"

    .line 1
    invoke-static {p1, v2, v3}, Lcom/tencent/smtt/utils/f;->b(Landroid/content/Context;ZLjava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v2

    const/4 v3, -0x1

    if-eqz v2, :cond_6

    .line 2
    invoke-static {p1, v2}, Lcom/tencent/smtt/utils/f;->a(Landroid/content/Context;Ljava/io/FileOutputStream;)Ljava/nio/channels/FileLock;

    move-result-object v4

    if-nez v4, :cond_0

    return v3

    .line 3
    :cond_0
    sget-object v5, Lcom/tencent/smtt/sdk/WebView;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    :try_start_0
    const-string v6, "tbs"

    const/4 v7, 0x0

    .line 4
    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    .line 5
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "core_private"

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v7, "pv.db"

    invoke-direct {v6, p1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_3

    .line 7
    :cond_1
    new-instance p1, Ljava/util/Properties;

    invoke-direct {p1}, Ljava/util/Properties;-><init>()V

    .line 8
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    invoke-virtual {p1, v7}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 10
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    const-string v5, "PV"

    .line 11
    invoke-virtual {p1, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_2

    .line 12
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    .line 14
    :cond_2
    :try_start_3
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 15
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    .line 16
    invoke-static {v0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :goto_0
    sget-object v0, Lcom/tencent/smtt/sdk/WebView;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 18
    invoke-static {v4, v2}, Lcom/tencent/smtt/utils/f;->a(Ljava/nio/channels/FileLock;Ljava/io/FileOutputStream;)V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_2
    move-exception p1

    move-object v5, v7

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_3
    move-exception p1

    .line 19
    :goto_1
    :try_start_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TbsInstaller--getTbsCorePV Exception="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v5, :cond_3

    .line 20
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    :catch_4
    move-exception p1

    .line 21
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_3
    :goto_3
    sget-object p1, Lcom/tencent/smtt/sdk/WebView;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 23
    invoke-static {v4, v2}, Lcom/tencent/smtt/utils/f;->a(Ljava/nio/channels/FileLock;Ljava/io/FileOutputStream;)V

    return v3

    :goto_4
    move-object v7, v5

    :goto_5
    if-eqz v7, :cond_4

    .line 24
    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_6

    :catch_5
    move-exception v3

    .line 25
    invoke-static {v0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_4
    :goto_6
    sget-object v0, Lcom/tencent/smtt/sdk/WebView;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 27
    invoke-static {v4, v2}, Lcom/tencent/smtt/utils/f;->a(Ljava/nio/channels/FileLock;Ljava/io/FileOutputStream;)V

    throw p1

    .line 28
    :cond_5
    invoke-static {v4, v2}, Lcom/tencent/smtt/utils/f;->a(Ljava/nio/channels/FileLock;Ljava/io/FileOutputStream;)V

    :cond_6
    return v3
.end method

.method public static d()V
    .locals 3

    .line 29
    new-instance v0, Lcom/tencent/smtt/sdk/WebView$8;

    invoke-direct {v0}, Lcom/tencent/smtt/sdk/WebView$8;-><init>()V

    .line 30
    :try_start_0
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRebootStatus excpetion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "webview"

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static disablePlatformNotifications()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/tencent/smtt/sdk/t;->a()Lcom/tencent/smtt/sdk/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/t;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.webkit.WebView"

    const-string v1, "disablePlatformNotifications"

    .line 2
    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private e(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    const-string v0, "tbs"

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "core_private"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "pv.db"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "TbsInstaller--getTbsCorePV Exception="

    .line 6
    invoke-static {v0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getTbsCorePV"

    invoke-static {v0, p1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static synthetic e()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/tencent/smtt/sdk/WebView;->w:Z

    return v0
.end method

.method public static enablePlatformNotifications()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/tencent/smtt/sdk/t;->a()Lcom/tencent/smtt/sdk/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/t;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.webkit.WebView"

    const-string v1, "enablePlatformNotifications"

    .line 2
    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static synthetic f()Landroid/graphics/Paint;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/smtt/sdk/WebView;->v:Landroid/graphics/Paint;

    return-object v0
.end method

.method public static findAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/smtt/sdk/t;->a()Lcom/tencent/smtt/sdk/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/t;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Landroid/webkit/WebView;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic g()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/smtt/sdk/WebView;->j:Landroid/content/Context;

    return-object v0
.end method

.method public static getCrashExtraMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "tbs_core_version:"

    .line 1
    invoke-static {v0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/tencent/smtt/sdk/QbSdk;->getTbsVersionForCrash(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "tbs_sdk_version:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0xaab1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.tencent.mm"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    :try_start_0
    const-string v2, "de.robv.android.xposed.XposedBridge"

    .line 3
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 4
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_0
    nop

    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    const-string p0, "isXposed=true;"

    .line 5
    invoke-static {v0, p0}, Lf/b/a/a/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    invoke-static {v3}, Lcom/tencent/smtt/sdk/d;->a(Z)Lcom/tencent/smtt/sdk/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/smtt/sdk/d;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    .line 8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_3

    sget-object p0, Lcom/tencent/smtt/sdk/QbSdk;->n:Ljava/util/Map;

    if-eqz p0, :cond_3

    const-string v0, "weapp_id"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/tencent/smtt/sdk/QbSdk;->n:Ljava/util/Map;

    const-string v4, "weapp_name"

    invoke-interface {p0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "weapp_id:"

    .line 11
    invoke-static {p0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v5, Lcom/tencent/smtt/sdk/QbSdk;->n:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->n:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    const/16 v0, 0x2000

    if-le p0, v0, :cond_4

    .line 15
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 16
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;
    .locals 3

    .line 1
    invoke-static {}, Lcom/tencent/smtt/sdk/t;->a()Lcom/tencent/smtt/sdk/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/t;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v0, "android.webkit.WebView"

    const-string v2, "getCurrentWebViewPackage"

    .line 3
    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-object v1
.end method

.method public static declared-synchronized getPluginList()Ljava/lang/Object;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/tencent/smtt/sdk/WebView;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/smtt/sdk/t;->a()Lcom/tencent/smtt/sdk/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/t;->b()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.webkit.WebView"

    const-string v2, "getPluginList"

    .line 2
    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    .line 3
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getTbsCoreVersion(Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/smtt/sdk/QbSdk;->getTbsVersion(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static getTbsNeedReboot()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/smtt/sdk/WebView;->d()V

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcom/tencent/smtt/sdk/d;->a(Z)Lcom/tencent/smtt/sdk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/d;->f()Z

    move-result v0

    return v0
.end method

.method public static getTbsSDKVersion(Landroid/content/Context;)I
    .locals 0

    const p0, 0xaab1

    return p0
.end method

.method private h()J
    .locals 7

    .line 1
    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-boolean v1, Lcom/tencent/smtt/sdk/QbSdk;->e:Z

    if-eqz v1, :cond_0

    .line 3
    sget-wide v1, Lcom/tencent/smtt/sdk/QbSdk;->g:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lcom/tencent/smtt/sdk/QbSdk;->f:J

    sub-long/2addr v3, v5

    add-long/2addr v3, v1

    sput-wide v3, Lcom/tencent/smtt/sdk/QbSdk;->g:J

    const-string v1, "sdkreport"

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pv report, WebView.getWifiConnectedTime QbSdk.sWifiConnectedTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/tencent/smtt/sdk/QbSdk;->g:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    sget-wide v1, Lcom/tencent/smtt/sdk/QbSdk;->g:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const-wide/16 v3, 0x0

    .line 6
    sput-wide v3, Lcom/tencent/smtt/sdk/QbSdk;->g:J

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sput-wide v3, Lcom/tencent/smtt/sdk/QbSdk;->f:J

    .line 8
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static declared-synchronized setSysDayOrNight(Z)V
    .locals 3

    const-class v0, Lcom/tencent/smtt/sdk/WebView;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-boolean v1, Lcom/tencent/smtt/sdk/WebView;->w:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p0, v1, :cond_0

    monitor-exit v0

    return-void

    .line 2
    :cond_0
    :try_start_1
    sput-boolean p0, Lcom/tencent/smtt/sdk/WebView;->w:Z

    .line 3
    sget-object v1, Lcom/tencent/smtt/sdk/WebView;->v:Landroid/graphics/Paint;

    if-nez v1, :cond_1

    .line 4
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/tencent/smtt/sdk/WebView;->v:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    .line 5
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    if-nez p0, :cond_2

    .line 6
    sget-object p0, Lcom/tencent/smtt/sdk/WebView;->v:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getAlpha()I

    move-result p0

    sget v1, Lcom/tencent/smtt/sdk/WebView;->NIGHT_MODE_ALPHA:I

    if-eq p0, v1, :cond_3

    .line 7
    sget-object p0, Lcom/tencent/smtt/sdk/WebView;->v:Landroid/graphics/Paint;

    sget v1, Lcom/tencent/smtt/sdk/WebView;->NIGHT_MODE_ALPHA:I

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    .line 8
    :cond_2
    sget-object p0, Lcom/tencent/smtt/sdk/WebView;->v:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getAlpha()I

    move-result p0

    const/16 v1, 0xff

    if-eq p0, v1, :cond_3

    .line 9
    sget-object p0, Lcom/tencent/smtt/sdk/WebView;->v:Landroid/graphics/Paint;

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setAlpha(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setWebContentsDebuggingEnabled(Z)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/tencent/smtt/sdk/t;->a()Lcom/tencent/smtt/sdk/t;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/t;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/t;->c()Lcom/tencent/smtt/sdk/u;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/u;->a(Z)V

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "android.webkit.WebView"

    .line 4
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 5
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "setWebContentsDebuggingEnabled"

    .line 6
    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/tencent/smtt/sdk/WebView;->m:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 8
    sget-object v0, Lcom/tencent/smtt/sdk/WebView;->m:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v1, v4

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Exception:"

    .line 9
    invoke-static {v0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QbSdk"

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 12

    .line 3
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->k:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/tencent/smtt/sdk/WebView;->a:I

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->k:Z

    .line 5
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getX5WebViewExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;->getSdkQBStatisticsInfo()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "guid"

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "qua2"

    .line 8
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "lc"

    .line 9
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    move-object v4, v1

    move-object v5, v2

    goto :goto_0

    :cond_0
    move-object v4, v1

    move-object v5, v4

    move-object v6, v5

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.qzone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->i:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/WebView;->d(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 12
    iget v0, p0, Lcom/tencent/smtt/sdk/WebView;->a:I

    :cond_1
    iput v0, p0, Lcom/tencent/smtt/sdk/WebView;->a:I

    .line 13
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->i:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/WebView;->e(Landroid/content/Context;)V

    :cond_2
    const/4 v0, 0x0

    .line 14
    :try_start_0
    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getX5WebViewExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;->isX5CoreSandboxMode()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v11, v1

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tbsOnDetachedFromWindow"

    invoke-static {v2, v1}, Lcom/tencent/smtt/utils/TbsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    .line 16
    :goto_1
    iget-object v3, p0, Lcom/tencent/smtt/sdk/WebView;->i:Landroid/content/Context;

    iget v7, p0, Lcom/tencent/smtt/sdk/WebView;->a:I

    iget-boolean v8, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/WebView;->h()J

    move-result-wide v9

    invoke-static/range {v3 .. v11}, Lcom/tencent/smtt/sdk/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZJZ)V

    .line 17
    iput v0, p0, Lcom/tencent/smtt/sdk/WebView;->a:I

    .line 18
    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->k:Z

    .line 19
    :cond_3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 5

    .line 33
    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/WebView;->d(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    const-string v1, "PV="

    .line 34
    invoke-static {v1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "PV=1"

    :goto_0
    const-string v1, "tbs"

    const/4 v2, 0x0

    .line 35
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    .line 36
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v4, "core_private"

    invoke-static {v3, p1, v4}, Lf/b/a/a/a;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "pv.db"

    invoke-direct {v1, p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 38
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    .line 39
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 40
    :cond_2
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sput-object p1, Lcom/tencent/smtt/sdk/WebView;->d:Ljava/io/OutputStream;

    .line 41
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :try_start_1
    sget-object p1, Lcom/tencent/smtt/sdk/WebView;->d:Ljava/io/OutputStream;

    if-eqz p1, :cond_4

    .line 43
    sget-object p1, Lcom/tencent/smtt/sdk/WebView;->d:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 44
    sget-object v0, Lcom/tencent/smtt/sdk/WebView;->d:Ljava/io/OutputStream;

    if-eqz v0, :cond_3

    .line 45
    sget-object v0, Lcom/tencent/smtt/sdk/WebView;->d:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    :cond_3
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_4
    :goto_1
    return-void
.end method

.method public a(Landroid/webkit/WebView;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    return-void
.end method

.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1, p2}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v0

    :try_start_0
    const-string v1, "addView"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 4
    const-class v4, Landroid/view/View;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/tencent/smtt/utils/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    .line 6
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public b()Landroid/webkit/WebView;
    .locals 1

    .line 5
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    return-object v0
.end method

.method public canGoBack()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public canGoBackOrForward(I)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->canGoBackOrForward(I)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->canGoBackOrForward(I)Z

    move-result p1

    return p1
.end method

.method public canGoForward()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->canGoForward()Z

    move-result v0

    return v0
.end method

.method public canZoomIn()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    const-string v1, "canZoomIn"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/k;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->canZoomIn()Z

    move-result v0

    return v0
.end method

.method public canZoomOut()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    const-string v1, "canZoomOut"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/k;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->canZoomOut()Z

    move-result v0

    return v0
.end method

.method public capturePicture()Landroid/graphics/Picture;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    const-string v1, "capturePicture"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/k;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    check-cast v0, Landroid/graphics/Picture;

    :goto_0
    return-object v0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->capturePicture()Landroid/graphics/Picture;

    move-result-object v0

    return-object v0
.end method

.method public clearCache(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->clearCache(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->clearCache(Z)V

    :goto_0
    return-void
.end method

.method public clearFormData()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearFormData()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->clearFormData()V

    :goto_0
    return-void
.end method

.method public clearHistory()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->clearHistory()V

    :goto_0
    return-void
.end method

.method public clearMatches()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearMatches()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->clearMatches()V

    :goto_0
    return-void
.end method

.method public clearSslPreferences()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearSslPreferences()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->clearSslPreferences()V

    :goto_0
    return-void
.end method

.method public clearView()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    const-string v1, "clearView"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/k;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->clearView()V

    :goto_0
    return-void
.end method

.method public computeHorizontalScrollExtent()I
    .locals 5

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    const-string v2, "computeHorizontalScrollExtent"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-static {v0, v2, v4}, Lcom/tencent/smtt/utils/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 4
    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    new-array v4, v3, [Ljava/lang/Class;

    invoke-static {v0, v2, v4}, Lcom/tencent/smtt/utils/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 8
    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public computeHorizontalScrollOffset()I
    .locals 5

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    const-string v2, "computeHorizontalScrollOffset"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-static {v0, v2, v4}, Lcom/tencent/smtt/utils/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 4
    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    new-array v4, v3, [Ljava/lang/Class;

    invoke-static {v0, v2, v4}, Lcom/tencent/smtt/utils/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 8
    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public computeHorizontalScrollRange()I
    .locals 4

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "computeHorizontalScrollRange"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3, v2}, Lcom/tencent/smtt/utils/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v3}, Lcom/tencent/smtt/utils/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 6
    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public computeScroll()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView$a;->computeScroll()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->computeScroll()V

    :goto_0
    return-void
.end method

.method public computeVerticalScrollExtent()I
    .locals 5

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    const-string v2, "computeVerticalScrollExtent"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-static {v0, v2, v4}, Lcom/tencent/smtt/utils/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 4
    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    new-array v4, v3, [Ljava/lang/Class;

    invoke-static {v0, v2, v4}, Lcom/tencent/smtt/utils/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 8
    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public computeVerticalScrollOffset()I
    .locals 5

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    const-string v2, "computeVerticalScrollOffset"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-static {v0, v2, v4}, Lcom/tencent/smtt/utils/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 4
    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    new-array v4, v3, [Ljava/lang/Class;

    invoke-static {v0, v2, v4}, Lcom/tencent/smtt/utils/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 8
    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public computeVerticalScrollRange()I
    .locals 4

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "computeVerticalScrollRange"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3, v2}, Lcom/tencent/smtt/utils/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v3}, Lcom/tencent/smtt/utils/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 6
    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public copyBackForwardList()Lcom/tencent/smtt/sdk/WebBackForwardList;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->copyBackForwardList()Lcom/tencent/smtt/export/external/interfaces/IX5WebBackForwardList;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/smtt/sdk/WebBackForwardList;->a(Lcom/tencent/smtt/export/external/interfaces/IX5WebBackForwardList;)Lcom/tencent/smtt/sdk/WebBackForwardList;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/smtt/sdk/WebBackForwardList;->a(Landroid/webkit/WebBackForwardList;)Lcom/tencent/smtt/sdk/WebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public createPrintDocumentAdapter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->createPrintDocumentAdapter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "createPrintDocumentAdapter"

    invoke-static {v0, p1, v2, v1}, Lcom/tencent/smtt/utils/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public customDiskCachePathEnabled(ZLjava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/WebView;->getX5WebViewExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "enabled"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "path"

    .line 4
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/WebView;->getX5WebViewExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;

    move-result-object p1

    const-string p2, "customDiskCachePathEnabled"

    invoke-interface {p1, p2, v0}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;->invokeMiscMethod(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "com.xunmeng.pinduoduo"

    .line 1
    iget-object v2, p0, Lcom/tencent/smtt/sdk/WebView;->i:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    new-instance v1, Lcom/tencent/smtt/sdk/WebView$2;

    const-string v2, "WebviewDestroy"

    invoke-direct {v1, p0, v2}, Lcom/tencent/smtt/sdk/WebView$2;-><init>(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 3
    iget-boolean v1, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->destroy()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0, v0}, Lcom/tencent/smtt/sdk/WebView;->tbsWebviewDestroy(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 7
    :catchall_0
    invoke-virtual {p0, v0}, Lcom/tencent/smtt/sdk/WebView;->tbsWebviewDestroy(Z)V

    :goto_0
    return-void
.end method

.method public documentHasImages(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->documentHasImages(Landroid/os/Message;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->documentHasImages(Landroid/os/Message;)V

    :goto_0
    return-void
.end method

.method public dumpViewHierarchyWithProperties(Ljava/io/BufferedWriter;I)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/io/BufferedWriter;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    const-string p1, "dumpViewHierarchyWithProperties"

    invoke-static {v0, p1, v2, v1}, Lcom/tencent/smtt/utils/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1, p2}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->dumpViewHierarchyWithProperties(Ljava/io/BufferedWriter;I)V

    :goto_0
    return-void
.end method

.method public evaluateJavascript(Ljava/lang/String;Lcom/tencent/smtt/sdk/ValueCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tencent/smtt/sdk/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/String;

    iget-boolean v1, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    const-string v2, "evaluateJavascript"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v1

    new-array v6, v4, [Ljava/lang/Class;

    aput-object v0, v6, v3

    .line 3
    const-class v0, Landroid/webkit/ValueCallback;

    aput-object v0, v6, v5

    invoke-static {v1, v2, v6}, Lcom/tencent/smtt/utils/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 4
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 5
    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 6
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v1, "android.webkit.WebView"

    .line 8
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v6, v4, [Ljava/lang/Class;

    aput-object v0, v6, v3

    .line 9
    const-class v0, Landroid/webkit/ValueCallback;

    aput-object v0, v6, v5

    .line 10
    invoke-virtual {v1, v2, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 11
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 12
    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public findAll(Ljava/lang/String;)I
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "findAll"

    invoke-static {v0, p1, v2, v1}, Lcom/tencent/smtt/utils/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_0
    return v4

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->findAll(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public findAllAsync(Ljava/lang/String;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "findAllAsync"

    invoke-static {v0, p1, v2, v1}, Lcom/tencent/smtt/utils/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->findAllAsync(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public findHierarchyView(Ljava/lang/String;I)Landroid/view/View;
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    const-string p1, "findHierarchyView"

    invoke-static {v0, p1, v2, v1}, Lcom/tencent/smtt/utils/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1, p2}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->findHierarchyView(Ljava/lang/String;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public findNext(Z)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->findNext(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->findNext(Z)V

    :goto_0
    return-void
.end method

.method public flingScroll(II)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->flingScroll(II)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1, p2}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->flingScroll(II)V

    :goto_0
    return-void
.end method

.method public freeMemory()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    const-string v1, "freeMemory"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/k;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->freeMemory()V

    :goto_0
    return-void
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    return-object v0
.end method

.method public getContentHeight()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public getContentWidth()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    const-string v1, "getContentWidth"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/k;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getContentWidth()I

    move-result v0

    return v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getHitTestResult()Lcom/tencent/smtt/sdk/WebView$HitTestResult;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/tencent/smtt/sdk/WebView$HitTestResult;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/smtt/sdk/WebView$HitTestResult;-><init>(Landroid/webkit/WebView$HitTestResult;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/tencent/smtt/sdk/WebView$HitTestResult;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getHitTestResult()Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase$HitTestResult;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/smtt/sdk/WebView$HitTestResult;-><init>(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase$HitTestResult;)V

    return-object v0
.end method

.method public getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1, p2}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getProgress()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getProgress()I

    move-result v0

    return v0
.end method

.method public getRendererPriorityWaivedWhenNotVisible()Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-boolean v1, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v1, :cond_2

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_0

    return v0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    const-string v2, "getRendererPriorityWaivedWhenNotVisible"

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/k;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return v0

    :catch_0
    move-exception v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public getRendererRequestedPriority()I
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-boolean v1, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v1, :cond_2

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_0

    return v0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    const-string v2, "getRendererRequestedPriority"

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/k;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return v0

    :catch_0
    move-exception v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public getScale()F
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    const-string v1, "getScale"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/k;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_0
    return v0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getScale()F

    move-result v0

    return v0
.end method

.method public getScrollBarDefaultDelayBeforeFade()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/WebView;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/WebView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getScrollBarDefaultDelayBeforeFade()I

    move-result v0

    return v0
.end method

.method public getScrollBarFadeDuration()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/WebView;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/WebView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getScrollBarFadeDuration()I

    move-result v0

    return v0
.end method

.method public getScrollBarSize()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/WebView;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/WebView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getScrollBarSize()I

    move-result v0

    return v0
.end method

.method public getScrollBarStyle()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/WebView;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/WebView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getScrollBarStyle()I

    move-result v0

    return v0
.end method

.method public getSettings()Lcom/tencent/smtt/sdk/WebSettings;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->h:Lcom/tencent/smtt/sdk/WebSettings;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Lcom/tencent/smtt/sdk/WebSettings;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getSettings()Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;-><init>(Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;)V

    iput-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->h:Lcom/tencent/smtt/sdk/WebSettings;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/tencent/smtt/sdk/WebSettings;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/WebView$a;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;-><init>(Landroid/webkit/WebSettings;)V

    iput-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->h:Lcom/tencent/smtt/sdk/WebSettings;

    return-object v0
.end method

.method public getSettingsExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebSettingsExtension;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getX5WebViewExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;->getSettingsExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebSettingsExtension;

    move-result-object v0

    return-object v0
.end method

.method public getSysNightModeAlpha()I
    .locals 1

    .line 1
    sget v0, Lcom/tencent/smtt/sdk/WebView;->NIGHT_MODE_ALPHA:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getVisibleTitleHeight()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    const-string v1, "getVisibleTitleHeight"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/k;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getVisibleTitleHeight()I

    move-result v0

    return v0
.end method

.method public getWebChromeClient()Lcom/tencent/smtt/sdk/WebChromeClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->o:Lcom/tencent/smtt/sdk/WebChromeClient;

    return-object v0
.end method

.method public getWebChromeClientExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebChromeClientExtension;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getX5WebViewExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;->getWebChromeClientExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebChromeClientExtension;

    move-result-object v0

    return-object v0
.end method

.method public getWebScrollX()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScrollX()I

    move-result v0

    return v0
.end method

.method public getWebScrollY()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    return v0
.end method

.method public getWebViewClient()Lcom/tencent/smtt/sdk/WebViewClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->n:Lcom/tencent/smtt/sdk/WebViewClient;

    return-object v0
.end method

.method public getWebViewClientExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getX5WebViewExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;->getWebViewClientExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    move-result-object v0

    return-object v0
.end method

.method public getX5HitTestResult()Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase$HitTestResult;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getHitTestResult()Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase$HitTestResult;

    move-result-object v0

    return-object v0
.end method

.method public getX5WebViewExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getX5WebViewExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;

    move-result-object v0

    return-object v0
.end method

.method public getZoomControls()Landroid/view/View;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    const-string v1, "getZoomControls"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/k;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getZoomControls()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public goBack()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->goBack()V

    :goto_0
    return-void
.end method

.method public goBackOrForward(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->goBackOrForward(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->goBackOrForward(I)V

    :goto_0
    return-void
.end method

.method public goForward()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->goForward()V

    :goto_0
    return-void
.end method

.method public invokeZoomPicker()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0}, Landroid/webkit/WebView;->invokeZoomPicker()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->invokeZoomPicker()V

    :goto_0
    return-void
.end method

.method public isDayMode()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/tencent/smtt/sdk/WebView;->w:Z

    return v0
.end method

.method public isPrivateBrowsingEnabled()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    const-string v1, "isPrivateBrowsingEnabled"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/k;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->isPrivateBrowsingEnable()Z

    move-result v0

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/WebView;->showDebugView(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->loadUrl(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/WebView;->showDebugView(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1, p2}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    :try_start_0
    const-string v0, "com.xunmeng.pinduoduo"

    .line 1
    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/tencent/smtt/sdk/WebView$7;

    const-string v1, "onDetachedFromWindow"

    invoke-direct {v0, p0, v1}, Lcom/tencent/smtt/sdk/WebView$7;-><init>(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/WebView;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4
    :catchall_0
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/WebView;->a()V

    :goto_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->y:Landroid/view/View$OnLongClickListener;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/WebView;->a(Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 4
    :cond_1
    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/WebView;->a(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/k;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->onPause()V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/k;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->onResume()V

    :goto_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2
    iget-object p3, p0, Lcom/tencent/smtt/sdk/WebView;->i:Landroid/content/Context;

    invoke-direct {p0, p3}, Lcom/tencent/smtt/sdk/WebView;->b(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isHardwareAccelerated()Z

    move-result p3

    if-eqz p3, :cond_0

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayerType()I

    :cond_0
    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->i:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    return-void

    .line 3
    :cond_0
    sget-object v1, Lcom/tencent/smtt/sdk/WebView;->p:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 5
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sput-object v0, Lcom/tencent/smtt/sdk/WebView;->p:Ljava/lang/String;

    .line 6
    :cond_1
    sget-object v0, Lcom/tencent/smtt/sdk/WebView;->p:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/tencent/smtt/sdk/WebView;->p:Ljava/lang/String;

    const-string v1, "com.tencent.mobileqq"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    return-void

    :cond_3
    if-eqz p2, :cond_7

    .line 8
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->k:Z

    if-nez v0, :cond_7

    iget v0, p0, Lcom/tencent/smtt/sdk/WebView;->a:I

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->k:Z

    .line 10
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    const-string v1, ""

    if-eqz v0, :cond_4

    .line 11
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getX5WebViewExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;->getSdkQBStatisticsInfo()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "guid"

    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "qua2"

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "lc"

    .line 14
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    move-object v4, v1

    move-object v5, v2

    goto :goto_0

    :cond_4
    move-object v4, v1

    move-object v5, v4

    move-object v6, v5

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.qzone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->i:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/WebView;->d(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    .line 17
    iget v0, p0, Lcom/tencent/smtt/sdk/WebView;->a:I

    :cond_5
    iput v0, p0, Lcom/tencent/smtt/sdk/WebView;->a:I

    .line 18
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->i:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/WebView;->e(Landroid/content/Context;)V

    :cond_6
    const/4 v0, 0x0

    .line 19
    :try_start_0
    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getX5WebViewExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;->isX5CoreSandboxMode()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v11, v1

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onVisibilityChanged"

    invoke-static {v2, v1}, Lcom/tencent/smtt/utils/TbsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    .line 21
    :goto_1
    iget-object v3, p0, Lcom/tencent/smtt/sdk/WebView;->i:Landroid/content/Context;

    iget v7, p0, Lcom/tencent/smtt/sdk/WebView;->a:I

    iget-boolean v8, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/WebView;->h()J

    move-result-wide v9

    invoke-static/range {v3 .. v11}, Lcom/tencent/smtt/sdk/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZJZ)V

    .line 22
    iput v0, p0, Lcom/tencent/smtt/sdk/WebView;->a:I

    .line 23
    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->k:Z

    .line 24
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    return-void
.end method

.method public overlayHorizontalScrollbar()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0}, Landroid/webkit/WebView;->overlayHorizontalScrollbar()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->overlayHorizontalScrollbar()Z

    move-result v0

    return v0
.end method

.method public overlayVerticalScrollbar()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->overlayVerticalScrollbar()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0}, Landroid/webkit/WebView;->overlayVerticalScrollbar()Z

    move-result v0

    return v0
.end method

.method public pageDown(Z)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->pageDown(Z)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    const/4 v1, -0x1

    invoke-interface {v0, p1, v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->pageDown(ZI)Z

    move-result p1

    return p1
.end method

.method public pageUp(Z)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->pageUp(Z)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    const/4 v1, -0x1

    invoke-interface {v0, p1, v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->pageUp(ZI)Z

    move-result p1

    return p1
.end method

.method public pauseTimers()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0}, Landroid/webkit/WebView;->pauseTimers()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->pauseTimers()V

    :goto_0
    return-void
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1, p2}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->postUrl(Ljava/lang/String;[B)V

    :goto_0
    return-void
.end method

.method public refreshPlugins(Z)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v4

    const-string p1, "refreshPlugins"

    invoke-static {v0, p1, v2, v1}, Lcom/tencent/smtt/utils/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->refreshPlugins(Z)V

    :goto_0
    return-void
.end method

.method public reload()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->reload()V

    :goto_0
    return-void
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "removeJavascriptInterface"

    invoke-static {v0, p1, v2, v1}, Lcom/tencent/smtt/utils/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v0

    :try_start_0
    const-string v1, "removeView"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 4
    const-class v4, Landroid/view/View;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/tencent/smtt/utils/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    .line 6
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public reportInitPerformance(JIJJ)Lorg/json/JSONObject;
    .locals 0

    .line 1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string p2, "IS_X5"

    .line 2
    iget-boolean p3, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 3
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object p1
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 4
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    if-ne p1, p0, :cond_0

    move-object p1, v0

    :cond_0
    invoke-virtual {v1, p1, p2, p3}, Landroid/view/ViewGroup;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    if-ne p1, p0, :cond_3

    move-object p1, v0

    :cond_3
    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebView;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result p1

    return p1
.end method

.method public requestFocusNodeHref(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->requestFocusNodeHref(Landroid/os/Message;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->requestFocusNodeHref(Landroid/os/Message;)V

    :goto_0
    return-void
.end method

.method public requestImageRef(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->requestImageRef(Landroid/os/Message;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->requestImageRef(Landroid/os/Message;)V

    :goto_0
    return-void
.end method

.method public restorePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/os/Bundle;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/io/File;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    const-string p1, "restorePicture"

    invoke-static {v0, p1, v2, v1}, Lcom/tencent/smtt/utils/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    :goto_0
    return v4

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1, p2}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->restorePicture(Landroid/os/Bundle;Ljava/io/File;)Z

    move-result p1

    return p1
.end method

.method public restoreState(Landroid/os/Bundle;)Lcom/tencent/smtt/sdk/WebBackForwardList;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/smtt/sdk/WebBackForwardList;->a(Landroid/webkit/WebBackForwardList;)Lcom/tencent/smtt/sdk/WebBackForwardList;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->restoreState(Landroid/os/Bundle;)Lcom/tencent/smtt/export/external/interfaces/IX5WebBackForwardList;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/smtt/sdk/WebBackForwardList;->a(Lcom/tencent/smtt/export/external/interfaces/IX5WebBackForwardList;)Lcom/tencent/smtt/sdk/WebBackForwardList;

    move-result-object p1

    return-object p1
.end method

.method public resumeTimers()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->resumeTimers()V

    :goto_0
    return-void
.end method

.method public savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-class v0, Ljava/lang/String;

    iget-boolean v1, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v5, 0x1

    aput-object v0, v3, v5

    const/4 v6, 0x2

    aput-object v0, v3, v6

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v4

    aput-object p2, v0, v5

    aput-object p3, v0, v6

    const-string p1, "savePassword"

    invoke-static {v1, p1, v3, v0}, Lcom/tencent/smtt/utils/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public savePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/os/Bundle;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/io/File;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    const-string p1, "savePicture"

    invoke-static {v0, p1, v2, v1}, Lcom/tencent/smtt/utils/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    :goto_0
    return v4

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1, p2}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->savePicture(Landroid/os/Bundle;Ljava/io/File;)Z

    move-result p1

    return p1
.end method

.method public saveState(Landroid/os/Bundle;)Lcom/tencent/smtt/sdk/WebBackForwardList;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/smtt/sdk/WebBackForwardList;->a(Landroid/webkit/WebBackForwardList;)Lcom/tencent/smtt/sdk/WebBackForwardList;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->saveState(Landroid/os/Bundle;)Lcom/tencent/smtt/export/external/interfaces/IX5WebBackForwardList;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/smtt/sdk/WebBackForwardList;->a(Lcom/tencent/smtt/export/external/interfaces/IX5WebBackForwardList;)Lcom/tencent/smtt/sdk/WebBackForwardList;

    move-result-object p1

    return-object p1
.end method

.method public saveWebArchive(Ljava/lang/String;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "saveWebArchive"

    invoke-static {v0, p1, v2, v1}, Lcom/tencent/smtt/utils/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->saveWebArchive(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public saveWebArchive(Ljava/lang/String;ZLcom/tencent/smtt/sdk/ValueCallback;)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/tencent/smtt/sdk/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-class v3, Landroid/webkit/ValueCallback;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v5

    aput-object p3, v1, v6

    const-string p1, "saveWebArchive"

    invoke-static {v0, p1, v2, v1}, Lcom/tencent/smtt/utils/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->saveWebArchive(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V

    :goto_0
    return-void
.end method

.method public setARModeEnable(Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/WebView;->getSettingsExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebSettingsExtension;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebSettingsExtension;->setARModeEnable(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->setBackgroundColor(I)V

    .line 4
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public setCertificate(Landroid/net/http/SslCertificate;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setCertificate(Landroid/net/http/SslCertificate;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->setCertificate(Landroid/net/http/SslCertificate;)V

    :goto_0
    return-void
.end method

.method public setDayOrNight(Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/WebView;->getSettingsExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebSettingsExtension;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebSettingsExtension;->setDayOrNight(Z)V

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/tencent/smtt/sdk/WebView;->setSysDayOrNight(Z)V

    .line 4
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/WebView;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setDownloadListener(Lcom/tencent/smtt/sdk/DownloadListener;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    new-instance v1, Lcom/tencent/smtt/sdk/WebView$4;

    invoke-direct {v1, p0, p1}, Lcom/tencent/smtt/sdk/WebView$4;-><init>(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/sdk/DownloadListener;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    new-instance v2, Lcom/tencent/smtt/sdk/b;

    invoke-direct {v2, p0, p1, v0}, Lcom/tencent/smtt/sdk/b;-><init>(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/sdk/DownloadListener;Z)V

    invoke-interface {v1, v2}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->setDownloadListener(Lcom/tencent/smtt/export/external/interfaces/DownloadListener;)V

    :goto_0
    return-void
.end method

.method public setFindListener(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase$FindListener;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    new-instance v1, Lcom/tencent/smtt/sdk/WebView$3;

    invoke-direct {v1, p0, p1}, Lcom/tencent/smtt/sdk/WebView$3;-><init>(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase$FindListener;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setFindListener(Landroid/webkit/WebView$FindListener;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->setFindListener(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase$FindListener;)V

    :goto_0
    return-void
.end method

.method public setHorizontalScrollbarOverlay(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setHorizontalScrollbarOverlay(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->setHorizontalScrollbarOverlay(Z)V

    :goto_0
    return-void
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebView;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setInitialScale(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setInitialScale(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->setInitialScale(I)V

    :goto_0
    return-void
.end method

.method public setMapTrackballToArrowKeys(Z)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v4

    const-string p1, "setMapTrackballToArrowKeys"

    invoke-static {v0, p1, v2, v1}, Lcom/tencent/smtt/utils/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->setMapTrackballToArrowKeys(Z)V

    :goto_0
    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setNetworkAvailable(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->setNetworkAvailable(Z)V

    :goto_0
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->x:Ljava/lang/Object;

    if-nez v1, :cond_1

    const-string v1, "getListenerInfo"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 5
    invoke-static {v0, v1, v2}, Lcom/tencent/smtt/utils/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v3, 0x0

    .line 7
    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "mOnLongClickListener"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->x:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :cond_1
    iput-object p1, p0, Lcom/tencent/smtt/sdk/WebView;->y:Landroid/view/View$OnLongClickListener;

    .line 12
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/WebView;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :catchall_0
    :goto_0
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/WebView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setPictureListener(Lcom/tencent/smtt/sdk/WebView$PictureListener;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    new-instance v1, Lcom/tencent/smtt/sdk/WebView$5;

    invoke-direct {v1, p0, p1}, Lcom/tencent/smtt/sdk/WebView$5;-><init>(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/sdk/WebView$PictureListener;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {p1, v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->setPictureListener(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase$PictureListener;)V

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    new-instance v1, Lcom/tencent/smtt/sdk/WebView$6;

    invoke-direct {v1, p0, p1}, Lcom/tencent/smtt/sdk/WebView$6;-><init>(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/sdk/WebView$PictureListener;)V

    invoke-interface {v0, v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->setPictureListener(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase$PictureListener;)V

    :goto_0
    return-void
.end method

.method public setRendererPriorityPolicy(IZ)V
    .locals 7

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_1

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    const-string v1, "setRendererPriorityPolicy"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-static {v0, v1, v3, v2}, Lcom/tencent/smtt/utils/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setScrollBarStyle(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    :goto_0
    return-void
.end method

.method public setSysNightModeAlpha(I)V
    .locals 0

    .line 1
    sput p1, Lcom/tencent/smtt/sdk/WebView;->NIGHT_MODE_ALPHA:I

    return-void
.end method

.method public setVerticalScrollbarOverlay(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->setVerticalScrollbarOverlay(Z)V

    :goto_0
    return-void
.end method

.method public setVideoFullScreen(Landroid/content/Context;Z)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string v0, "com.tencent.android.qqdownloader"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    if-eqz p1, :cond_1

    .line 4
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x1

    const-string v1, "DefaultVideoScreen"

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    .line 5
    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7
    :goto_0
    iget-object p2, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {p2}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getX5WebViewExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;

    move-result-object p2

    const-string v1, "setVideoParams"

    invoke-interface {p2, v1, p1}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;->invokeMiscMethod(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public setVisibility(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/WebView;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/WebView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setWebChromeClient(Lcom/tencent/smtt/sdk/WebChromeClient;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/tencent/smtt/sdk/f;

    invoke-static {}, Lcom/tencent/smtt/sdk/t;->a()Lcom/tencent/smtt/sdk/t;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/t;->a(Z)Lcom/tencent/smtt/sdk/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/u;->i()Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient;

    move-result-object v2

    invoke-direct {v1, v2, p0, p1}, Lcom/tencent/smtt/sdk/f;-><init>(Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient;Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/sdk/WebChromeClient;)V

    :goto_0
    invoke-interface {v0, v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->setWebChromeClient(Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient;)V

    goto :goto_2

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/tencent/smtt/sdk/SystemWebChromeClient;

    invoke-direct {v1, p0, p1}, Lcom/tencent/smtt/sdk/SystemWebChromeClient;-><init>(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/sdk/WebChromeClient;)V

    :goto_1
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 4
    :goto_2
    iput-object p1, p0, Lcom/tencent/smtt/sdk/WebView;->o:Lcom/tencent/smtt/sdk/WebChromeClient;

    return-void
.end method

.method public setWebChromeClientExtension(Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebChromeClientExtension;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getX5WebViewExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;->setWebChromeClientExtension(Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebChromeClientExtension;)V

    return-void
.end method

.method public setWebViewCallbackClient(Lcom/tencent/smtt/sdk/WebViewCallbackClient;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/tencent/smtt/sdk/WebView;->mWebViewCallbackClient:Lcom/tencent/smtt/sdk/WebViewCallbackClient;

    .line 2
    iget-boolean p1, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/WebView;->getX5WebViewExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x1

    const-string v1, "flag"

    .line 4
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/WebView;->getX5WebViewExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;

    move-result-object v0

    const-string v1, "setWebViewCallbackClientFlag"

    invoke-interface {v0, v1, p1}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;->invokeMiscMethod(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setWebViewClient(Lcom/tencent/smtt/sdk/WebViewClient;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/tencent/smtt/sdk/g;

    invoke-static {}, Lcom/tencent/smtt/sdk/t;->a()Lcom/tencent/smtt/sdk/t;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/t;->a(Z)Lcom/tencent/smtt/sdk/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/u;->j()Lcom/tencent/smtt/export/external/interfaces/IX5WebViewClient;

    move-result-object v2

    invoke-direct {v1, v2, p0, p1}, Lcom/tencent/smtt/sdk/g;-><init>(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewClient;Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/sdk/WebViewClient;)V

    :goto_0
    invoke-interface {v0, v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->setWebViewClient(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewClient;)V

    goto :goto_2

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/tencent/smtt/sdk/SystemWebViewClient;

    invoke-direct {v1, p0, p1}, Lcom/tencent/smtt/sdk/SystemWebViewClient;-><init>(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/sdk/WebViewClient;)V

    :goto_1
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 4
    :goto_2
    iput-object p1, p0, Lcom/tencent/smtt/sdk/WebView;->n:Lcom/tencent/smtt/sdk/WebViewClient;

    return-void
.end method

.method public setWebViewClientExtension(Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getX5WebViewExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;->setWebViewClientExtension(Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;)V

    return-void
.end method

.method public showDebugView(Ljava/lang/String;)Z
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "http://debugtbs.qq.com"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/WebView;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/utils/d;->a(Landroid/content/Context;)Lcom/tencent/smtt/utils/d;

    move-result-object v0

    .line 5
    iget-object v2, p0, Lcom/tencent/smtt/sdk/WebView;->i:Landroid/content/Context;

    invoke-static {}, Lcom/tencent/smtt/sdk/k;->a()Lcom/tencent/smtt/sdk/k;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v0, p1, p0, v2, v3}, Lcom/tencent/smtt/utils/d;->a(Ljava/lang/String;Lcom/tencent/smtt/sdk/WebView;Landroid/content/Context;Landroid/os/Looper;)V

    return v1

    :cond_0
    const-string v0, "http://debugx5.qq.com"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 7
    iget-boolean p1, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez p1, :cond_1

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<!DOCTYPE html><html><body>"

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<head>"

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<title>\u65e0\u6cd5\u6253\u5f00debugx5</title>"

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<meta name=\"viewport\" content=\"width=device-width, user-scalable=no\" />"

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</head>"

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<br/><br /><h2>debugx5\u9875\u9762\u4ec5\u5728\u4f7f\u7528\u4e86X5\u5185\u6838\u65f6\u6709\u6548\uff0c\u7531\u4e8e\u5f53\u524d\u6ca1\u6709\u4f7f\u7528X5\u5185\u6838\uff0c\u65e0\u6cd5\u6253\u5f00debugx5\uff01</h2><br />"

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u5c1d\u8bd5<a href=\"http://debugtbs.qq.com?10000\">\u8fdb\u5165DebugTbs\u5b89\u88c5\u6216\u6253\u5f00X5\u5185\u6838</a>"

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</body></html>"

    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    .line 17
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const-string v5, "text/html"

    const-string v6, "utf-8"

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/tencent/smtt/sdk/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    return v0
.end method

.method public showFindDialog(Ljava/lang/String;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public stopLoading()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->stopLoading()V

    :goto_0
    return-void
.end method

.method public super_computeScroll()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView$a;->a()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v0

    :try_start_0
    const-string v1, "super_computeScroll"

    .line 4
    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/k;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public super_dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebView$a;->b(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "super_dispatchTouchEvent"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 4
    const-class v5, Landroid/view/MotionEvent;

    aput-object v5, v4, v1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {v0, v2, v4, v3}, Lcom/tencent/smtt/utils/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return v1
.end method

.method public super_onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebView$a;->c(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "super_onInterceptTouchEvent"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 4
    const-class v5, Landroid/view/MotionEvent;

    aput-object v5, v4, v1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {v0, v2, v4, v3}, Lcom/tencent/smtt/utils/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return v1
.end method

.method public super_onOverScrolled(IIZZ)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tencent/smtt/sdk/WebView$a;->a(IIZZ)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v0

    :try_start_0
    const-string v1, "super_onOverScrolled"

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Class;

    .line 4
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x3

    aput-object v4, v3, v8

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v7

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v8

    invoke-static {v0, v1, v3, v2}, Lcom/tencent/smtt/utils/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public super_onScrollChanged(IIII)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tencent/smtt/sdk/WebView$a;->a(IIII)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v0

    :try_start_0
    const-string v1, "super_onScrollChanged"

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Class;

    .line 4
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x3

    aput-object v4, v3, v8

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v8

    invoke-static {v0, v1, v3, v2}, Lcom/tencent/smtt/utils/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public super_onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebView$a;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "super_onTouchEvent"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 4
    const-class v5, Landroid/view/MotionEvent;

    aput-object v5, v4, v1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {v0, v2, v4, v3}, Lcom/tencent/smtt/utils/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return v1
.end method

.method public super_overScrollBy(IIIIIIIIZ)Z
    .locals 15

    move-object v0, p0

    .line 1
    iget-boolean v1, v0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v1, :cond_0

    .line 2
    iget-object v2, v0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-virtual/range {v2 .. v11}, Lcom/tencent/smtt/sdk/WebView$a;->a(IIIIIIIIZ)Z

    move-result v1

    return v1

    .line 3
    :cond_0
    iget-object v1, v0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "super_overScrollBy"

    const/16 v4, 0x9

    new-array v5, v4, [Ljava/lang/Class;

    .line 4
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v6, v5, v8

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x3

    aput-object v6, v5, v9

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x4

    aput-object v6, v5, v10

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x5

    aput-object v6, v5, v11

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x6

    aput-object v6, v5, v12

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v13, 0x7

    aput-object v6, v5, v13

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v14, 0x8

    aput-object v6, v5, v14

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v7

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v8

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v9

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v10

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v11

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v12

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v13

    invoke-static/range {p9 .. p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v14

    invoke-static {v1, v3, v5, v4}, Lcom/tencent/smtt/utils/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return v2
.end method

.method public switchNightMode(Z)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/tencent/smtt/sdk/WebView;->w:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    sput-boolean p1, Lcom/tencent/smtt/sdk/WebView;->w:Z

    const-string v0, "QB_SDK"

    if-eqz p1, :cond_1

    const-string p1, "deleteNightMode"

    .line 3
    invoke-static {v0, p1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "javascript:document.getElementsByTagName(\'HEAD\').item(0).removeChild(document.getElementById(\'QQBrowserSDKNightMode\'));"

    .line 4
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "nightMode"

    .line 5
    invoke-static {v0, p1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "javascript:var style = document.createElement(\'style\');style.type=\'text/css\';style.id=\'QQBrowserSDKNightMode\';style.innerHTML=\'html,body{background:none !important;background-color: #1d1e2a !important;}html *{background-color: #1d1e2a !important; color:#888888 !important;border-color:#3e4f61 !important;text-shadow:none !important;box-shadow:none !important;}a,a *{border-color:#4c5b99 !important; color:#2d69b3 !important;text-decoration:none !important;}a:visited,a:visited *{color:#a600a6 !important;}a:active,a:active *{color:#5588AA !important;}input,select,textarea,option,button{background-image:none !important;color:#AAAAAA !important;border-color:#4c5b99 !important;}form,div,button,span{background-color:#1d1e2a !important; border-color:#4c5b99 !important;}img{opacity:0.5}\';document.getElementsByTagName(\'HEAD\').item(0).appendChild(style);"

    .line 6
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public switchToNightMode()V
    .locals 2

    const-string v0, "QB_SDK"

    const-string v1, "switchToNightMode 01"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-boolean v1, Lcom/tencent/smtt/sdk/WebView;->w:Z

    if-nez v1, :cond_0

    const-string v1, "switchToNightMode"

    .line 3
    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "javascript:var style = document.createElement(\'style\');style.type=\'text/css\';style.id=\'QQBrowserSDKNightMode\';style.innerHTML=\'html,body{background:none !important;background-color: #1d1e2a !important;}html *{background-color: #1d1e2a !important; color:#888888 !important;border-color:#3e4f61 !important;text-shadow:none !important;box-shadow:none !important;}a,a *{border-color:#4c5b99 !important; color:#2d69b3 !important;text-decoration:none !important;}a:visited,a:visited *{color:#a600a6 !important;}a:active,a:active *{color:#5588AA !important;}input,select,textarea,option,button{background-image:none !important;color:#AAAAAA !important;border-color:#4c5b99 !important;}form,div,button,span{background-color:#1d1e2a !important; border-color:#4c5b99 !important;}img{opacity:0.5}\';document.getElementsByTagName(\'HEAD\').item(0).appendChild(style);"

    .line 4
    invoke-virtual {p0, v0}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public tbsWebviewDestroy(Z)V
    .locals 14

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->k:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    iget v0, p0, Lcom/tencent/smtt/sdk/WebView;->a:I

    if-eqz v0, :cond_3

    .line 2
    iput-boolean v2, p0, Lcom/tencent/smtt/sdk/WebView;->k:Z

    const-string v0, ""

    const-string v3, ""

    const-string v4, ""

    .line 3
    iget-boolean v5, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-eqz v5, :cond_0

    .line 4
    iget-object v5, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v5}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getX5WebViewExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;

    move-result-object v5

    invoke-interface {v5}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;->getSdkQBStatisticsInfo()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v0, "guid"

    .line 5
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "qua2"

    .line 6
    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "lc"

    .line 7
    invoke-virtual {v5, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_0
    move-object v6, v0

    move-object v7, v3

    move-object v8, v4

    const-string v0, "com.qzone"

    .line 8
    iget-object v3, p0, Lcom/tencent/smtt/sdk/WebView;->i:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->i:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/WebView;->d(Landroid/content/Context;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 10
    iget v0, p0, Lcom/tencent/smtt/sdk/WebView;->a:I

    :cond_1
    iput v0, p0, Lcom/tencent/smtt/sdk/WebView;->a:I

    .line 11
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->i:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/WebView;->e(Landroid/content/Context;)V

    .line 12
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getX5WebViewExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;->isX5CoreSandboxMode()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v13, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v3, "tbsWebviewDestroy"

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/smtt/utils/TbsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v13, 0x0

    .line 14
    :goto_0
    iget-object v5, p0, Lcom/tencent/smtt/sdk/WebView;->i:Landroid/content/Context;

    iget v9, p0, Lcom/tencent/smtt/sdk/WebView;->a:I

    iget-boolean v10, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/WebView;->h()J

    move-result-wide v11

    invoke-static/range {v5 .. v13}, Lcom/tencent/smtt/sdk/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZJZ)V

    .line 15
    iput v1, p0, Lcom/tencent/smtt/sdk/WebView;->a:I

    .line 16
    iput-boolean v1, p0, Lcom/tencent/smtt/sdk/WebView;->k:Z

    .line 17
    :cond_3
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :try_start_1
    const-string v3, "android.webkit.WebViewClassic"

    .line 18
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "fromWebView"

    new-array v5, v2, [Ljava/lang/Class;

    .line 19
    const-class v6, Landroid/webkit/WebView;

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 20
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v5, v2, [Ljava/lang/Object;

    .line 21
    iget-object v6, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    aput-object v6, v5, v1

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v4, "mListBoxDialog"

    .line 22
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 23
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 24
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 25
    check-cast v1, Landroid/app/Dialog;

    .line 26
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    const-string v3, "android.app.Dialog"

    .line 27
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "CANCEL"

    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 29
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 30
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "mListenersHandler"

    .line 31
    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 32
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 33
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    .line 34
    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    nop

    :cond_4
    :goto_1
    if-eqz p1, :cond_5

    .line 35
    iget-object p1, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    :cond_5
    :try_start_2
    const-string p1, "android.webkit.BrowserFrame"

    .line 36
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v1, "sConfigCallback"

    .line 37
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 38
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentCallbacks;

    if-eqz v1, :cond_7

    .line 40
    invoke-virtual {p1, v0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p1, "android.view.ViewRoot"

    .line 41
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v3, "sConfigCallbacks"

    .line 42
    invoke-virtual {p1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 43
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 45
    check-cast p1, Ljava/util/List;

    .line 46
    monitor-enter p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 47
    :try_start_3
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 48
    monitor-exit p1

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_6
    if-eqz p1, :cond_7

    .line 49
    iget-object p1, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->destroy()V

    :catch_1
    :cond_7
    :goto_2
    const-string p1, "WebView"

    const-string v0, "X5 GUID = "

    .line 50
    invoke-static {v0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public zoomIn()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0}, Landroid/webkit/WebView;->zoomIn()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->zoomIn()Z

    move-result v0

    return v0
.end method

.method public zoomOut()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0}, Landroid/webkit/WebView;->zoomOut()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->zoomOut()Z

    move-result v0

    return v0
.end method
