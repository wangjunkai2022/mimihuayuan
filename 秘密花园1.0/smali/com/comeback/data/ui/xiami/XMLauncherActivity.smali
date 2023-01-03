.class public Lcom/comeback/data/ui/xiami/XMLauncherActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "XMLauncherActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static l(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-class v0, Lcom/comeback/data/ui/xiami/XMLauncherActivity;

    invoke-static {p0, v0}, Lf/b/a/a/a;->u(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    const v0, 0x7f0c00c9

    return v0
.end method

.method public e()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/base/BaseActivity;->g()V

    .line 2
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    .line 3
    sget-object v1, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    .line 4
    invoke-virtual {v1}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "TwsCCQJdTUsH"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 5
    new-instance v1, Lf/i/b/j;

    invoke-direct {v1}, Lf/i/b/j;-><init>()V

    const-class v2, Lcom/comeback/data/ui/xiami/bean/Category;

    .line 6
    invoke-virtual {v1, v0}, Lf/i/b/j;->h(Ljava/io/Reader;)Lf/i/b/e0/a;

    move-result-object v0

    .line 7
    invoke-virtual {v1, v0, v2}, Lf/i/b/j;->c(Lf/i/b/e0/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 8
    invoke-static {v1, v0}, Lf/i/b/j;->a(Ljava/lang/Object;Lf/i/b/e0/a;)V

    .line 9
    invoke-static {v2}, Lf/i/b/c0/u;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    check-cast v0, Lcom/comeback/data/ui/xiami/bean/Category;

    sput-object v0, Lcom/comeback/data/ui/xiami/MainActivity;->d:Lcom/comeback/data/ui/xiami/bean/Category;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    :goto_0
    invoke-static {p0}, Lcom/comeback/data/ui/xiami/MainActivity;->m(Landroid/content/Context;)V

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
