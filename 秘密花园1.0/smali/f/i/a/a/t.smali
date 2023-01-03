.class public Lf/i/a/a/t;
.super Ljava/lang/Object;
.source "DefaultLoadControl.java"


# instance fields
.field public final a:Lf/i/a/a/l1/q;

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:J

.field public final g:I

.field public final h:Z

.field public final i:J

.field public final j:Z

.field public k:I

.field public l:Z

.field public m:Z


# direct methods
.method public constructor <init>()V
    .locals 12

    .line 1
    new-instance v0, Lf/i/a/a/l1/q;

    const/4 v1, 0x1

    const/high16 v2, 0x10000

    invoke-direct {v0, v1, v2}, Lf/i/a/a/l1/q;-><init>(ZI)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v2, "bufferForPlaybackMs"

    const-string v3, "0"

    const/16 v4, 0x9c4

    const/4 v5, 0x0

    .line 3
    invoke-static {v4, v5, v2, v3}, Lf/i/a/a/t;->a(IILjava/lang/String;Ljava/lang/String;)V

    const-string v6, "bufferForPlaybackAfterRebufferMs"

    const/16 v7, 0x1388

    .line 4
    invoke-static {v7, v5, v6, v3}, Lf/i/a/a/t;->a(IILjava/lang/String;Ljava/lang/String;)V

    const-string v8, "minBufferAudioMs"

    const/16 v9, 0x3a98

    .line 5
    invoke-static {v9, v4, v8, v2}, Lf/i/a/a/t;->a(IILjava/lang/String;Ljava/lang/String;)V

    const-string v10, "minBufferVideoMs"

    const v11, 0xc350

    .line 6
    invoke-static {v11, v4, v10, v2}, Lf/i/a/a/t;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {v9, v7, v8, v6}, Lf/i/a/a/t;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {v11, v7, v10, v6}, Lf/i/a/a/t;->a(IILjava/lang/String;Ljava/lang/String;)V

    const-string v2, "maxBufferMs"

    .line 9
    invoke-static {v11, v9, v2, v8}, Lf/i/a/a/t;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {v11, v11, v2, v10}, Lf/i/a/a/t;->a(IILjava/lang/String;Ljava/lang/String;)V

    const-string v2, "backBufferDurationMs"

    .line 11
    invoke-static {v5, v5, v2, v3}, Lf/i/a/a/t;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 12
    iput-object v0, p0, Lf/i/a/a/t;->a:Lf/i/a/a/l1/q;

    int-to-long v2, v9

    .line 13
    invoke-static {v2, v3}, Lf/i/a/a/q;->a(J)J

    move-result-wide v2

    iput-wide v2, p0, Lf/i/a/a/t;->b:J

    int-to-long v2, v11

    .line 14
    invoke-static {v2, v3}, Lf/i/a/a/q;->a(J)J

    move-result-wide v8

    iput-wide v8, p0, Lf/i/a/a/t;->c:J

    .line 15
    invoke-static {v2, v3}, Lf/i/a/a/q;->a(J)J

    move-result-wide v2

    iput-wide v2, p0, Lf/i/a/a/t;->d:J

    int-to-long v2, v4

    .line 16
    invoke-static {v2, v3}, Lf/i/a/a/q;->a(J)J

    move-result-wide v2

    iput-wide v2, p0, Lf/i/a/a/t;->e:J

    int-to-long v2, v7

    .line 17
    invoke-static {v2, v3}, Lf/i/a/a/q;->a(J)J

    move-result-wide v2

    iput-wide v2, p0, Lf/i/a/a/t;->f:J

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lf/i/a/a/t;->g:I

    .line 19
    iput-boolean v1, p0, Lf/i/a/a/t;->h:Z

    int-to-long v0, v5

    .line 20
    invoke-static {v0, v1}, Lf/i/a/a/q;->a(J)J

    move-result-wide v0

    iput-wide v0, p0, Lf/i/a/a/t;->i:J

    .line 21
    iput-boolean v5, p0, Lf/i/a/a/t;->j:Z

    return-void
.end method

.method public static a(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " cannot be less than "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lc/a/a/b/g/h;->n(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lf/i/a/a/t;->k:I

    .line 2
    iput-boolean v0, p0, Lf/i/a/a/t;->l:Z

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lf/i/a/a/t;->a:Lf/i/a/a/l1/q;

    .line 4
    monitor-enter p1

    .line 5
    :try_start_0
    iget-boolean v1, p1, Lf/i/a/a/l1/q;->a:Z

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p1, v0}, Lf/i/a/a/l1/q;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
