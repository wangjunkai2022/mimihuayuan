.class public Lf/i/a/a/n1/m;
.super Lf/i/a/a/c1/b;
.source "MediaCodecVideoRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/n1/m$c;,
        Lf/i/a/a/n1/m$b;
    }
.end annotation


# static fields
.field public static final b1:[I

.field public static c1:Z

.field public static d1:Z


# instance fields
.field public A0:Landroid/view/Surface;

.field public B0:I

.field public C0:Z

.field public D0:J

.field public E0:J

.field public F0:J

.field public G0:I

.field public H0:I

.field public I0:I

.field public J0:J

.field public K0:I

.field public L0:F

.field public M0:I

.field public N0:I

.field public O0:I

.field public P0:F

.field public Q0:I

.field public R0:I

.field public S0:I

.field public T0:F

.field public U0:Z

.field public V0:I

.field public W0:Lf/i/a/a/n1/m$c;

.field public X0:J

.field public Y0:J

.field public Z0:I

.field public a1:Lf/i/a/a/n1/n;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final p0:Landroid/content/Context;

.field public final q0:Lf/i/a/a/n1/o;

.field public final r0:Lf/i/a/a/n1/s$a;

.field public final s0:J

.field public final t0:I

.field public final u0:Z

.field public final v0:[J

.field public final w0:[J

.field public x0:Lf/i/a/a/n1/m$b;

.field public y0:Z

.field public z0:Landroid/view/Surface;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lf/i/a/a/n1/m;->b1:[I

    return-void

    :array_0
    .array-data 4
        0x780
        0x640
        0x5a0
        0x500
        0x3c0
        0x356
        0x280
        0x21c
        0x1e0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lf/i/a/a/c1/c;JLf/i/a/a/z0/g;ZZLandroid/os/Handler;Lf/i/a/a/n1/s;I)V
    .locals 8
    .param p5    # Lf/i/a/a/z0/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Lf/i/a/a/n1/s;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lf/i/a/a/c1/c;",
            "J",
            "Lf/i/a/a/z0/g<",
            "Lf/i/a/a/z0/j;",
            ">;ZZ",
            "Landroid/os/Handler;",
            "Lf/i/a/a/n1/s;",
            "I)V"
        }
    .end annotation

    move-object v7, p0

    const/4 v1, 0x2

    const/high16 v6, 0x41f00000    # 30.0f

    move-object v0, p0

    move-object v2, p2

    move-object v3, p5

    move v4, p6

    move v5, p7

    .line 1
    invoke-direct/range {v0 .. v6}, Lf/i/a/a/c1/b;-><init>(ILf/i/a/a/c1/c;Lf/i/a/a/z0/g;ZZF)V

    move-wide v0, p3

    .line 2
    iput-wide v0, v7, Lf/i/a/a/n1/m;->s0:J

    move/from16 v0, p10

    .line 3
    iput v0, v7, Lf/i/a/a/n1/m;->t0:I

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v7, Lf/i/a/a/n1/m;->p0:Landroid/content/Context;

    .line 5
    new-instance v1, Lf/i/a/a/n1/o;

    invoke-direct {v1, v0}, Lf/i/a/a/n1/o;-><init>(Landroid/content/Context;)V

    iput-object v1, v7, Lf/i/a/a/n1/m;->q0:Lf/i/a/a/n1/o;

    .line 6
    new-instance v0, Lf/i/a/a/n1/s$a;

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    invoke-direct {v0, v1, v2}, Lf/i/a/a/n1/s$a;-><init>(Landroid/os/Handler;Lf/i/a/a/n1/s;)V

    iput-object v0, v7, Lf/i/a/a/n1/m;->r0:Lf/i/a/a/n1/s$a;

    .line 7
    sget-object v0, Lf/i/a/a/m1/h0;->c:Ljava/lang/String;

    const-string v1, "NVIDIA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 8
    iput-boolean v0, v7, Lf/i/a/a/n1/m;->u0:Z

    const/16 v0, 0xa

    new-array v1, v0, [J

    .line 9
    iput-object v1, v7, Lf/i/a/a/n1/m;->v0:[J

    new-array v0, v0, [J

    .line 10
    iput-object v0, v7, Lf/i/a/a/n1/m;->w0:[J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    iput-wide v0, v7, Lf/i/a/a/n1/m;->Y0:J

    .line 12
    iput-wide v0, v7, Lf/i/a/a/n1/m;->X0:J

    .line 13
    iput-wide v0, v7, Lf/i/a/a/n1/m;->E0:J

    const/4 v0, -0x1

    .line 14
    iput v0, v7, Lf/i/a/a/n1/m;->M0:I

    .line 15
    iput v0, v7, Lf/i/a/a/n1/m;->N0:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 16
    iput v0, v7, Lf/i/a/a/n1/m;->P0:F

    .line 17
    iput v0, v7, Lf/i/a/a/n1/m;->L0:F

    const/4 v0, 0x1

    .line 18
    iput v0, v7, Lf/i/a/a/n1/m;->B0:I

    .line 19
    invoke-virtual {p0}, Lf/i/a/a/n1/m;->p0()V

    return-void
.end method

.method public static r0(Lf/i/a/a/c1/a;Ljava/lang/String;II)I
    .locals 7

    const/4 v0, -0x1

    if-eq p2, v0, :cond_7

    if-ne p3, v0, :cond_0

    goto/16 :goto_5

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "video/x-vnd.on2.vp9"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_1
    const-string v1, "video/x-vnd.on2.vp8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_2
    const-string v1, "video/avc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v1, "video/mp4v-es"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_4
    const-string v1, "video/hevc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_5
    const-string v1, "video/3gpp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_6

    if-eq p1, v3, :cond_6

    if-eq p1, v6, :cond_3

    if-eq p1, v5, :cond_6

    if-eq p1, v4, :cond_2

    if-eq p1, v2, :cond_2

    return v0

    :cond_2
    mul-int p2, p2, p3

    goto :goto_4

    .line 2
    :cond_3
    sget-object p1, Lf/i/a/a/m1/h0;->d:Ljava/lang/String;

    const-string v1, "BRAVIA 4K 2015"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Lf/i/a/a/m1/h0;->c:Ljava/lang/String;

    const-string v1, "Amazon"

    .line 3
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lf/i/a/a/m1/h0;->d:Ljava/lang/String;

    const-string v1, "KFSOWI"

    .line 4
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Lf/i/a/a/m1/h0;->d:Ljava/lang/String;

    const-string v1, "AFTS"

    .line 5
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p0, p0, Lf/i/a/a/c1/a;->f:Z

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    const/16 p0, 0x10

    .line 6
    invoke-static {p2, p0}, Lf/i/a/a/m1/h0;->i(II)I

    move-result p1

    invoke-static {p3, p0}, Lf/i/a/a/m1/h0;->i(II)I

    move-result p2

    mul-int p2, p2, p1

    mul-int/lit8 p2, p2, 0x10

    mul-int/lit8 p2, p2, 0x10

    goto :goto_3

    :cond_5
    :goto_2
    return v0

    :cond_6
    mul-int p2, p2, p3

    :goto_3
    const/4 v4, 0x2

    :goto_4
    mul-int/lit8 p2, p2, 0x3

    mul-int/lit8 v4, v4, 0x2

    .line 7
    div-int/2addr p2, v4

    return p2

    :cond_7
    :goto_5
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x63306f58 -> :sswitch_5
        -0x63185e82 -> :sswitch_4
        0x46cdc642 -> :sswitch_3
        0x4f62373a -> :sswitch_2
        0x5f50bed8 -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch
.end method

.method public static s0(Lf/i/a/a/c1/a;Lf/i/a/a/b0;)I
    .locals 3

    .line 1
    iget v0, p1, Lf/i/a/a/b0;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2
    iget-object p0, p1, Lf/i/a/a/b0;->k:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    .line 3
    iget-object v2, p1, Lf/i/a/a/b0;->k:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget p0, p1, Lf/i/a/a/b0;->j:I

    add-int/2addr p0, v1

    return p0

    .line 5
    :cond_1
    iget-object v0, p1, Lf/i/a/a/b0;->i:Ljava/lang/String;

    iget v1, p1, Lf/i/a/a/b0;->n:I

    iget p1, p1, Lf/i/a/a/b0;->o:I

    invoke-static {p0, v0, v1, p1}, Lf/i/a/a/n1/m;->r0(Lf/i/a/a/c1/a;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static t0(J)Z
    .locals 3

    const-wide/16 v0, -0x7530

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public A()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-super {p0}, Lf/i/a/a/c1/b;->A()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v1, p0, Lf/i/a/a/n1/m;->A0:Landroid/view/Surface;

    if-eqz v1, :cond_1

    .line 3
    iget-object v2, p0, Lf/i/a/a/n1/m;->z0:Landroid/view/Surface;

    if-ne v2, v1, :cond_0

    .line 4
    iput-object v0, p0, Lf/i/a/a/n1/m;->z0:Landroid/view/Surface;

    .line 5
    :cond_0
    iget-object v1, p0, Lf/i/a/a/n1/m;->A0:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 6
    iput-object v0, p0, Lf/i/a/a/n1/m;->A0:Landroid/view/Surface;

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 7
    iget-object v2, p0, Lf/i/a/a/n1/m;->A0:Landroid/view/Surface;

    if-eqz v2, :cond_3

    .line 8
    iget-object v3, p0, Lf/i/a/a/n1/m;->z0:Landroid/view/Surface;

    if-ne v3, v2, :cond_2

    .line 9
    iput-object v0, p0, Lf/i/a/a/n1/m;->z0:Landroid/view/Surface;

    .line 10
    :cond_2
    iget-object v2, p0, Lf/i/a/a/n1/m;->A0:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 11
    iput-object v0, p0, Lf/i/a/a/n1/m;->A0:Landroid/view/Surface;

    .line 12
    :cond_3
    throw v1
.end method

.method public final A0(Landroid/media/MediaCodec;II)V
    .locals 0

    .line 1
    iput p2, p0, Lf/i/a/a/n1/m;->M0:I

    .line 2
    iput p3, p0, Lf/i/a/a/n1/m;->N0:I

    .line 3
    iget p2, p0, Lf/i/a/a/n1/m;->L0:F

    iput p2, p0, Lf/i/a/a/n1/m;->P0:F

    .line 4
    sget p2, Lf/i/a/a/m1/h0;->a:I

    const/16 p3, 0x15

    if-lt p2, p3, :cond_1

    .line 5
    iget p2, p0, Lf/i/a/a/n1/m;->K0:I

    const/16 p3, 0x5a

    if-eq p2, p3, :cond_0

    const/16 p3, 0x10e

    if-ne p2, p3, :cond_2

    .line 6
    :cond_0
    iget p2, p0, Lf/i/a/a/n1/m;->M0:I

    .line 7
    iget p3, p0, Lf/i/a/a/n1/m;->N0:I

    iput p3, p0, Lf/i/a/a/n1/m;->M0:I

    .line 8
    iput p2, p0, Lf/i/a/a/n1/m;->N0:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 9
    iget p3, p0, Lf/i/a/a/n1/m;->P0:F

    div-float/2addr p2, p3

    iput p2, p0, Lf/i/a/a/n1/m;->P0:F

    goto :goto_0

    .line 10
    :cond_1
    iget p2, p0, Lf/i/a/a/n1/m;->K0:I

    iput p2, p0, Lf/i/a/a/n1/m;->O0:I

    .line 11
    :cond_2
    :goto_0
    iget p2, p0, Lf/i/a/a/n1/m;->B0:I

    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    return-void
.end method

.method public B()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lf/i/a/a/n1/m;->G0:I

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lf/i/a/a/n1/m;->F0:J

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Lf/i/a/a/n1/m;->J0:J

    return-void
.end method

.method public B0(Landroid/media/MediaCodec;I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/n1/m;->w0()V

    const-string v0, "releaseOutputBuffer"

    .line 2
    invoke-static {v0}, Lc/a/a/b/g/h;->g(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 4
    invoke-static {}, Lc/a/a/b/g/h;->N()V

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/16 v1, 0x3e8

    mul-long p1, p1, v1

    iput-wide p1, p0, Lf/i/a/a/n1/m;->J0:J

    .line 6
    iget-object p1, p0, Lf/i/a/a/c1/b;->n0:Lf/i/a/a/y0/d;

    iget p2, p1, Lf/i/a/a/y0/d;->e:I

    add-int/2addr p2, v0

    iput p2, p1, Lf/i/a/a/y0/d;->e:I

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lf/i/a/a/n1/m;->H0:I

    .line 8
    invoke-virtual {p0}, Lf/i/a/a/n1/m;->v0()V

    return-void
.end method

.method public C()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 1
    iput-wide v0, p0, Lf/i/a/a/n1/m;->E0:J

    .line 2
    invoke-virtual {p0}, Lf/i/a/a/n1/m;->u0()V

    return-void
.end method

.method public C0(Landroid/media/MediaCodec;IJ)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/n1/m;->w0()V

    const-string v0, "releaseOutputBuffer"

    .line 2
    invoke-static {v0}, Lc/a/a/b/g/h;->g(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, p2, p3, p4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    .line 4
    invoke-static {}, Lc/a/a/b/g/h;->N()V

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/16 p3, 0x3e8

    mul-long p1, p1, p3

    iput-wide p1, p0, Lf/i/a/a/n1/m;->J0:J

    .line 6
    iget-object p1, p0, Lf/i/a/a/c1/b;->n0:Lf/i/a/a/y0/d;

    iget p2, p1, Lf/i/a/a/y0/d;->e:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lf/i/a/a/y0/d;->e:I

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lf/i/a/a/n1/m;->H0:I

    .line 8
    invoke-virtual {p0}, Lf/i/a/a/n1/m;->v0()V

    return-void
.end method

.method public D([Lf/i/a/a/b0;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lf/i/a/a/n1/m;->Y0:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 2
    iput-wide p2, p0, Lf/i/a/a/n1/m;->Y0:J

    goto :goto_1

    .line 3
    :cond_0
    iget p1, p0, Lf/i/a/a/n1/m;->Z0:I

    iget-object v0, p0, Lf/i/a/a/n1/m;->v0:[J

    array-length v1, v0

    if-ne p1, v1, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 4
    aget-wide v1, v0, p1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 5
    iput p1, p0, Lf/i/a/a/n1/m;->Z0:I

    .line 6
    :goto_0
    iget-object p1, p0, Lf/i/a/a/n1/m;->v0:[J

    iget v0, p0, Lf/i/a/a/n1/m;->Z0:I

    add-int/lit8 v1, v0, -0x1

    aput-wide p2, p1, v1

    .line 7
    iget-object p1, p0, Lf/i/a/a/n1/m;->w0:[J

    add-int/lit8 v0, v0, -0x1

    iget-wide p2, p0, Lf/i/a/a/n1/m;->X0:J

    aput-wide p2, p1, v0

    :goto_1
    return-void
.end method

.method public final D0()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lf/i/a/a/n1/m;->s0:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lf/i/a/a/n1/m;->s0:J

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iput-wide v0, p0, Lf/i/a/a/n1/m;->E0:J

    return-void
.end method

.method public final E0(Lf/i/a/a/c1/a;)Z
    .locals 2

    .line 1
    sget v0, Lf/i/a/a/m1/h0;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Lf/i/a/a/n1/m;->U0:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lf/i/a/a/c1/a;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {p0, v0}, Lf/i/a/a/n1/m;->q0(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p1, p1, Lf/i/a/a/c1/a;->f:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lf/i/a/a/n1/m;->p0:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Lf/i/a/a/n1/k;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public F0(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/c1/b;->n0:Lf/i/a/a/y0/d;

    iget v1, v0, Lf/i/a/a/y0/d;->g:I

    add-int/2addr v1, p1

    iput v1, v0, Lf/i/a/a/y0/d;->g:I

    .line 2
    iget v1, p0, Lf/i/a/a/n1/m;->G0:I

    add-int/2addr v1, p1

    iput v1, p0, Lf/i/a/a/n1/m;->G0:I

    .line 3
    iget v1, p0, Lf/i/a/a/n1/m;->H0:I

    add-int/2addr v1, p1

    iput v1, p0, Lf/i/a/a/n1/m;->H0:I

    .line 4
    iget p1, v0, Lf/i/a/a/y0/d;->h:I

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Lf/i/a/a/y0/d;->h:I

    .line 5
    iget p1, p0, Lf/i/a/a/n1/m;->t0:I

    if-lez p1, :cond_0

    iget v0, p0, Lf/i/a/a/n1/m;->G0:I

    if-lt v0, p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lf/i/a/a/n1/m;->u0()V

    :cond_0
    return-void
.end method

.method public I(Landroid/media/MediaCodec;Lf/i/a/a/c1/a;Lf/i/a/a/b0;Lf/i/a/a/b0;)I
    .locals 2

    const/4 p1, 0x1

    .line 1
    invoke-virtual {p2, p3, p4, p1}, Lf/i/a/a/c1/a;->d(Lf/i/a/a/b0;Lf/i/a/a/b0;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p4, Lf/i/a/a/b0;->n:I

    iget-object v0, p0, Lf/i/a/a/n1/m;->x0:Lf/i/a/a/n1/m$b;

    iget v1, v0, Lf/i/a/a/n1/m$b;->a:I

    if-gt p1, v1, :cond_1

    iget p1, p4, Lf/i/a/a/b0;->o:I

    iget v0, v0, Lf/i/a/a/n1/m$b;->b:I

    if-gt p1, v0, :cond_1

    .line 2
    invoke-static {p2, p4}, Lf/i/a/a/n1/m;->s0(Lf/i/a/a/c1/a;Lf/i/a/a/b0;)I

    move-result p1

    iget-object p2, p0, Lf/i/a/a/n1/m;->x0:Lf/i/a/a/n1/m$b;

    iget p2, p2, Lf/i/a/a/n1/m$b;->c:I

    if-gt p1, p2, :cond_1

    .line 3
    invoke-virtual {p3, p4}, Lf/i/a/a/b0;->w(Lf/i/a/a/b0;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public J(Lf/i/a/a/c1/a;Landroid/media/MediaCodec;Lf/i/a/a/b0;Landroid/media/MediaCrypto;F)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p5

    .line 1
    iget-object v5, v1, Lf/i/a/a/c1/a;->c:Ljava/lang/String;

    .line 2
    iget-object v6, v0, Lf/i/a/a/p;->f:[Lf/i/a/a/b0;

    .line 3
    iget v7, v3, Lf/i/a/a/b0;->n:I

    .line 4
    iget v8, v3, Lf/i/a/a/b0;->o:I

    .line 5
    invoke-static {v1, v3}, Lf/i/a/a/n1/m;->s0(Lf/i/a/a/c1/a;Lf/i/a/a/b0;)I

    move-result v9

    .line 6
    array-length v10, v6

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, -0x1

    if-ne v10, v12, :cond_1

    if-eq v9, v14, :cond_0

    .line 7
    iget-object v6, v3, Lf/i/a/a/b0;->i:Ljava/lang/String;

    iget v10, v3, Lf/i/a/a/b0;->n:I

    iget v15, v3, Lf/i/a/a/b0;->o:I

    .line 8
    invoke-static {v1, v6, v10, v15}, Lf/i/a/a/n1/m;->r0(Lf/i/a/a/c1/a;Ljava/lang/String;II)I

    move-result v6

    if-eq v6, v14, :cond_0

    int-to-float v9, v9

    const/high16 v10, 0x3fc00000    # 1.5f

    mul-float v9, v9, v10

    float-to-int v9, v9

    .line 9
    invoke-static {v9, v6}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 10
    :cond_0
    new-instance v6, Lf/i/a/a/n1/m$b;

    invoke-direct {v6, v7, v8, v9}, Lf/i/a/a/n1/m$b;-><init>(III)V

    move-object/from16 v23, v5

    goto/16 :goto_10

    .line 11
    :cond_1
    array-length v10, v6

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_0
    if-ge v15, v10, :cond_5

    aget-object v11, v6, v15

    .line 12
    invoke-virtual {v1, v3, v11, v13}, Lf/i/a/a/c1/a;->d(Lf/i/a/a/b0;Lf/i/a/a/b0;Z)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 13
    iget v12, v11, Lf/i/a/a/b0;->n:I

    if-eq v12, v14, :cond_3

    iget v12, v11, Lf/i/a/a/b0;->o:I

    if-ne v12, v14, :cond_2

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v12, 0x1

    :goto_2
    or-int v16, v16, v12

    .line 14
    iget v12, v11, Lf/i/a/a/b0;->n:I

    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 15
    iget v12, v11, Lf/i/a/a/b0;->o:I

    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 16
    invoke-static {v1, v11}, Lf/i/a/a/n1/m;->s0(Lf/i/a/a/c1/a;Lf/i/a/a/b0;)I

    move-result v11

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    :cond_4
    add-int/lit8 v15, v15, 0x1

    const/4 v12, 0x1

    goto :goto_0

    :cond_5
    if-eqz v16, :cond_13

    .line 17
    iget v6, v3, Lf/i/a/a/b0;->o:I

    iget v10, v3, Lf/i/a/a/b0;->n:I

    if-le v6, v10, :cond_6

    const/4 v6, 0x1

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    :goto_3
    if-eqz v6, :cond_7

    .line 18
    iget v10, v3, Lf/i/a/a/b0;->o:I

    goto :goto_4

    :cond_7
    iget v10, v3, Lf/i/a/a/b0;->n:I

    :goto_4
    if-eqz v6, :cond_8

    .line 19
    iget v11, v3, Lf/i/a/a/b0;->n:I

    goto :goto_5

    :cond_8
    iget v11, v3, Lf/i/a/a/b0;->o:I

    :goto_5
    int-to-float v12, v11

    int-to-float v14, v10

    div-float/2addr v12, v14

    .line 20
    sget-object v14, Lf/i/a/a/n1/m;->b1:[I

    array-length v15, v14

    :goto_6
    if-ge v13, v15, :cond_12

    move/from16 v18, v15

    aget v15, v14, v13

    move-object/from16 v19, v14

    int-to-float v14, v15

    mul-float v14, v14, v12

    float-to-int v14, v14

    if-le v15, v10, :cond_12

    if-gt v14, v11, :cond_9

    goto/16 :goto_d

    :cond_9
    move/from16 v20, v10

    .line 21
    sget v10, Lf/i/a/a/m1/h0;->a:I

    move/from16 v21, v11

    const/16 v11, 0x15

    if-lt v10, v11, :cond_e

    if-eqz v6, :cond_a

    move v10, v14

    goto :goto_7

    :cond_a
    move v10, v15

    :goto_7
    if-eqz v6, :cond_b

    goto :goto_8

    :cond_b
    move v15, v14

    .line 22
    :goto_8
    iget-object v11, v1, Lf/i/a/a/c1/a;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v11, :cond_c

    .line 23
    sget-object v10, Lf/i/a/a/m1/h0;->e:Ljava/lang/String;

    goto :goto_9

    .line 24
    :cond_c
    invoke-virtual {v11}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v11

    if-nez v11, :cond_d

    .line 25
    sget-object v10, Lf/i/a/a/m1/h0;->e:Ljava/lang/String;

    :goto_9
    move/from16 v22, v12

    const/4 v12, 0x0

    goto :goto_a

    .line 26
    :cond_d
    invoke-virtual {v11}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    move-result v14

    .line 27
    invoke-virtual {v11}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    move-result v11

    move/from16 v22, v12

    .line 28
    new-instance v12, Landroid/graphics/Point;

    invoke-static {v10, v14}, Lf/i/a/a/m1/h0;->i(II)I

    move-result v10

    mul-int v10, v10, v14

    .line 29
    invoke-static {v15, v11}, Lf/i/a/a/m1/h0;->i(II)I

    move-result v14

    mul-int v14, v14, v11

    invoke-direct {v12, v10, v14}, Landroid/graphics/Point;-><init>(II)V

    .line 30
    :goto_a
    iget v10, v3, Lf/i/a/a/b0;->p:F

    .line 31
    iget v11, v12, Landroid/graphics/Point;->x:I

    iget v14, v12, Landroid/graphics/Point;->y:I

    move-object/from16 v23, v5

    float-to-double v4, v10

    invoke-virtual {v1, v11, v14, v4, v5}, Lf/i/a/a/c1/a;->e(IID)Z

    move-result v4

    if-eqz v4, :cond_11

    goto :goto_e

    :cond_e
    move-object/from16 v23, v5

    move/from16 v22, v12

    const/16 v4, 0x10

    .line 32
    :try_start_0
    invoke-static {v15, v4}, Lf/i/a/a/m1/h0;->i(II)I

    move-result v5

    mul-int/lit8 v5, v5, 0x10

    .line 33
    invoke-static {v14, v4}, Lf/i/a/a/m1/h0;->i(II)I

    move-result v10

    mul-int/lit8 v10, v10, 0x10

    mul-int v4, v5, v10

    .line 34
    invoke-static {}, Lf/i/a/a/c1/d;->g()I

    move-result v11

    if-gt v4, v11, :cond_11

    .line 35
    new-instance v12, Landroid/graphics/Point;

    if-eqz v6, :cond_f

    move v4, v10

    goto :goto_b

    :cond_f
    move v4, v5

    :goto_b
    if-eqz v6, :cond_10

    goto :goto_c

    :cond_10
    move v5, v10

    :goto_c
    invoke-direct {v12, v4, v5}, Landroid/graphics/Point;-><init>(II)V
    :try_end_0
    .catch Lf/i/a/a/c1/d$c; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_e

    :cond_11
    add-int/lit8 v13, v13, 0x1

    move/from16 v4, p5

    move/from16 v15, v18

    move-object/from16 v14, v19

    move/from16 v10, v20

    move/from16 v11, v21

    move/from16 v12, v22

    move-object/from16 v5, v23

    goto/16 :goto_6

    :cond_12
    :goto_d
    move-object/from16 v23, v5

    :catch_0
    const/4 v12, 0x0

    :goto_e
    if-eqz v12, :cond_14

    .line 36
    iget v4, v12, Landroid/graphics/Point;->x:I

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 37
    iget v4, v12, Landroid/graphics/Point;->y:I

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 38
    iget-object v4, v3, Lf/i/a/a/b0;->i:Ljava/lang/String;

    .line 39
    invoke-static {v1, v4, v7, v8}, Lf/i/a/a/n1/m;->r0(Lf/i/a/a/c1/a;Ljava/lang/String;II)I

    move-result v4

    .line 40
    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_f

    :cond_13
    move-object/from16 v23, v5

    .line 41
    :cond_14
    :goto_f
    new-instance v6, Lf/i/a/a/n1/m$b;

    invoke-direct {v6, v7, v8, v9}, Lf/i/a/a/n1/m$b;-><init>(III)V

    .line 42
    :goto_10
    iput-object v6, v0, Lf/i/a/a/n1/m;->x0:Lf/i/a/a/n1/m$b;

    .line 43
    iget-boolean v4, v0, Lf/i/a/a/n1/m;->u0:Z

    iget v5, v0, Lf/i/a/a/n1/m;->V0:I

    .line 44
    new-instance v7, Landroid/media/MediaFormat;

    invoke-direct {v7}, Landroid/media/MediaFormat;-><init>()V

    const-string v8, "mime"

    move-object/from16 v9, v23

    .line 45
    invoke-virtual {v7, v8, v9}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget v8, v3, Lf/i/a/a/b0;->n:I

    const-string v9, "width"

    invoke-virtual {v7, v9, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 47
    iget v8, v3, Lf/i/a/a/b0;->o:I

    const-string v9, "height"

    invoke-virtual {v7, v9, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 48
    iget-object v8, v3, Lf/i/a/a/b0;->k:Ljava/util/List;

    invoke-static {v7, v8}, Lc/a/a/b/g/h;->g1(Landroid/media/MediaFormat;Ljava/util/List;)V

    .line 49
    iget v8, v3, Lf/i/a/a/b0;->p:F

    const/high16 v9, -0x40800000    # -1.0f

    cmpl-float v10, v8, v9

    if-eqz v10, :cond_15

    const-string v10, "frame-rate"

    .line 50
    invoke-virtual {v7, v10, v8}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 51
    :cond_15
    iget v8, v3, Lf/i/a/a/b0;->q:I

    const-string v10, "rotation-degrees"

    invoke-static {v7, v10, v8}, Lc/a/a/b/g/h;->Q0(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 52
    iget-object v8, v3, Lf/i/a/a/b0;->u:Lf/i/a/a/n1/i;

    if-eqz v8, :cond_16

    .line 53
    iget v10, v8, Lf/i/a/a/n1/i;->c:I

    const-string v11, "color-transfer"

    invoke-static {v7, v11, v10}, Lc/a/a/b/g/h;->Q0(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 54
    iget v10, v8, Lf/i/a/a/n1/i;->a:I

    const-string v11, "color-standard"

    invoke-static {v7, v11, v10}, Lc/a/a/b/g/h;->Q0(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 55
    iget v10, v8, Lf/i/a/a/n1/i;->b:I

    const-string v11, "color-range"

    invoke-static {v7, v11, v10}, Lc/a/a/b/g/h;->Q0(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 56
    iget-object v8, v8, Lf/i/a/a/n1/i;->d:[B

    if-eqz v8, :cond_16

    .line 57
    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    const-string v10, "hdr-static-info"

    invoke-virtual {v7, v10, v8}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 58
    :cond_16
    iget-object v8, v3, Lf/i/a/a/b0;->i:Ljava/lang/String;

    const-string v10, "video/dolby-vision"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 59
    iget-object v3, v3, Lf/i/a/a/b0;->f:Ljava/lang/String;

    .line 60
    invoke-static {v3}, Lf/i/a/a/c1/d;->c(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 61
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    .line 62
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v8, "profile"

    .line 63
    invoke-static {v7, v8, v3}, Lc/a/a/b/g/h;->Q0(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 64
    :cond_17
    iget v3, v6, Lf/i/a/a/n1/m$b;->a:I

    const-string v8, "max-width"

    invoke-virtual {v7, v8, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 65
    iget v3, v6, Lf/i/a/a/n1/m$b;->b:I

    const-string v8, "max-height"

    invoke-virtual {v7, v8, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 66
    iget v3, v6, Lf/i/a/a/n1/m$b;->c:I

    const-string v6, "max-input-size"

    invoke-static {v7, v6, v3}, Lc/a/a/b/g/h;->Q0(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 67
    sget v3, Lf/i/a/a/m1/h0;->a:I

    const/16 v6, 0x17

    if-lt v3, v6, :cond_18

    const-string v3, "priority"

    const/4 v8, 0x0

    .line 68
    invoke-virtual {v7, v3, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    move/from16 v3, p5

    cmpl-float v8, v3, v9

    if-eqz v8, :cond_18

    const-string v8, "operating-rate"

    .line 69
    invoke-virtual {v7, v8, v3}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_18
    if-eqz v4, :cond_19

    const-string v3, "no-post-process"

    const/4 v4, 0x1

    .line 70
    invoke-virtual {v7, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v3, "auto-frc"

    const/4 v8, 0x0

    .line 71
    invoke-virtual {v7, v3, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_11

    :cond_19
    const/4 v4, 0x1

    :goto_11
    if-eqz v5, :cond_1a

    const-string v3, "tunneled-playback"

    .line 72
    invoke-virtual {v7, v3, v4}, Landroid/media/MediaFormat;->setFeatureEnabled(Ljava/lang/String;Z)V

    const-string v3, "audio-session-id"

    .line 73
    invoke-virtual {v7, v3, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 74
    :cond_1a
    iget-object v3, v0, Lf/i/a/a/n1/m;->z0:Landroid/view/Surface;

    if-nez v3, :cond_1c

    .line 75
    invoke-virtual/range {p0 .. p1}, Lf/i/a/a/n1/m;->E0(Lf/i/a/a/c1/a;)Z

    move-result v3

    invoke-static {v3}, Lc/a/a/b/g/h;->v(Z)V

    .line 76
    iget-object v3, v0, Lf/i/a/a/n1/m;->A0:Landroid/view/Surface;

    if-nez v3, :cond_1b

    .line 77
    iget-object v3, v0, Lf/i/a/a/n1/m;->p0:Landroid/content/Context;

    iget-boolean v1, v1, Lf/i/a/a/c1/a;->f:Z

    invoke-static {v3, v1}, Lf/i/a/a/n1/k;->c(Landroid/content/Context;Z)Lf/i/a/a/n1/k;

    move-result-object v1

    iput-object v1, v0, Lf/i/a/a/n1/m;->A0:Landroid/view/Surface;

    .line 78
    :cond_1b
    iget-object v1, v0, Lf/i/a/a/n1/m;->A0:Landroid/view/Surface;

    iput-object v1, v0, Lf/i/a/a/n1/m;->z0:Landroid/view/Surface;

    .line 79
    :cond_1c
    iget-object v1, v0, Lf/i/a/a/n1/m;->z0:Landroid/view/Surface;

    move-object/from16 v3, p4

    const/4 v4, 0x0

    invoke-virtual {v2, v7, v1, v3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 80
    sget v1, Lf/i/a/a/m1/h0;->a:I

    if-lt v1, v6, :cond_1d

    iget-boolean v1, v0, Lf/i/a/a/n1/m;->U0:Z

    if-eqz v1, :cond_1d

    .line 81
    new-instance v1, Lf/i/a/a/n1/m$c;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lf/i/a/a/n1/m$c;-><init>(Lf/i/a/a/n1/m;Landroid/media/MediaCodec;Lf/i/a/a/n1/m$a;)V

    iput-object v1, v0, Lf/i/a/a/n1/m;->W0:Lf/i/a/a/n1/m$c;

    :cond_1d
    return-void
.end method

.method public N()Z
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-super {p0}, Lf/i/a/a/c1/b;->N()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iput v0, p0, Lf/i/a/a/n1/m;->I0:I

    return v1

    :catchall_0
    move-exception v1

    iput v0, p0, Lf/i/a/a/n1/m;->I0:I

    .line 3
    throw v1
.end method

.method public P()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf/i/a/a/n1/m;->U0:Z

    return v0
.end method

.method public Q(FLf/i/a/a/b0;[Lf/i/a/a/b0;)F
    .locals 5

    .line 1
    array-length p2, p3

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v3, p3, v1

    .line 2
    iget v3, v3, Lf/i/a/a/b0;->p:F

    cmpl-float v4, v3, v0

    if-eqz v4, :cond_0

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    cmpl-float p2, v2, v0

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    mul-float v0, v2, p1

    :goto_1
    return v0
.end method

.method public R(Lf/i/a/a/c1/c;Lf/i/a/a/b0;Z)Ljava/util/List;
    .locals 1
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
    iget-object p2, p2, Lf/i/a/a/b0;->i:Ljava/lang/String;

    iget-boolean v0, p0, Lf/i/a/a/n1/m;->U0:Z

    .line 2
    invoke-interface {p1, p2, p3, v0}, Lf/i/a/a/c1/c;->a(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public V(Ljava/lang/String;JJ)V
    .locals 9

    .line 1
    iget-object v1, p0, Lf/i/a/a/n1/m;->r0:Lf/i/a/a/n1/s$a;

    .line 2
    iget-object v0, v1, Lf/i/a/a/n1/s$a;->b:Lf/i/a/a/n1/s;

    if-eqz v0, :cond_0

    .line 3
    iget-object v7, v1, Lf/i/a/a/n1/s$a;->a:Landroid/os/Handler;

    new-instance v8, Lf/i/a/a/n1/d;

    move-object v0, v8

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lf/i/a/a/n1/d;-><init>(Lf/i/a/a/n1/s$a;Ljava/lang/String;JJ)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lf/i/a/a/n1/m;->q0(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lf/i/a/a/n1/m;->y0:Z

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
    iget-object v0, p0, Lf/i/a/a/n1/m;->r0:Lf/i/a/a/n1/s$a;

    .line 3
    iget-object v1, v0, Lf/i/a/a/n1/s$a;->b:Lf/i/a/a/n1/s;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, v0, Lf/i/a/a/n1/s$a;->a:Landroid/os/Handler;

    new-instance v2, Lf/i/a/a/n1/a;

    invoke-direct {v2, v0, p1}, Lf/i/a/a/n1/a;-><init>(Lf/i/a/a/n1/s$a;Lf/i/a/a/b0;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5
    :cond_0
    iget v0, p1, Lf/i/a/a/b0;->r:F

    iput v0, p0, Lf/i/a/a/n1/m;->L0:F

    .line 6
    iget p1, p1, Lf/i/a/a/b0;->q:I

    iput p1, p0, Lf/i/a/a/n1/m;->K0:I

    return-void
.end method

.method public X(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 6

    const-string v0, "crop-right"

    .line 1
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "crop-top"

    const-string v3, "crop-bottom"

    const-string v4, "crop-left"

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v0, v4

    add-int/2addr v0, v5

    goto :goto_1

    :cond_1
    const-string v0, "width"

    .line 5
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_1
    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    sub-int/2addr v1, p2

    add-int/2addr v1, v5

    goto :goto_2

    :cond_2
    const-string v1, "height"

    .line 7
    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 8
    :goto_2
    invoke-virtual {p0, p1, v0, v1}, Lf/i/a/a/n1/m;->A0(Landroid/media/MediaCodec;II)V

    return-void
.end method

.method public Y(J)V
    .locals 6
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget v0, p0, Lf/i/a/a/n1/m;->I0:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lf/i/a/a/n1/m;->I0:I

    .line 2
    :goto_0
    iget v0, p0, Lf/i/a/a/n1/m;->Z0:I

    if-eqz v0, :cond_0

    iget-object v2, p0, Lf/i/a/a/n1/m;->w0:[J

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    cmp-long v2, p1, v4

    if-ltz v2, :cond_0

    .line 3
    iget-object v2, p0, Lf/i/a/a/n1/m;->v0:[J

    aget-wide v4, v2, v3

    iput-wide v4, p0, Lf/i/a/a/n1/m;->Y0:J

    add-int/lit8 v0, v0, -0x1

    .line 4
    iput v0, p0, Lf/i/a/a/n1/m;->Z0:I

    .line 5
    invoke-static {v2, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget-object v0, p0, Lf/i/a/a/n1/m;->w0:[J

    iget v2, p0, Lf/i/a/a/n1/m;->Z0:I

    invoke-static {v0, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public Z(Lf/i/a/a/y0/e;)V
    .locals 4
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget v0, p0, Lf/i/a/a/n1/m;->I0:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lf/i/a/a/n1/m;->I0:I

    .line 2
    iget-wide v0, p1, Lf/i/a/a/y0/e;->d:J

    iget-wide v2, p0, Lf/i/a/a/n1/m;->X0:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lf/i/a/a/n1/m;->X0:J

    .line 3
    sget v0, Lf/i/a/a/m1/h0;->a:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lf/i/a/a/n1/m;->U0:Z

    if-eqz v0, :cond_0

    .line 4
    iget-wide v0, p1, Lf/i/a/a/y0/e;->d:J

    invoke-virtual {p0, v0, v1}, Lf/i/a/a/n1/m;->z0(J)V

    :cond_0
    return-void
.end method

.method public b0(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZZLf/i/a/a/b0;)Z
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    move-object/from16 v6, p0

    move-wide/from16 v0, p1

    move-object/from16 v7, p5

    move/from16 v8, p7

    move-wide/from16 v2, p9

    .line 1
    iget-wide v4, v6, Lf/i/a/a/n1/m;->D0:J

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v11, v4, v9

    if-nez v11, :cond_0

    .line 2
    iput-wide v0, v6, Lf/i/a/a/n1/m;->D0:J

    .line 3
    :cond_0
    iget-wide v4, v6, Lf/i/a/a/n1/m;->Y0:J

    sub-long v4, v2, v4

    const-string v11, "skipVideoBuffer"

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz p11, :cond_1

    if-nez p12, :cond_1

    .line 4
    invoke-static {v11}, Lc/a/a/b/g/h;->g(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v7, v8, v13}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 6
    invoke-static {}, Lc/a/a/b/g/h;->N()V

    .line 7
    iget-object v0, v6, Lf/i/a/a/c1/b;->n0:Lf/i/a/a/y0/d;

    iget v1, v0, Lf/i/a/a/y0/d;->f:I

    add-int/2addr v1, v12

    iput v1, v0, Lf/i/a/a/y0/d;->f:I

    return v12

    :cond_1
    sub-long v14, v2, v0

    .line 8
    iget-object v9, v6, Lf/i/a/a/n1/m;->z0:Landroid/view/Surface;

    iget-object v10, v6, Lf/i/a/a/n1/m;->A0:Landroid/view/Surface;

    if-ne v9, v10, :cond_3

    .line 9
    invoke-static {v14, v15}, Lf/i/a/a/n1/m;->t0(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    invoke-static {v11}, Lc/a/a/b/g/h;->g(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v7, v8, v13}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 12
    invoke-static {}, Lc/a/a/b/g/h;->N()V

    .line 13
    iget-object v0, v6, Lf/i/a/a/c1/b;->n0:Lf/i/a/a/y0/d;

    iget v1, v0, Lf/i/a/a/y0/d;->f:I

    add-int/2addr v1, v12

    iput v1, v0, Lf/i/a/a/y0/d;->f:I

    return v12

    :cond_2
    return v13

    .line 14
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    const-wide/16 v16, 0x3e8

    mul-long v9, v9, v16

    .line 15
    iget v11, v6, Lf/i/a/a/p;->d:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_4

    const/4 v11, 0x1

    goto :goto_0

    :cond_4
    const/4 v11, 0x0

    .line 16
    :goto_0
    iget-boolean v12, v6, Lf/i/a/a/n1/m;->C0:Z

    move-wide/from16 v18, v4

    if-eqz v12, :cond_1c

    if-eqz v11, :cond_6

    iget-wide v4, v6, Lf/i/a/a/n1/m;->J0:J

    sub-long v4, v9, v4

    .line 17
    invoke-static {v14, v15}, Lf/i/a/a/n1/m;->t0(J)Z

    move-result v12

    if-eqz v12, :cond_5

    const-wide/32 v20, 0x186a0

    cmp-long v12, v4, v20

    if-lez v12, :cond_5

    const/4 v4, 0x1

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_6

    goto/16 :goto_d

    :cond_6
    if-eqz v11, :cond_1b

    .line 18
    iget-wide v4, v6, Lf/i/a/a/n1/m;->D0:J

    cmp-long v11, v0, v4

    if-nez v11, :cond_7

    goto/16 :goto_c

    :cond_7
    sub-long v9, v9, p3

    sub-long/2addr v14, v9

    .line 19
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    mul-long v14, v14, v16

    add-long/2addr v14, v4

    .line 20
    iget-object v9, v6, Lf/i/a/a/n1/m;->q0:Lf/i/a/a/n1/o;

    mul-long v10, v2, v16

    .line 21
    iget-boolean v12, v9, Lf/i/a/a/n1/o;->i:Z

    if-eqz v12, :cond_b

    move-wide/from16 p3, v14

    .line 22
    iget-wide v13, v9, Lf/i/a/a/n1/o;->f:J

    cmp-long v12, v2, v13

    if-eqz v12, :cond_8

    .line 23
    iget-wide v12, v9, Lf/i/a/a/n1/o;->l:J

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    iput-wide v12, v9, Lf/i/a/a/n1/o;->l:J

    .line 24
    iget-wide v12, v9, Lf/i/a/a/n1/o;->h:J

    iput-wide v12, v9, Lf/i/a/a/n1/o;->g:J

    .line 25
    :cond_8
    iget-wide v12, v9, Lf/i/a/a/n1/o;->l:J

    const-wide/16 v14, 0x6

    cmp-long v20, v12, v14

    if-ltz v20, :cond_a

    .line 26
    iget-wide v14, v9, Lf/i/a/a/n1/o;->k:J

    sub-long v14, v10, v14

    div-long/2addr v14, v12

    .line 27
    iget-wide v12, v9, Lf/i/a/a/n1/o;->g:J

    add-long/2addr v12, v14

    move-wide/from16 v14, p3

    .line 28
    invoke-virtual {v9, v12, v13, v14, v15}, Lf/i/a/a/n1/o;->a(JJ)Z

    move-result v20

    if-eqz v20, :cond_9

    const/4 v7, 0x0

    .line 29
    iput-boolean v7, v9, Lf/i/a/a/n1/o;->i:Z

    goto :goto_2

    .line 30
    :cond_9
    iget-wide v7, v9, Lf/i/a/a/n1/o;->j:J

    add-long/2addr v7, v12

    move-wide/from16 p3, v12

    iget-wide v12, v9, Lf/i/a/a/n1/o;->k:J

    sub-long/2addr v7, v12

    move-wide/from16 v12, p3

    goto :goto_3

    :cond_a
    move-wide/from16 v14, p3

    .line 31
    invoke-virtual {v9, v10, v11, v14, v15}, Lf/i/a/a/n1/o;->a(JJ)Z

    move-result v7

    if-eqz v7, :cond_b

    const/4 v7, 0x0

    .line 32
    iput-boolean v7, v9, Lf/i/a/a/n1/o;->i:Z

    :cond_b
    :goto_2
    move-wide v12, v10

    move-wide v7, v14

    .line 33
    :goto_3
    iget-boolean v0, v9, Lf/i/a/a/n1/o;->i:Z

    if-nez v0, :cond_c

    .line 34
    iput-wide v10, v9, Lf/i/a/a/n1/o;->k:J

    .line 35
    iput-wide v14, v9, Lf/i/a/a/n1/o;->j:J

    const-wide/16 v0, 0x0

    .line 36
    iput-wide v0, v9, Lf/i/a/a/n1/o;->l:J

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, v9, Lf/i/a/a/n1/o;->i:Z

    .line 38
    :cond_c
    iput-wide v2, v9, Lf/i/a/a/n1/o;->f:J

    .line 39
    iput-wide v12, v9, Lf/i/a/a/n1/o;->h:J

    .line 40
    iget-object v0, v9, Lf/i/a/a/n1/o;->b:Lf/i/a/a/n1/o$b;

    if-eqz v0, :cond_11

    iget-wide v1, v9, Lf/i/a/a/n1/o;->d:J

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v10

    if-nez v3, :cond_d

    goto :goto_6

    .line 41
    :cond_d
    iget-wide v0, v0, Lf/i/a/a/n1/o$b;->a:J

    cmp-long v2, v0, v10

    if-nez v2, :cond_e

    goto :goto_6

    .line 42
    :cond_e
    iget-wide v2, v9, Lf/i/a/a/n1/o;->d:J

    sub-long v10, v7, v0

    .line 43
    div-long/2addr v10, v2

    mul-long v10, v10, v2

    add-long/2addr v10, v0

    cmp-long v0, v7, v10

    if-gtz v0, :cond_f

    sub-long v0, v10, v2

    goto :goto_4

    :cond_f
    add-long/2addr v2, v10

    move-wide v0, v10

    move-wide v10, v2

    :goto_4
    sub-long v2, v10, v7

    sub-long/2addr v7, v0

    cmp-long v12, v2, v7

    if-gez v12, :cond_10

    goto :goto_5

    :cond_10
    move-wide v10, v0

    .line 44
    :goto_5
    iget-wide v0, v9, Lf/i/a/a/n1/o;->e:J

    sub-long/2addr v10, v0

    move-wide v7, v10

    :cond_11
    :goto_6
    sub-long v0, v7, v4

    .line 45
    div-long v0, v0, v16

    const-wide/32 v2, -0x7a120

    cmp-long v4, v0, v2

    if-gez v4, :cond_12

    const/4 v2, 0x1

    goto :goto_7

    :cond_12
    const/4 v2, 0x0

    :goto_7
    if-eqz v2, :cond_13

    if-nez p12, :cond_13

    const/4 v2, 0x1

    goto :goto_8

    :cond_13
    const/4 v2, 0x0

    :goto_8
    if-eqz v2, :cond_15

    .line 46
    iget-object v2, v6, Lf/i/a/a/p;->e:Lf/i/a/a/h1/k0;

    iget-wide v3, v6, Lf/i/a/a/p;->g:J

    sub-long v3, p1, v3

    invoke-interface {v2, v3, v4}, Lf/i/a/a/h1/k0;->q(J)I

    move-result v2

    if-nez v2, :cond_14

    const/4 v2, 0x0

    goto :goto_9

    .line 47
    :cond_14
    iget-object v3, v6, Lf/i/a/a/c1/b;->n0:Lf/i/a/a/y0/d;

    iget v4, v3, Lf/i/a/a/y0/d;->i:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v3, Lf/i/a/a/y0/d;->i:I

    .line 48
    iget v3, v6, Lf/i/a/a/n1/m;->I0:I

    add-int/2addr v3, v2

    invoke-virtual {v6, v3}, Lf/i/a/a/n1/m;->F0(I)V

    .line 49
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/c1/b;->M()Z

    const/4 v2, 0x1

    :goto_9
    if-eqz v2, :cond_15

    const/4 v2, 0x0

    return v2

    .line 50
    :cond_15
    invoke-static {v0, v1}, Lf/i/a/a/n1/m;->t0(J)Z

    move-result v2

    if-eqz v2, :cond_16

    if-nez p12, :cond_16

    const/4 v2, 0x1

    goto :goto_a

    :cond_16
    const/4 v2, 0x0

    :goto_a
    if-eqz v2, :cond_17

    const-string v0, "dropVideoBuffer"

    .line 51
    invoke-static {v0}, Lc/a/a/b/g/h;->g(Ljava/lang/String;)V

    move-object/from16 v9, p5

    move/from16 v10, p7

    const/4 v0, 0x0

    .line 52
    invoke-virtual {v9, v10, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 53
    invoke-static {}, Lc/a/a/b/g/h;->N()V

    const/4 v0, 0x1

    .line 54
    invoke-virtual {v6, v0}, Lf/i/a/a/n1/m;->F0(I)V

    return v0

    :cond_17
    move-object/from16 v9, p5

    move/from16 v10, p7

    .line 55
    sget v2, Lf/i/a/a/m1/h0;->a:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_18

    const-wide/32 v2, 0xc350

    cmp-long v4, v0, v2

    if-gez v4, :cond_1a

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide v3, v7

    move-object/from16 v5, p13

    .line 56
    invoke-virtual/range {v0 .. v5}, Lf/i/a/a/n1/m;->y0(JJLf/i/a/a/b0;)V

    .line 57
    invoke-virtual {v6, v9, v10, v7, v8}, Lf/i/a/a/n1/m;->C0(Landroid/media/MediaCodec;IJ)V

    const/4 v0, 0x1

    return v0

    :cond_18
    const-wide/16 v2, 0x7530

    cmp-long v4, v0, v2

    if-gez v4, :cond_1a

    const-wide/16 v2, 0x2af8

    cmp-long v4, v0, v2

    if-lez v4, :cond_19

    const-wide/16 v2, 0x2710

    sub-long/2addr v0, v2

    .line 58
    :try_start_0
    div-long v0, v0, v16

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    .line 59
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    return v0

    :cond_19
    :goto_b
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide v3, v7

    move-object/from16 v5, p13

    .line 60
    invoke-virtual/range {v0 .. v5}, Lf/i/a/a/n1/m;->y0(JJLf/i/a/a/b0;)V

    .line 61
    invoke-virtual {v6, v9, v10}, Lf/i/a/a/n1/m;->B0(Landroid/media/MediaCodec;I)V

    const/4 v0, 0x1

    return v0

    :cond_1a
    const/4 v0, 0x0

    return v0

    :cond_1b
    :goto_c
    const/4 v0, 0x0

    return v0

    :cond_1c
    :goto_d
    move-object v9, v7

    move v10, v8

    .line 62
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide v3, v7

    move-object/from16 v5, p13

    .line 63
    invoke-virtual/range {v0 .. v5}, Lf/i/a/a/n1/m;->y0(JJLf/i/a/a/b0;)V

    .line 64
    sget v0, Lf/i/a/a/m1/h0;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1d

    .line 65
    invoke-virtual {v6, v9, v10, v7, v8}, Lf/i/a/a/n1/m;->C0(Landroid/media/MediaCodec;IJ)V

    goto :goto_e

    .line 66
    :cond_1d
    invoke-virtual {v6, v9, v10}, Lf/i/a/a/n1/m;->B0(Landroid/media/MediaCodec;I)V

    :goto_e
    const/4 v0, 0x1

    return v0
.end method

.method public d()Z
    .locals 9

    .line 1
    invoke-super {p0}, Lf/i/a/a/c1/b;->d()Z

    move-result v0

    const/4 v1, 0x1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lf/i/a/a/n1/m;->C0:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lf/i/a/a/n1/m;->A0:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v4, p0, Lf/i/a/a/n1/m;->z0:Landroid/view/Surface;

    if-eq v4, v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lf/i/a/a/c1/b;->C:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    .line 3
    iget-boolean v0, p0, Lf/i/a/a/n1/m;->U0:Z

    if-eqz v0, :cond_2

    .line 4
    :cond_1
    iput-wide v2, p0, Lf/i/a/a/n1/m;->E0:J

    return v1

    .line 5
    :cond_2
    iget-wide v4, p0, Lf/i/a/a/n1/m;->E0:J

    const/4 v0, 0x0

    cmp-long v6, v4, v2

    if-nez v6, :cond_3

    return v0

    .line 6
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lf/i/a/a/n1/m;->E0:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_4

    return v1

    .line 7
    :cond_4
    iput-wide v2, p0, Lf/i/a/a/n1/m;->E0:J

    return v0
.end method

.method public d0()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-super {p0}, Lf/i/a/a/c1/b;->d0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iput v0, p0, Lf/i/a/a/n1/m;->I0:I

    return-void

    :catchall_0
    move-exception v1

    iput v0, p0, Lf/i/a/a/n1/m;->I0:I

    .line 3
    throw v1
.end method

.method public j(ILjava/lang/Object;)V
    .locals 3
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 1
    check-cast p2, Landroid/view/Surface;

    if-nez p2, :cond_1

    .line 2
    iget-object p1, p0, Lf/i/a/a/n1/m;->A0:Landroid/view/Surface;

    if-eqz p1, :cond_0

    move-object p2, p1

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lf/i/a/a/c1/b;->H:Lf/i/a/a/c1/a;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lf/i/a/a/n1/m;->E0(Lf/i/a/a/c1/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object p2, p0, Lf/i/a/a/n1/m;->p0:Landroid/content/Context;

    iget-boolean p1, p1, Lf/i/a/a/c1/a;->f:Z

    invoke-static {p2, p1}, Lf/i/a/a/n1/k;->c(Landroid/content/Context;Z)Lf/i/a/a/n1/k;

    move-result-object p2

    iput-object p2, p0, Lf/i/a/a/n1/m;->A0:Landroid/view/Surface;

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Lf/i/a/a/n1/m;->z0:Landroid/view/Surface;

    if-eq p1, p2, :cond_5

    .line 7
    iput-object p2, p0, Lf/i/a/a/n1/m;->z0:Landroid/view/Surface;

    .line 8
    iget p1, p0, Lf/i/a/a/p;->d:I

    .line 9
    iget-object v0, p0, Lf/i/a/a/c1/b;->C:Landroid/media/MediaCodec;

    if-eqz v0, :cond_3

    .line 10
    sget v1, Lf/i/a/a/m1/h0;->a:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_2

    if-eqz p2, :cond_2

    iget-boolean v1, p0, Lf/i/a/a/n1/m;->y0:Z

    if-nez v1, :cond_2

    .line 11
    invoke-virtual {v0, p2}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {p0}, Lf/i/a/a/n1/m;->d0()V

    .line 13
    invoke-virtual {p0}, Lf/i/a/a/c1/b;->T()V

    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    .line 14
    iget-object v0, p0, Lf/i/a/a/n1/m;->A0:Landroid/view/Surface;

    if-eq p2, v0, :cond_4

    .line 15
    invoke-virtual {p0}, Lf/i/a/a/n1/m;->x0()V

    .line 16
    invoke-virtual {p0}, Lf/i/a/a/n1/m;->o0()V

    const/4 p2, 0x2

    if-ne p1, p2, :cond_8

    .line 17
    invoke-virtual {p0}, Lf/i/a/a/n1/m;->D0()V

    goto :goto_2

    .line 18
    :cond_4
    invoke-virtual {p0}, Lf/i/a/a/n1/m;->p0()V

    .line 19
    invoke-virtual {p0}, Lf/i/a/a/n1/m;->o0()V

    goto :goto_2

    :cond_5
    if-eqz p2, :cond_8

    .line 20
    iget-object p1, p0, Lf/i/a/a/n1/m;->A0:Landroid/view/Surface;

    if-eq p2, p1, :cond_8

    .line 21
    invoke-virtual {p0}, Lf/i/a/a/n1/m;->x0()V

    .line 22
    iget-boolean p1, p0, Lf/i/a/a/n1/m;->C0:Z

    if-eqz p1, :cond_8

    .line 23
    iget-object p1, p0, Lf/i/a/a/n1/m;->r0:Lf/i/a/a/n1/s$a;

    iget-object p2, p0, Lf/i/a/a/n1/m;->z0:Landroid/view/Surface;

    .line 24
    iget-object v0, p1, Lf/i/a/a/n1/s$a;->b:Lf/i/a/a/n1/s;

    if-eqz v0, :cond_8

    .line 25
    iget-object v0, p1, Lf/i/a/a/n1/s$a;->a:Landroid/os/Handler;

    new-instance v1, Lf/i/a/a/n1/b;

    invoke-direct {v1, p1, p2}, Lf/i/a/a/n1/b;-><init>(Lf/i/a/a/n1/s$a;Landroid/view/Surface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_6
    const/4 v0, 0x4

    if-ne p1, v0, :cond_7

    .line 26
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lf/i/a/a/n1/m;->B0:I

    .line 27
    iget-object p2, p0, Lf/i/a/a/c1/b;->C:Landroid/media/MediaCodec;

    if-eqz p2, :cond_8

    .line 28
    invoke-virtual {p2, p1}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    goto :goto_2

    :cond_7
    const/4 v0, 0x6

    if-ne p1, v0, :cond_8

    .line 29
    check-cast p2, Lf/i/a/a/n1/n;

    iput-object p2, p0, Lf/i/a/a/n1/m;->a1:Lf/i/a/a/n1/n;

    :cond_8
    :goto_2
    return-void
.end method

.method public j0(Lf/i/a/a/c1/a;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/n1/m;->z0:Landroid/view/Surface;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lf/i/a/a/n1/m;->E0(Lf/i/a/a/c1/a;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public k0(Lf/i/a/a/c1/c;Lf/i/a/a/z0/g;Lf/i/a/a/b0;)I
    .locals 7
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
    invoke-static {v0}, Lf/i/a/a/m1/r;->j(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p3, Lf/i/a/a/b0;->l:Lf/i/a/a/z0/e;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    :goto_0
    iget v4, v0, Lf/i/a/a/z0/e;->d:I

    if-ge v2, v4, :cond_2

    .line 5
    iget-object v4, v0, Lf/i/a/a/z0/e;->a:[Lf/i/a/a/z0/e$b;

    aget-object v4, v4, v2

    .line 6
    iget-boolean v4, v4, Lf/i/a/a/z0/e$b;->f:Z

    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 7
    :cond_2
    invoke-virtual {p0, p1, p3, v3}, Lf/i/a/a/n1/m;->R(Lf/i/a/a/c1/c;Lf/i/a/a/b0;Z)Ljava/util/List;

    move-result-object v2

    .line 8
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_4

    if-eqz v3, :cond_3

    .line 9
    iget-object p2, p3, Lf/i/a/a/b0;->i:Ljava/lang/String;

    .line 10
    invoke-interface {p1, p2, v1, v1}, Lf/i/a/a/c1/c;->a(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p1

    .line 11
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v5, 0x1

    :goto_1
    return v5

    .line 12
    :cond_4
    invoke-static {p2, v0}, Lf/i/a/a/p;->G(Lf/i/a/a/z0/g;Lf/i/a/a/z0/e;)Z

    move-result p2

    if-nez p2, :cond_5

    return v5

    .line 13
    :cond_5
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lf/i/a/a/c1/a;

    .line 14
    invoke-virtual {p2, p3}, Lf/i/a/a/c1/a;->b(Lf/i/a/a/b0;)Z

    move-result v0

    .line 15
    invoke-virtual {p2, p3}, Lf/i/a/a/c1/a;->c(Lf/i/a/a/b0;)Z

    move-result p2

    if-eqz p2, :cond_6

    const/16 p2, 0x10

    goto :goto_2

    :cond_6
    const/16 p2, 0x8

    :goto_2
    if-eqz v0, :cond_7

    .line 16
    iget-object v2, p3, Lf/i/a/a/b0;->i:Ljava/lang/String;

    .line 17
    invoke-interface {p1, v2, v3, v6}, Lf/i/a/a/c1/c;->a(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p1

    .line 18
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 19
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/i/a/a/c1/a;

    .line 20
    invoke-virtual {p1, p3}, Lf/i/a/a/c1/a;->b(Lf/i/a/a/b0;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 21
    invoke-virtual {p1, p3}, Lf/i/a/a/c1/a;->c(Lf/i/a/a/b0;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 v1, 0x20

    :cond_7
    if-eqz v0, :cond_8

    const/4 p1, 0x4

    goto :goto_3

    :cond_8
    const/4 p1, 0x3

    :goto_3
    or-int/2addr p2, v1

    or-int/2addr p1, p2

    return p1
.end method

.method public final o0()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lf/i/a/a/n1/m;->C0:Z

    .line 2
    sget v0, Lf/i/a/a/m1/h0;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lf/i/a/a/n1/m;->U0:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lf/i/a/a/c1/b;->C:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Lf/i/a/a/n1/m$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lf/i/a/a/n1/m$c;-><init>(Lf/i/a/a/n1/m;Landroid/media/MediaCodec;Lf/i/a/a/n1/m$a;)V

    iput-object v1, p0, Lf/i/a/a/n1/m;->W0:Lf/i/a/a/n1/m$c;

    :cond_0
    return-void
.end method

.method public final p0()V
    .locals 2

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lf/i/a/a/n1/m;->Q0:I

    .line 2
    iput v0, p0, Lf/i/a/a/n1/m;->R0:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 3
    iput v1, p0, Lf/i/a/a/n1/m;->T0:F

    .line 4
    iput v0, p0, Lf/i/a/a/n1/m;->S0:I

    return-void
.end method

.method public q0(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "OMX.google"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 2
    :cond_0
    const-class p1, Lf/i/a/a/n1/m;

    monitor-enter p1

    .line 3
    :try_start_0
    sget-boolean v1, Lf/i/a/a/n1/m;->c1:Z

    if-nez v1, :cond_9

    .line 4
    sget v1, Lf/i/a/a/m1/h0;->a:I

    const/16 v2, 0x1b

    const/4 v3, 0x1

    if-gt v1, v2, :cond_2

    const-string v1, "dangal"

    sget-object v4, Lf/i/a/a/m1/h0;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "HWEML"

    sget-object v4, Lf/i/a/a/m1/h0;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    :cond_1
    sput-boolean v3, Lf/i/a/a/n1/m;->d1:Z

    goto/16 :goto_5

    .line 6
    :cond_2
    sget v1, Lf/i/a/a/m1/h0;->a:I

    if-lt v1, v2, :cond_3

    goto/16 :goto_5

    .line 7
    :cond_3
    sget-object v1, Lf/i/a/a/m1/h0;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, -0x1

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "HWWAS-H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x37

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "HWVNS-H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x36

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "ELUGA_Prim"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x1c

    goto/16 :goto_1

    :sswitch_3
    const-string v4, "ELUGA_Note"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_1

    :sswitch_4
    const-string v2, "ASUS_X00AD_2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0xc

    goto/16 :goto_1

    :sswitch_5
    const-string v2, "HWCAM-H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x35

    goto/16 :goto_1

    :sswitch_6
    const-string v2, "HWBLN-H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x34

    goto/16 :goto_1

    :sswitch_7
    const-string v2, "BRAVIA_ATV3_4K"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x10

    goto/16 :goto_1

    :sswitch_8
    const-string v2, "Infinix-X572"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x3a

    goto/16 :goto_1

    :sswitch_9
    const-string v2, "PB2-670M"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x56

    goto/16 :goto_1

    :sswitch_a
    const-string v2, "santoni"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x66

    goto/16 :goto_1

    :sswitch_b
    const-string v2, "iball8735_9806"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x39

    goto/16 :goto_1

    :sswitch_c
    const-string v2, "CPH1609"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x14

    goto/16 :goto_1

    :sswitch_d
    const-string v2, "woods_f"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x76

    goto/16 :goto_1

    :sswitch_e
    const-string v2, "htc_e56ml_dtul"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x32

    goto/16 :goto_1

    :sswitch_f
    const-string v2, "EverStar_S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x1e

    goto/16 :goto_1

    :sswitch_10
    const-string v2, "hwALE-H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x33

    goto/16 :goto_1

    :sswitch_11
    const-string v2, "itel_S41"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x3c

    goto/16 :goto_1

    :sswitch_12
    const-string v2, "LS-5017"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x42

    goto/16 :goto_1

    :sswitch_13
    const-string v2, "panell_d"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x52

    goto/16 :goto_1

    :sswitch_14
    const-string v2, "j2xlteins"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x3d

    goto/16 :goto_1

    :sswitch_15
    const-string v2, "A7000plus"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x8

    goto/16 :goto_1

    :sswitch_16
    const-string v2, "manning"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x44

    goto/16 :goto_1

    :sswitch_17
    const-string v2, "GIONEE_WBL7519"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x30

    goto/16 :goto_1

    :sswitch_18
    const-string v2, "GIONEE_WBL7365"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x2f

    goto/16 :goto_1

    :sswitch_19
    const-string v2, "GIONEE_WBL5708"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x2e

    goto/16 :goto_1

    :sswitch_1a
    const-string v2, "QM16XE_U"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x64

    goto/16 :goto_1

    :sswitch_1b
    const-string v2, "Pixi5-10_4G"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x5c

    goto/16 :goto_1

    :sswitch_1c
    const-string v2, "TB3-850M"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x6e

    goto/16 :goto_1

    :sswitch_1d
    const-string v2, "TB3-850F"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x6d

    goto/16 :goto_1

    :sswitch_1e
    const-string v2, "TB3-730X"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x6c

    goto/16 :goto_1

    :sswitch_1f
    const-string v2, "TB3-730F"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x6b

    goto/16 :goto_1

    :sswitch_20
    const-string v2, "A7020a48"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0xa

    goto/16 :goto_1

    :sswitch_21
    const-string v2, "A7010a48"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x9

    goto/16 :goto_1

    :sswitch_22
    const-string v2, "griffin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x31

    goto/16 :goto_1

    :sswitch_23
    const-string v2, "marino_f"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x45

    goto/16 :goto_1

    :sswitch_24
    const-string v2, "CPY83_I00"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x15

    goto/16 :goto_1

    :sswitch_25
    const-string v2, "A2016a40"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x6

    goto/16 :goto_1

    :sswitch_26
    const-string v2, "le_x6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x41

    goto/16 :goto_1

    :sswitch_27
    const-string v2, "i9031"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x38

    goto/16 :goto_1

    :sswitch_28
    const-string v2, "X3_HK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x78

    goto/16 :goto_1

    :sswitch_29
    const-string v2, "V23GB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x71

    goto/16 :goto_1

    :sswitch_2a
    const-string v2, "Q4310"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x62

    goto/16 :goto_1

    :sswitch_2b
    const-string v2, "Q4260"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x60

    goto/16 :goto_1

    :sswitch_2c
    const-string v2, "PRO7S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x5e

    goto/16 :goto_1

    :sswitch_2d
    const-string v2, "F3311"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x25

    goto/16 :goto_1

    :sswitch_2e
    const-string v2, "F3215"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x24

    goto/16 :goto_1

    :sswitch_2f
    const-string v2, "F3213"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x23

    goto/16 :goto_1

    :sswitch_30
    const-string v2, "F3211"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x22

    goto/16 :goto_1

    :sswitch_31
    const-string v2, "F3116"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x21

    goto/16 :goto_1

    :sswitch_32
    const-string v2, "F3113"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x20

    goto/16 :goto_1

    :sswitch_33
    const-string v2, "F3111"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x1f

    goto/16 :goto_1

    :sswitch_34
    const-string v2, "E5643"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x19

    goto/16 :goto_1

    :sswitch_35
    const-string v2, "A1601"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x5

    goto/16 :goto_1

    :sswitch_36
    const-string v2, "Aura_Note_2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0xd

    goto/16 :goto_1

    :sswitch_37
    const-string v2, "MEIZU_M5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x46

    goto/16 :goto_1

    :sswitch_38
    const-string v2, "p212"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x4f

    goto/16 :goto_1

    :sswitch_39
    const-string v2, "mido"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x48

    goto/16 :goto_1

    :sswitch_3a
    const-string v2, "kate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x40

    goto/16 :goto_1

    :sswitch_3b
    const-string v2, "fugu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x27

    goto/16 :goto_1

    :sswitch_3c
    const-string v2, "XE2X"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x79

    goto/16 :goto_1

    :sswitch_3d
    const-string v2, "Q427"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x61

    goto/16 :goto_1

    :sswitch_3e
    const-string v2, "Q350"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x5f

    goto/16 :goto_1

    :sswitch_3f
    const-string v2, "P681"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x50

    goto/16 :goto_1

    :sswitch_40
    const-string v2, "1714"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x2

    goto/16 :goto_1

    :sswitch_41
    const-string v2, "1713"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    goto/16 :goto_1

    :sswitch_42
    const-string v2, "1601"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    goto/16 :goto_1

    :sswitch_43
    const-string v2, "flo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x26

    goto/16 :goto_1

    :sswitch_44
    const-string v2, "deb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x18

    goto/16 :goto_1

    :sswitch_45
    const-string v2, "cv3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x17

    goto/16 :goto_1

    :sswitch_46
    const-string v2, "cv1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x16

    goto/16 :goto_1

    :sswitch_47
    const-string v2, "Z80"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x7c

    goto/16 :goto_1

    :sswitch_48
    const-string v2, "QX1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x65

    goto/16 :goto_1

    :sswitch_49
    const-string v2, "PLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x5d

    goto/16 :goto_1

    :sswitch_4a
    const-string v2, "P85"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x51

    goto/16 :goto_1

    :sswitch_4b
    const-string v2, "MX6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x49

    goto/16 :goto_1

    :sswitch_4c
    const-string v2, "M5c"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x43

    goto/16 :goto_1

    :sswitch_4d
    const-string v2, "JGZ"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x3e

    goto/16 :goto_1

    :sswitch_4e
    const-string v2, "mh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x47

    goto/16 :goto_1

    :sswitch_4f
    const-string v2, "V5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x72

    goto/16 :goto_1

    :sswitch_50
    const-string v2, "V1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x70

    goto/16 :goto_1

    :sswitch_51
    const-string v2, "Q5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x63

    goto/16 :goto_1

    :sswitch_52
    const-string v2, "C1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x11

    goto/16 :goto_1

    :sswitch_53
    const-string v2, "woods_fn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x77

    goto/16 :goto_1

    :sswitch_54
    const-string v2, "ELUGA_A3_Pro"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x1a

    goto/16 :goto_1

    :sswitch_55
    const-string v2, "Z12_PRO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x7b

    goto/16 :goto_1

    :sswitch_56
    const-string v2, "BLACK-1X"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0xe

    goto/16 :goto_1

    :sswitch_57
    const-string v2, "taido_row"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x6a

    goto/16 :goto_1

    :sswitch_58
    const-string v2, "Pixi4-7_3G"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x5b

    goto/16 :goto_1

    :sswitch_59
    const-string v2, "GIONEE_GBL7360"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x2a

    goto/16 :goto_1

    :sswitch_5a
    const-string v2, "GiONEE_CBL7513"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x28

    goto/16 :goto_1

    :sswitch_5b
    const-string v2, "OnePlus5T"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x4e

    goto/16 :goto_1

    :sswitch_5c
    const-string v2, "whyred"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x75

    goto/16 :goto_1

    :sswitch_5d
    const-string v2, "watson"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x74

    goto/16 :goto_1

    :sswitch_5e
    const-string v2, "SVP-DTV15"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x68

    goto/16 :goto_1

    :sswitch_5f
    const-string v2, "A7000-a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x7

    goto/16 :goto_1

    :sswitch_60
    const-string v2, "nicklaus_f"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x4b

    goto/16 :goto_1

    :sswitch_61
    const-string v2, "tcl_eu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x6f

    goto/16 :goto_1

    :sswitch_62
    const-string v2, "ELUGA_Ray_X"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x1d

    goto/16 :goto_1

    :sswitch_63
    const-string v2, "s905x018"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x69

    goto/16 :goto_1

    :sswitch_64
    const-string v2, "A10-70L"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    goto/16 :goto_1

    :sswitch_65
    const-string v2, "A10-70F"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x3

    goto/16 :goto_1

    :sswitch_66
    const-string v2, "namath"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x4a

    goto/16 :goto_1

    :sswitch_67
    const-string v2, "Slate_Pro"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x67

    goto/16 :goto_1

    :sswitch_68
    const-string v2, "iris60"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x3b

    goto/16 :goto_1

    :sswitch_69
    const-string v2, "BRAVIA_ATV2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0xf

    goto/16 :goto_1

    :sswitch_6a
    const-string v2, "GiONEE_GBL7319"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x29

    goto/16 :goto_1

    :sswitch_6b
    const-string v2, "panell_dt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x55

    goto/16 :goto_1

    :sswitch_6c
    const-string v2, "panell_ds"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x54

    goto/16 :goto_1

    :sswitch_6d
    const-string v2, "panell_dl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x53

    goto/16 :goto_1

    :sswitch_6e
    const-string v2, "vernee_M5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x73

    goto/16 :goto_1

    :sswitch_6f
    const-string v2, "Phantom6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x5a

    goto/16 :goto_1

    :sswitch_70
    const-string v2, "ComioS1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x12

    goto/16 :goto_1

    :sswitch_71
    const-string v2, "XT1663"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x7a

    goto/16 :goto_1

    :sswitch_72
    const-string v2, "AquaPowerM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0xb

    goto/16 :goto_1

    :sswitch_73
    const-string v2, "PGN611"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x59

    goto/16 :goto_1

    :sswitch_74
    const-string v2, "PGN610"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x58

    goto :goto_1

    :sswitch_75
    const-string v2, "PGN528"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x57

    goto :goto_1

    :sswitch_76
    const-string v2, "NX573J"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x4d

    goto :goto_1

    :sswitch_77
    const-string v2, "NX541J"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x4c

    goto :goto_1

    :sswitch_78
    const-string v2, "CP8676_I02"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x13

    goto :goto_1

    :sswitch_79
    const-string v2, "K50a40"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x3f

    goto :goto_1

    :sswitch_7a
    const-string v2, "GIONEE_SWW1631"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x2d

    goto :goto_1

    :sswitch_7b
    const-string v2, "GIONEE_SWW1627"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x2c

    goto :goto_1

    :sswitch_7c
    const-string v2, "GIONEE_SWW1609"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x2b

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v2, -0x1

    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 8
    :pswitch_0
    sput-boolean v3, Lf/i/a/a/n1/m;->d1:Z

    .line 9
    :goto_2
    sget-object v1, Lf/i/a/a/m1/h0;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v4, 0x1e9d52

    if-eq v2, v4, :cond_6

    const v0, 0x1e9d5f

    if-eq v2, v0, :cond_5

    goto :goto_3

    :cond_5
    const-string v0, "AFTN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_4

    :cond_6
    const-string v2, "AFTA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    :goto_3
    const/4 v0, -0x1

    :goto_4
    if-eqz v0, :cond_8

    if-eq v0, v3, :cond_8

    goto :goto_5

    .line 10
    :cond_8
    sput-boolean v3, Lf/i/a/a/n1/m;->d1:Z

    .line 11
    :goto_5
    sput-boolean v3, Lf/i/a/a/n1/m;->c1:Z

    .line 12
    :cond_9
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    sget-boolean p1, Lf/i/a/a/n1/m;->d1:Z

    return p1

    :catchall_0
    move-exception v0

    .line 14
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7fd6c3bd -> :sswitch_7c
        -0x7fd6c381 -> :sswitch_7b
        -0x7fd6c368 -> :sswitch_7a
        -0x7d026749 -> :sswitch_79
        -0x78929d6a -> :sswitch_78
        -0x75f50a1e -> :sswitch_77
        -0x75f4fe9d -> :sswitch_76
        -0x736f875c -> :sswitch_75
        -0x736f83c2 -> :sswitch_74
        -0x736f83c1 -> :sswitch_73
        -0x7327ce1c -> :sswitch_72
        -0x651ebb62 -> :sswitch_71
        -0x6423293b -> :sswitch_70
        -0x604f5117 -> :sswitch_6f
        -0x5ca40cc4 -> :sswitch_6e
        -0x58520ec1 -> :sswitch_6d
        -0x58520eba -> :sswitch_6c
        -0x58520eb9 -> :sswitch_6b
        -0x4eaed329 -> :sswitch_6a
        -0x4892fb4f -> :sswitch_69
        -0x465b3df3 -> :sswitch_68
        -0x43e6c939 -> :sswitch_67
        -0x3ec0fcc5 -> :sswitch_66
        -0x3b33cca0 -> :sswitch_65
        -0x3b33cc9a -> :sswitch_64
        -0x398ae3f6 -> :sswitch_63
        -0x391f0fb4 -> :sswitch_62
        -0x346837ae -> :sswitch_61
        -0x323788e3 -> :sswitch_60
        -0x30f57652 -> :sswitch_5f
        -0x2f88a116 -> :sswitch_5e
        -0x2f61ed98 -> :sswitch_5d
        -0x2efd0837 -> :sswitch_5c
        -0x2e9e9441 -> :sswitch_5b
        -0x2247b8b1 -> :sswitch_5a
        -0x1f0fa2b7 -> :sswitch_59
        -0x19af3b41 -> :sswitch_58
        -0x114fad3e -> :sswitch_57
        -0x10dae90b -> :sswitch_56
        -0x1084b7b7 -> :sswitch_55
        -0xa5988e9 -> :sswitch_54
        -0x35f9fbf -> :sswitch_53
        0x84e -> :sswitch_52
        0xa04 -> :sswitch_51
        0xa9b -> :sswitch_50
        0xa9f -> :sswitch_4f
        0xd9b -> :sswitch_4e
        0x11ebd -> :sswitch_4d
        0x127db -> :sswitch_4c
        0x12beb -> :sswitch_4b
        0x1334d -> :sswitch_4a
        0x135c9 -> :sswitch_49
        0x13aea -> :sswitch_48
        0x158d2 -> :sswitch_47
        0x1821e -> :sswitch_46
        0x18220 -> :sswitch_45
        0x18401 -> :sswitch_44
        0x18c69 -> :sswitch_43
        0x1716e6 -> :sswitch_42
        0x171ac8 -> :sswitch_41
        0x171ac9 -> :sswitch_40
        0x252f5f -> :sswitch_3f
        0x25981d -> :sswitch_3e
        0x259b88 -> :sswitch_3d
        0x290a13 -> :sswitch_3c
        0x3021fd -> :sswitch_3b
        0x321e47 -> :sswitch_3a
        0x332327 -> :sswitch_39
        0x33ab63 -> :sswitch_38
        0x27691fb -> :sswitch_37
        0x349f581 -> :sswitch_36
        0x3ab0ea7 -> :sswitch_35
        0x3e53ea5 -> :sswitch_34
        0x3f25a44 -> :sswitch_33
        0x3f25a46 -> :sswitch_32
        0x3f25a49 -> :sswitch_31
        0x3f25e05 -> :sswitch_30
        0x3f25e07 -> :sswitch_2f
        0x3f25e09 -> :sswitch_2e
        0x3f261c6 -> :sswitch_2d
        0x48dce49 -> :sswitch_2c
        0x48dd589 -> :sswitch_2b
        0x48dd8af -> :sswitch_2a
        0x4d36832 -> :sswitch_29
        0x4f0b0e7 -> :sswitch_28
        0x5e2479e -> :sswitch_27
        0x6214744 -> :sswitch_26
        0x9d91379 -> :sswitch_25
        0xadc0551 -> :sswitch_24
        0xea056b3 -> :sswitch_23
        0x1121dbc3 -> :sswitch_22
        0x1255818c -> :sswitch_21
        0x1263990d -> :sswitch_20
        0x12d90f3a -> :sswitch_1f
        0x12d90f4c -> :sswitch_1e
        0x12d98b1b -> :sswitch_1d
        0x12d98b22 -> :sswitch_1c
        0x1844c711 -> :sswitch_1b
        0x1e3e8044 -> :sswitch_1a
        0x2f5336ed -> :sswitch_19
        0x2f54115e -> :sswitch_18
        0x2f541849 -> :sswitch_17
        0x31cf010e -> :sswitch_16
        0x36ad82f4 -> :sswitch_15
        0x391a0b61 -> :sswitch_14
        0x3f3728cd -> :sswitch_13
        0x448ec687 -> :sswitch_12
        0x46260f63 -> :sswitch_11
        0x4c505106 -> :sswitch_10
        0x4de67084 -> :sswitch_f
        0x506ac5a9 -> :sswitch_e
        0x5abad9cd -> :sswitch_d
        0x64d2e6e9 -> :sswitch_c
        0x65e4085b -> :sswitch_b
        0x6f373556 -> :sswitch_a
        0x719f1dcb -> :sswitch_9
        0x75d9a0f0 -> :sswitch_8
        0x7796d144 -> :sswitch_7
        0x78fc0e50 -> :sswitch_6
        0x790521fb -> :sswitch_5
        0x7933207f -> :sswitch_4
        0x7a05a409 -> :sswitch_3
        0x7a0696bd -> :sswitch_2
        0x7a16dfe7 -> :sswitch_1
        0x7a1f0e95 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final u0()V
    .locals 8

    .line 1
    iget v0, p0, Lf/i/a/a/n1/m;->G0:I

    if-lez v0, :cond_1

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3
    iget-wide v2, p0, Lf/i/a/a/n1/m;->F0:J

    sub-long v2, v0, v2

    .line 4
    iget-object v4, p0, Lf/i/a/a/n1/m;->r0:Lf/i/a/a/n1/s$a;

    iget v5, p0, Lf/i/a/a/n1/m;->G0:I

    .line 5
    iget-object v6, v4, Lf/i/a/a/n1/s$a;->b:Lf/i/a/a/n1/s;

    if-eqz v6, :cond_0

    .line 6
    iget-object v6, v4, Lf/i/a/a/n1/s$a;->a:Landroid/os/Handler;

    new-instance v7, Lf/i/a/a/n1/g;

    invoke-direct {v7, v4, v5, v2, v3}, Lf/i/a/a/n1/g;-><init>(Lf/i/a/a/n1/s$a;IJ)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v2, 0x0

    .line 7
    iput v2, p0, Lf/i/a/a/n1/m;->G0:I

    .line 8
    iput-wide v0, p0, Lf/i/a/a/n1/m;->F0:J

    :cond_1
    return-void
.end method

.method public v0()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lf/i/a/a/n1/m;->C0:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lf/i/a/a/n1/m;->C0:Z

    .line 3
    iget-object v0, p0, Lf/i/a/a/n1/m;->r0:Lf/i/a/a/n1/s$a;

    iget-object v1, p0, Lf/i/a/a/n1/m;->z0:Landroid/view/Surface;

    .line 4
    iget-object v2, v0, Lf/i/a/a/n1/s$a;->b:Lf/i/a/a/n1/s;

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, v0, Lf/i/a/a/n1/s$a;->a:Landroid/os/Handler;

    new-instance v3, Lf/i/a/a/n1/b;

    invoke-direct {v3, v0, v1}, Lf/i/a/a/n1/b;-><init>(Lf/i/a/a/n1/s$a;Landroid/view/Surface;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final w0()V
    .locals 5

    .line 1
    iget v0, p0, Lf/i/a/a/n1/m;->M0:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lf/i/a/a/n1/m;->N0:I

    if-eq v0, v1, :cond_2

    :cond_0
    iget v0, p0, Lf/i/a/a/n1/m;->Q0:I

    iget v1, p0, Lf/i/a/a/n1/m;->M0:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lf/i/a/a/n1/m;->R0:I

    iget v1, p0, Lf/i/a/a/n1/m;->N0:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lf/i/a/a/n1/m;->S0:I

    iget v1, p0, Lf/i/a/a/n1/m;->O0:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lf/i/a/a/n1/m;->T0:F

    iget v1, p0, Lf/i/a/a/n1/m;->P0:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 2
    :cond_1
    iget-object v0, p0, Lf/i/a/a/n1/m;->r0:Lf/i/a/a/n1/s$a;

    iget v1, p0, Lf/i/a/a/n1/m;->M0:I

    iget v2, p0, Lf/i/a/a/n1/m;->N0:I

    iget v3, p0, Lf/i/a/a/n1/m;->O0:I

    iget v4, p0, Lf/i/a/a/n1/m;->P0:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lf/i/a/a/n1/s$a;->h(IIIF)V

    .line 3
    iget v0, p0, Lf/i/a/a/n1/m;->M0:I

    iput v0, p0, Lf/i/a/a/n1/m;->Q0:I

    .line 4
    iget v0, p0, Lf/i/a/a/n1/m;->N0:I

    iput v0, p0, Lf/i/a/a/n1/m;->R0:I

    .line 5
    iget v0, p0, Lf/i/a/a/n1/m;->O0:I

    iput v0, p0, Lf/i/a/a/n1/m;->S0:I

    .line 6
    iget v0, p0, Lf/i/a/a/n1/m;->P0:F

    iput v0, p0, Lf/i/a/a/n1/m;->T0:F

    :cond_2
    return-void
.end method

.method public x()V
    .locals 5

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 1
    iput-wide v0, p0, Lf/i/a/a/n1/m;->X0:J

    .line 2
    iput-wide v0, p0, Lf/i/a/a/n1/m;->Y0:J

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lf/i/a/a/n1/m;->Z0:I

    .line 4
    invoke-virtual {p0}, Lf/i/a/a/n1/m;->p0()V

    .line 5
    invoke-virtual {p0}, Lf/i/a/a/n1/m;->o0()V

    .line 6
    iget-object v0, p0, Lf/i/a/a/n1/m;->q0:Lf/i/a/a/n1/o;

    .line 7
    iget-object v1, v0, Lf/i/a/a/n1/o;->a:Landroid/view/WindowManager;

    if-eqz v1, :cond_1

    .line 8
    iget-object v1, v0, Lf/i/a/a/n1/o;->c:Lf/i/a/a/n1/o$a;

    if-eqz v1, :cond_0

    .line 9
    iget-object v2, v1, Lf/i/a/a/n1/o$a;->a:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 10
    :cond_0
    iget-object v0, v0, Lf/i/a/a/n1/o;->b:Lf/i/a/a/n1/o$b;

    .line 11
    iget-object v0, v0, Lf/i/a/a/n1/o$b;->b:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lf/i/a/a/n1/m;->W0:Lf/i/a/a/n1/m$c;

    .line 13
    :try_start_0
    invoke-super {p0}, Lf/i/a/a/c1/b;->x()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    iget-object v1, p0, Lf/i/a/a/n1/m;->r0:Lf/i/a/a/n1/s$a;

    iget-object v2, p0, Lf/i/a/a/c1/b;->n0:Lf/i/a/a/y0/d;

    if-eqz v1, :cond_3

    .line 15
    monitor-enter v2

    .line 16
    monitor-exit v2

    .line 17
    iget-object v0, v1, Lf/i/a/a/n1/s$a;->b:Lf/i/a/a/n1/s;

    if-eqz v0, :cond_2

    .line 18
    iget-object v0, v1, Lf/i/a/a/n1/s$a;->a:Landroid/os/Handler;

    new-instance v3, Lf/i/a/a/n1/f;

    invoke-direct {v3, v1, v2}, Lf/i/a/a/n1/f;-><init>(Lf/i/a/a/n1/s$a;Lf/i/a/a/y0/d;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void

    .line 19
    :cond_3
    throw v0

    :catchall_0
    move-exception v1

    .line 20
    iget-object v2, p0, Lf/i/a/a/n1/m;->r0:Lf/i/a/a/n1/s$a;

    iget-object v3, p0, Lf/i/a/a/c1/b;->n0:Lf/i/a/a/y0/d;

    if-eqz v2, :cond_5

    .line 21
    monitor-enter v3

    .line 22
    monitor-exit v3

    .line 23
    iget-object v0, v2, Lf/i/a/a/n1/s$a;->b:Lf/i/a/a/n1/s;

    if-eqz v0, :cond_4

    .line 24
    iget-object v0, v2, Lf/i/a/a/n1/s$a;->a:Landroid/os/Handler;

    new-instance v4, Lf/i/a/a/n1/f;

    invoke-direct {v4, v2, v3}, Lf/i/a/a/n1/f;-><init>(Lf/i/a/a/n1/s$a;Lf/i/a/a/y0/d;)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    :cond_4
    throw v1

    .line 26
    :cond_5
    throw v0
.end method

.method public final x0()V
    .locals 5

    .line 1
    iget v0, p0, Lf/i/a/a/n1/m;->Q0:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lf/i/a/a/n1/m;->R0:I

    if-eq v0, v1, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lf/i/a/a/n1/m;->r0:Lf/i/a/a/n1/s$a;

    iget v1, p0, Lf/i/a/a/n1/m;->Q0:I

    iget v2, p0, Lf/i/a/a/n1/m;->R0:I

    iget v3, p0, Lf/i/a/a/n1/m;->S0:I

    iget v4, p0, Lf/i/a/a/n1/m;->T0:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lf/i/a/a/n1/s$a;->h(IIIF)V

    :cond_1
    return-void
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
    iget p1, p0, Lf/i/a/a/n1/m;->V0:I

    .line 3
    iget-object v0, p0, Lf/i/a/a/p;->b:Lf/i/a/a/q0;

    .line 4
    iget v0, v0, Lf/i/a/a/q0;->a:I

    iput v0, p0, Lf/i/a/a/n1/m;->V0:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    iput-boolean v0, p0, Lf/i/a/a/n1/m;->U0:Z

    .line 6
    iget v0, p0, Lf/i/a/a/n1/m;->V0:I

    if-eq v0, p1, :cond_1

    .line 7
    invoke-virtual {p0}, Lf/i/a/a/n1/m;->d0()V

    .line 8
    :cond_1
    iget-object p1, p0, Lf/i/a/a/n1/m;->r0:Lf/i/a/a/n1/s$a;

    iget-object v0, p0, Lf/i/a/a/c1/b;->n0:Lf/i/a/a/y0/d;

    .line 9
    iget-object v3, p1, Lf/i/a/a/n1/s$a;->b:Lf/i/a/a/n1/s;

    if-eqz v3, :cond_2

    .line 10
    iget-object v3, p1, Lf/i/a/a/n1/s$a;->a:Landroid/os/Handler;

    new-instance v4, Lf/i/a/a/n1/e;

    invoke-direct {v4, p1, v0}, Lf/i/a/a/n1/e;-><init>(Lf/i/a/a/n1/s$a;Lf/i/a/a/y0/d;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    :cond_2
    iget-object p1, p0, Lf/i/a/a/n1/m;->q0:Lf/i/a/a/n1/o;

    .line 12
    iput-boolean v1, p1, Lf/i/a/a/n1/o;->i:Z

    .line 13
    iget-object v0, p1, Lf/i/a/a/n1/o;->a:Landroid/view/WindowManager;

    if-eqz v0, :cond_4

    .line 14
    iget-object v0, p1, Lf/i/a/a/n1/o;->b:Lf/i/a/a/n1/o$b;

    .line 15
    iget-object v0, v0, Lf/i/a/a/n1/o$b;->b:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 16
    iget-object v0, p1, Lf/i/a/a/n1/o;->c:Lf/i/a/a/n1/o$a;

    if-eqz v0, :cond_3

    .line 17
    iget-object v1, v0, Lf/i/a/a/n1/o$a;->a:Landroid/hardware/display/DisplayManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 18
    :cond_3
    invoke-virtual {p1}, Lf/i/a/a/n1/o;->b()V

    :cond_4
    return-void
.end method

.method public final y0(JJLf/i/a/a/b0;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lf/i/a/a/n1/m;->a1:Lf/i/a/a/n1/n;

    if-eqz v0, :cond_0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    .line 2
    invoke-interface/range {v0 .. v5}, Lf/i/a/a/n1/n;->a(JJLf/i/a/a/b0;)V

    :cond_0
    return-void
.end method

.method public z(JZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lf/i/a/a/c1/b;->i0:Z

    .line 2
    iput-boolean p1, p0, Lf/i/a/a/c1/b;->j0:Z

    .line 3
    invoke-virtual {p0}, Lf/i/a/a/c1/b;->M()Z

    .line 4
    iget-object p2, p0, Lf/i/a/a/c1/b;->r:Lf/i/a/a/m1/d0;

    invoke-virtual {p2}, Lf/i/a/a/m1/d0;->b()V

    .line 5
    invoke-virtual {p0}, Lf/i/a/a/n1/m;->o0()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    iput-wide v0, p0, Lf/i/a/a/n1/m;->D0:J

    .line 7
    iput p1, p0, Lf/i/a/a/n1/m;->H0:I

    .line 8
    iput-wide v0, p0, Lf/i/a/a/n1/m;->X0:J

    .line 9
    iget p2, p0, Lf/i/a/a/n1/m;->Z0:I

    if-eqz p2, :cond_0

    .line 10
    iget-object v2, p0, Lf/i/a/a/n1/m;->v0:[J

    add-int/lit8 p2, p2, -0x1

    aget-wide v3, v2, p2

    iput-wide v3, p0, Lf/i/a/a/n1/m;->Y0:J

    .line 11
    iput p1, p0, Lf/i/a/a/n1/m;->Z0:I

    :cond_0
    if-eqz p3, :cond_1

    .line 12
    invoke-virtual {p0}, Lf/i/a/a/n1/m;->D0()V

    goto :goto_0

    .line 13
    :cond_1
    iput-wide v0, p0, Lf/i/a/a/n1/m;->E0:J

    :goto_0
    return-void
.end method

.method public z0(J)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lf/i/a/a/c1/b;->n0(J)Lf/i/a/a/b0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lf/i/a/a/c1/b;->C:Landroid/media/MediaCodec;

    .line 3
    iget v2, v0, Lf/i/a/a/b0;->n:I

    iget v0, v0, Lf/i/a/a/b0;->o:I

    invoke-virtual {p0, v1, v2, v0}, Lf/i/a/a/n1/m;->A0(Landroid/media/MediaCodec;II)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lf/i/a/a/n1/m;->w0()V

    .line 5
    invoke-virtual {p0}, Lf/i/a/a/n1/m;->v0()V

    .line 6
    invoke-virtual {p0, p1, p2}, Lf/i/a/a/n1/m;->Y(J)V

    return-void
.end method
