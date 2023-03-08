.class public final Lj/c$a;
.super Ljava/lang/Object;
.source "AsyncTimeout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lh/o/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lj/c;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    const-class v0, Lj/c;

    sget-object v1, Lj/c;->j:Lj/c;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 2
    iget-object v1, v1, Lj/c;->f:Lj/c;

    if-nez v1, :cond_2

    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 4
    sget-wide v5, Lj/c;->h:J

    .line 5
    invoke-virtual {v0, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 6
    sget-object v0, Lj/c;->j:Lj/c;

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, v0, Lj/c;->f:Lj/c;

    if-nez v0, :cond_0

    .line 8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, v3

    .line 9
    sget-wide v3, Lj/c;->i:J

    cmp-long v5, v0, v3

    if-ltz v5, :cond_0

    .line 10
    sget-object v2, Lj/c;->j:Lj/c;

    :cond_0
    return-object v2

    .line 11
    :cond_1
    invoke-static {}, Lh/o/c/g;->e()V

    throw v2

    .line 12
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 13
    iget-wide v5, v1, Lj/c;->g:J

    sub-long/2addr v5, v3

    const-wide/16 v3, 0x0

    cmp-long v7, v5, v3

    if-lez v7, :cond_3

    const-wide/32 v3, 0xf4240

    .line 14
    div-long v7, v5, v3

    mul-long v3, v3, v7

    sub-long/2addr v5, v3

    long-to-int v1, v5

    .line 15
    invoke-virtual {v0, v7, v8, v1}, Ljava/lang/Object;->wait(JI)V

    return-object v2

    .line 16
    :cond_3
    sget-object v0, Lj/c;->j:Lj/c;

    if-eqz v0, :cond_4

    .line 17
    iget-object v3, v1, Lj/c;->f:Lj/c;

    .line 18
    iput-object v3, v0, Lj/c;->f:Lj/c;

    .line 19
    iput-object v2, v1, Lj/c;->f:Lj/c;

    return-object v1

    .line 20
    :cond_4
    invoke-static {}, Lh/o/c/g;->e()V

    throw v2

    .line 21
    :cond_5
    invoke-static {}, Lh/o/c/g;->e()V

    throw v2
.end method
