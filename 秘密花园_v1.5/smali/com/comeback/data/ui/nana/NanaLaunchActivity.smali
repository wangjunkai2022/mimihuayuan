.class public Lcom/comeback/data/ui/nana/NanaLaunchActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "NanaLaunchActivity.java"


# instance fields
.field public b:Z

.field public c:Li/b0;

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Li/f;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/comeback/data/ui/nana/NanaLaunchActivity;->d:Ljava/util/ArrayList;

    return-void
.end method

.method public static l(Lcom/comeback/data/ui/nana/NanaLaunchActivity;Ll/g0;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p1, Ll/g0;->b:Ljava/lang/Object;

    .line 2
    check-cast p1, Li/i0;

    invoke-virtual {p1}, Li/i0;->H()Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v0, Lf/i/b/j;

    invoke-direct {v0}, Lf/i/b/j;-><init>()V

    const-class v1, Lcom/comeback/data/ui/nana/bean/AuthBean;

    invoke-virtual {v0, p1, v1}, Lf/i/b/j;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/nana/bean/AuthBean;

    .line 4
    invoke-virtual {p1}, Lcom/comeback/data/ui/nana/bean/AuthBean;->getResponse()Lcom/comeback/data/ui/nana/bean/AuthBean$ResponseEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/nana/bean/AuthBean$ResponseEntity;->getCode()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {}, Lf/e/a/j/h0/m/e;->a()Lf/e/a/j/h0/m/b;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lf/e/a/j/h0/m/b;->h(Ljava/lang/String;Ljava/lang/String;)Ll/d;

    move-result-object p1

    .line 6
    new-instance p2, Lf/e/a/j/h0/e;

    invoke-direct {p2, p0}, Lf/e/a/j/h0/e;-><init>(Lcom/comeback/data/ui/nana/NanaLaunchActivity;)V

    invoke-interface {p1, p2}, Ll/d;->X(Ll/f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :cond_0
    const/4 p0, 0x0

    .line 8
    throw p0
.end method

.method public static m(Lcom/comeback/data/ui/nana/NanaLaunchActivity;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    invoke-static {}, Lf/e/a/j/h0/m/e;->a()Lf/e/a/j/h0/m/b;

    move-result-object v0

    const-string v1, "XxYXFBhJFhwDEVUJVhoTD14MBEoFFk0cBVcbARkZFwpCFgs="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lf/e/a/j/h0/m/b;->c(Ljava/lang/String;)Ll/d;

    move-result-object v0

    .line 2
    new-instance v1, Lf/e/a/j/h0/d;

    invoke-direct {v1, p0}, Lf/e/a/j/h0/d;-><init>(Lcom/comeback/data/ui/nana/NanaLaunchActivity;)V

    invoke-interface {v0, v1}, Ll/d;->X(Ll/f;)V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 3
    throw p0
.end method

.method public static n(Lcom/comeback/data/ui/nana/NanaLaunchActivity;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/nana/NanaLaunchActivity;->e:Z

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    sget-object v0, Lf/e/a/j/h0/m/d;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    sget-object v0, Lf/e/a/j/h0/m/d;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lf/e/a/j/h0/m/d;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_4

    .line 3
    iget-boolean v0, p0, Lcom/comeback/data/ui/nana/NanaLaunchActivity;->b:Z

    if-nez v0, :cond_3

    goto :goto_2

    .line 4
    :cond_3
    iput-boolean v1, p0, Lcom/comeback/data/ui/nana/NanaLaunchActivity;->e:Z

    .line 5
    const-class v0, Lf/e/a/j/h0/m/e;

    monitor-enter v0

    const/4 v1, 0x0

    .line 6
    :try_start_0
    sput-object v1, Lf/e/a/j/h0/m/e;->b:Lf/e/a/j/h0/m/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit v0

    .line 8
    invoke-static {p0}, Lcom/comeback/data/ui/nana/MainActivity;->m(Landroid/content/Context;)V

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v0

    throw p0

    :cond_4
    :goto_2
    return-void
.end method

.method public static o(Lcom/comeback/data/ui/nana/NanaLaunchActivity;Ll/g0;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p1, Ll/g0;->b:Ljava/lang/Object;

    .line 2
    check-cast p1, Li/i0;

    invoke-virtual {p1}, Li/i0;->H()Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v0, Lf/i/b/j;

    invoke-direct {v0}, Lf/i/b/j;-><init>()V

    const-class v1, Lcom/comeback/data/ui/nana/bean/HostInfo;

    invoke-virtual {v0, p1, v1}, Lf/i/b/j;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/nana/bean/HostInfo;

    .line 4
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/nana/NanaLaunchActivity;->r(Lcom/comeback/data/ui/nana/bean/HostInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :cond_0
    const/4 p0, 0x0

    .line 6
    throw p0
.end method

.method public static p(Lcom/comeback/data/ui/nana/NanaLaunchActivity;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    invoke-static {}, Lf/e/a/j/h0/m/e;->a()Lf/e/a/j/h0/m/b;

    move-result-object v0

    const-string v1, "XxYXFBhJFhwDE1YLEQlNH1YFBhBFEFccGwlHEycaFAoZFhsQ"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lf/e/a/j/h0/m/b;->c(Ljava/lang/String;)Ll/d;

    move-result-object v0

    .line 2
    new-instance v1, Lf/e/a/j/h0/g;

    invoke-direct {v1, p0}, Lf/e/a/j/h0/g;-><init>(Lcom/comeback/data/ui/nana/NanaLaunchActivity;)V

    invoke-interface {v0, v1}, Ll/d;->X(Ll/f;)V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 3
    throw p0
.end method

.method public static q(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-class v0, Lcom/comeback/data/ui/nana/NanaLaunchActivity;

    invoke-static {p0, v0}, Lf/b/a/a/a;->u(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    const v0, 0x7f0c00ab

    return v0
.end method

.method public e()V
    .locals 4

    .line 1
    sget-object v0, Lf/e/a/k/b;->U:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lf/e/a/k/b;->U:Ljava/lang/String;

    sput-object v0, Lf/e/a/j/h0/m/d;->a:Ljava/lang/String;

    .line 3
    :cond_0
    new-instance v0, Li/b0$a;

    invoke-direct {v0}, Li/b0$a;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x19

    .line 4
    invoke-virtual {v0, v2, v3, v1}, Li/b0$a;->c(JLjava/util/concurrent/TimeUnit;)Li/b0$a;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 5
    invoke-virtual {v0, v2, v3, v1}, Li/b0$a;->d(JLjava/util/concurrent/TimeUnit;)Li/b0$a;

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 6
    iput-object v1, v0, Li/b0$a;->m:Ljava/net/Proxy;

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Li/b0$a;->f:Z

    .line 8
    new-instance v1, Li/b0;

    invoke-direct {v1, v0}, Li/b0;-><init>(Li/b0$a;)V

    .line 9
    iput-object v1, p0, Lcom/comeback/data/ui/nana/NanaLaunchActivity;->c:Li/b0;

    .line 10
    invoke-static {}, Lf/e/a/j/h0/m/e;->a()Lf/e/a/j/h0/m/b;

    move-result-object v0

    const-string v1, "XxYXFBhJFhwDEVUfVgIaE0cDGkoIHFQcBVcbARkZFwpCFgs="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lf/e/a/j/h0/m/b;->c(Ljava/lang/String;)Ll/d;

    move-result-object v0

    .line 11
    new-instance v1, Lf/e/a/j/h0/c;

    invoke-direct {v1, p0}, Lf/e/a/j/h0/c;-><init>(Lcom/comeback/data/ui/nana/NanaLaunchActivity;)V

    invoke-interface {v0, v1}, Ll/d;->X(Ll/f;)V

    .line 12
    invoke-static {}, Lf/e/a/j/h0/m/e;->a()Lf/e/a/j/h0/m/b;

    move-result-object v0

    const-string v1, "XxYXFBhJFhwDE1YLEQlNEV8HDQMNFldUGANeDlYJDURfDRAQNANOUl0STBM="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lf/e/a/j/h0/m/b;->c(Ljava/lang/String;)Ll/d;

    move-result-object v0

    .line 13
    new-instance v1, Lf/e/a/j/h0/f;

    invoke-direct {v1, p0}, Lf/e/a/j/h0/f;-><init>(Lcom/comeback/data/ui/nana/NanaLaunchActivity;)V

    invoke-interface {v0, v1}, Ll/d;->X(Ll/f;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BaseActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/nana/NanaLaunchActivity;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li/f;

    .line 4
    invoke-interface {v1}, Li/f;->cancel()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final r(Lcom/comeback/data/ui/nana/bean/HostInfo;)V
    .locals 5

    const-string v0, "VA4MFw4="

    const-string v1, "dA0NCg4QTVocCA=="

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/comeback/data/ui/nana/bean/HostInfo;->getApi_pwa()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/comeback/data/ui/nana/bean/HostInfo;->getApi_pwa()Ljava/util/List;

    move-result-object v2

    .line 3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/comeback/data/ui/nana/bean/HostInfo$ApiEntity;

    .line 4
    new-instance v4, Li/e0$a;

    invoke-direct {v4}, Li/e0$a;-><init>()V

    .line 5
    invoke-virtual {v3}, Lcom/comeback/data/ui/nana/bean/HostInfo$ApiEntity;->getSpeedUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Li/e0$a;->i(Ljava/lang/String;)Li/e0$a;

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v4, v3}, Lf/b/a/a/a;->s(Ljava/lang/String;Li/e0$a;Ljava/lang/String;)Li/e0;

    move-result-object v3

    .line 6
    iget-object v4, p0, Lcom/comeback/data/ui/nana/NanaLaunchActivity;->c:Li/b0;

    invoke-virtual {v4, v3}, Li/b0;->a(Li/e0;)Li/f;

    move-result-object v3

    .line 7
    iget-object v4, p0, Lcom/comeback/data/ui/nana/NanaLaunchActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v4, Lf/e/a/j/h0/h;

    invoke-direct {v4, p0}, Lf/e/a/j/h0/h;-><init>(Lcom/comeback/data/ui/nana/NanaLaunchActivity;)V

    check-cast v3, Li/d0;

    invoke-virtual {v3, v4}, Li/d0;->W(Li/g;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/comeback/data/ui/nana/bean/HostInfo;->getImg_pwa()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/comeback/data/ui/nana/bean/HostInfo;->getImg_pwa()Ljava/util/List;

    move-result-object v2

    .line 11
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/comeback/data/ui/nana/bean/HostInfo$ApiEntity;

    .line 12
    new-instance v4, Li/e0$a;

    invoke-direct {v4}, Li/e0$a;-><init>()V

    .line 13
    invoke-virtual {v3}, Lcom/comeback/data/ui/nana/bean/HostInfo$ApiEntity;->getSpeedUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Li/e0$a;->i(Ljava/lang/String;)Li/e0$a;

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v4, v3}, Lf/b/a/a/a;->s(Ljava/lang/String;Li/e0$a;Ljava/lang/String;)Li/e0;

    move-result-object v3

    .line 14
    iget-object v4, p0, Lcom/comeback/data/ui/nana/NanaLaunchActivity;->c:Li/b0;

    invoke-virtual {v4, v3}, Li/b0;->a(Li/e0;)Li/f;

    move-result-object v3

    .line 15
    iget-object v4, p0, Lcom/comeback/data/ui/nana/NanaLaunchActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance v4, Lf/e/a/j/h0/i;

    invoke-direct {v4, p0}, Lf/e/a/j/h0/i;-><init>(Lcom/comeback/data/ui/nana/NanaLaunchActivity;)V

    check-cast v3, Li/d0;

    invoke-virtual {v3, v4}, Li/d0;->W(Li/g;)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 17
    invoke-virtual {p1}, Lcom/comeback/data/ui/nana/bean/HostInfo;->getStream_pwa()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 18
    invoke-virtual {p1}, Lcom/comeback/data/ui/nana/bean/HostInfo;->getStream_pwa()Ljava/util/List;

    move-result-object p1

    .line 19
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/comeback/data/ui/nana/bean/HostInfo$ApiEntity;

    .line 20
    new-instance v3, Li/e0$a;

    invoke-direct {v3}, Li/e0$a;-><init>()V

    .line 21
    invoke-virtual {v2}, Lcom/comeback/data/ui/nana/bean/HostInfo$ApiEntity;->getSpeedUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Li/e0$a;->i(Ljava/lang/String;)Li/e0$a;

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v3, v2}, Lf/b/a/a/a;->s(Ljava/lang/String;Li/e0$a;Ljava/lang/String;)Li/e0;

    move-result-object v2

    .line 22
    iget-object v3, p0, Lcom/comeback/data/ui/nana/NanaLaunchActivity;->c:Li/b0;

    invoke-virtual {v3, v2}, Li/b0;->a(Li/e0;)Li/f;

    move-result-object v2

    .line 23
    iget-object v3, p0, Lcom/comeback/data/ui/nana/NanaLaunchActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    new-instance v3, Lf/e/a/j/h0/j;

    invoke-direct {v3, p0}, Lf/e/a/j/h0/j;-><init>(Lcom/comeback/data/ui/nana/NanaLaunchActivity;)V

    check-cast v2, Li/d0;

    invoke-virtual {v2, v3}, Li/d0;->W(Li/g;)V

    goto :goto_2

    :cond_2
    return-void
.end method
