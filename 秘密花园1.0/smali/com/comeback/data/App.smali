.class public Lcom/comeback/data/App;
.super Landroidx/multidex/MultiDexApplication;
.source "App.java"


# static fields
.field public static b:Lcom/comeback/data/App;

.field public static c:I

.field public static d:I

.field public static e:Lcom/comeback/data/ui/main/bean/ConfigBean;


# instance fields
.field public a:Lf/e/a/h/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/multidex/MultiDexApplication;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Lf/j/a/a/f/i;)Lf/j/a/a/f/f;
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    check-cast p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w([I)Lf/j/a/a/f/i;

    .line 2
    new-instance p1, Lf/j/a/a/i/b;

    invoke-direct {p1, p0}, Lf/j/a/a/i/b;-><init>(Landroid/content/Context;)V

    return-object p1

    nop

    :array_0
    .array-data 4
        0x7f060023
        0x7f060034
    .end array-data
.end method

.method public static b(Landroid/content/Context;Lf/j/a/a/f/i;)Lf/j/a/a/f/e;
    .locals 5

    .line 1
    new-instance p1, Lf/j/a/a/h/b;

    invoke-direct {p1, p0}, Lf/j/a/a/h/b;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object p0, p1, Lf/j/a/a/k/c;->e:Landroid/widget/ImageView;

    .line 3
    iget-object v0, p1, Lf/j/a/a/k/c;->f:Landroid/widget/ImageView;

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/high16 v3, 0x41a00000    # 20.0f

    .line 6
    invoke-static {v3}, Lf/j/a/a/m/b;->d(F)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 7
    invoke-static {v3}, Lf/j/a/a/m/b;->d(F)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 8
    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p1
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "VA0NAgIUZlASBVwC"

    if-eqz v0, :cond_0

    .line 2
    :try_start_1
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object p1

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lf/e/a/k/j;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Lc/a/a/b/g/h;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object v0

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lf/e/a/k/j;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 6
    :cond_1
    new-instance v0, Lf/i/b/j;

    invoke-direct {v0}, Lf/i/b/j;-><init>()V

    const-class v1, Lcom/comeback/data/ui/main/bean/ConfigBean;

    invoke-virtual {v0, p1, v1}, Lf/i/b/j;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/main/bean/ConfigBean;

    sput-object p1, Lcom/comeback/data/App;->e:Lcom/comeback/data/ui/main/bean/ConfigBean;

    .line 7
    invoke-static {p1}, Lf/e/a/k/b;->a(Lcom/comeback/data/ui/main/bean/ConfigBean;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onCreate()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 2
    sput-object p0, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    .line 3
    invoke-static {p0}, Lcom/comeback/data/ndk/SignHelper;->validitySign(Landroid/content/Context;)V

    const-string v0, "AVFbBl8WWAFLXlcEHAxXCQAHWlBbQAlV"

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZAcAFg4HflIBAlEJ"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, ""

    invoke-static {p0, v0, v1, v2, v3}, Lcom/umeng/commonsdk/UMConfigure;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 6
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v1, Lcom/comeback/data/App;->d:I

    .line 7
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v0, Lcom/comeback/data/App;->c:I

    .line 8
    new-instance v0, Lf/e/a/c;

    invoke-direct {v0, p0}, Lf/e/a/c;-><init>(Lcom/comeback/data/App;)V

    invoke-static {p0, v0}, Lcom/tencent/smtt/sdk/QbSdk;->initX5Environment(Landroid/content/Context;Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;)V

    .line 9
    sget-object v0, Lf/e/a/b;->a:Lf/e/a/b;

    invoke-static {v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setDefaultRefreshHeaderCreator(Lf/j/a/a/f/b;)V

    .line 10
    sget-object v0, Lf/e/a/a;->a:Lf/e/a/a;

    invoke-static {v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setDefaultRefreshFooterCreator(Lf/j/a/a/f/a;)V

    .line 11
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    .line 12
    invoke-static {p0}, Lg/a/x;->R(Landroid/content/Context;)V

    .line 13
    new-instance v0, Lg/a/b0$a;

    .line 14
    sget-object v1, Lg/a/a;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Lg/a/b0$a;-><init>(Landroid/content/Context;)V

    const-string v1, "VAMADA5dS1YSClk="

    .line 15
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 17
    iput-object v1, v0, Lg/a/b0$a;->b:Ljava/lang/String;

    .line 18
    iput-boolean v2, v0, Lg/a/b0$a;->f:Z

    .line 19
    invoke-virtual {v0}, Lg/a/b0$a;->a()Lg/a/b0;

    move-result-object v0

    .line 20
    invoke-static {v0}, Lg/a/x;->T(Lg/a/b0;)V

    .line 21
    invoke-static {}, Lg/a/x;->P()Lg/a/x;

    move-result-object v0

    invoke-static {v0}, Lf/e/a/k/g;->d(Lg/a/x;)Lf/e/a/k/g;

    .line 22
    invoke-virtual {p0, v3}, Lcom/comeback/data/App;->c(Ljava/lang/String;)V

    return-void

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A non-empty filename must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
