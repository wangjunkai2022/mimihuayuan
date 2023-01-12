.class public Lf/i/a/a/e1/s$e;
.super Ljava/lang/Thread;
.source "DownloadManager.java"

# interfaces
.implements Lf/i/a/a/e1/v$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/e1/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final a:Lf/i/a/a/e1/u;

.field public final b:Lf/i/a/a/e1/v;

.field public final c:Lf/i/a/a/e1/t;

.field public final d:Z

.field public final e:I

.field public volatile f:Lf/i/a/a/e1/s$c;

.field public volatile g:Z

.field public h:Ljava/lang/Throwable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public i:J


# direct methods
.method public constructor <init>(Lf/i/a/a/e1/u;Lf/i/a/a/e1/v;Lf/i/a/a/e1/t;ZILf/i/a/a/e1/s$c;Lf/i/a/a/e1/s$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/e1/s$e;->a:Lf/i/a/a/e1/u;

    .line 3
    iput-object p2, p0, Lf/i/a/a/e1/s$e;->b:Lf/i/a/a/e1/v;

    .line 4
    iput-object p3, p0, Lf/i/a/a/e1/s$e;->c:Lf/i/a/a/e1/t;

    .line 5
    iput-boolean p4, p0, Lf/i/a/a/e1/s$e;->d:Z

    .line 6
    iput p5, p0, Lf/i/a/a/e1/s$e;->e:I

    .line 7
    iput-object p6, p0, Lf/i/a/a/e1/s$e;->f:Lf/i/a/a/e1/s$c;

    const-wide/16 p1, -0x1

    .line 8
    iput-wide p1, p0, Lf/i/a/a/e1/s$e;->i:J

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lf/i/a/a/e1/s$e;->f:Lf/i/a/a/e1/s$c;

    .line 2
    :cond_0
    iget-boolean p1, p0, Lf/i/a/a/e1/s$e;->g:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lf/i/a/a/e1/s$e;->g:Z

    .line 4
    iget-object p1, p0, Lf/i/a/a/e1/s$e;->b:Lf/i/a/a/e1/v;

    invoke-interface {p1}, Lf/i/a/a/e1/v;->cancel()V

    .line 5
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    return-void
.end method

.method public b(JJF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/e1/s$e;->c:Lf/i/a/a/e1/t;

    iput-wide p3, v0, Lf/i/a/a/e1/t;->a:J

    .line 2
    iput p5, v0, Lf/i/a/a/e1/t;->b:F

    .line 3
    iget-wide p3, p0, Lf/i/a/a/e1/s$e;->i:J

    cmp-long p5, p1, p3

    if-eqz p5, :cond_0

    .line 4
    iput-wide p1, p0, Lf/i/a/a/e1/s$e;->i:J

    .line 5
    iget-object p1, p0, Lf/i/a/a/e1/s$e;->f:Lf/i/a/a/e1/s$c;

    if-eqz p1, :cond_0

    const/16 p2, 0xa

    .line 6
    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 8

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lf/i/a/a/e1/s$e;->d:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/i/a/a/e1/s$e;->b:Lf/i/a/a/e1/v;

    invoke-interface {v0}, Lf/i/a/a/e1/v;->remove()V

    goto :goto_1

    :cond_0
    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :cond_1
    :goto_0
    iget-boolean v4, p0, Lf/i/a/a/e1/s$e;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_4

    .line 4
    :try_start_1
    iget-object v4, p0, Lf/i/a/a/e1/s$e;->b:Lf/i/a/a/e1/v;

    invoke-interface {v4, p0}, Lf/i/a/a/e1/v;->a(Lf/i/a/a/e1/v$a;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 5
    :try_start_2
    iget-boolean v5, p0, Lf/i/a/a/e1/s$e;->g:Z

    if-nez v5, :cond_1

    .line 6
    iget-object v5, p0, Lf/i/a/a/e1/s$e;->c:Lf/i/a/a/e1/t;

    iget-wide v5, v5, Lf/i/a/a/e1/t;->a:J

    cmp-long v7, v5, v0

    if-eqz v7, :cond_2

    move-wide v0, v5

    const/4 v3, 0x0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 7
    iget v5, p0, Lf/i/a/a/e1/s$e;->e:I

    if-gt v3, v5, :cond_3

    add-int/lit8 v4, v3, -0x1

    mul-int/lit16 v4, v4, 0x3e8

    const/16 v5, 0x1388

    .line 8
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-long v4, v4

    .line 9
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 10
    :cond_3
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    .line 11
    iput-object v0, p0, Lf/i/a/a/e1/s$e;->h:Ljava/lang/Throwable;

    .line 12
    :cond_4
    :goto_1
    iget-object v0, p0, Lf/i/a/a/e1/s$e;->f:Lf/i/a/a/e1/s$c;

    if-eqz v0, :cond_5

    const/16 v1, 0x9

    .line 13
    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_5
    return-void
.end method
