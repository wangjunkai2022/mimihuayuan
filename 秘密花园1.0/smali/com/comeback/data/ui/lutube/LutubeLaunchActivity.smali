.class public Lcom/comeback/data/ui/lutube/LutubeLaunchActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "LutubeLaunchActivity.java"


# instance fields
.field public b:Li/b0;

.field public c:Z

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/comeback/data/ui/lutube/LutubeLaunchActivity;->c:Z

    .line 3
    iput v0, p0, Lcom/comeback/data/ui/lutube/LutubeLaunchActivity;->d:I

    return-void
.end method

.method public static l(Lcom/comeback/data/ui/lutube/LutubeLaunchActivity;Lcom/comeback/data/ui/lutube/bean/HostInfo;)V
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/comeback/data/ui/lutube/LutubeLaunchActivity;->c:Z

    .line 2
    new-instance v0, Lf/e/a/j/a0/g;

    invoke-direct {v0, p0}, Lf/e/a/j/a0/g;-><init>(Lcom/comeback/data/ui/lutube/LutubeLaunchActivity;)V

    .line 3
    new-instance v1, Lf/e/a/j/a0/h;

    invoke-direct {v1, p0}, Lf/e/a/j/a0/h;-><init>(Lcom/comeback/data/ui/lutube/LutubeLaunchActivity;)V

    .line 4
    new-instance v2, Lf/e/a/j/a0/i;

    invoke-direct {v2, p0}, Lf/e/a/j/a0/i;-><init>(Lcom/comeback/data/ui/lutube/LutubeLaunchActivity;)V

    .line 5
    invoke-virtual {p1}, Lcom/comeback/data/ui/lutube/bean/HostInfo;->getApis()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lcom/comeback/data/ui/lutube/LutubeLaunchActivity;->p(Ljava/util/List;Li/g;)V

    .line 6
    invoke-virtual {p1}, Lcom/comeback/data/ui/lutube/bean/HostInfo;->getStreams()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/ui/lutube/LutubeLaunchActivity;->p(Ljava/util/List;Li/g;)V

    .line 7
    invoke-virtual {p1}, Lcom/comeback/data/ui/lutube/bean/HostInfo;->getImgs()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/comeback/data/ui/lutube/LutubeLaunchActivity;->p(Ljava/util/List;Li/g;)V

    return-void
.end method

.method public static synthetic m(Lcom/comeback/data/ui/lutube/LutubeLaunchActivity;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/lutube/LutubeLaunchActivity;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/comeback/data/ui/lutube/LutubeLaunchActivity;->d:I

    return v0
.end method

.method public static n(Lcom/comeback/data/ui/lutube/LutubeLaunchActivity;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/lutube/LutubeLaunchActivity;->d:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    const-class v0, Lf/e/a/j/a0/k/d;

    monitor-enter v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    sput-object v1, Lf/e/a/j/a0/k/d;->b:Lf/e/a/j/a0/k/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lf/e/a/j/a0/a;

    invoke-direct {v1, p0}, Lf/e/a/j/a0/a;-><init>(Lcom/comeback/data/ui/lutube/LutubeLaunchActivity;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 6
    monitor-exit v0

    throw p0
.end method

.method public static q(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-class v0, Lcom/comeback/data/ui/lutube/LutubeLaunchActivity;

    invoke-static {p0, v0}, Lf/b/a/a/a;->u(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    const v0, 0x7f0c0084

    return v0
.end method

.method public e()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/base/BaseActivity;->g()V

    .line 2
    new-instance v0, Li/b0$a;

    invoke-direct {v0}, Li/b0$a;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x19

    .line 3
    invoke-virtual {v0, v2, v3, v1}, Li/b0$a;->c(JLjava/util/concurrent/TimeUnit;)Li/b0$a;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    invoke-virtual {v0, v2, v3, v1}, Li/b0$a;->d(JLjava/util/concurrent/TimeUnit;)Li/b0$a;

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, v0, Li/b0$a;->h:Z

    .line 6
    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 7
    iput-object v2, v0, Li/b0$a;->m:Ljava/net/Proxy;

    .line 8
    iput-boolean v1, v0, Li/b0$a;->f:Z

    .line 9
    new-instance v1, Li/b0;

    invoke-direct {v1, v0}, Li/b0;-><init>(Li/b0$a;)V

    .line 10
    iput-object v1, p0, Lcom/comeback/data/ui/lutube/LutubeLaunchActivity;->b:Li/b0;

    .line 11
    invoke-static {}, Lf/e/a/j/a0/k/d;->a()Lf/e/a/j/a0/k/b;

    move-result-object v0

    invoke-interface {v0}, Lf/e/a/j/a0/k/b;->j()Lm/e;

    move-result-object v0

    .line 12
    invoke-static {}, Lf/e/a/j/a0/k/d;->a()Lf/e/a/j/a0/k/b;

    move-result-object v1

    invoke-interface {v1}, Lf/e/a/j/a0/k/b;->d()Lm/e;

    move-result-object v1

    .line 13
    invoke-static {}, Lf/e/a/j/a0/k/d;->a()Lf/e/a/j/a0/k/b;

    move-result-object v2

    invoke-interface {v2}, Lf/e/a/j/a0/k/b;->e()Lm/e;

    move-result-object v2

    .line 14
    new-instance v3, Lf/e/a/j/a0/d;

    invoke-direct {v3, p0}, Lf/e/a/j/a0/d;-><init>(Lcom/comeback/data/ui/lutube/LutubeLaunchActivity;)V

    .line 15
    new-instance v4, Lf/e/a/j/a0/e;

    invoke-direct {v4, p0}, Lf/e/a/j/a0/e;-><init>(Lcom/comeback/data/ui/lutube/LutubeLaunchActivity;)V

    .line 16
    new-instance v5, Lf/e/a/j/a0/f;

    invoke-direct {v5, p0}, Lf/e/a/j/a0/f;-><init>(Lcom/comeback/data/ui/lutube/LutubeLaunchActivity;)V

    .line 17
    invoke-virtual {p0, v0, v3}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    .line 18
    invoke-virtual {p0, v1, v4}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    .line 19
    invoke-virtual {p0, v2, v5}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void
.end method

.method public synthetic o()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/comeback/data/ui/lutube/MainActivity;->m(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final p(Ljava/util/List;Li/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Li/g;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    new-instance v1, Li/e0$a;

    invoke-direct {v1}, Li/e0$a;-><init>()V

    invoke-static {v0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "GBETAQ4XF1sHC1g="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {v1, v0}, Li/e0$a;->i(Ljava/lang/String;)Li/e0$a;

    const-string v0, "dA0NCg4QTVocCA=="

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "VA4MFw4="

    invoke-static {v2, v1, v0}, Lf/b/a/a/a;->s(Ljava/lang/String;Li/e0$a;Ljava/lang/String;)Li/e0;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/comeback/data/ui/lutube/LutubeLaunchActivity;->b:Li/b0;

    invoke-virtual {v1, v0}, Li/b0;->a(Li/e0;)Li/f;

    move-result-object v0

    .line 5
    check-cast v0, Li/d0;

    invoke-virtual {v0, p2}, Li/d0;->W(Li/g;)V

    goto :goto_0

    :cond_0
    return-void
.end method
