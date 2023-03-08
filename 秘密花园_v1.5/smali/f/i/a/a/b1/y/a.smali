.class public final Lf/i/a/a/b1/y/a;
.super Ljava/lang/Object;
.source "WavExtractor.java"

# interfaces
.implements Lf/i/a/a/b1/g;


# instance fields
.field public a:Lf/i/a/a/b1/h;

.field public b:Lf/i/a/a/b1/p;

.field public c:Lf/i/a/a/b1/y/b;

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public c(Lf/i/a/a/b1/d;Lf/i/a/a/b1/m;)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lf/i/a/a/b1/y/a;->c:Lf/i/a/a/b1/y/b;

    if-nez p2, :cond_1

    .line 2
    invoke-static {p1}, Lc/a/a/b/g/h;->Z0(Lf/i/a/a/b1/d;)Lf/i/a/a/b1/y/b;

    move-result-object p2

    iput-object p2, p0, Lf/i/a/a/b1/y/a;->c:Lf/i/a/a/b1/y/b;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 3
    iget v6, p2, Lf/i/a/a/b1/y/b;->b:I

    iget v1, p2, Lf/i/a/a/b1/y/b;->e:I

    mul-int v1, v1, v6

    iget v5, p2, Lf/i/a/a/b1/y/b;->a:I

    mul-int v3, v1, v5

    const v4, 0x8000

    .line 4
    iget v7, p2, Lf/i/a/a/b1/y/b;->f:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v1, "audio/raw"

    .line 5
    invoke-static/range {v0 .. v11}, Lf/i/a/a/b0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lf/i/a/a/z0/e;ILjava/lang/String;)Lf/i/a/a/b0;

    move-result-object p2

    .line 6
    iget-object v0, p0, Lf/i/a/a/b1/y/a;->b:Lf/i/a/a/b1/p;

    invoke-interface {v0, p2}, Lf/i/a/a/b1/p;->d(Lf/i/a/a/b0;)V

    .line 7
    iget-object p2, p0, Lf/i/a/a/b1/y/a;->c:Lf/i/a/a/b1/y/b;

    .line 8
    iget p2, p2, Lf/i/a/a/b1/y/b;->d:I

    .line 9
    iput p2, p0, Lf/i/a/a/b1/y/a;->d:I

    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Lf/i/a/a/h0;

    const-string p2, "Unsupported or unrecognized wav header."

    invoke-direct {p1, p2}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_1
    :goto_0
    iget-object p2, p0, Lf/i/a/a/b1/y/a;->c:Lf/i/a/a/b1/y/b;

    .line 12
    iget p2, p2, Lf/i/a/a/b1/y/b;->g:I

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x0

    if-nez p2, :cond_9

    .line 13
    iget-object p2, p0, Lf/i/a/a/b1/y/a;->c:Lf/i/a/a/b1/y/b;

    const/4 v6, 0x0

    if-eqz p2, :cond_8

    .line 14
    iput v1, p1, Lf/i/a/a/b1/d;->f:I

    .line 15
    new-instance v1, Lf/i/a/a/m1/u;

    const/16 v6, 0x8

    invoke-direct {v1, v6}, Lf/i/a/a/m1/u;-><init>(I)V

    .line 16
    invoke-static {p1, v1}, Lf/i/a/a/b1/y/c;->a(Lf/i/a/a/b1/d;Lf/i/a/a/m1/u;)Lf/i/a/a/b1/y/c;

    move-result-object v7

    .line 17
    :goto_2
    iget v8, v7, Lf/i/a/a/b1/y/c;->a:I

    sget v9, Lf/i/a/a/w0/f0;->d:I

    if-eq v8, v9, :cond_6

    .line 18
    sget v9, Lf/i/a/a/w0/f0;->a:I

    if-eq v8, v9, :cond_3

    sget v8, Lf/i/a/a/w0/f0;->c:I

    :cond_3
    const-wide/16 v8, 0x8

    .line 19
    iget-wide v10, v7, Lf/i/a/a/b1/y/c;->b:J

    add-long/2addr v10, v8

    .line 20
    iget v8, v7, Lf/i/a/a/b1/y/c;->a:I

    sget v9, Lf/i/a/a/w0/f0;->a:I

    if-ne v8, v9, :cond_4

    const-wide/16 v10, 0xc

    :cond_4
    const-wide/32 v8, 0x7fffffff

    cmp-long v12, v10, v8

    if-gtz v12, :cond_5

    long-to-int v7, v10

    .line 21
    invoke-virtual {p1, v7}, Lf/i/a/a/b1/d;->h(I)V

    .line 22
    invoke-static {p1, v1}, Lf/i/a/a/b1/y/c;->a(Lf/i/a/a/b1/d;Lf/i/a/a/m1/u;)Lf/i/a/a/b1/y/c;

    move-result-object v7

    goto :goto_2

    .line 23
    :cond_5
    new-instance p1, Lf/i/a/a/h0;

    const-string p2, "Chunk is too large (~2GB+) to skip; id: "

    invoke-static {p2}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, v7, Lf/i/a/a/b1/y/c;->a:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_6
    invoke-virtual {p1, v6}, Lf/i/a/a/b1/d;->h(I)V

    .line 25
    iget-wide v8, p1, Lf/i/a/a/b1/d;->d:J

    long-to-int v1, v8

    int-to-long v8, v1

    .line 26
    iget-wide v6, v7, Lf/i/a/a/b1/y/c;->b:J

    add-long/2addr v8, v6

    .line 27
    iget-wide v6, p1, Lf/i/a/a/b1/d;->c:J

    cmp-long v10, v6, v2

    if-eqz v10, :cond_7

    cmp-long v10, v8, v6

    if-lez v10, :cond_7

    move-wide v8, v6

    .line 28
    :cond_7
    iput v1, p2, Lf/i/a/a/b1/y/b;->g:I

    .line 29
    iput-wide v8, p2, Lf/i/a/a/b1/y/b;->h:J

    .line 30
    iget-object p2, p0, Lf/i/a/a/b1/y/a;->a:Lf/i/a/a/b1/h;

    iget-object v1, p0, Lf/i/a/a/b1/y/a;->c:Lf/i/a/a/b1/y/b;

    invoke-interface {p2, v1}, Lf/i/a/a/b1/h;->a(Lf/i/a/a/b1/n;)V

    goto :goto_3

    .line 31
    :cond_8
    throw v6

    .line 32
    :cond_9
    iget-wide v6, p1, Lf/i/a/a/b1/d;->d:J

    cmp-long p2, v6, v4

    if-nez p2, :cond_a

    .line 33
    iget-object p2, p0, Lf/i/a/a/b1/y/a;->c:Lf/i/a/a/b1/y/b;

    .line 34
    iget p2, p2, Lf/i/a/a/b1/y/b;->g:I

    .line 35
    invoke-virtual {p1, p2}, Lf/i/a/a/b1/d;->h(I)V

    .line 36
    :cond_a
    :goto_3
    iget-object p2, p0, Lf/i/a/a/b1/y/a;->c:Lf/i/a/a/b1/y/b;

    .line 37
    iget-wide v6, p2, Lf/i/a/a/b1/y/b;->h:J

    cmp-long p2, v6, v2

    if-eqz p2, :cond_b

    const/4 p2, 0x1

    goto :goto_4

    :cond_b
    const/4 p2, 0x0

    .line 38
    :goto_4
    invoke-static {p2}, Lc/a/a/b/g/h;->v(Z)V

    .line 39
    iget-wide v1, p1, Lf/i/a/a/b1/d;->d:J

    sub-long/2addr v6, v1

    cmp-long p2, v6, v4

    if-gtz p2, :cond_c

    return v0

    :cond_c
    const p2, 0x8000

    .line 40
    iget v1, p0, Lf/i/a/a/b1/y/a;->e:I

    sub-int/2addr p2, v1

    int-to-long v1, p2

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int p2, v1

    .line 41
    iget-object v1, p0, Lf/i/a/a/b1/y/a;->b:Lf/i/a/a/b1/p;

    const/4 v2, 0x1

    invoke-interface {v1, p1, p2, v2}, Lf/i/a/a/b1/p;->b(Lf/i/a/a/b1/d;IZ)I

    move-result p2

    if-eq p2, v0, :cond_d

    .line 42
    iget v1, p0, Lf/i/a/a/b1/y/a;->e:I

    add-int/2addr v1, p2

    iput v1, p0, Lf/i/a/a/b1/y/a;->e:I

    .line 43
    :cond_d
    iget v1, p0, Lf/i/a/a/b1/y/a;->e:I

    iget v2, p0, Lf/i/a/a/b1/y/a;->d:I

    div-int v2, v1, v2

    if-lez v2, :cond_e

    .line 44
    iget-object v3, p0, Lf/i/a/a/b1/y/a;->c:Lf/i/a/a/b1/y/b;

    .line 45
    iget-wide v4, p1, Lf/i/a/a/b1/d;->d:J

    int-to-long v6, v1

    sub-long/2addr v4, v6

    .line 46
    invoke-virtual {v3, v4, v5}, Lf/i/a/a/b1/y/b;->b(J)J

    move-result-wide v7

    .line 47
    iget p1, p0, Lf/i/a/a/b1/y/a;->d:I

    mul-int v10, v2, p1

    .line 48
    iget p1, p0, Lf/i/a/a/b1/y/a;->e:I

    sub-int v11, p1, v10

    iput v11, p0, Lf/i/a/a/b1/y/a;->e:I

    .line 49
    iget-object v6, p0, Lf/i/a/a/b1/y/a;->b:Lf/i/a/a/b1/p;

    const/4 v9, 0x1

    const/4 v12, 0x0

    invoke-interface/range {v6 .. v12}, Lf/i/a/a/b1/p;->c(JIIILf/i/a/a/b1/p$a;)V

    :cond_e
    if-ne p2, v0, :cond_f

    goto :goto_5

    :cond_f
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method public d(Lf/i/a/a/b1/h;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lf/i/a/a/b1/y/a;->a:Lf/i/a/a/b1/h;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-interface {p1, v0, v1}, Lf/i/a/a/b1/h;->q(II)Lf/i/a/a/b1/p;

    move-result-object v0

    iput-object v0, p0, Lf/i/a/a/b1/y/a;->b:Lf/i/a/a/b1/p;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lf/i/a/a/b1/y/a;->c:Lf/i/a/a/b1/y/b;

    .line 4
    invoke-interface {p1}, Lf/i/a/a/b1/h;->d()V

    return-void
.end method

.method public f(JJ)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lf/i/a/a/b1/y/a;->e:I

    return-void
.end method

.method public i(Lf/i/a/a/b1/d;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lc/a/a/b/g/h;->Z0(Lf/i/a/a/b1/d;)Lf/i/a/a/b1/y/b;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
