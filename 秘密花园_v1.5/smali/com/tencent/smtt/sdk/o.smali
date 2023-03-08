.class public Lcom/tencent/smtt/sdk/o;
.super Ljava/lang/Object;
.source "TbsVideoPlayer.java"


# static fields
.field public static e:Lcom/tencent/smtt/sdk/o;


# instance fields
.field public a:Lcom/tencent/smtt/sdk/q;

.field public b:Landroid/content/Context;

.field public c:Lf/k/a/a/a/a;

.field public d:Lcom/tencent/tbs/video/interfaces/IUserStateChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/tencent/smtt/sdk/o;->a:Lcom/tencent/smtt/sdk/q;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/smtt/sdk/o;->b:Landroid/content/Context;

    .line 4
    new-instance p1, Lcom/tencent/smtt/sdk/q;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/o;->b:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/tencent/smtt/sdk/q;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/tencent/smtt/sdk/o;->a:Lcom/tencent/smtt/sdk/q;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/o;
    .locals 2

    const-class v0, Lcom/tencent/smtt/sdk/o;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/tencent/smtt/sdk/o;->e:Lcom/tencent/smtt/sdk/o;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/tencent/smtt/sdk/o;

    invoke-direct {v1, p0}, Lcom/tencent/smtt/sdk/o;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tencent/smtt/sdk/o;->e:Lcom/tencent/smtt/sdk/o;

    .line 3
    :cond_0
    sget-object p0, Lcom/tencent/smtt/sdk/o;->e:Lcom/tencent/smtt/sdk/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/tencent/smtt/sdk/o;->c:Lf/k/a/a/a/a;

    if-eqz v0, :cond_0

    .line 19
    invoke-interface {v0, p1, p2, p3}, Lf/k/a/a/a/a;->b(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/app/Activity;I)V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/tencent/smtt/sdk/o;->a:Lcom/tencent/smtt/sdk/q;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/smtt/sdk/q;->a(Landroid/app/Activity;I)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/tencent/smtt/sdk/o;->a:Lcom/tencent/smtt/sdk/q;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/q;->a()V

    .line 17
    iget-object v0, p0, Lcom/tencent/smtt/sdk/o;->a:Lcom/tencent/smtt/sdk/q;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/q;->b()Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;Lf/k/a/a/a/a;)Z
    .locals 3

    if-nez p2, :cond_0

    .line 4
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 5
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "videoUrl"

    .line 6
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x1

    const-string v0, "callMode"

    if-eqz p3, :cond_3

    .line 7
    iget-object v1, p0, Lcom/tencent/smtt/sdk/o;->a:Lcom/tencent/smtt/sdk/q;

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/q;->a()V

    .line 8
    iget-object v1, p0, Lcom/tencent/smtt/sdk/o;->a:Lcom/tencent/smtt/sdk/q;

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/q;->b()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 p1, 0x0

    return p1

    .line 9
    :cond_2
    iput-object p3, p0, Lcom/tencent/smtt/sdk/o;->c:Lf/k/a/a/a/a;

    .line 10
    new-instance v1, Lcom/tencent/smtt/sdk/o$1;

    invoke-direct {v1, p0}, Lcom/tencent/smtt/sdk/o$1;-><init>(Lcom/tencent/smtt/sdk/o;)V

    iput-object v1, p0, Lcom/tencent/smtt/sdk/o;->d:Lcom/tencent/tbs/video/interfaces/IUserStateChangedListener;

    .line 11
    iget-object v2, p0, Lcom/tencent/smtt/sdk/o;->c:Lf/k/a/a/a/a;

    invoke-interface {v2, v1}, Lf/k/a/a/a/a;->a(Lcom/tencent/tbs/video/interfaces/IUserStateChangedListener;)V

    const/4 v1, 0x3

    .line 12
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 14
    :goto_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/o;->a:Lcom/tencent/smtt/sdk/q;

    if-nez p3, :cond_4

    const/4 p3, 0x0

    goto :goto_1

    :cond_4
    move-object p3, p0

    :goto_1
    invoke-virtual {v0, p2, p3}, Lcom/tencent/smtt/sdk/q;->a(Landroid/os/Bundle;Ljava/lang/Object;)V

    return p1
.end method
