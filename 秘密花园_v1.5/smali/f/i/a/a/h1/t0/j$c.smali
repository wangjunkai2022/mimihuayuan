.class public final Lf/i/a/a/h1/t0/j$c;
.super Ljava/lang/Object;
.source "PlayerEmsgHandler.java"

# interfaces
.implements Lf/i/a/a/b1/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/h1/t0/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final a:Lf/i/a/a/h1/j0;

.field public final b:Lf/i/a/a/c0;

.field public final c:Lf/i/a/a/d1/d;

.field public final synthetic d:Lf/i/a/a/h1/t0/j;


# direct methods
.method public constructor <init>(Lf/i/a/a/h1/t0/j;Lf/i/a/a/h1/j0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/i/a/a/h1/t0/j$c;->d:Lf/i/a/a/h1/t0/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lf/i/a/a/h1/t0/j$c;->a:Lf/i/a/a/h1/j0;

    .line 3
    new-instance p1, Lf/i/a/a/c0;

    invoke-direct {p1}, Lf/i/a/a/c0;-><init>()V

    iput-object p1, p0, Lf/i/a/a/h1/t0/j$c;->b:Lf/i/a/a/c0;

    .line 4
    new-instance p1, Lf/i/a/a/d1/d;

    invoke-direct {p1}, Lf/i/a/a/d1/d;-><init>()V

    iput-object p1, p0, Lf/i/a/a/h1/t0/j$c;->c:Lf/i/a/a/d1/d;

    return-void
.end method


# virtual methods
.method public a(Lf/i/a/a/m1/u;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/t0/j$c;->a:Lf/i/a/a/h1/j0;

    invoke-virtual {v0, p1, p2}, Lf/i/a/a/h1/j0;->a(Lf/i/a/a/m1/u;I)V

    return-void
.end method

.method public b(Lf/i/a/a/b1/d;IZ)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/t0/j$c;->a:Lf/i/a/a/h1/j0;

    invoke-virtual {v0, p1, p2, p3}, Lf/i/a/a/h1/j0;->b(Lf/i/a/a/b1/d;IZ)I

    move-result p1

    return p1
.end method

.method public c(JIIILf/i/a/a/b1/p$a;)V
    .locals 7
    .param p6    # Lf/i/a/a/b1/p$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/t0/j$c;->a:Lf/i/a/a/h1/j0;

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lf/i/a/a/h1/j0;->c(JIIILf/i/a/a/b1/p$a;)V

    .line 2
    :cond_0
    :goto_0
    iget-object p1, p0, Lf/i/a/a/h1/t0/j$c;->a:Lf/i/a/a/h1/j0;

    invoke-virtual {p1}, Lf/i/a/a/h1/j0;->o()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 3
    iget-object p1, p0, Lf/i/a/a/h1/t0/j$c;->c:Lf/i/a/a/d1/d;

    invoke-virtual {p1}, Lf/i/a/a/y0/e;->i()V

    .line 4
    iget-object v0, p0, Lf/i/a/a/h1/t0/j$c;->a:Lf/i/a/a/h1/j0;

    iget-object v1, p0, Lf/i/a/a/h1/t0/j$c;->b:Lf/i/a/a/c0;

    iget-object v2, p0, Lf/i/a/a/h1/t0/j$c;->c:Lf/i/a/a/d1/d;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lf/i/a/a/h1/j0;->s(Lf/i/a/a/c0;Lf/i/a/a/y0/e;ZZJ)I

    move-result p1

    const/4 p2, -0x4

    if-ne p1, p2, :cond_1

    .line 5
    iget-object p1, p0, Lf/i/a/a/h1/t0/j$c;->c:Lf/i/a/a/d1/d;

    .line 6
    iget-object p1, p1, Lf/i/a/a/y0/e;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 7
    iget-object p1, p0, Lf/i/a/a/h1/t0/j$c;->c:Lf/i/a/a/d1/d;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    iget-wide p2, p1, Lf/i/a/a/y0/e;->d:J

    .line 9
    iget-object p4, p0, Lf/i/a/a/h1/t0/j$c;->d:Lf/i/a/a/h1/t0/j;

    .line 10
    iget-object p4, p4, Lf/i/a/a/h1/t0/j;->c:Lf/i/a/a/d1/g/b;

    .line 11
    invoke-virtual {p4, p1}, Lf/i/a/a/d1/g/b;->a(Lf/i/a/a/d1/d;)Lf/i/a/a/d1/a;

    move-result-object p1

    .line 12
    iget-object p1, p1, Lf/i/a/a/d1/a;->a:[Lf/i/a/a/d1/a$b;

    const/4 p4, 0x0

    aget-object p1, p1, p4

    .line 13
    check-cast p1, Lf/i/a/a/d1/g/a;

    .line 14
    iget-object p5, p1, Lf/i/a/a/d1/g/a;->a:Ljava/lang/String;

    iget-object p6, p1, Lf/i/a/a/d1/g/a;->b:Ljava/lang/String;

    const-string v0, "urn:mpeg:dash:event:2012"

    .line 15
    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    const/4 v0, 0x1

    if-eqz p5, :cond_4

    const-string p5, "1"

    .line 16
    invoke-virtual {p5, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_3

    const-string p5, "2"

    invoke-virtual {p5, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_3

    const-string p5, "3"

    invoke-virtual {p5, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_4

    :cond_3
    const/4 p4, 0x1

    :cond_4
    if-eqz p4, :cond_0

    const-wide p4, -0x7fffffffffffffffL    # -4.9E-324

    .line 17
    :try_start_0
    iget-object p1, p1, Lf/i/a/a/d1/g/a;->e:[B

    invoke-static {p1}, Lf/i/a/a/m1/h0;->v([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lf/i/a/a/m1/h0;->d0(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Lf/i/a/a/h0; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-wide v1, p4

    :goto_2
    cmp-long p1, v1, p4

    if-nez p1, :cond_5

    goto :goto_0

    .line 18
    :cond_5
    new-instance p1, Lf/i/a/a/h1/t0/j$a;

    invoke-direct {p1, p2, p3, v1, v2}, Lf/i/a/a/h1/t0/j$a;-><init>(JJ)V

    .line 19
    iget-object p2, p0, Lf/i/a/a/h1/t0/j$c;->d:Lf/i/a/a/h1/t0/j;

    .line 20
    iget-object p2, p2, Lf/i/a/a/h1/t0/j;->d:Landroid/os/Handler;

    .line 21
    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 22
    :cond_6
    iget-object p1, p0, Lf/i/a/a/h1/t0/j$c;->a:Lf/i/a/a/h1/j0;

    .line 23
    iget-object p2, p1, Lf/i/a/a/h1/j0;->c:Lf/i/a/a/h1/i0;

    .line 24
    monitor-enter p2

    .line 25
    :try_start_1
    iget p3, p2, Lf/i/a/a/h1/i0;->l:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p3, :cond_7

    const-wide/16 p3, -0x1

    .line 26
    monitor-exit p2

    goto :goto_3

    .line 27
    :cond_7
    :try_start_2
    iget p3, p2, Lf/i/a/a/h1/i0;->l:I

    invoke-virtual {p2, p3}, Lf/i/a/a/h1/i0;->a(I)J

    move-result-wide p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p2

    .line 28
    :goto_3
    invoke-virtual {p1, p3, p4}, Lf/i/a/a/h1/j0;->h(J)V

    return-void

    :catchall_0
    move-exception p1

    .line 29
    monitor-exit p2

    throw p1
.end method

.method public d(Lf/i/a/a/b0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/t0/j$c;->a:Lf/i/a/a/h1/j0;

    invoke-virtual {v0, p1}, Lf/i/a/a/h1/j0;->d(Lf/i/a/a/b0;)V

    return-void
.end method
