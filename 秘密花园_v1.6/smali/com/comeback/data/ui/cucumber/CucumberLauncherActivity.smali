.class public Lcom/comeback/data/ui/cucumber/CucumberLauncherActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "CucumberLauncherActivity.java"


# static fields
.field public static b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static l(Lcom/comeback/data/ui/cucumber/CucumberLauncherActivity;Lcom/comeback/data/ui/cucumber/bean/DoMainInfo;)V
    .locals 9

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    .line 1
    :try_start_0
    const-class v1, Lcom/comeback/data/ui/cucumber/fragment/MineFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object v2

    .line 3
    iget-object v2, v2, Lf/e/a/k/j;->a:Landroid/content/SharedPreferences;

    const/4 v3, -0x1

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v3, :cond_0

    const/4 v1, 0x0

    :cond_0
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "XxYXFBhJFhwSFl1RTkQACkcBDAlFBFZBGA=="

    .line 4
    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "XxYXFBhJFhwSFl1fQEQCHFxQTRMEAVI="

    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const-string v7, "XxYXFBhJFhwSA0JJEgMCA1IBAg0YG0xaXQVbCg=="

    .line 5
    invoke-static {v7}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v2

    const-string v7, "XxYXFBhJFhwSA0JJThJQDVpQTQcEHg=="

    invoke-static {v7}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v7, "XxYXFBhJFhwSA0JJEhkaAl0LAh0CXVpcHg=="

    invoke-static {v7}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v3

    new-array v7, v6, [Ljava/lang/String;

    const-string v8, "XxYXFBhJFhwADk0RSkQQDlwLEQtFGldVHA=="

    .line 6
    invoke-static {v8}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    new-array v3, v3, [Ljava/lang/String;

    const-string v8, "XxYXFBhJFhwUEAJJGgsKD0IWCgFFBFZBGEldCh8="

    .line 7
    invoke-static {v8}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v2

    const-string v8, "XxYXFBhJFhwUEAJJFlNTEltMFAsZGBZaHgE="

    invoke-static {v8}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v6

    if-eqz p1, :cond_5

    .line 8
    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/DoMainInfo;->getData()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/DoMainInfo;->getData()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_5

    .line 9
    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/DoMainInfo;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/cucumber/bean/DoMainInfo$DataBean;

    .line 10
    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/DoMainInfo$DataBean;->getBackUpDomain()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/DoMainInfo$DataBean;->getBackUpDomain()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_1

    .line 11
    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/DoMainInfo$DataBean;->getBackUpDomain()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0, v6, v4}, Lcom/comeback/data/ui/cucumber/CucumberLauncherActivity;->m(Ljava/util/List;[Ljava/lang/String;)V

    .line 12
    :cond_1
    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/DoMainInfo$DataBean;->getViewVideo2()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/DoMainInfo$DataBean;->getViewVideo2()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_2

    .line 13
    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/DoMainInfo$DataBean;->getViewVideoM3u8()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0, v6, v5}, Lcom/comeback/data/ui/cucumber/CucumberLauncherActivity;->m(Ljava/util/List;[Ljava/lang/String;)V

    .line 14
    :cond_2
    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/DoMainInfo$DataBean;->getVideoCover()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/DoMainInfo$DataBean;->getVideoCover()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_3

    .line 15
    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/DoMainInfo$DataBean;->getVideoCoverAddr2()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0, v6, v7}, Lcom/comeback/data/ui/cucumber/CucumberLauncherActivity;->m(Ljava/util/List;[Ljava/lang/String;)V

    .line 16
    :cond_3
    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/DoMainInfo$DataBean;->getViewPicture()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/DoMainInfo$DataBean;->getViewPicture()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_4

    .line 17
    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/DoMainInfo$DataBean;->getViewPicture()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0, v6, v3}, Lcom/comeback/data/ui/cucumber/CucumberLauncherActivity;->m(Ljava/util/List;[Ljava/lang/String;)V

    .line 18
    :cond_4
    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/DoMainInfo$DataBean;->getVideoCover()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/DoMainInfo$DataBean;->getVideoCover()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_5

    .line 19
    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/DoMainInfo$DataBean;->getVideoCover()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sput-object p1, Lf/e/a/k/b;->P:Ljava/lang/String;

    .line 20
    :cond_5
    rem-int/lit8 p1, v1, 0xa

    invoke-virtual {p0, v4, p1}, Lcom/comeback/data/ui/cucumber/CucumberLauncherActivity;->n([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lf/e/a/k/b;->M:Ljava/lang/String;

    .line 21
    div-int/lit8 p1, v1, 0xa

    rem-int/lit8 p1, p1, 0xa

    invoke-virtual {p0, v5, p1}, Lcom/comeback/data/ui/cucumber/CucumberLauncherActivity;->n([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lf/e/a/k/b;->N:Ljava/lang/String;

    .line 22
    div-int/lit8 p1, v1, 0x64

    rem-int/lit8 p1, p1, 0xa

    invoke-virtual {p0, v7, p1}, Lcom/comeback/data/ui/cucumber/CucumberLauncherActivity;->n([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lf/e/a/k/b;->O:Ljava/lang/String;

    .line 23
    div-int/lit16 v1, v1, 0x3e8

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {p0, v3, v1}, Lcom/comeback/data/ui/cucumber/CucumberLauncherActivity;->n([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lf/e/a/k/b;->Q:Ljava/lang/String;

    .line 24
    const-class p1, Lf/e/a/j/g/h/c;

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :try_start_1
    sput-object v0, Lf/e/a/j/g/h/c;->b:Lf/e/a/j/g/h/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    :try_start_2
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 28
    :goto_0
    sget-boolean p1, Lcom/comeback/data/ui/cucumber/CucumberLauncherActivity;->b:Z

    if-eqz p1, :cond_6

    .line 29
    invoke-static {p0}, Lcom/comeback/data/ui/cucumber/CucumberShortActivity;->n(Landroid/content/Context;)V

    goto :goto_1

    .line 30
    :cond_6
    invoke-static {p0}, Lcom/comeback/data/ui/cucumber/CucumberActivity;->l(Landroid/content/Context;)V

    .line 31
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 32
    :cond_7
    throw v0
.end method

.method public static o(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Lcom/comeback/data/ui/cucumber/CucumberLauncherActivity;->b:Z

    .line 2
    const-class v0, Lcom/comeback/data/ui/cucumber/CucumberLauncherActivity;

    invoke-static {p0, v0}, Lf/b/a/a/a;->u(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method

.method public static p(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lcom/comeback/data/ui/cucumber/CucumberLauncherActivity;->b:Z

    .line 2
    const-class v0, Lcom/comeback/data/ui/cucumber/CucumberLauncherActivity;

    invoke-static {p0, v0}, Lf/b/a/a/a;->u(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    const v0, 0x7f0c003d

    return v0
.end method

.method public e()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/base/BaseActivity;->g()V

    .line 2
    const-class v0, Lcom/comeback/data/ui/cucumber/fragment/MineFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object v1

    .line 4
    iget-object v1, v1, Lf/e/a/k/j;->a:Landroid/content/SharedPreferences;

    const/4 v2, -0x1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "XxYXFBhJFhwSFl1RTkQACkcBDAlFBFZBGA=="

    .line 5
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "XxYXFBhJFhwSFl1fQEQCHFxQTRMEAVI="

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 6
    rem-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v2, v0}, Lcom/comeback/data/ui/cucumber/CucumberLauncherActivity;->n([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lf/e/a/k/b;->M:Ljava/lang/String;

    .line 7
    invoke-static {}, Lf/e/a/j/g/h/c;->a()Lf/e/a/j/g/h/a;

    move-result-object v0

    invoke-interface {v0}, Lf/e/a/j/g/h/a;->c()Lm/e;

    move-result-object v0

    .line 8
    new-instance v1, Lcom/comeback/data/ui/cucumber/CucumberLauncherActivity$a;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/cucumber/CucumberLauncherActivity$a;-><init>(Lcom/comeback/data/ui/cucumber/CucumberLauncherActivity;)V

    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void
.end method

.method public final m(Ljava/util/List;[Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    array-length v1, p2

    if-le v0, v1, :cond_1

    array-length v0, p2

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public final n([Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 1
    array-length v0, p1

    if-eqz v0, :cond_3

    if-gez p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    array-length v0, p1

    if-lt p2, v0, :cond_1

    .line 3
    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    .line 4
    :cond_1
    aget-object v0, p1, p2

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 p2, p2, -0x1

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/comeback/data/ui/cucumber/CucumberLauncherActivity;->n([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0

    :cond_3
    :goto_0
    const-string p1, ""

    return-object p1
.end method
