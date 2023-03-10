.class public Lm/l/b/b$a;
.super Lm/g$a;
.source "LooperScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/l/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Lm/l/a/b;

.field public volatile c:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lm/g$a;-><init>()V

    .line 2
    iput-object p1, p0, Lm/l/b/b$a;->a:Landroid/os/Handler;

    .line 3
    sget-object p1, Lm/l/a/a;->b:Lm/l/a/a;

    .line 4
    invoke-virtual {p1}, Lm/l/a/a;->a()Lm/l/a/b;

    move-result-object p1

    iput-object p1, p0, Lm/l/b/b$a;->b:Lm/l/a/b;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lm/l/b/b$a;->c:Z

    return v0
.end method

.method public b(Lm/n/a;)Lm/k;
    .locals 5

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    iget-boolean v1, p0, Lm/l/b/b$a;->c:Z

    if-eqz v1, :cond_0

    .line 3
    sget-object p1, Lm/s/b;->a:Lm/s/b$a;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lm/l/b/b$a;->b:Lm/l/a/b;

    if-eqz v1, :cond_2

    .line 5
    new-instance v1, Lm/l/b/b$b;

    iget-object v2, p0, Lm/l/b/b$a;->a:Landroid/os/Handler;

    invoke-direct {v1, p1, v2}, Lm/l/b/b$b;-><init>(Lm/n/a;Landroid/os/Handler;)V

    .line 6
    iget-object p1, p0, Lm/l/b/b$a;->a:Landroid/os/Handler;

    invoke-static {p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p1

    .line 7
    iput-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8
    iget-object v2, p0, Lm/l/b/b$a;->a:Landroid/os/Handler;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-virtual {v2, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 9
    iget-boolean p1, p0, Lm/l/b/b$a;->c:Z

    if-eqz p1, :cond_1

    .line 10
    iget-object p1, p0, Lm/l/b/b$a;->a:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    sget-object p1, Lm/s/b;->a:Lm/s/b$a;

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    return-object p1

    :cond_2
    const/4 p1, 0x0

    .line 12
    throw p1
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lm/l/b/b$a;->c:Z

    .line 2
    iget-object v0, p0, Lm/l/b/b$a;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
