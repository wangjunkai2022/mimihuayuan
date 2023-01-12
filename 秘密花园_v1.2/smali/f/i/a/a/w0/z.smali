.class public Lf/i/a/a/w0/z;
.super Lf/i/a/a/c1/b;
.source "MediaCodecAudioRenderer.java"

# interfaces
.implements Lf/i/a/a/m1/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/w0/z$b;
    }
.end annotation


# instance fields
.field public A0:I

.field public B0:I

.field public C0:J

.field public D0:Z

.field public E0:Z

.field public F0:J

.field public G0:I

.field public final p0:Landroid/content/Context;

.field public final q0:Lf/i/a/a/w0/o$a;

.field public final r0:Lf/i/a/a/w0/p;

.field public final s0:[J

.field public t0:I

.field public u0:Z

.field public v0:Z

.field public w0:Z

.field public x0:Landroid/media/MediaFormat;

.field public y0:I

.field public z0:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lf/i/a/a/c1/c;Lf/i/a/a/z0/g;ZZLandroid/os/Handler;Lf/i/a/a/w0/o;Lf/i/a/a/w0/p;)V
    .locals 7
    .param p3    # Lf/i/a/a/z0/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lf/i/a/a/w0/o;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lf/i/a/a/c1/c;",
            "Lf/i/a/a/z0/g<",
            "Lf/i/a/a/z0/j;",
            ">;ZZ",
            "Landroid/os/Handler;",
            "Lf/i/a/a/w0/o;",
            "Lf/i/a/a/w0/p;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x1

    const v6, 0x472c4400    # 44100.0f

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lf/i/a/a/c1/b;-><init>(ILf/i/a/a/c1/c;Lf/i/a/a/z0/g;ZZF)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lf/i/a/a/w0/z;->p0:Landroid/content/Context;

    .line 3
    iput-object p8, p0, Lf/i/a/a/w0/z;->r0:Lf/i/a/a/w0/p;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    iput-wide p1, p0, Lf/i/a/a/w0/z;->F0:J

    const/16 p1, 0xa

    new-array p1, p1, [J

    .line 5
    iput-object p1, p0, Lf/i/a/a/w0/z;->s0:[J

    .line 6
    new-instance p1, Lf/i/a/a/w0/o$a;

    invoke-direct {p1, p6, p7}, Lf/i/a/a/w0/o$a;-><init>(Landroid/os/Handler;Lf/i/a/a/w0/o;)V

    iput-object p1, p0, Lf/i/a/a/w0/z;->q0:Lf/i/a/a/w0/o$a;

    .line 7
    new-instance p1, Lf/i/a/a/w0/z$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lf/i/a/a/w0/z$b;-><init>(Lf/i/a/a/w0/z;Lf/i/a/a/w0/z$a;)V

    check-cast p8, Lf/i/a/a/w0/v;

    .line 8
    iput-object p1, p8, Lf/i/a/a/w0/v;->k:Lf/i/a/a/w0/p$c;

    return-void
.end method


# virtual methods
.method public A()V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0}, Lf/i/a/a/c1/b;->A()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v0, p0, Lf/i/a/a/w0/z;->r0:Lf/i/a/a/w0/p;

    check-cast v0, Lf/i/a/a/w0/v;

    invoke-virtual {v0}, Lf/i/a/a/w0/v;->m()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lf/i/a/a/w0/z;->r0:Lf/i/a/a/w0/p;

    check-cast v1, Lf/i/a/a/w0/v;

    invoke-virtual {v1}, Lf/i/a/a/w0/v;->m()V

    .line 3
    throw v0
.end method

.method public B()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/w0/z;->r0:Lf/i/a/a/w0/p;

    check-cast v0, Lf/i/a/a/w0/v;

    invoke-virtual {v0}, Lf/i/a/a/w0/v;->j()V

    return-void
.end method

.method public C()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/w0/z;->q0()V

    .line 2
    iget-object v0, p0, Lf/i/a/a/w0/z;->r0:Lf/i/a/a/w0/p;

    check-cast v0, Lf/i/a/a/w0/v;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lf/i/a/a/w0/v;->N:Z

    .line 4
    invoke-virtual {v0}, Lf/i/a/a/w0/v;->i()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lf/i/a/a/w0/v;->i:Lf/i/a/a/w0/r;

    const-wide/16 v3, 0x0

    .line 5
    iput-wide v3, v2, Lf/i/a/a/w0/r;->j:J

    .line 6
    iput v1, v2, Lf/i/a/a/w0/r;->u:I

    .line 7
    iput v1, v2, Lf/i/a/a/w0/r;->t:I

    .line 8
    iput-wide v3, v2, Lf/i/a/a/w0/r;->k:J

    .line 9
    iget-wide v3, v2, Lf/i/a/a/w0/r;->v:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    .line 10
    iget-object v1, v2, Lf/i/a/a/w0/r;->f:Lf/i/a/a/w0/q;

    invoke-static {v1}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lf/i/a/a/w0/q;->a()V

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    .line 11
    iget-object v0, v0, Lf/i/a/a/w0/v;->o:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_1
    return-void
.end method

.method public D([Lf/i/a/a/b0;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    .line 1
    iget-wide p1, p0, Lf/i/a/a/w0/z;->F0:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_1

    .line 2
    iget p1, p0, Lf/i/a/a/w0/z;->G0:I

    iget-object p2, p0, Lf/i/a/a/w0/z;->s0:[J

    array-length p3, p2

    if-ne p1, p3, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 3
    aget-wide p1, p2, p1

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 4
    iput p1, p0, Lf/i/a/a/w0/z;->G0:I

    .line 5
    :goto_0
    iget-object p1, p0, Lf/i/a/a/w0/z;->s0:[J

    iget p2, p0, Lf/i/a/a/w0/z;->G0:I

    add-int/lit8 p2, p2, -0x1

    iget-wide v0, p0, Lf/i/a/a/w0/z;->F0:J

    aput-wide v0, p1, p2

    :cond_1
    return-void
.end method

.method public I(Landroid/media/MediaCodec;Lf/i/a/a/c1/a;Lf/i/a/a/b0;Lf/i/a/a/b0;)I
    .locals 2

    .line 1
    invoke-virtual {p0, p2, p4}, Lf/i/a/a/w0/z;->o0(Lf/i/a/a/c1/a;Lf/i/a/a/b0;)I

    move-result p1

    iget v0, p0, Lf/i/a/a/w0/z;->t0:I

    const/4 v1, 0x0

    if-gt p1, v0, :cond_3

    iget p1, p3, Lf/i/a/a/b0;->y:I

    if-nez p1, :cond_3

    iget p1, p3, Lf/i/a/a/b0;->z:I

    if-nez p1, :cond_3

    iget p1, p4, Lf/i/a/a/b0;->y:I

    if-nez p1, :cond_3

    iget p1, p4, Lf/i/a/a/b0;->z:I

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    .line 2
    invoke-virtual {p2, p3, p4, p1}, Lf/i/a/a/c1/a;->d(Lf/i/a/a/b0;Lf/i/a/a/b0;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p1, 0x3

    return p1

    .line 3
    :cond_1
    iget-object p2, p3, Lf/i/a/a/b0;->i:Ljava/lang/String;

    iget-object v0, p4, Lf/i/a/a/b0;->i:Ljava/lang/String;

    invoke-static {p2, v0}, Lf/i/a/a/m1/h0;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget p2, p3, Lf/i/a/a/b0;->v:I

    iget v0, p4, Lf/i/a/a/b0;->v:I

    if-ne p2, v0, :cond_2

    iget p2, p3, Lf/i/a/a/b0;->w:I

    iget v0, p4, Lf/i/a/a/b0;->w:I

    if-ne p2, v0, :cond_2

    .line 4
    invoke-virtual {p3, p4}, Lf/i/a/a/b0;->w(Lf/i/a/a/b0;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_3

    return p1

    :cond_3
    :goto_1
    return v1
.end method

.method public J(Lf/i/a/a/c1/a;Landroid/media/MediaCodec;Lf/i/a/a/b0;Landroid/media/MediaCrypto;F)V
    .locals 8

    .line 1
    iget-object v0, p0, Lf/i/a/a/p;->f:[Lf/i/a/a/b0;

    .line 2
    invoke-virtual {p0, p1, p3}, Lf/i/a/a/w0/z;->o0(Lf/i/a/a/c1/a;Lf/i/a/a/b0;)I

    move-result v1

    .line 3
    array-length v2, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    array-length v2, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_2

    aget-object v6, v0, v5

    .line 5
    invoke-virtual {p1, p3, v6, v4}, Lf/i/a/a/c1/a;->d(Lf/i/a/a/b0;Lf/i/a/a/b0;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 6
    invoke-virtual {p0, p1, v6}, Lf/i/a/a/w0/z;->o0(Lf/i/a/a/c1/a;Lf/i/a/a/b0;)I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 7
    :cond_2
    :goto_1
    iput v1, p0, Lf/i/a/a/w0/z;->t0:I

    .line 8
    iget-object v0, p1, Lf/i/a/a/c1/a;->a:Ljava/lang/String;

    .line 9
    sget v1, Lf/i/a/a/m1/h0;->a:I

    const/16 v2, 0x18

    const-string v5, "samsung"

    if-ge v1, v2, :cond_4

    const-string v1, "OMX.SEC.aac.dec"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lf/i/a/a/m1/h0;->c:Ljava/lang/String;

    .line 10
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lf/i/a/a/m1/h0;->b:Ljava/lang/String;

    const-string v1, "zeroflte"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lf/i/a/a/m1/h0;->b:Ljava/lang/String;

    const-string v1, "herolte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lf/i/a/a/m1/h0;->b:Ljava/lang/String;

    const-string v1, "heroqlte"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 13
    :goto_2
    iput-boolean v0, p0, Lf/i/a/a/w0/z;->v0:Z

    .line 14
    iget-object v0, p1, Lf/i/a/a/c1/a;->a:Ljava/lang/String;

    .line 15
    sget v1, Lf/i/a/a/m1/h0;->a:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_6

    const-string v1, "OMX.SEC.mp3.dec"

    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lf/i/a/a/m1/h0;->c:Ljava/lang/String;

    .line 17
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lf/i/a/a/m1/h0;->b:Ljava/lang/String;

    const-string v1, "baffin"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lf/i/a/a/m1/h0;->b:Ljava/lang/String;

    const-string v1, "grand"

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lf/i/a/a/m1/h0;->b:Ljava/lang/String;

    const-string v1, "fortuna"

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lf/i/a/a/m1/h0;->b:Ljava/lang/String;

    const-string v1, "gprimelte"

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lf/i/a/a/m1/h0;->b:Ljava/lang/String;

    const-string v1, "j2y18lte"

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lf/i/a/a/m1/h0;->b:Ljava/lang/String;

    const-string v1, "ms01"

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    .line 24
    :goto_3
    iput-boolean v0, p0, Lf/i/a/a/w0/z;->w0:Z

    .line 25
    iget-boolean v0, p1, Lf/i/a/a/c1/a;->g:Z

    iput-boolean v0, p0, Lf/i/a/a/w0/z;->u0:Z

    if-eqz v0, :cond_7

    const-string p1, "audio/raw"

    goto :goto_4

    .line 26
    :cond_7
    iget-object p1, p1, Lf/i/a/a/c1/a;->c:Ljava/lang/String;

    .line 27
    :goto_4
    iget v0, p0, Lf/i/a/a/w0/z;->t0:I

    .line 28
    new-instance v1, Landroid/media/MediaFormat;

    invoke-direct {v1}, Landroid/media/MediaFormat;-><init>()V

    const-string v2, "mime"

    .line 29
    invoke-virtual {v1, v2, p1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget p1, p3, Lf/i/a/a/b0;->v:I

    const-string v5, "channel-count"

    invoke-virtual {v1, v5, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 31
    iget p1, p3, Lf/i/a/a/b0;->w:I

    const-string v5, "sample-rate"

    invoke-virtual {v1, v5, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 32
    iget-object p1, p3, Lf/i/a/a/b0;->k:Ljava/util/List;

    invoke-static {v1, p1}, Lc/a/a/b/g/h;->g1(Landroid/media/MediaFormat;Ljava/util/List;)V

    const-string p1, "max-input-size"

    .line 33
    invoke-static {v1, p1, v0}, Lc/a/a/b/g/h;->Q0(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 34
    sget p1, Lf/i/a/a/m1/h0;->a:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_a

    const-string p1, "priority"

    .line 35
    invoke-virtual {v1, p1, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/high16 p1, -0x40800000    # -1.0f

    cmpl-float p1, p5, p1

    if-eqz p1, :cond_a

    .line 36
    sget p1, Lf/i/a/a/m1/h0;->a:I

    if-ne p1, v0, :cond_9

    sget-object p1, Lf/i/a/a/m1/h0;->d:Ljava/lang/String;

    const-string v0, "ZTE B2017G"

    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    sget-object p1, Lf/i/a/a/m1/h0;->d:Ljava/lang/String;

    const-string v0, "AXON 7 mini"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    :cond_8
    const/4 p1, 0x1

    goto :goto_5

    :cond_9
    const/4 p1, 0x0

    :goto_5
    if-nez p1, :cond_a

    const-string p1, "operating-rate"

    .line 38
    invoke-virtual {v1, p1, p5}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 39
    :cond_a
    sget p1, Lf/i/a/a/m1/h0;->a:I

    const/16 p5, 0x1c

    if-gt p1, p5, :cond_b

    iget-object p1, p3, Lf/i/a/a/b0;->i:Ljava/lang/String;

    const-string p5, "audio/ac4"

    invoke-virtual {p5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "ac4-is-sync"

    .line 40
    invoke-virtual {v1, p1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_b
    const/4 p1, 0x0

    .line 41
    invoke-virtual {p2, v1, p1, p4, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 42
    iget-boolean p2, p0, Lf/i/a/a/w0/z;->u0:Z

    if-eqz p2, :cond_c

    .line 43
    iput-object v1, p0, Lf/i/a/a/w0/z;->x0:Landroid/media/MediaFormat;

    .line 44
    iget-object p1, p3, Lf/i/a/a/b0;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 45
    :cond_c
    iput-object p1, p0, Lf/i/a/a/w0/z;->x0:Landroid/media/MediaFormat;

    :goto_6
    return-void
.end method

.method public Q(FLf/i/a/a/b0;[Lf/i/a/a/b0;)F
    .locals 4

    .line 1
    array-length p2, p3

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v3, p3, v1

    .line 2
    iget v3, v3, Lf/i/a/a/b0;->w:I

    if-eq v3, v0, :cond_0

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ne v2, v0, :cond_2

    const/high16 p1, -0x40800000    # -1.0f

    goto :goto_1

    :cond_2
    int-to-float p2, v2

    mul-float p1, p1, p2

    :goto_1
    return p1
.end method

.method public R(Lf/i/a/a/c1/c;Lf/i/a/a/b0;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i/a/a/c1/c;",
            "Lf/i/a/a/b0;",
            "Z)",
            "Ljava/util/List<",
            "Lf/i/a/a/c1/a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/c1/d$c;
        }
    .end annotation

    .line 1
    iget v0, p2, Lf/i/a/a/b0;->v:I

    iget-object v1, p2, Lf/i/a/a/b0;->i:Ljava/lang/String;

    .line 2
    invoke-virtual {p0, v0, v1}, Lf/i/a/a/w0/z;->p0(ILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p1}, Lf/i/a/a/c1/c;->b()Lf/i/a/a/c1/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    iget-object v0, p2, Lf/i/a/a/b0;->i:Ljava/lang/String;

    .line 6
    invoke-interface {p1, v0, p3, v1}, Lf/i/a/a/c1/c;->a(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    .line 7
    iget-object p2, p2, Lf/i/a/a/b0;->i:Ljava/lang/String;

    const-string v2, "audio/eac3-joc"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "audio/eac3"

    .line 8
    invoke-interface {p1, p2, p3, v1}, Lf/i/a/a/c1/c;->a(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p1

    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public V(Ljava/lang/String;JJ)V
    .locals 9

    .line 1
    iget-object v1, p0, Lf/i/a/a/w0/z;->q0:Lf/i/a/a/w0/o$a;

    .line 2
    iget-object v0, v1, Lf/i/a/a/w0/o$a;->b:Lf/i/a/a/w0/o;

    if-eqz v0, :cond_0

    .line 3
    iget-object v7, v1, Lf/i/a/a/w0/o$a;->a:Landroid/os/Handler;

    new-instance v8, Lf/i/a/a/w0/b;

    move-object v0, v8

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lf/i/a/a/w0/b;-><init>(Lf/i/a/a/w0/o$a;Ljava/lang/String;JJ)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public W(Lf/i/a/a/b0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lf/i/a/a/c1/b;->W(Lf/i/a/a/b0;)V

    .line 2
    iget-object v0, p0, Lf/i/a/a/w0/z;->q0:Lf/i/a/a/w0/o$a;

    .line 3
    iget-object v1, v0, Lf/i/a/a/w0/o$a;->b:Lf/i/a/a/w0/o;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, v0, Lf/i/a/a/w0/o$a;->a:Landroid/os/Handler;

    new-instance v2, Lf/i/a/a/w0/a;

    invoke-direct {v2, v0, p1}, Lf/i/a/a/w0/a;-><init>(Lf/i/a/a/w0/o$a;Lf/i/a/a/b0;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5
    :cond_0
    iget-object v0, p1, Lf/i/a/a/b0;->i:Ljava/lang/String;

    const-string v1, "audio/raw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lf/i/a/a/b0;->x:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lf/i/a/a/w0/z;->y0:I

    .line 6
    iget v0, p1, Lf/i/a/a/b0;->v:I

    iput v0, p0, Lf/i/a/a/w0/z;->z0:I

    .line 7
    iget v0, p1, Lf/i/a/a/b0;->y:I

    iput v0, p0, Lf/i/a/a/w0/z;->A0:I

    .line 8
    iget p1, p1, Lf/i/a/a/b0;->z:I

    iput p1, p0, Lf/i/a/a/w0/z;->B0:I

    return-void
.end method

.method public X(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lf/i/a/a/w0/z;->x0:Landroid/media/MediaFormat;

    const-string v0, "channel-count"

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    const-string v1, "mime"

    .line 3
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p0, p2, v1}, Lf/i/a/a/w0/z;->p0(ILjava/lang/String;)I

    move-result p2

    move v2, p2

    move-object p2, p1

    goto :goto_0

    .line 5
    :cond_0
    iget p1, p0, Lf/i/a/a/w0/z;->y0:I

    move v2, p1

    .line 6
    :goto_0
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    const-string p1, "sample-rate"

    .line 7
    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    .line 8
    iget-boolean p1, p0, Lf/i/a/a/w0/z;->v0:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x6

    if-ne v3, p1, :cond_1

    iget p2, p0, Lf/i/a/a/w0/z;->z0:I

    if-ge p2, p1, :cond_1

    .line 9
    new-array p1, p2, [I

    const/4 p2, 0x0

    .line 10
    :goto_1
    iget v0, p0, Lf/i/a/a/w0/z;->z0:I

    if-ge p2, v0, :cond_2

    .line 11
    aput p2, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :cond_2
    move-object v6, p1

    .line 12
    :try_start_0
    iget-object p1, p0, Lf/i/a/a/w0/z;->r0:Lf/i/a/a/w0/p;

    const/4 v5, 0x0

    iget v7, p0, Lf/i/a/a/w0/z;->A0:I

    iget v8, p0, Lf/i/a/a/w0/z;->B0:I
    :try_end_0
    .catch Lf/i/a/a/w0/p$a; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    check-cast v1, Lf/i/a/a/w0/v;

    :try_start_1
    invoke-virtual/range {v1 .. v8}, Lf/i/a/a/w0/v;->b(IIII[III)V
    :try_end_1
    .catch Lf/i/a/a/w0/p$a; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 13
    iget p2, p0, Lf/i/a/a/p;->c:I

    .line 14
    invoke-static {p1, p2}, Lf/i/a/a/w;->a(Ljava/lang/Exception;I)Lf/i/a/a/w;

    move-result-object p1

    throw p1
.end method

.method public Y(J)V
    .locals 4
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    :goto_0
    iget v0, p0, Lf/i/a/a/w0/z;->G0:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lf/i/a/a/w0/z;->s0:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    cmp-long v0, p1, v2

    if-ltz v0, :cond_1

    .line 2
    iget-object v0, p0, Lf/i/a/a/w0/z;->r0:Lf/i/a/a/w0/p;

    check-cast v0, Lf/i/a/a/w0/v;

    .line 3
    iget v2, v0, Lf/i/a/a/w0/v;->B:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    .line 4
    iput v2, v0, Lf/i/a/a/w0/v;->B:I

    .line 5
    :cond_0
    iget v0, p0, Lf/i/a/a/w0/z;->G0:I

    sub-int/2addr v0, v3

    iput v0, p0, Lf/i/a/a/w0/z;->G0:I

    .line 6
    iget-object v2, p0, Lf/i/a/a/w0/z;->s0:[J

    invoke-static {v2, v3, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public Z(Lf/i/a/a/y0/e;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lf/i/a/a/w0/z;->D0:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lf/i/a/a/y0/a;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-wide v0, p1, Lf/i/a/a/y0/e;->d:J

    iget-wide v2, p0, Lf/i/a/a/w0/z;->C0:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7a120

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 3
    iget-wide v0, p1, Lf/i/a/a/y0/e;->d:J

    iput-wide v0, p0, Lf/i/a/a/w0/z;->C0:J

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lf/i/a/a/w0/z;->D0:Z

    .line 5
    :cond_1
    iget-wide v0, p1, Lf/i/a/a/y0/e;->d:J

    iget-wide v2, p0, Lf/i/a/a/w0/z;->F0:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lf/i/a/a/w0/z;->F0:J

    return-void
.end method

.method public a()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lf/i/a/a/c1/b;->j0:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lf/i/a/a/w0/z;->r0:Lf/i/a/a/w0/p;

    check-cast v0, Lf/i/a/a/w0/v;

    .line 3
    invoke-virtual {v0}, Lf/i/a/a/w0/v;->i()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, v0, Lf/i/a/a/w0/v;->L:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lf/i/a/a/w0/v;->h()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method public b0(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZZLf/i/a/a/b0;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    .line 1
    iget-boolean p1, p0, Lf/i/a/a/w0/z;->w0:Z

    if-eqz p1, :cond_0

    const-wide/16 p1, 0x0

    cmp-long p3, p9, p1

    if-nez p3, :cond_0

    and-int/lit8 p1, p8, 0x4

    if-eqz p1, :cond_0

    iget-wide p1, p0, Lf/i/a/a/w0/z;->F0:J

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p12, p1, p3

    if-eqz p12, :cond_0

    move-wide p9, p1

    .line 2
    :cond_0
    iget-boolean p1, p0, Lf/i/a/a/w0/z;->u0:Z

    const/4 p2, 0x0

    const/4 p3, 0x1

    const/4 p4, 0x2

    if-eqz p1, :cond_1

    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p5, p7, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return p3

    :cond_1
    if-eqz p11, :cond_3

    .line 4
    invoke-virtual {p5, p7, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 5
    iget-object p1, p0, Lf/i/a/a/c1/b;->n0:Lf/i/a/a/y0/d;

    iget p2, p1, Lf/i/a/a/y0/d;->f:I

    add-int/2addr p2, p3

    iput p2, p1, Lf/i/a/a/y0/d;->f:I

    .line 6
    iget-object p1, p0, Lf/i/a/a/w0/z;->r0:Lf/i/a/a/w0/p;

    check-cast p1, Lf/i/a/a/w0/v;

    .line 7
    iget p2, p1, Lf/i/a/a/w0/v;->B:I

    if-ne p2, p3, :cond_2

    .line 8
    iput p4, p1, Lf/i/a/a/w0/v;->B:I

    :cond_2
    return p3

    .line 9
    :cond_3
    :try_start_0
    iget-object p1, p0, Lf/i/a/a/w0/z;->r0:Lf/i/a/a/w0/p;
    :try_end_0
    .catch Lf/i/a/a/w0/p$b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lf/i/a/a/w0/p$d; {:try_start_0 .. :try_end_0} :catch_0

    check-cast p1, Lf/i/a/a/w0/v;

    :try_start_1
    invoke-virtual {p1, p6, p9, p10}, Lf/i/a/a/w0/v;->g(Ljava/nio/ByteBuffer;J)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    invoke-virtual {p5, p7, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 11
    iget-object p1, p0, Lf/i/a/a/c1/b;->n0:Lf/i/a/a/y0/d;

    iget p2, p1, Lf/i/a/a/y0/d;->e:I

    add-int/2addr p2, p3

    iput p2, p1, Lf/i/a/a/y0/d;->e:I
    :try_end_1
    .catch Lf/i/a/a/w0/p$b; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lf/i/a/a/w0/p$d; {:try_start_1 .. :try_end_1} :catch_0

    return p3

    :cond_4
    return p2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 12
    :goto_0
    iget p2, p0, Lf/i/a/a/p;->c:I

    .line 13
    invoke-static {p1, p2}, Lf/i/a/a/w;->a(Ljava/lang/Exception;I)Lf/i/a/a/w;

    move-result-object p1

    throw p1
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/w0/z;->r0:Lf/i/a/a/w0/p;

    check-cast v0, Lf/i/a/a/w0/v;

    invoke-virtual {v0}, Lf/i/a/a/w0/v;->h()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lf/i/a/a/c1/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public e()Lf/i/a/a/j0;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/w0/z;->r0:Lf/i/a/a/w0/p;

    check-cast v0, Lf/i/a/a/w0/v;

    .line 2
    iget-object v0, v0, Lf/i/a/a/w0/v;->r:Lf/i/a/a/j0;

    return-object v0
.end method

.method public e0()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lf/i/a/a/w0/z;->r0:Lf/i/a/a/w0/p;

    check-cast v0, Lf/i/a/a/w0/v;

    .line 2
    iget-boolean v1, v0, Lf/i/a/a/w0/v;->L:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lf/i/a/a/w0/v;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lf/i/a/a/w0/v;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lf/i/a/a/w0/v;->k()V

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lf/i/a/a/w0/v;->L:Z
    :try_end_0
    .catch Lf/i/a/a/w0/p$d; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    return-void

    .line 5
    :goto_1
    iget v1, p0, Lf/i/a/a/p;->c:I

    .line 6
    invoke-static {v0, v1}, Lf/i/a/a/w;->a(Ljava/lang/Exception;I)Lf/i/a/a/w;

    move-result-object v0

    throw v0
.end method

.method public j(ILjava/lang/Object;)V
    .locals 4
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    check-cast p2, Lf/i/a/a/w0/s;

    .line 2
    iget-object p1, p0, Lf/i/a/a/w0/z;->r0:Lf/i/a/a/w0/p;

    check-cast p1, Lf/i/a/a/w0/v;

    .line 3
    iget-object v0, p1, Lf/i/a/a/w0/v;->P:Lf/i/a/a/w0/s;

    invoke-virtual {v0, p2}, Lf/i/a/a/w0/s;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget v0, p2, Lf/i/a/a/w0/s;->a:I

    .line 5
    iget v1, p2, Lf/i/a/a/w0/s;->b:F

    .line 6
    iget-object v2, p1, Lf/i/a/a/w0/v;->o:Landroid/media/AudioTrack;

    if-eqz v2, :cond_3

    .line 7
    iget-object v3, p1, Lf/i/a/a/w0/v;->P:Lf/i/a/a/w0/s;

    iget v3, v3, Lf/i/a/a/w0/s;->a:I

    if-eq v3, v0, :cond_2

    .line 8
    invoke-virtual {v2, v0}, Landroid/media/AudioTrack;->attachAuxEffect(I)I

    :cond_2
    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p1, Lf/i/a/a/w0/v;->o:Landroid/media/AudioTrack;

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setAuxEffectSendLevel(F)I

    .line 10
    :cond_3
    iput-object p2, p1, Lf/i/a/a/w0/v;->P:Lf/i/a/a/w0/s;

    goto :goto_0

    .line 11
    :cond_4
    check-cast p2, Lf/i/a/a/w0/i;

    .line 12
    iget-object p1, p0, Lf/i/a/a/w0/z;->r0:Lf/i/a/a/w0/p;

    check-cast p1, Lf/i/a/a/w0/v;

    .line 13
    iget-object v0, p1, Lf/i/a/a/w0/v;->p:Lf/i/a/a/w0/i;

    invoke-virtual {v0, p2}, Lf/i/a/a/w0/i;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    .line 14
    :cond_5
    iput-object p2, p1, Lf/i/a/a/w0/v;->p:Lf/i/a/a/w0/i;

    .line 15
    iget-boolean p2, p1, Lf/i/a/a/w0/v;->Q:Z

    if-eqz p2, :cond_6

    goto :goto_0

    .line 16
    :cond_6
    invoke-virtual {p1}, Lf/i/a/a/w0/v;->d()V

    const/4 p2, 0x0

    .line 17
    iput p2, p1, Lf/i/a/a/w0/v;->O:I

    goto :goto_0

    .line 18
    :cond_7
    iget-object p1, p0, Lf/i/a/a/w0/z;->r0:Lf/i/a/a/w0/p;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    check-cast p1, Lf/i/a/a/w0/v;

    .line 19
    iget v0, p1, Lf/i/a/a/w0/v;->D:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_8

    .line 20
    iput p2, p1, Lf/i/a/a/w0/v;->D:F

    .line 21
    invoke-virtual {p1}, Lf/i/a/a/w0/v;->n()V

    :cond_8
    :goto_0
    return-void
.end method

.method public k0(Lf/i/a/a/c1/c;Lf/i/a/a/z0/g;Lf/i/a/a/b0;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i/a/a/c1/c;",
            "Lf/i/a/a/z0/g<",
            "Lf/i/a/a/z0/j;",
            ">;",
            "Lf/i/a/a/b0;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/c1/d$c;
        }
    .end annotation

    .line 1
    iget-object v0, p3, Lf/i/a/a/b0;->i:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lf/i/a/a/m1/r;->h(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 3
    :cond_0
    sget v1, Lf/i/a/a/m1/h0;->a:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_1

    const/16 v1, 0x20

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v3, p3, Lf/i/a/a/b0;->l:Lf/i/a/a/z0/e;

    invoke-static {p2, v3}, Lf/i/a/a/p;->G(Lf/i/a/a/z0/g;Lf/i/a/a/z0/e;)Z

    move-result p2

    const/4 v3, 0x4

    const/16 v4, 0x8

    const/4 v5, 0x1

    if-eqz p2, :cond_3

    .line 5
    iget v6, p3, Lf/i/a/a/b0;->v:I

    .line 6
    invoke-virtual {p0, v6, v0}, Lf/i/a/a/w0/z;->p0(ILjava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_3

    .line 7
    invoke-interface {p1}, Lf/i/a/a/c1/c;->b()Lf/i/a/a/c1/a;

    move-result-object v6

    if-eqz v6, :cond_3

    or-int/lit8 p1, v1, 0x8

    or-int/2addr p1, v3

    return p1

    :cond_3
    const-string v6, "audio/raw"

    .line 8
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lf/i/a/a/w0/z;->r0:Lf/i/a/a/w0/p;

    iget v6, p3, Lf/i/a/a/b0;->v:I

    iget v7, p3, Lf/i/a/a/b0;->x:I

    .line 9
    check-cast v0, Lf/i/a/a/w0/v;

    invoke-virtual {v0, v6, v7}, Lf/i/a/a/w0/v;->o(II)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lf/i/a/a/w0/z;->r0:Lf/i/a/a/w0/p;

    iget v6, p3, Lf/i/a/a/b0;->v:I

    .line 10
    check-cast v0, Lf/i/a/a/w0/v;

    const/4 v7, 0x2

    invoke-virtual {v0, v6, v7}, Lf/i/a/a/w0/v;->o(II)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    return v5

    .line 11
    :cond_6
    iget-object v0, p3, Lf/i/a/a/b0;->l:Lf/i/a/a/z0/e;

    if-eqz v0, :cond_7

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 12
    :goto_2
    iget v9, v0, Lf/i/a/a/z0/e;->d:I

    if-ge v6, v9, :cond_8

    .line 13
    iget-object v9, v0, Lf/i/a/a/z0/e;->a:[Lf/i/a/a/z0/e$b;

    aget-object v9, v9, v6

    .line 14
    iget-boolean v9, v9, Lf/i/a/a/z0/e$b;->f:Z

    or-int/2addr v8, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_7
    const/4 v8, 0x0

    .line 15
    :cond_8
    iget-object v0, p3, Lf/i/a/a/b0;->i:Ljava/lang/String;

    .line 16
    invoke-interface {p1, v0, v8, v2}, Lf/i/a/a/c1/c;->a(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_a

    if-eqz v8, :cond_9

    .line 18
    iget-object p2, p3, Lf/i/a/a/b0;->i:Ljava/lang/String;

    .line 19
    invoke-interface {p1, p2, v2, v2}, Lf/i/a/a/c1/c;->a(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p1

    .line 20
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    const/4 v5, 0x2

    :cond_9
    return v5

    :cond_a
    if-nez p2, :cond_b

    return v7

    .line 21
    :cond_b
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/i/a/a/c1/a;

    .line 22
    invoke-virtual {p1, p3}, Lf/i/a/a/c1/a;->b(Lf/i/a/a/b0;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 23
    invoke-virtual {p1, p3}, Lf/i/a/a/c1/a;->c(Lf/i/a/a/b0;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/16 v4, 0x10

    :cond_c
    if-eqz p2, :cond_d

    goto :goto_3

    :cond_d
    const/4 v3, 0x3

    :goto_3
    or-int p1, v4, v1

    or-int/2addr p1, v3

    return p1
.end method

.method public final o0(Lf/i/a/a/c1/a;Lf/i/a/a/b0;)I
    .locals 1

    .line 1
    iget-object p1, p1, Lf/i/a/a/c1/a;->a:Ljava/lang/String;

    const-string v0, "OMX.google.raw.decoder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2
    sget p1, Lf/i/a/a/m1/h0;->a:I

    const/16 v0, 0x18

    if-ge p1, v0, :cond_2

    const/16 v0, 0x17

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lf/i/a/a/w0/z;->p0:Landroid/content/Context;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "uimode"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/UiModeManager;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    :cond_1
    const/4 p1, -0x1

    return p1

    .line 5
    :cond_2
    iget p1, p2, Lf/i/a/a/b0;->j:I

    return p1
.end method

.method public p0(ILjava/lang/String;)I
    .locals 2

    const-string v0, "audio/eac3-joc"

    .line 1
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    iget-object p2, p0, Lf/i/a/a/w0/z;->r0:Lf/i/a/a/w0/p;

    const/16 v1, 0x12

    check-cast p2, Lf/i/a/a/w0/v;

    invoke-virtual {p2, p1, v1}, Lf/i/a/a/w0/v;->o(II)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    invoke-static {v0}, Lf/i/a/a/m1/r;->b(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const-string p2, "audio/eac3"

    .line 4
    :cond_1
    invoke-static {p2}, Lf/i/a/a/m1/r;->b(Ljava/lang/String;)I

    move-result p2

    .line 5
    iget-object v0, p0, Lf/i/a/a/w0/z;->r0:Lf/i/a/a/w0/p;

    check-cast v0, Lf/i/a/a/w0/v;

    invoke-virtual {v0, p1, p2}, Lf/i/a/a/w0/v;->o(II)Z

    move-result p1

    if-eqz p1, :cond_2

    return p2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final q0()V
    .locals 31

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lf/i/a/a/w0/z;->r0:Lf/i/a/a/w0/p;

    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/w0/z;->a()Z

    move-result v2

    check-cast v1, Lf/i/a/a/w0/v;

    .line 2
    invoke-virtual {v1}, Lf/i/a/a/w0/v;->i()Z

    move-result v3

    if-eqz v3, :cond_27

    iget v3, v1, Lf/i/a/a/w0/v;->B:I

    if-nez v3, :cond_0

    goto/16 :goto_15

    .line 3
    :cond_0
    iget-object v3, v1, Lf/i/a/a/w0/v;->i:Lf/i/a/a/w0/r;

    .line 4
    iget-object v7, v3, Lf/i/a/a/w0/r;->c:Landroid/media/AudioTrack;

    invoke-static {v7}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v7

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v15, 0x1

    const-wide/16 v16, 0x3e8

    if-ne v7, v8, :cond_19

    .line 5
    invoke-virtual {v3}, Lf/i/a/a/w0/r;->b()J

    move-result-wide v11

    invoke-virtual {v3, v11, v12}, Lf/i/a/a/w0/r;->a(J)J

    move-result-wide v27

    const-wide/16 v11, 0x0

    cmp-long v7, v27, v11

    if-nez v7, :cond_1

    goto/16 :goto_9

    .line 6
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v20

    div-long v13, v20, v16

    .line 7
    iget-wide v4, v3, Lf/i/a/a/w0/r;->k:J

    sub-long v4, v13, v4

    const-wide/16 v20, 0x7530

    cmp-long v7, v4, v20

    if-ltz v7, :cond_3

    .line 8
    iget-object v4, v3, Lf/i/a/a/w0/r;->b:[J

    iget v5, v3, Lf/i/a/a/w0/r;->t:I

    sub-long v20, v27, v13

    aput-wide v20, v4, v5

    add-int/2addr v5, v15

    const/16 v4, 0xa

    .line 9
    rem-int/2addr v5, v4

    iput v5, v3, Lf/i/a/a/w0/r;->t:I

    .line 10
    iget v5, v3, Lf/i/a/a/w0/r;->u:I

    if-ge v5, v4, :cond_2

    add-int/2addr v5, v15

    .line 11
    iput v5, v3, Lf/i/a/a/w0/r;->u:I

    .line 12
    :cond_2
    iput-wide v13, v3, Lf/i/a/a/w0/r;->k:J

    .line 13
    iput-wide v11, v3, Lf/i/a/a/w0/r;->j:J

    const/4 v4, 0x0

    .line 14
    :goto_0
    iget v5, v3, Lf/i/a/a/w0/r;->u:I

    if-ge v4, v5, :cond_3

    .line 15
    iget-wide v10, v3, Lf/i/a/a/w0/r;->j:J

    iget-object v12, v3, Lf/i/a/a/w0/r;->b:[J

    aget-wide v20, v12, v4

    int-to-long v6, v5

    div-long v20, v20, v6

    add-long v5, v20, v10

    iput-wide v5, v3, Lf/i/a/a/w0/r;->j:J

    add-int/lit8 v4, v4, 0x1

    const-wide/16 v11, 0x0

    goto :goto_0

    .line 16
    :cond_3
    iget-boolean v4, v3, Lf/i/a/a/w0/r;->h:Z

    if-eqz v4, :cond_4

    goto/16 :goto_9

    .line 17
    :cond_4
    iget-object v4, v3, Lf/i/a/a/w0/r;->f:Lf/i/a/a/w0/q;

    invoke-static {v4}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v5, v4, Lf/i/a/a/w0/q;->a:Lf/i/a/a/w0/q$a;

    if-eqz v5, :cond_10

    iget-wide v10, v4, Lf/i/a/a/w0/q;->e:J

    sub-long v10, v13, v10

    iget-wide v6, v4, Lf/i/a/a/w0/q;->d:J

    cmp-long v20, v10, v6

    if-gez v20, :cond_5

    goto/16 :goto_3

    .line 19
    :cond_5
    iput-wide v13, v4, Lf/i/a/a/w0/q;->e:J

    .line 20
    iget-object v6, v5, Lf/i/a/a/w0/q$a;->a:Landroid/media/AudioTrack;

    iget-object v7, v5, Lf/i/a/a/w0/q$a;->b:Landroid/media/AudioTimestamp;

    invoke-virtual {v6, v7}, Landroid/media/AudioTrack;->getTimestamp(Landroid/media/AudioTimestamp;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 21
    iget-object v7, v5, Lf/i/a/a/w0/q$a;->b:Landroid/media/AudioTimestamp;

    iget-wide v10, v7, Landroid/media/AudioTimestamp;->framePosition:J

    move-wide/from16 v29, v13

    .line 22
    iget-wide v12, v5, Lf/i/a/a/w0/q$a;->d:J

    cmp-long v14, v12, v10

    if-lez v14, :cond_6

    .line 23
    iget-wide v12, v5, Lf/i/a/a/w0/q$a;->c:J

    const-wide/16 v20, 0x1

    add-long v12, v12, v20

    iput-wide v12, v5, Lf/i/a/a/w0/q$a;->c:J

    .line 24
    :cond_6
    iput-wide v10, v5, Lf/i/a/a/w0/q$a;->d:J

    .line 25
    iget-wide v12, v5, Lf/i/a/a/w0/q$a;->c:J

    const/16 v14, 0x20

    shl-long/2addr v12, v14

    add-long/2addr v10, v12

    iput-wide v10, v5, Lf/i/a/a/w0/q$a;->e:J

    goto :goto_1

    :cond_7
    move-wide/from16 v29, v13

    .line 26
    :goto_1
    iget v5, v4, Lf/i/a/a/w0/q;->b:I

    if-eqz v5, :cond_d

    if-eq v5, v15, :cond_b

    if-eq v5, v9, :cond_a

    if-eq v5, v8, :cond_9

    const/4 v8, 0x4

    if-ne v5, v8, :cond_8

    goto :goto_2

    .line 27
    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_9
    if-eqz v6, :cond_f

    .line 28
    invoke-virtual {v4}, Lf/i/a/a/w0/q;->a()V

    goto :goto_2

    :cond_a
    if-nez v6, :cond_f

    .line 29
    invoke-virtual {v4}, Lf/i/a/a/w0/q;->a()V

    goto :goto_2

    :cond_b
    if-eqz v6, :cond_c

    .line 30
    iget-object v5, v4, Lf/i/a/a/w0/q;->a:Lf/i/a/a/w0/q$a;

    .line 31
    iget-wide v10, v5, Lf/i/a/a/w0/q$a;->e:J

    .line 32
    iget-wide v12, v4, Lf/i/a/a/w0/q;->f:J

    cmp-long v5, v10, v12

    if-lez v5, :cond_f

    .line 33
    invoke-virtual {v4, v9}, Lf/i/a/a/w0/q;->b(I)V

    goto :goto_2

    .line 34
    :cond_c
    invoke-virtual {v4}, Lf/i/a/a/w0/q;->a()V

    goto :goto_2

    :cond_d
    if-eqz v6, :cond_e

    .line 35
    iget-object v5, v4, Lf/i/a/a/w0/q;->a:Lf/i/a/a/w0/q$a;

    .line 36
    iget-object v8, v5, Lf/i/a/a/w0/q$a;->b:Landroid/media/AudioTimestamp;

    iget-wide v10, v8, Landroid/media/AudioTimestamp;->nanoTime:J

    div-long v10, v10, v16

    .line 37
    iget-wide v12, v4, Lf/i/a/a/w0/q;->c:J

    cmp-long v8, v10, v12

    if-ltz v8, :cond_11

    .line 38
    iget-wide v10, v5, Lf/i/a/a/w0/q$a;->e:J

    .line 39
    iput-wide v10, v4, Lf/i/a/a/w0/q;->f:J

    .line 40
    invoke-virtual {v4, v15}, Lf/i/a/a/w0/q;->b(I)V

    goto :goto_2

    .line 41
    :cond_e
    iget-wide v10, v4, Lf/i/a/a/w0/q;->c:J

    sub-long v13, v29, v10

    const-wide/32 v10, 0x7a120

    cmp-long v5, v13, v10

    if-lez v5, :cond_f

    .line 42
    invoke-virtual {v4, v8}, Lf/i/a/a/w0/q;->b(I)V

    :cond_f
    :goto_2
    move v12, v6

    goto :goto_4

    :cond_10
    :goto_3
    move-wide/from16 v29, v13

    :cond_11
    const/4 v12, 0x0

    :goto_4
    const-wide/32 v5, 0x4c4b40

    if-nez v12, :cond_12

    goto :goto_7

    .line 43
    :cond_12
    iget-object v8, v4, Lf/i/a/a/w0/q;->a:Lf/i/a/a/w0/q$a;

    if-eqz v8, :cond_13

    .line 44
    iget-object v8, v8, Lf/i/a/a/w0/q$a;->b:Landroid/media/AudioTimestamp;

    iget-wide v10, v8, Landroid/media/AudioTimestamp;->nanoTime:J

    div-long v10, v10, v16

    move-wide/from16 v23, v10

    goto :goto_5

    :cond_13
    const-wide v23, -0x7fffffffffffffffL    # -4.9E-324

    .line 45
    :goto_5
    iget-object v8, v4, Lf/i/a/a/w0/q;->a:Lf/i/a/a/w0/q$a;

    if-eqz v8, :cond_14

    .line 46
    iget-wide v10, v8, Lf/i/a/a/w0/q$a;->e:J

    goto :goto_6

    :cond_14
    const-wide/16 v10, -0x1

    :goto_6
    sub-long v12, v23, v29

    .line 47
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    cmp-long v8, v12, v5

    if-lez v8, :cond_15

    .line 48
    iget-object v8, v3, Lf/i/a/a/w0/r;->a:Lf/i/a/a/w0/r$a;

    move-object/from16 v20, v8

    move-wide/from16 v21, v10

    move-wide/from16 v25, v29

    invoke-interface/range {v20 .. v28}, Lf/i/a/a/w0/r$a;->c(JJJJ)V

    const/4 v8, 0x4

    .line 49
    invoke-virtual {v4, v8}, Lf/i/a/a/w0/q;->b(I)V

    goto :goto_7

    .line 50
    :cond_15
    invoke-virtual {v3, v10, v11}, Lf/i/a/a/w0/r;->a(J)J

    move-result-wide v12

    sub-long v12, v12, v27

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    cmp-long v8, v12, v5

    if-lez v8, :cond_16

    .line 51
    iget-object v8, v3, Lf/i/a/a/w0/r;->a:Lf/i/a/a/w0/r$a;

    move-object/from16 v20, v8

    move-wide/from16 v21, v10

    move-wide/from16 v25, v29

    invoke-interface/range {v20 .. v28}, Lf/i/a/a/w0/r$a;->b(JJJJ)V

    const/4 v8, 0x4

    .line 52
    invoke-virtual {v4, v8}, Lf/i/a/a/w0/q;->b(I)V

    goto :goto_7

    :cond_16
    const/4 v8, 0x4

    .line 53
    iget v10, v4, Lf/i/a/a/w0/q;->b:I

    if-ne v10, v8, :cond_17

    .line 54
    invoke-virtual {v4}, Lf/i/a/a/w0/q;->a()V

    .line 55
    :cond_17
    :goto_7
    iget-boolean v4, v3, Lf/i/a/a/w0/r;->o:Z

    if-eqz v4, :cond_19

    iget-object v4, v3, Lf/i/a/a/w0/r;->l:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_19

    iget-wide v10, v3, Lf/i/a/a/w0/r;->p:J

    sub-long v13, v29, v10

    const-wide/32 v10, 0x7a120

    cmp-long v8, v13, v10

    if-ltz v8, :cond_19

    .line 56
    :try_start_0
    iget-object v8, v3, Lf/i/a/a/w0/r;->c:Landroid/media/AudioTrack;

    .line 57
    invoke-static {v8}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x0

    new-array v10, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-static {v4}, Lf/i/a/a/m1/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v7, v4

    mul-long v7, v7, v16

    iget-wide v10, v3, Lf/i/a/a/w0/r;->i:J

    sub-long/2addr v7, v10

    iput-wide v7, v3, Lf/i/a/a/w0/r;->m:J

    const-wide/16 v10, 0x0

    .line 58
    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, v3, Lf/i/a/a/w0/r;->m:J

    cmp-long v4, v7, v5

    if-lez v4, :cond_18

    .line 59
    iget-object v4, v3, Lf/i/a/a/w0/r;->a:Lf/i/a/a/w0/r$a;

    invoke-interface {v4, v7, v8}, Lf/i/a/a/w0/r$a;->d(J)V

    .line 60
    iput-wide v10, v3, Lf/i/a/a/w0/r;->m:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_18
    move-wide/from16 v5, v29

    const/4 v4, 0x0

    goto :goto_8

    :catch_0
    const/4 v4, 0x0

    .line 61
    iput-object v4, v3, Lf/i/a/a/w0/r;->l:Ljava/lang/reflect/Method;

    move-wide/from16 v5, v29

    .line 62
    :goto_8
    iput-wide v5, v3, Lf/i/a/a/w0/r;->p:J

    goto :goto_a

    :cond_19
    :goto_9
    const/4 v4, 0x0

    .line 63
    :goto_a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    div-long v5, v5, v16

    .line 64
    iget-object v7, v3, Lf/i/a/a/w0/r;->f:Lf/i/a/a/w0/q;

    invoke-static {v7}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget v8, v7, Lf/i/a/a/w0/q;->b:I

    if-eq v8, v15, :cond_1b

    if-ne v8, v9, :cond_1a

    goto :goto_b

    :cond_1a
    const/4 v8, 0x0

    goto :goto_c

    :cond_1b
    :goto_b
    const/4 v8, 0x1

    :goto_c
    if-eqz v8, :cond_20

    .line 66
    iget-object v2, v7, Lf/i/a/a/w0/q;->a:Lf/i/a/a/w0/q$a;

    if-eqz v2, :cond_1c

    .line 67
    iget-wide v13, v2, Lf/i/a/a/w0/q$a;->e:J

    goto :goto_d

    :cond_1c
    const-wide/16 v13, -0x1

    .line 68
    :goto_d
    invoke-virtual {v3, v13, v14}, Lf/i/a/a/w0/r;->a(J)J

    move-result-wide v2

    .line 69
    iget v8, v7, Lf/i/a/a/w0/q;->b:I

    if-ne v8, v9, :cond_1d

    goto :goto_e

    :cond_1d
    const/4 v15, 0x0

    :goto_e
    if-nez v15, :cond_1e

    goto :goto_11

    .line 70
    :cond_1e
    iget-object v7, v7, Lf/i/a/a/w0/q;->a:Lf/i/a/a/w0/q$a;

    if-eqz v7, :cond_1f

    .line 71
    iget-object v7, v7, Lf/i/a/a/w0/q$a;->b:Landroid/media/AudioTimestamp;

    iget-wide v7, v7, Landroid/media/AudioTimestamp;->nanoTime:J

    div-long v7, v7, v16

    move-wide/from16 v18, v7

    goto :goto_f

    :cond_1f
    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    :goto_f
    sub-long v5, v5, v18

    add-long/2addr v2, v5

    goto :goto_11

    .line 72
    :cond_20
    iget v7, v3, Lf/i/a/a/w0/r;->u:I

    if-nez v7, :cond_21

    .line 73
    invoke-virtual {v3}, Lf/i/a/a/w0/r;->b()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lf/i/a/a/w0/r;->a(J)J

    move-result-wide v5

    goto :goto_10

    .line 74
    :cond_21
    iget-wide v7, v3, Lf/i/a/a/w0/r;->j:J

    add-long/2addr v5, v7

    :goto_10
    if-nez v2, :cond_22

    .line 75
    iget-wide v2, v3, Lf/i/a/a/w0/r;->m:J

    sub-long/2addr v5, v2

    :cond_22
    move-wide v2, v5

    .line 76
    :goto_11
    iget-object v5, v1, Lf/i/a/a/w0/v;->n:Lf/i/a/a/w0/v$c;

    invoke-virtual {v1}, Lf/i/a/a/w0/v;->f()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lf/i/a/a/w0/v$c;->b(J)J

    move-result-wide v5

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 77
    iget-wide v5, v1, Lf/i/a/a/w0/v;->C:J

    move-object v10, v4

    .line 78
    :goto_12
    iget-object v4, v1, Lf/i/a/a/w0/v;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_23

    iget-object v4, v1, Lf/i/a/a/w0/v;->j:Ljava/util/ArrayDeque;

    .line 79
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf/i/a/a/w0/v$e;

    .line 80
    iget-wide v7, v4, Lf/i/a/a/w0/v$e;->c:J

    cmp-long v4, v2, v7

    if-ltz v4, :cond_23

    .line 81
    iget-object v4, v1, Lf/i/a/a/w0/v;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lf/i/a/a/w0/v$e;

    goto :goto_12

    :cond_23
    if-eqz v10, :cond_24

    .line 82
    iget-object v4, v10, Lf/i/a/a/w0/v$e;->a:Lf/i/a/a/j0;

    .line 83
    iput-object v4, v1, Lf/i/a/a/w0/v;->r:Lf/i/a/a/j0;

    .line 84
    iget-wide v7, v10, Lf/i/a/a/w0/v$e;->c:J

    .line 85
    iput-wide v7, v1, Lf/i/a/a/w0/v;->t:J

    .line 86
    iget-wide v7, v10, Lf/i/a/a/w0/v$e;->b:J

    .line 87
    iget-wide v9, v1, Lf/i/a/a/w0/v;->C:J

    sub-long/2addr v7, v9

    iput-wide v7, v1, Lf/i/a/a/w0/v;->s:J

    .line 88
    :cond_24
    iget-object v4, v1, Lf/i/a/a/w0/v;->r:Lf/i/a/a/j0;

    iget v4, v4, Lf/i/a/a/j0;->a:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v7

    if-nez v4, :cond_25

    .line 89
    iget-wide v7, v1, Lf/i/a/a/w0/v;->s:J

    add-long/2addr v2, v7

    iget-wide v7, v1, Lf/i/a/a/w0/v;->t:J

    sub-long/2addr v2, v7

    goto :goto_14

    .line 90
    :cond_25
    iget-object v4, v1, Lf/i/a/a/w0/v;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 91
    iget-wide v7, v1, Lf/i/a/a/w0/v;->s:J

    iget-object v4, v1, Lf/i/a/a/w0/v;->b:Lf/i/a/a/w0/v$b;

    iget-wide v9, v1, Lf/i/a/a/w0/v;->t:J

    sub-long/2addr v2, v9

    .line 92
    invoke-interface {v4, v2, v3}, Lf/i/a/a/w0/v$b;->c(J)J

    move-result-wide v2

    goto :goto_13

    .line 93
    :cond_26
    iget-wide v7, v1, Lf/i/a/a/w0/v;->s:J

    iget-wide v9, v1, Lf/i/a/a/w0/v;->t:J

    sub-long/2addr v2, v9

    iget-object v4, v1, Lf/i/a/a/w0/v;->r:Lf/i/a/a/j0;

    iget v4, v4, Lf/i/a/a/j0;->a:F

    .line 94
    invoke-static {v2, v3, v4}, Lf/i/a/a/m1/h0;->E(JF)J

    move-result-wide v2

    :goto_13
    add-long/2addr v2, v7

    .line 95
    :goto_14
    iget-object v4, v1, Lf/i/a/a/w0/v;->n:Lf/i/a/a/w0/v$c;

    iget-object v1, v1, Lf/i/a/a/w0/v;->b:Lf/i/a/a/w0/v$b;

    .line 96
    invoke-interface {v1}, Lf/i/a/a/w0/v$b;->b()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lf/i/a/a/w0/v$c;->b(J)J

    move-result-wide v7

    add-long/2addr v7, v2

    add-long/2addr v7, v5

    goto :goto_16

    :cond_27
    :goto_15
    const-wide/high16 v7, -0x8000000000000000L

    :goto_16
    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v3, v7, v1

    if-eqz v3, :cond_29

    .line 97
    iget-boolean v1, v0, Lf/i/a/a/w0/z;->E0:Z

    if-eqz v1, :cond_28

    goto :goto_17

    :cond_28
    iget-wide v1, v0, Lf/i/a/a/w0/z;->C0:J

    .line 98
    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    :goto_17
    iput-wide v7, v0, Lf/i/a/a/w0/z;->C0:J

    const/4 v1, 0x0

    .line 99
    iput-boolean v1, v0, Lf/i/a/a/w0/z;->E0:Z

    :cond_29
    return-void
.end method

.method public r()Lf/i/a/a/m1/q;
    .locals 0

    return-object p0
.end method

.method public s(Lf/i/a/a/j0;)Lf/i/a/a/j0;
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/w0/z;->r0:Lf/i/a/a/w0/p;

    check-cast v0, Lf/i/a/a/w0/v;

    .line 2
    iget-object v1, v0, Lf/i/a/a/w0/v;->n:Lf/i/a/a/w0/v$c;

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lf/i/a/a/w0/v$c;->j:Z

    if-nez v1, :cond_0

    .line 3
    sget-object p1, Lf/i/a/a/j0;->e:Lf/i/a/a/j0;

    iput-object p1, v0, Lf/i/a/a/w0/v;->r:Lf/i/a/a/j0;

    goto :goto_2

    .line 4
    :cond_0
    iget-object v1, v0, Lf/i/a/a/w0/v;->q:Lf/i/a/a/j0;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lf/i/a/a/w0/v;->j:Ljava/util/ArrayDeque;

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lf/i/a/a/w0/v;->j:Ljava/util/ArrayDeque;

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/w0/v$e;

    .line 7
    iget-object v1, v1, Lf/i/a/a/w0/v$e;->a:Lf/i/a/a/j0;

    goto :goto_0

    .line 8
    :cond_2
    iget-object v1, v0, Lf/i/a/a/w0/v;->r:Lf/i/a/a/j0;

    .line 9
    :goto_0
    invoke-virtual {p1, v1}, Lf/i/a/a/j0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 10
    invoke-virtual {v0}, Lf/i/a/a/w0/v;->i()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 11
    iput-object p1, v0, Lf/i/a/a/w0/v;->q:Lf/i/a/a/j0;

    goto :goto_1

    .line 12
    :cond_3
    iput-object p1, v0, Lf/i/a/a/w0/v;->r:Lf/i/a/a/j0;

    .line 13
    :cond_4
    :goto_1
    iget-object p1, v0, Lf/i/a/a/w0/v;->r:Lf/i/a/a/j0;

    :goto_2
    return-object p1
.end method

.method public v()J
    .locals 2

    .line 1
    iget v0, p0, Lf/i/a/a/p;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lf/i/a/a/w0/z;->q0()V

    .line 3
    :cond_0
    iget-wide v0, p0, Lf/i/a/a/w0/z;->C0:J

    return-wide v0
.end method

.method public x()V
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 1
    :try_start_0
    iput-wide v0, p0, Lf/i/a/a/w0/z;->F0:J

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lf/i/a/a/w0/z;->G0:I

    .line 3
    iget-object v0, p0, Lf/i/a/a/w0/z;->r0:Lf/i/a/a/w0/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    check-cast v0, Lf/i/a/a/w0/v;

    :try_start_1
    invoke-virtual {v0}, Lf/i/a/a/w0/v;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4
    :try_start_2
    invoke-super {p0}, Lf/i/a/a/c1/b;->x()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5
    iget-object v0, p0, Lf/i/a/a/w0/z;->q0:Lf/i/a/a/w0/o$a;

    iget-object v1, p0, Lf/i/a/a/c1/b;->n0:Lf/i/a/a/y0/d;

    invoke-virtual {v0, v1}, Lf/i/a/a/w0/o$a;->a(Lf/i/a/a/y0/d;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lf/i/a/a/w0/z;->q0:Lf/i/a/a/w0/o$a;

    iget-object v2, p0, Lf/i/a/a/c1/b;->n0:Lf/i/a/a/y0/d;

    invoke-virtual {v1, v2}, Lf/i/a/a/w0/o$a;->a(Lf/i/a/a/y0/d;)V

    .line 6
    throw v0

    :catchall_1
    move-exception v0

    .line 7
    :try_start_3
    invoke-super {p0}, Lf/i/a/a/c1/b;->x()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 8
    iget-object v1, p0, Lf/i/a/a/w0/z;->q0:Lf/i/a/a/w0/o$a;

    iget-object v2, p0, Lf/i/a/a/c1/b;->n0:Lf/i/a/a/y0/d;

    invoke-virtual {v1, v2}, Lf/i/a/a/w0/o$a;->a(Lf/i/a/a/y0/d;)V

    .line 9
    throw v0

    :catchall_2
    move-exception v0

    .line 10
    iget-object v1, p0, Lf/i/a/a/w0/z;->q0:Lf/i/a/a/w0/o$a;

    iget-object v2, p0, Lf/i/a/a/c1/b;->n0:Lf/i/a/a/y0/d;

    invoke-virtual {v1, v2}, Lf/i/a/a/w0/o$a;->a(Lf/i/a/a/y0/d;)V

    .line 11
    throw v0
.end method

.method public y(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    .line 1
    new-instance p1, Lf/i/a/a/y0/d;

    invoke-direct {p1}, Lf/i/a/a/y0/d;-><init>()V

    iput-object p1, p0, Lf/i/a/a/c1/b;->n0:Lf/i/a/a/y0/d;

    .line 2
    iget-object v0, p0, Lf/i/a/a/w0/z;->q0:Lf/i/a/a/w0/o$a;

    .line 3
    iget-object v1, v0, Lf/i/a/a/w0/o$a;->b:Lf/i/a/a/w0/o;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, v0, Lf/i/a/a/w0/o$a;->a:Landroid/os/Handler;

    new-instance v2, Lf/i/a/a/w0/c;

    invoke-direct {v2, v0, p1}, Lf/i/a/a/w0/c;-><init>(Lf/i/a/a/w0/o$a;Lf/i/a/a/y0/d;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5
    :cond_0
    iget-object p1, p0, Lf/i/a/a/p;->b:Lf/i/a/a/q0;

    .line 6
    iget p1, p1, Lf/i/a/a/q0;->a:I

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 7
    iget-object v1, p0, Lf/i/a/a/w0/z;->r0:Lf/i/a/a/w0/p;

    check-cast v1, Lf/i/a/a/w0/v;

    if-eqz v1, :cond_3

    .line 8
    sget v2, Lf/i/a/a/m1/h0;->a:I

    const/16 v3, 0x15

    const/4 v4, 0x1

    if-lt v2, v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v0}, Lc/a/a/b/g/h;->v(Z)V

    .line 9
    iget-boolean v0, v1, Lf/i/a/a/w0/v;->Q:Z

    if-eqz v0, :cond_2

    iget v0, v1, Lf/i/a/a/w0/v;->O:I

    if-eq v0, p1, :cond_5

    .line 10
    :cond_2
    iput-boolean v4, v1, Lf/i/a/a/w0/v;->Q:Z

    .line 11
    iput p1, v1, Lf/i/a/a/w0/v;->O:I

    .line 12
    invoke-virtual {v1}, Lf/i/a/a/w0/v;->d()V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 13
    throw p1

    .line 14
    :cond_4
    iget-object p1, p0, Lf/i/a/a/w0/z;->r0:Lf/i/a/a/w0/p;

    check-cast p1, Lf/i/a/a/w0/v;

    .line 15
    iget-boolean v1, p1, Lf/i/a/a/w0/v;->Q:Z

    if-eqz v1, :cond_5

    .line 16
    iput-boolean v0, p1, Lf/i/a/a/w0/v;->Q:Z

    .line 17
    iput v0, p1, Lf/i/a/a/w0/v;->O:I

    .line 18
    invoke-virtual {p1}, Lf/i/a/a/w0/v;->d()V

    :cond_5
    :goto_0
    return-void
.end method

.method public z(JZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    const/4 p3, 0x0

    .line 1
    iput-boolean p3, p0, Lf/i/a/a/c1/b;->i0:Z

    .line 2
    iput-boolean p3, p0, Lf/i/a/a/c1/b;->j0:Z

    .line 3
    invoke-virtual {p0}, Lf/i/a/a/c1/b;->M()Z

    .line 4
    iget-object v0, p0, Lf/i/a/a/c1/b;->r:Lf/i/a/a/m1/d0;

    invoke-virtual {v0}, Lf/i/a/a/m1/d0;->b()V

    .line 5
    iget-object v0, p0, Lf/i/a/a/w0/z;->r0:Lf/i/a/a/w0/p;

    check-cast v0, Lf/i/a/a/w0/v;

    invoke-virtual {v0}, Lf/i/a/a/w0/v;->d()V

    .line 6
    iput-wide p1, p0, Lf/i/a/a/w0/z;->C0:J

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lf/i/a/a/w0/z;->D0:Z

    .line 8
    iput-boolean p1, p0, Lf/i/a/a/w0/z;->E0:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    iput-wide p1, p0, Lf/i/a/a/w0/z;->F0:J

    .line 10
    iput p3, p0, Lf/i/a/a/w0/z;->G0:I

    return-void
.end method
