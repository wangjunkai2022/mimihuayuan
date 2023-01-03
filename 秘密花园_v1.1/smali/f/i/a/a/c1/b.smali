.class public abstract Lf/i/a/a/c1/b;
.super Lf/i/a/a/p;
.source "MediaCodecRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/c1/b$a;
    }
.end annotation


# static fields
.field public static final o0:[B


# instance fields
.field public A:J

.field public B:F

.field public C:Landroid/media/MediaCodec;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public D:Lf/i/a/a/b0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public E:F

.field public F:Ljava/util/ArrayDeque;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lf/i/a/a/c1/a;",
            ">;"
        }
    .end annotation
.end field

.field public G:Lf/i/a/a/c1/b$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public H:Lf/i/a/a/c1/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public I:I

.field public J:Z

.field public K:Z

.field public L:Z

.field public M:Z

.field public N:Z

.field public O:Z

.field public P:Z

.field public Q:Z

.field public R:Z

.field public S:[Ljava/nio/ByteBuffer;

.field public T:[Ljava/nio/ByteBuffer;

.field public U:J

.field public V:I

.field public W:I

.field public X:Ljava/nio/ByteBuffer;

.field public Y:Z

.field public Z:Z

.field public a0:Z

.field public b0:I

.field public c0:I

.field public d0:I

.field public e0:Z

.field public f0:Z

.field public g0:J

.field public h0:J

.field public i0:Z

.field public final j:Lf/i/a/a/c1/c;

.field public j0:Z

.field public final k:Lf/i/a/a/z0/g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i/a/a/z0/g<",
            "Lf/i/a/a/z0/j;",
            ">;"
        }
    .end annotation
.end field

.field public k0:Z

.field public final l:Z

.field public l0:Z

.field public final m:Z

.field public m0:Z

.field public final n:F

.field public n0:Lf/i/a/a/y0/d;

.field public final o:Lf/i/a/a/y0/e;

.field public final p:Lf/i/a/a/y0/e;

.field public final q:Lf/i/a/a/c0;

.field public final r:Lf/i/a/a/m1/d0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i/a/a/m1/d0<",
            "Lf/i/a/a/b0;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final t:Landroid/media/MediaCodec$BufferInfo;

.field public u:Lf/i/a/a/b0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public v:Lf/i/a/a/b0;

.field public w:Lf/i/a/a/z0/f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i/a/a/z0/f<",
            "Lf/i/a/a/z0/j;",
            ">;"
        }
    .end annotation
.end field

.field public x:Lf/i/a/a/z0/f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i/a/a/z0/f<",
            "Lf/i/a/a/z0/j;",
            ">;"
        }
    .end annotation
.end field

.field public y:Landroid/media/MediaCrypto;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78"

    .line 1
    invoke-static {v0}, Lf/i/a/a/m1/h0;->x(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lf/i/a/a/c1/b;->o0:[B

    return-void
.end method

.method public constructor <init>(ILf/i/a/a/c1/c;Lf/i/a/a/z0/g;ZZF)V
    .locals 0
    .param p3    # Lf/i/a/a/z0/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lf/i/a/a/c1/c;",
            "Lf/i/a/a/z0/g<",
            "Lf/i/a/a/z0/j;",
            ">;ZZF)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lf/i/a/a/p;-><init>(I)V

    if-eqz p2, :cond_0

    .line 2
    iput-object p2, p0, Lf/i/a/a/c1/b;->j:Lf/i/a/a/c1/c;

    .line 3
    iput-object p3, p0, Lf/i/a/a/c1/b;->k:Lf/i/a/a/z0/g;

    .line 4
    iput-boolean p4, p0, Lf/i/a/a/c1/b;->l:Z

    .line 5
    iput-boolean p5, p0, Lf/i/a/a/c1/b;->m:Z

    .line 6
    iput p6, p0, Lf/i/a/a/c1/b;->n:F

    .line 7
    new-instance p1, Lf/i/a/a/y0/e;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lf/i/a/a/y0/e;-><init>(I)V

    iput-object p1, p0, Lf/i/a/a/c1/b;->o:Lf/i/a/a/y0/e;

    .line 8
    new-instance p1, Lf/i/a/a/y0/e;

    invoke-direct {p1, p2}, Lf/i/a/a/y0/e;-><init>(I)V

    .line 9
    iput-object p1, p0, Lf/i/a/a/c1/b;->p:Lf/i/a/a/y0/e;

    .line 10
    new-instance p1, Lf/i/a/a/c0;

    invoke-direct {p1}, Lf/i/a/a/c0;-><init>()V

    iput-object p1, p0, Lf/i/a/a/c1/b;->q:Lf/i/a/a/c0;

    .line 11
    new-instance p1, Lf/i/a/a/m1/d0;

    invoke-direct {p1}, Lf/i/a/a/m1/d0;-><init>()V

    iput-object p1, p0, Lf/i/a/a/c1/b;->r:Lf/i/a/a/m1/d0;

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lf/i/a/a/c1/b;->s:Ljava/util/ArrayList;

    .line 13
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p1, p0, Lf/i/a/a/c1/b;->t:Landroid/media/MediaCodec$BufferInfo;

    .line 14
    iput p2, p0, Lf/i/a/a/c1/b;->b0:I

    .line 15
    iput p2, p0, Lf/i/a/a/c1/b;->c0:I

    .line 16
    iput p2, p0, Lf/i/a/a/c1/b;->d0:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 17
    iput p1, p0, Lf/i/a/a/c1/b;->E:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 18
    iput p1, p0, Lf/i/a/a/c1/b;->B:F

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 19
    iput-wide p1, p0, Lf/i/a/a/c1/b;->A:J

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 20
    throw p1
.end method


# virtual methods
.method public A()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lf/i/a/a/c1/b;->d0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-virtual {p0, v0}, Lf/i/a/a/c1/b;->i0(Lf/i/a/a/z0/f;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lf/i/a/a/c1/b;->i0(Lf/i/a/a/z0/f;)V

    .line 3
    throw v1
.end method

.method public final F(Lf/i/a/a/b0;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lf/i/a/a/c1/b;->j:Lf/i/a/a/c1/c;

    iget-object v1, p0, Lf/i/a/a/c1/b;->k:Lf/i/a/a/z0/g;

    invoke-virtual {p0, v0, v1, p1}, Lf/i/a/a/c1/b;->k0(Lf/i/a/a/c1/c;Lf/i/a/a/z0/g;Lf/i/a/a/b0;)I

    move-result p1
    :try_end_0
    .catch Lf/i/a/a/c1/d$c; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    iget v0, p0, Lf/i/a/a/p;->c:I

    .line 3
    invoke-static {p1, v0}, Lf/i/a/a/w;->a(Ljava/lang/Exception;I)Lf/i/a/a/w;

    move-result-object p1

    throw p1
.end method

.method public final H()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public abstract I(Landroid/media/MediaCodec;Lf/i/a/a/c1/a;Lf/i/a/a/b0;Lf/i/a/a/b0;)I
.end method

.method public abstract J(Lf/i/a/a/c1/a;Landroid/media/MediaCodec;Lf/i/a/a/b0;Landroid/media/MediaCrypto;F)V
.end method

.method public final K()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lf/i/a/a/c1/b;->e0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lf/i/a/a/c1/b;->c0:I

    const/4 v0, 0x3

    .line 3
    iput v0, p0, Lf/i/a/a/c1/b;->d0:I

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lf/i/a/a/c1/b;->d0()V

    .line 5
    invoke-virtual {p0}, Lf/i/a/a/c1/b;->T()V

    :goto_0
    return-void
.end method

.method public final L()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    .line 1
    sget v0, Lf/i/a/a/m1/h0;->a:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lf/i/a/a/c1/b;->K()V

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lf/i/a/a/c1/b;->e0:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lf/i/a/a/c1/b;->c0:I

    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lf/i/a/a/c1/b;->d0:I

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lf/i/a/a/c1/b;->m0()V

    :goto_0
    return-void
.end method

.method public final M()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/c1/b;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lf/i/a/a/c1/b;->T()V

    :cond_0
    return v0
.end method

.method public N()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lf/i/a/a/c1/b;->C:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v0, p0, Lf/i/a/a/c1/b;->d0:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v2, :cond_2

    iget-boolean v0, p0, Lf/i/a/a/c1/b;->L:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lf/i/a/a/c1/b;->M:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lf/i/a/a/c1/b;->f0:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lf/i/a/a/c1/b;->C:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 4
    invoke-virtual {p0}, Lf/i/a/a/c1/b;->f0()V

    .line 5
    invoke-virtual {p0}, Lf/i/a/a/c1/b;->g0()V

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    iput-wide v4, p0, Lf/i/a/a/c1/b;->U:J

    .line 7
    iput-boolean v1, p0, Lf/i/a/a/c1/b;->f0:Z

    .line 8
    iput-boolean v1, p0, Lf/i/a/a/c1/b;->e0:Z

    .line 9
    iput-boolean v3, p0, Lf/i/a/a/c1/b;->l0:Z

    .line 10
    iput-boolean v1, p0, Lf/i/a/a/c1/b;->P:Z

    .line 11
    iput-boolean v1, p0, Lf/i/a/a/c1/b;->Q:Z

    .line 12
    iput-boolean v1, p0, Lf/i/a/a/c1/b;->Y:Z

    .line 13
    iput-boolean v1, p0, Lf/i/a/a/c1/b;->Z:Z

    .line 14
    iput-boolean v1, p0, Lf/i/a/a/c1/b;->k0:Z

    .line 15
    iget-object v0, p0, Lf/i/a/a/c1/b;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 16
    iput-wide v4, p0, Lf/i/a/a/c1/b;->h0:J

    .line 17
    iput-wide v4, p0, Lf/i/a/a/c1/b;->g0:J

    .line 18
    iput v1, p0, Lf/i/a/a/c1/b;->c0:I

    .line 19
    iput v1, p0, Lf/i/a/a/c1/b;->d0:I

    .line 20
    iget-boolean v0, p0, Lf/i/a/a/c1/b;->a0:Z

    iput v0, p0, Lf/i/a/a/c1/b;->b0:I

    return v1

    .line 21
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lf/i/a/a/c1/b;->d0()V

    return v3
.end method

.method public final O(Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
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
    iget-object v0, p0, Lf/i/a/a/c1/b;->j:Lf/i/a/a/c1/c;

    iget-object v1, p0, Lf/i/a/a/c1/b;->u:Lf/i/a/a/b0;

    .line 2
    invoke-virtual {p0, v0, v1, p1}, Lf/i/a/a/c1/b;->R(Lf/i/a/a/c1/c;Lf/i/a/a/b0;Z)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lf/i/a/a/c1/b;->j:Lf/i/a/a/c1/c;

    iget-object v0, p0, Lf/i/a/a/c1/b;->u:Lf/i/a/a/b0;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, p1, v0, v1}, Lf/i/a/a/c1/b;->R(Lf/i/a/a/c1/c;Lf/i/a/a/b0;Z)Ljava/util/List;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "Drm session requires secure decoder for "

    .line 7
    invoke-static {p1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lf/i/a/a/c1/b;->u:Lf/i/a/a/b0;

    iget-object v1, v1, Lf/i/a/a/b0;->i:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", but no secure decoder available. Trying to proceed with "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public P()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract Q(FLf/i/a/a/b0;[Lf/i/a/a/b0;)F
.end method

.method public abstract R(Lf/i/a/a/c1/c;Lf/i/a/a/b0;Z)Ljava/util/List;
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
.end method

.method public final S(Lf/i/a/a/c1/a;Landroid/media/MediaCrypto;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    .line 1
    iget-object v8, v0, Lf/i/a/a/c1/a;->a:Ljava/lang/String;

    .line 2
    sget v1, Lf/i/a/a/m1/h0;->a:I

    const/high16 v2, -0x40800000    # -1.0f

    const/16 v9, 0x17

    if-ge v1, v9, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    iget v1, v7, Lf/i/a/a/c1/b;->B:F

    iget-object v3, v7, Lf/i/a/a/c1/b;->u:Lf/i/a/a/b0;

    .line 3
    iget-object v4, v7, Lf/i/a/a/p;->f:[Lf/i/a/a/b0;

    .line 4
    invoke-virtual {v7, v1, v3, v4}, Lf/i/a/a/c1/b;->Q(FLf/i/a/a/b0;[Lf/i/a/a/b0;)F

    move-result v1

    .line 5
    :goto_0
    iget v3, v7, Lf/i/a/a/c1/b;->n:F

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_1

    const/high16 v10, -0x40800000    # -1.0f

    goto :goto_1

    :cond_1
    move v10, v1

    :goto_1
    const/4 v11, 0x0

    const/16 v12, 0x15

    .line 6
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createCodec:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc/a/a/b/g/h;->g(Ljava/lang/String;)V

    .line 8
    invoke-static {v8}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 9
    :try_start_1
    invoke-static {}, Lc/a/a/b/g/h;->N()V

    const-string v1, "configureCodec"

    .line 10
    invoke-static {v1}, Lc/a/a/b/g/h;->g(Ljava/lang/String;)V

    .line 11
    iget-object v4, v7, Lf/i/a/a/c1/b;->u:Lf/i/a/a/b0;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v15

    move-object/from16 v5, p2

    move v6, v10

    invoke-virtual/range {v1 .. v6}, Lf/i/a/a/c1/b;->J(Lf/i/a/a/c1/a;Landroid/media/MediaCodec;Lf/i/a/a/b0;Landroid/media/MediaCrypto;F)V

    .line 12
    invoke-static {}, Lc/a/a/b/g/h;->N()V

    const-string v1, "startCodec"

    .line 13
    invoke-static {v1}, Lc/a/a/b/g/h;->g(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v15}, Landroid/media/MediaCodec;->start()V

    .line 15
    invoke-static {}, Lc/a/a/b/g/h;->N()V

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 17
    sget v1, Lf/i/a/a/m1/h0;->a:I

    if-ge v1, v12, :cond_2

    .line 18
    invoke-virtual {v15}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v7, Lf/i/a/a/c1/b;->S:[Ljava/nio/ByteBuffer;

    .line 19
    invoke-virtual {v15}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v7, Lf/i/a/a/c1/b;->T:[Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 20
    :cond_2
    iput-object v15, v7, Lf/i/a/a/c1/b;->C:Landroid/media/MediaCodec;

    .line 21
    iput-object v0, v7, Lf/i/a/a/c1/b;->H:Lf/i/a/a/c1/a;

    .line 22
    iput v10, v7, Lf/i/a/a/c1/b;->E:F

    .line 23
    iget-object v1, v7, Lf/i/a/a/c1/b;->u:Lf/i/a/a/b0;

    iput-object v1, v7, Lf/i/a/a/c1/b;->D:Lf/i/a/a/b0;

    .line 24
    sget v1, Lf/i/a/a/m1/h0;->a:I

    const-string v2, "OMX.Exynos.avc.dec.secure"

    const/16 v5, 0x19

    const/4 v11, 0x1

    if-gt v1, v5, :cond_4

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lf/i/a/a/m1/h0;->d:Ljava/lang/String;

    const-string v15, "SM-T585"

    .line 25
    invoke-virtual {v1, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lf/i/a/a/m1/h0;->d:Ljava/lang/String;

    const-string v15, "SM-A510"

    invoke-virtual {v1, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lf/i/a/a/m1/h0;->d:Ljava/lang/String;

    const-string v15, "SM-A520"

    .line 26
    invoke-virtual {v1, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lf/i/a/a/m1/h0;->d:Ljava/lang/String;

    const-string v15, "SM-J700"

    invoke-virtual {v1, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v1, 0x2

    goto :goto_2

    .line 27
    :cond_4
    sget v1, Lf/i/a/a/m1/h0;->a:I

    const/16 v15, 0x18

    if-ge v1, v15, :cond_7

    const-string v1, "OMX.Nvidia.h264.decode"

    .line 28
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "OMX.Nvidia.h264.decode.secure"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_5
    sget-object v1, Lf/i/a/a/m1/h0;->b:Ljava/lang/String;

    const-string v15, "flounder"

    .line 29
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lf/i/a/a/m1/h0;->b:Ljava/lang/String;

    const-string v15, "flounder_lte"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lf/i/a/a/m1/h0;->b:Ljava/lang/String;

    const-string v15, "grouper"

    .line 30
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lf/i/a/a/m1/h0;->b:Ljava/lang/String;

    const-string v15, "tilapia"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    const/4 v1, 0x1

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    .line 31
    :goto_2
    iput v1, v7, Lf/i/a/a/c1/b;->I:I

    .line 32
    sget-object v1, Lf/i/a/a/m1/h0;->d:Ljava/lang/String;

    const-string v15, "SM-T230"

    invoke-virtual {v1, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "OMX.MARVELL.VIDEO.HW.CODA7542DECODER"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    .line 33
    :goto_3
    iput-boolean v1, v7, Lf/i/a/a/c1/b;->J:Z

    .line 34
    iget-object v1, v7, Lf/i/a/a/c1/b;->D:Lf/i/a/a/b0;

    .line 35
    sget v15, Lf/i/a/a/m1/h0;->a:I

    if-ge v15, v12, :cond_9

    iget-object v1, v1, Lf/i/a/a/b0;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "OMX.MTK.VIDEO.DECODER.AVC"

    .line 36
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    .line 37
    :goto_4
    iput-boolean v1, v7, Lf/i/a/a/c1/b;->K:Z

    .line 38
    sget v1, Lf/i/a/a/m1/h0;->a:I

    const/16 v15, 0x13

    const/16 v10, 0x12

    if-lt v1, v10, :cond_c

    if-ne v1, v10, :cond_a

    const-string v1, "OMX.SEC.avc.dec"

    .line 39
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "OMX.SEC.avc.dec.secure"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    :cond_a
    sget v1, Lf/i/a/a/m1/h0;->a:I

    if-ne v1, v15, :cond_b

    sget-object v1, Lf/i/a/a/m1/h0;->d:Ljava/lang/String;

    const-string v6, "SM-G800"

    .line 40
    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "OMX.Exynos.avc.dec"

    .line 41
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_5

    :cond_b
    const/4 v1, 0x0

    goto :goto_6

    :cond_c
    :goto_5
    const/4 v1, 0x1

    .line 42
    :goto_6
    iput-boolean v1, v7, Lf/i/a/a/c1/b;->L:Z

    .line 43
    sget v1, Lf/i/a/a/m1/h0;->a:I

    if-gt v1, v9, :cond_d

    const-string v1, "OMX.google.vorbis.decoder"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    :cond_d
    sget v1, Lf/i/a/a/m1/h0;->a:I

    if-gt v1, v15, :cond_10

    sget-object v1, Lf/i/a/a/m1/h0;->b:Ljava/lang/String;

    const-string v2, "hb2000"

    .line 44
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    sget-object v1, Lf/i/a/a/m1/h0;->b:Ljava/lang/String;

    const-string v2, "stvm8"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_e
    const-string v1, "OMX.amlogic.avc.decoder.awesome"

    .line 45
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "OMX.amlogic.avc.decoder.awesome.secure"

    .line 46
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_f
    const/4 v1, 0x1

    goto :goto_7

    :cond_10
    const/4 v1, 0x0

    .line 47
    :goto_7
    iput-boolean v1, v7, Lf/i/a/a/c1/b;->M:Z

    .line 48
    sget v1, Lf/i/a/a/m1/h0;->a:I

    if-ne v1, v12, :cond_11

    const-string v1, "OMX.google.aac.decoder"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_8

    :cond_11
    const/4 v1, 0x0

    .line 49
    :goto_8
    iput-boolean v1, v7, Lf/i/a/a/c1/b;->N:Z

    .line 50
    iget-object v1, v7, Lf/i/a/a/c1/b;->D:Lf/i/a/a/b0;

    .line 51
    sget v2, Lf/i/a/a/m1/h0;->a:I

    if-gt v2, v10, :cond_12

    iget v1, v1, Lf/i/a/a/b0;->v:I

    if-ne v1, v11, :cond_12

    const-string v1, "OMX.MTK.AUDIO.DECODER.MP3"

    .line 52
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_9

    :cond_12
    const/4 v1, 0x0

    .line 53
    :goto_9
    iput-boolean v1, v7, Lf/i/a/a/c1/b;->O:Z

    .line 54
    iget-object v1, v0, Lf/i/a/a/c1/a;->a:Ljava/lang/String;

    .line 55
    sget v2, Lf/i/a/a/m1/h0;->a:I

    if-gt v2, v5, :cond_13

    const-string v2, "OMX.rk.video_decoder.avc"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    :cond_13
    sget v2, Lf/i/a/a/m1/h0;->a:I

    const/16 v5, 0x11

    if-gt v2, v5, :cond_14

    const-string v2, "OMX.allwinner.video.decoder.avc"

    .line 56
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    :cond_14
    sget-object v1, Lf/i/a/a/m1/h0;->c:Ljava/lang/String;

    const-string v2, "Amazon"

    .line 57
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    sget-object v1, Lf/i/a/a/m1/h0;->d:Ljava/lang/String;

    const-string v2, "AFTS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-boolean v0, v0, Lf/i/a/a/c1/a;->f:Z

    if-eqz v0, :cond_16

    :cond_15
    const/4 v0, 0x1

    goto :goto_a

    :cond_16
    const/4 v0, 0x0

    :goto_a
    if-nez v0, :cond_18

    .line 58
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/c1/b;->P()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_b

    :cond_17
    const/4 v0, 0x0

    goto :goto_c

    :cond_18
    :goto_b
    const/4 v0, 0x1

    :goto_c
    iput-boolean v0, v7, Lf/i/a/a/c1/b;->R:Z

    .line 59
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/c1/b;->f0()V

    .line 60
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/c1/b;->g0()V

    .line 61
    iget v0, v7, Lf/i/a/a/p;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    .line 62
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v5, 0x3e8

    add-long/2addr v0, v5

    goto :goto_d

    :cond_19
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_d
    iput-wide v0, v7, Lf/i/a/a/c1/b;->U:J

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, v7, Lf/i/a/a/c1/b;->a0:Z

    .line 64
    iput v0, v7, Lf/i/a/a/c1/b;->b0:I

    .line 65
    iput-boolean v0, v7, Lf/i/a/a/c1/b;->f0:Z

    .line 66
    iput-boolean v0, v7, Lf/i/a/a/c1/b;->e0:Z

    .line 67
    iput v0, v7, Lf/i/a/a/c1/b;->c0:I

    .line 68
    iput v0, v7, Lf/i/a/a/c1/b;->d0:I

    .line 69
    iput-boolean v0, v7, Lf/i/a/a/c1/b;->P:Z

    .line 70
    iput-boolean v0, v7, Lf/i/a/a/c1/b;->Q:Z

    .line 71
    iput-boolean v0, v7, Lf/i/a/a/c1/b;->Y:Z

    .line 72
    iput-boolean v0, v7, Lf/i/a/a/c1/b;->Z:Z

    .line 73
    iput-boolean v11, v7, Lf/i/a/a/c1/b;->l0:Z

    .line 74
    iget-object v0, v7, Lf/i/a/a/c1/b;->n0:Lf/i/a/a/y0/d;

    iget v1, v0, Lf/i/a/a/y0/d;->a:I

    add-int/2addr v1, v11

    iput v1, v0, Lf/i/a/a/y0/d;->a:I

    sub-long v5, v3, v13

    move-object/from16 v1, p0

    move-object v2, v8

    .line 75
    invoke-virtual/range {v1 .. v6}, Lf/i/a/a/c1/b;->V(Ljava/lang/String;JJ)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_e

    :catch_1
    move-exception v0

    move-object v15, v11

    :goto_e
    if-eqz v15, :cond_1b

    .line 76
    sget v1, Lf/i/a/a/m1/h0;->a:I

    if-ge v1, v12, :cond_1a

    .line 77
    iput-object v11, v7, Lf/i/a/a/c1/b;->S:[Ljava/nio/ByteBuffer;

    .line 78
    iput-object v11, v7, Lf/i/a/a/c1/b;->T:[Ljava/nio/ByteBuffer;

    .line 79
    :cond_1a
    invoke-virtual {v15}, Landroid/media/MediaCodec;->release()V

    .line 80
    :cond_1b
    throw v0
.end method

.method public final T()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/c1/b;->C:Landroid/media/MediaCodec;

    if-nez v0, :cond_9

    iget-object v0, p0, Lf/i/a/a/c1/b;->u:Lf/i/a/a/b0;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lf/i/a/a/c1/b;->x:Lf/i/a/a/z0/f;

    invoke-virtual {p0, v0}, Lf/i/a/a/c1/b;->h0(Lf/i/a/a/z0/f;)V

    .line 3
    iget-object v0, p0, Lf/i/a/a/c1/b;->u:Lf/i/a/a/b0;

    iget-object v0, v0, Lf/i/a/a/b0;->i:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lf/i/a/a/c1/b;->w:Lf/i/a/a/z0/f;

    if-eqz v1, :cond_8

    .line 5
    iget-object v2, p0, Lf/i/a/a/c1/b;->y:Landroid/media/MediaCrypto;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_4

    .line 6
    invoke-interface {v1}, Lf/i/a/a/z0/f;->a()Lf/i/a/a/z0/j;

    move-result-object v1

    if-nez v1, :cond_2

    .line 7
    iget-object v0, p0, Lf/i/a/a/c1/b;->w:Lf/i/a/a/z0/f;

    invoke-interface {v0}, Lf/i/a/a/z0/f;->b()Lf/i/a/a/z0/f$a;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    return-void

    .line 8
    :cond_2
    :try_start_0
    new-instance v2, Landroid/media/MediaCrypto;

    iget-object v5, v1, Lf/i/a/a/z0/j;->a:Ljava/util/UUID;

    iget-object v6, v1, Lf/i/a/a/z0/j;->b:[B

    invoke-direct {v2, v5, v6}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V

    iput-object v2, p0, Lf/i/a/a/c1/b;->y:Landroid/media/MediaCrypto;
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    iget-boolean v1, v1, Lf/i/a/a/z0/j;->c:Z

    if-nez v1, :cond_3

    .line 10
    invoke-virtual {v2, v0}, Landroid/media/MediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lf/i/a/a/c1/b;->z:Z

    goto :goto_1

    :catch_0
    move-exception v0

    .line 11
    iget v1, p0, Lf/i/a/a/p;->c:I

    .line 12
    invoke-static {v0, v1}, Lf/i/a/a/w;->a(Ljava/lang/Exception;I)Lf/i/a/a/w;

    move-result-object v0

    throw v0

    .line 13
    :cond_4
    :goto_1
    sget-object v0, Lf/i/a/a/m1/h0;->c:Ljava/lang/String;

    const-string v1, "Amazon"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lf/i/a/a/m1/h0;->d:Ljava/lang/String;

    const-string v1, "AFTM"

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lf/i/a/a/m1/h0;->d:Ljava/lang/String;

    const-string v1, "AFTB"

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const/4 v3, 0x1

    :cond_6
    if-eqz v3, :cond_8

    .line 16
    iget-object v0, p0, Lf/i/a/a/c1/b;->w:Lf/i/a/a/z0/f;

    invoke-interface {v0}, Lf/i/a/a/z0/f;->c()I

    move-result v0

    if-eq v0, v4, :cond_7

    const/4 v1, 0x4

    if-eq v0, v1, :cond_8

    return-void

    .line 17
    :cond_7
    iget-object v0, p0, Lf/i/a/a/c1/b;->w:Lf/i/a/a/z0/f;

    invoke-interface {v0}, Lf/i/a/a/z0/f;->b()Lf/i/a/a/z0/f$a;

    move-result-object v0

    .line 18
    iget v1, p0, Lf/i/a/a/p;->c:I

    .line 19
    invoke-static {v0, v1}, Lf/i/a/a/w;->a(Ljava/lang/Exception;I)Lf/i/a/a/w;

    move-result-object v0

    throw v0

    .line 20
    :cond_8
    :try_start_1
    iget-object v0, p0, Lf/i/a/a/c1/b;->y:Landroid/media/MediaCrypto;

    iget-boolean v1, p0, Lf/i/a/a/c1/b;->z:Z

    invoke-virtual {p0, v0, v1}, Lf/i/a/a/c1/b;->U(Landroid/media/MediaCrypto;Z)V
    :try_end_1
    .catch Lf/i/a/a/c1/b$a; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    .line 21
    iget v1, p0, Lf/i/a/a/p;->c:I

    .line 22
    invoke-static {v0, v1}, Lf/i/a/a/w;->a(Ljava/lang/Exception;I)Lf/i/a/a/w;

    move-result-object v0

    throw v0

    :cond_9
    :goto_2
    return-void
.end method

.method public final U(Landroid/media/MediaCrypto;Z)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/c1/b$a;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v10, p2

    .line 1
    iget-object v0, v1, Lf/i/a/a/c1/b;->F:Ljava/util/ArrayDeque;

    const/4 v11, 0x0

    if-nez v0, :cond_2

    .line 2
    :try_start_0
    invoke-virtual {v1, v10}, Lf/i/a/a/c1/b;->O(Z)Ljava/util/List;

    move-result-object v0

    .line 3
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, v1, Lf/i/a/a/c1/b;->F:Ljava/util/ArrayDeque;

    .line 4
    iget-boolean v3, v1, Lf/i/a/a/c1/b;->m:Z

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 7
    iget-object v2, v1, Lf/i/a/a/c1/b;->F:Ljava/util/ArrayDeque;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_1
    :goto_0
    iput-object v11, v1, Lf/i/a/a/c1/b;->G:Lf/i/a/a/c1/b$a;
    :try_end_0
    .catch Lf/i/a/a/c1/d$c; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 9
    new-instance v2, Lf/i/a/a/c1/b$a;

    iget-object v3, v1, Lf/i/a/a/c1/b;->u:Lf/i/a/a/b0;

    const v4, -0xc34e

    invoke-direct {v2, v3, v0, v10, v4}, Lf/i/a/a/c1/b$a;-><init>(Lf/i/a/a/b0;Ljava/lang/Throwable;ZI)V

    throw v2

    .line 10
    :cond_2
    :goto_1
    iget-object v0, v1, Lf/i/a/a/c1/b;->F:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 11
    :goto_2
    iget-object v0, v1, Lf/i/a/a/c1/b;->C:Landroid/media/MediaCodec;

    if-nez v0, :cond_7

    .line 12
    iget-object v0, v1, Lf/i/a/a/c1/b;->F:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lf/i/a/a/c1/a;

    .line 13
    invoke-virtual {v1, v2}, Lf/i/a/a/c1/b;->j0(Lf/i/a/a/c1/a;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    move-object/from16 v12, p1

    .line 14
    :try_start_1
    invoke-virtual {v1, v2, v12}, Lf/i/a/a/c1/b;->S(Lf/i/a/a/c1/a;Landroid/media/MediaCrypto;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v4, v0

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to initialize decoder: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    iget-object v0, v1, Lf/i/a/a/c1/b;->F:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 17
    new-instance v0, Lf/i/a/a/c1/b$a;

    iget-object v3, v1, Lf/i/a/a/c1/b;->u:Lf/i/a/a/b0;

    iget-object v7, v2, Lf/i/a/a/c1/a;->a:Ljava/lang/String;

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Decoder init failed: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lf/i/a/a/b0;->i:Ljava/lang/String;

    sget v2, Lf/i/a/a/m1/h0;->a:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_4

    .line 19
    instance-of v2, v4, Landroid/media/MediaCodec$CodecException;

    if-eqz v2, :cond_4

    .line 20
    move-object v2, v4

    check-cast v2, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {v2}, Landroid/media/MediaCodec$CodecException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    goto :goto_3

    :cond_4
    move-object v8, v11

    :goto_3
    const/4 v9, 0x0

    move-object v2, v0

    move-object v3, v5

    move-object v5, v6

    move/from16 v6, p2

    .line 21
    invoke-direct/range {v2 .. v9}, Lf/i/a/a/c1/b$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lf/i/a/a/c1/b$a;)V

    .line 22
    iget-object v2, v1, Lf/i/a/a/c1/b;->G:Lf/i/a/a/c1/b$a;

    if-nez v2, :cond_5

    .line 23
    iput-object v0, v1, Lf/i/a/a/c1/b;->G:Lf/i/a/a/c1/b$a;

    goto :goto_4

    .line 24
    :cond_5
    new-instance v3, Lf/i/a/a/c1/b$a;

    .line 25
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    .line 26
    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v15

    iget-object v4, v2, Lf/i/a/a/c1/b$a;->a:Ljava/lang/String;

    iget-boolean v5, v2, Lf/i/a/a/c1/b$a;->b:Z

    iget-object v6, v2, Lf/i/a/a/c1/b$a;->c:Ljava/lang/String;

    iget-object v2, v2, Lf/i/a/a/c1/b$a;->d:Ljava/lang/String;

    move-object v13, v3

    move-object/from16 v16, v4

    move/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v2

    move-object/from16 v20, v0

    invoke-direct/range {v13 .. v20}, Lf/i/a/a/c1/b$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lf/i/a/a/c1/b$a;)V

    .line 27
    iput-object v3, v1, Lf/i/a/a/c1/b;->G:Lf/i/a/a/c1/b$a;

    .line 28
    :goto_4
    iget-object v0, v1, Lf/i/a/a/c1/b;->F:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_2

    .line 29
    :cond_6
    iget-object v0, v1, Lf/i/a/a/c1/b;->G:Lf/i/a/a/c1/b$a;

    throw v0

    .line 30
    :cond_7
    iput-object v11, v1, Lf/i/a/a/c1/b;->F:Ljava/util/ArrayDeque;

    return-void

    .line 31
    :cond_8
    new-instance v0, Lf/i/a/a/c1/b$a;

    iget-object v2, v1, Lf/i/a/a/c1/b;->u:Lf/i/a/a/b0;

    const v3, -0xc34f

    invoke-direct {v0, v2, v11, v10, v3}, Lf/i/a/a/c1/b$a;-><init>(Lf/i/a/a/b0;Ljava/lang/Throwable;ZI)V

    throw v0
.end method

.method public abstract V(Ljava/lang/String;JJ)V
.end method

.method public W(Lf/i/a/a/b0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/c1/b;->u:Lf/i/a/a/b0;

    .line 2
    iput-object p1, p0, Lf/i/a/a/c1/b;->u:Lf/i/a/a/b0;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lf/i/a/a/c1/b;->m0:Z

    .line 4
    iget-object v2, p1, Lf/i/a/a/b0;->l:Lf/i/a/a/z0/e;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move-object v0, v3

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lf/i/a/a/b0;->l:Lf/i/a/a/z0/e;

    .line 5
    :goto_0
    invoke-static {v2, v0}, Lf/i/a/a/m1/h0;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 6
    iget-object v0, p1, Lf/i/a/a/b0;->l:Lf/i/a/a/z0/e;

    if-eqz v0, :cond_4

    .line 7
    iget-object p1, p0, Lf/i/a/a/c1/b;->k:Lf/i/a/a/z0/g;

    if-eqz p1, :cond_3

    .line 8
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    check-cast p1, Lf/i/a/a/z0/d;

    .line 9
    iget-object p1, p1, Lf/i/a/a/z0/d;->a:Landroid/os/Looper;

    if-eqz p1, :cond_2

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_1
    invoke-static {v1}, Lc/a/a/b/g/h;->v(Z)V

    .line 10
    throw v3

    .line 11
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Media requires a DrmSessionManager"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 12
    iget v0, p0, Lf/i/a/a/p;->c:I

    .line 13
    invoke-static {p1, v0}, Lf/i/a/a/w;->a(Ljava/lang/Exception;I)Lf/i/a/a/w;

    move-result-object p1

    throw p1

    .line 14
    :cond_4
    invoke-virtual {p0, v3}, Lf/i/a/a/c1/b;->i0(Lf/i/a/a/z0/f;)V

    .line 15
    :cond_5
    iget-object v0, p0, Lf/i/a/a/c1/b;->C:Landroid/media/MediaCodec;

    if-nez v0, :cond_6

    .line 16
    invoke-virtual {p0}, Lf/i/a/a/c1/b;->T()V

    return-void

    .line 17
    :cond_6
    iget-object v0, p0, Lf/i/a/a/c1/b;->x:Lf/i/a/a/z0/f;

    if-nez v0, :cond_7

    iget-object v0, p0, Lf/i/a/a/c1/b;->w:Lf/i/a/a/z0/f;

    if-nez v0, :cond_a

    :cond_7
    iget-object v0, p0, Lf/i/a/a/c1/b;->x:Lf/i/a/a/z0/f;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lf/i/a/a/c1/b;->w:Lf/i/a/a/z0/f;

    if-eqz v0, :cond_a

    :cond_8
    iget-object v0, p0, Lf/i/a/a/c1/b;->x:Lf/i/a/a/z0/f;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lf/i/a/a/c1/b;->H:Lf/i/a/a/c1/a;

    iget-boolean v0, v0, Lf/i/a/a/c1/a;->f:Z

    if-eqz v0, :cond_a

    :cond_9
    sget v0, Lf/i/a/a/m1/h0;->a:I

    const/16 v3, 0x17

    if-ge v0, v3, :cond_b

    iget-object v0, p0, Lf/i/a/a/c1/b;->x:Lf/i/a/a/z0/f;

    iget-object v3, p0, Lf/i/a/a/c1/b;->w:Lf/i/a/a/z0/f;

    if-eq v0, v3, :cond_b

    .line 18
    :cond_a
    invoke-virtual {p0}, Lf/i/a/a/c1/b;->K()V

    return-void

    .line 19
    :cond_b
    iget-object v0, p0, Lf/i/a/a/c1/b;->C:Landroid/media/MediaCodec;

    iget-object v3, p0, Lf/i/a/a/c1/b;->H:Lf/i/a/a/c1/a;

    iget-object v4, p0, Lf/i/a/a/c1/b;->D:Lf/i/a/a/b0;

    invoke-virtual {p0, v0, v3, v4, p1}, Lf/i/a/a/c1/b;->I(Landroid/media/MediaCodec;Lf/i/a/a/c1/a;Lf/i/a/a/b0;Lf/i/a/a/b0;)I

    move-result v0

    if-eqz v0, :cond_13

    if-eq v0, v1, :cond_11

    const/4 v3, 0x2

    if-eq v0, v3, :cond_d

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    .line 20
    iput-object p1, p0, Lf/i/a/a/c1/b;->D:Lf/i/a/a/b0;

    .line 21
    invoke-virtual {p0}, Lf/i/a/a/c1/b;->l0()V

    .line 22
    iget-object p1, p0, Lf/i/a/a/c1/b;->x:Lf/i/a/a/z0/f;

    iget-object v0, p0, Lf/i/a/a/c1/b;->w:Lf/i/a/a/z0/f;

    if-eq p1, v0, :cond_14

    .line 23
    invoke-virtual {p0}, Lf/i/a/a/c1/b;->L()V

    goto :goto_3

    .line 24
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 25
    :cond_d
    iget-boolean v0, p0, Lf/i/a/a/c1/b;->J:Z

    if-eqz v0, :cond_e

    .line 26
    invoke-virtual {p0}, Lf/i/a/a/c1/b;->K()V

    goto :goto_3

    .line 27
    :cond_e
    iput-boolean v1, p0, Lf/i/a/a/c1/b;->a0:Z

    .line 28
    iput v1, p0, Lf/i/a/a/c1/b;->b0:I

    .line 29
    iget v0, p0, Lf/i/a/a/c1/b;->I:I

    if-eq v0, v3, :cond_10

    if-ne v0, v1, :cond_f

    iget v0, p1, Lf/i/a/a/b0;->n:I

    iget-object v3, p0, Lf/i/a/a/c1/b;->D:Lf/i/a/a/b0;

    iget v4, v3, Lf/i/a/a/b0;->n:I

    if-ne v0, v4, :cond_f

    iget v0, p1, Lf/i/a/a/b0;->o:I

    iget v3, v3, Lf/i/a/a/b0;->o:I

    if-ne v0, v3, :cond_f

    goto :goto_2

    :cond_f
    const/4 v1, 0x0

    :cond_10
    :goto_2
    iput-boolean v1, p0, Lf/i/a/a/c1/b;->P:Z

    .line 30
    iput-object p1, p0, Lf/i/a/a/c1/b;->D:Lf/i/a/a/b0;

    .line 31
    invoke-virtual {p0}, Lf/i/a/a/c1/b;->l0()V

    .line 32
    iget-object p1, p0, Lf/i/a/a/c1/b;->x:Lf/i/a/a/z0/f;

    iget-object v0, p0, Lf/i/a/a/c1/b;->w:Lf/i/a/a/z0/f;

    if-eq p1, v0, :cond_14

    .line 33
    invoke-virtual {p0}, Lf/i/a/a/c1/b;->L()V

    goto :goto_3

    .line 34
    :cond_11
    iput-object p1, p0, Lf/i/a/a/c1/b;->D:Lf/i/a/a/b0;

    .line 35
    invoke-virtual {p0}, Lf/i/a/a/c1/b;->l0()V

    .line 36
    iget-object p1, p0, Lf/i/a/a/c1/b;->x:Lf/i/a/a/z0/f;

    iget-object v0, p0, Lf/i/a/a/c1/b;->w:Lf/i/a/a/z0/f;

    if-eq p1, v0, :cond_12

    .line 37
    invoke-virtual {p0}, Lf/i/a/a/c1/b;->L()V

    goto :goto_3

    .line 38
    :cond_12
    iget-boolean p1, p0, Lf/i/a/a/c1/b;->e0:Z

    if-eqz p1, :cond_14

    .line 39
    iput v1, p0, Lf/i/a/a/c1/b;->c0:I

    .line 40
    iput v1, p0, Lf/i/a/a/c1/b;->d0:I

    goto :goto_3

    .line 41
    :cond_13
    invoke-virtual {p0}, Lf/i/a/a/c1/b;->K()V

    :cond_14
    :goto_3
    return-void
.end method

.method public abstract X(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation
.end method

.method public abstract Y(J)V
.end method

.method public abstract Z(Lf/i/a/a/y0/e;)V
.end method

.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf/i/a/a/c1/b;->j0:Z

    return v0
.end method

.method public final a0()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    .line 1
    iget v0, p0, Lf/i/a/a/c1/b;->d0:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 2
    iput-boolean v1, p0, Lf/i/a/a/c1/b;->j0:Z

    .line 3
    invoke-virtual {p0}, Lf/i/a/a/c1/b;->e0()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lf/i/a/a/c1/b;->d0()V

    .line 5
    invoke-virtual {p0}, Lf/i/a/a/c1/b;->T()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lf/i/a/a/c1/b;->m0()V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0}, Lf/i/a/a/c1/b;->M()Z

    :goto_0
    return-void
.end method

.method public abstract b0(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZZLf/i/a/a/b0;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation
.end method

.method public final c0(Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/c1/b;->p:Lf/i/a/a/y0/e;

    invoke-virtual {v0}, Lf/i/a/a/y0/e;->i()V

    .line 2
    iget-object v0, p0, Lf/i/a/a/c1/b;->q:Lf/i/a/a/c0;

    iget-object v1, p0, Lf/i/a/a/c1/b;->p:Lf/i/a/a/y0/e;

    invoke-virtual {p0, v0, v1, p1}, Lf/i/a/a/p;->E(Lf/i/a/a/c0;Lf/i/a/a/y0/e;Z)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, -0x5

    if-ne p1, v1, :cond_0

    .line 3
    iget-object p1, p0, Lf/i/a/a/c1/b;->q:Lf/i/a/a/c0;

    iget-object p1, p1, Lf/i/a/a/c0;->a:Lf/i/a/a/b0;

    invoke-virtual {p0, p1}, Lf/i/a/a/c1/b;->W(Lf/i/a/a/b0;)V

    return v0

    :cond_0
    const/4 v1, -0x4

    if-ne p1, v1, :cond_1

    .line 4
    iget-object p1, p0, Lf/i/a/a/c1/b;->p:Lf/i/a/a/y0/e;

    invoke-virtual {p1}, Lf/i/a/a/y0/a;->h()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iput-boolean v0, p0, Lf/i/a/a/c1/b;->i0:Z

    .line 6
    invoke-virtual {p0}, Lf/i/a/a/c1/b;->a0()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public d()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lf/i/a/a/c1/b;->u:Lf/i/a/a/b0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lf/i/a/a/c1/b;->k0:Z

    if-nez v0, :cond_3

    .line 2
    invoke-virtual {p0}, Lf/i/a/a/p;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lf/i/a/a/p;->i:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lf/i/a/a/p;->e:Lf/i/a/a/h1/k0;

    invoke-interface {v0}, Lf/i/a/a/h1/k0;->d()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_2

    .line 3
    iget v0, p0, Lf/i/a/a/c1/b;->W:I

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    .line 4
    iget-wide v3, p0, Lf/i/a/a/c1/b;->U:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-eqz v0, :cond_3

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lf/i/a/a/c1/b;->U:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public d0()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lf/i/a/a/c1/b;->F:Ljava/util/ArrayDeque;

    .line 2
    iput-object v0, p0, Lf/i/a/a/c1/b;->H:Lf/i/a/a/c1/a;

    .line 3
    iput-object v0, p0, Lf/i/a/a/c1/b;->D:Lf/i/a/a/b0;

    .line 4
    invoke-virtual {p0}, Lf/i/a/a/c1/b;->f0()V

    .line 5
    invoke-virtual {p0}, Lf/i/a/a/c1/b;->g0()V

    .line 6
    sget v1, Lf/i/a/a/m1/h0;->a:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    .line 7
    iput-object v0, p0, Lf/i/a/a/c1/b;->S:[Ljava/nio/ByteBuffer;

    .line 8
    iput-object v0, p0, Lf/i/a/a/c1/b;->T:[Ljava/nio/ByteBuffer;

    :cond_0
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Lf/i/a/a/c1/b;->k0:Z

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    iput-wide v2, p0, Lf/i/a/a/c1/b;->U:J

    .line 11
    iget-object v4, p0, Lf/i/a/a/c1/b;->s:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 12
    iput-wide v2, p0, Lf/i/a/a/c1/b;->h0:J

    .line 13
    iput-wide v2, p0, Lf/i/a/a/c1/b;->g0:J

    .line 14
    :try_start_0
    iget-object v2, p0, Lf/i/a/a/c1/b;->C:Landroid/media/MediaCodec;

    if-eqz v2, :cond_1

    .line 15
    iget-object v2, p0, Lf/i/a/a/c1/b;->n0:Lf/i/a/a/y0/d;

    iget v3, v2, Lf/i/a/a/y0/d;->b:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lf/i/a/a/y0/d;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 16
    :try_start_1
    iget-object v2, p0, Lf/i/a/a/c1/b;->C:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :try_start_2
    iget-object v2, p0, Lf/i/a/a/c1/b;->C:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lf/i/a/a/c1/b;->C:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->release()V

    .line 18
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 19
    :cond_1
    :goto_0
    iput-object v0, p0, Lf/i/a/a/c1/b;->C:Landroid/media/MediaCodec;

    .line 20
    :try_start_3
    iget-object v2, p0, Lf/i/a/a/c1/b;->y:Landroid/media/MediaCrypto;

    if-eqz v2, :cond_2

    .line 21
    iget-object v2, p0, Lf/i/a/a/c1/b;->y:Landroid/media/MediaCrypto;

    invoke-virtual {v2}, Landroid/media/MediaCrypto;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 22
    :cond_2
    iput-object v0, p0, Lf/i/a/a/c1/b;->y:Landroid/media/MediaCrypto;

    .line 23
    iput-boolean v1, p0, Lf/i/a/a/c1/b;->z:Z

    .line 24
    invoke-virtual {p0, v0}, Lf/i/a/a/c1/b;->h0(Lf/i/a/a/z0/f;)V

    return-void

    :catchall_1
    move-exception v2

    .line 25
    iput-object v0, p0, Lf/i/a/a/c1/b;->y:Landroid/media/MediaCrypto;

    .line 26
    iput-boolean v1, p0, Lf/i/a/a/c1/b;->z:Z

    .line 27
    invoke-virtual {p0, v0}, Lf/i/a/a/c1/b;->h0(Lf/i/a/a/z0/f;)V

    .line 28
    throw v2

    :catchall_2
    move-exception v2

    .line 29
    iput-object v0, p0, Lf/i/a/a/c1/b;->C:Landroid/media/MediaCodec;

    .line 30
    :try_start_4
    iget-object v3, p0, Lf/i/a/a/c1/b;->y:Landroid/media/MediaCrypto;

    if-eqz v3, :cond_3

    .line 31
    iget-object v3, p0, Lf/i/a/a/c1/b;->y:Landroid/media/MediaCrypto;

    invoke-virtual {v3}, Landroid/media/MediaCrypto;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 32
    :cond_3
    iput-object v0, p0, Lf/i/a/a/c1/b;->y:Landroid/media/MediaCrypto;

    .line 33
    iput-boolean v1, p0, Lf/i/a/a/c1/b;->z:Z

    .line 34
    invoke-virtual {p0, v0}, Lf/i/a/a/c1/b;->h0(Lf/i/a/a/z0/f;)V

    .line 35
    throw v2

    :catchall_3
    move-exception v2

    .line 36
    iput-object v0, p0, Lf/i/a/a/c1/b;->y:Landroid/media/MediaCrypto;

    .line 37
    iput-boolean v1, p0, Lf/i/a/a/c1/b;->z:Z

    .line 38
    invoke-virtual {p0, v0}, Lf/i/a/a/c1/b;->h0(Lf/i/a/a/z0/f;)V

    .line 39
    throw v2
.end method

.method public e0()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    return-void
.end method

.method public final f0()V
    .locals 2

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lf/i/a/a/c1/b;->V:I

    .line 2
    iget-object v0, p0, Lf/i/a/a/c1/b;->o:Lf/i/a/a/y0/e;

    const/4 v1, 0x0

    iput-object v1, v0, Lf/i/a/a/y0/e;->c:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final g0()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lf/i/a/a/c1/b;->W:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lf/i/a/a/c1/b;->X:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final h0(Lf/i/a/a/z0/f;)V
    .locals 2
    .param p1    # Lf/i/a/a/z0/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i/a/a/z0/f<",
            "Lf/i/a/a/z0/j;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/c1/b;->w:Lf/i/a/a/z0/f;

    .line 2
    iput-object p1, p0, Lf/i/a/a/c1/b;->w:Lf/i/a/a/z0/f;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lf/i/a/a/c1/b;->x:Lf/i/a/a/z0/f;

    if-eq v0, v1, :cond_0

    if-eq v0, p1, :cond_0

    .line 4
    iget-object p1, p0, Lf/i/a/a/c1/b;->k:Lf/i/a/a/z0/g;

    check-cast p1, Lf/i/a/a/z0/d;

    invoke-virtual {p1, v0}, Lf/i/a/a/z0/d;->b(Lf/i/a/a/z0/f;)V

    :cond_0
    return-void
.end method

.method public i(JJ)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    move-object/from16 v15, p0

    .line 1
    iget-boolean v0, v15, Lf/i/a/a/c1/b;->j0:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/c1/b;->e0()V

    return-void

    .line 3
    :cond_0
    iget-object v0, v15, Lf/i/a/a/c1/b;->u:Lf/i/a/a/b0;

    const/4 v14, 0x1

    if-nez v0, :cond_1

    invoke-virtual {v15, v14}, Lf/i/a/a/c1/b;->c0(Z)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/c1/b;->T()V

    .line 5
    iget-object v0, v15, Lf/i/a/a/c1/b;->C:Landroid/media/MediaCodec;

    const/4 v13, 0x0

    if-eqz v0, :cond_3c

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    const-string v0, "drainAndFeed"

    .line 7
    invoke-static {v0}, Lc/a/a/b/g/h;->g(Ljava/lang/String;)V

    .line 8
    :goto_0
    iget v0, v15, Lf/i/a/a/c1/b;->W:I

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    const-wide/16 v10, 0x0

    const/16 v12, 0x15

    const/4 v9, -0x3

    const/4 v8, 0x2

    const/4 v7, 0x4

    if-nez v0, :cond_13

    .line 9
    iget-boolean v0, v15, Lf/i/a/a/c1/b;->N:Z

    if-eqz v0, :cond_3

    iget-boolean v0, v15, Lf/i/a/a/c1/b;->f0:Z

    if-eqz v0, :cond_3

    .line 10
    :try_start_0
    iget-object v0, v15, Lf/i/a/a/c1/b;->C:Landroid/media/MediaCodec;

    iget-object v1, v15, Lf/i/a/a/c1/b;->t:Landroid/media/MediaCodec$BufferInfo;

    .line 11
    invoke-virtual {v0, v1, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    .line 12
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/c1/b;->a0()V

    .line 13
    iget-boolean v0, v15, Lf/i/a/a/c1/b;->j0:Z

    if-eqz v0, :cond_c

    .line 14
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/c1/b;->d0()V

    goto/16 :goto_4

    .line 15
    :cond_3
    iget-object v0, v15, Lf/i/a/a/c1/b;->C:Landroid/media/MediaCodec;

    iget-object v1, v15, Lf/i/a/a/c1/b;->t:Landroid/media/MediaCodec$BufferInfo;

    .line 16
    invoke-virtual {v0, v1, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    :goto_2
    if-gez v0, :cond_9

    const/4 v1, -0x2

    if-ne v0, v1, :cond_6

    .line 17
    iget-object v0, v15, Lf/i/a/a/c1/b;->C:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 18
    iget v1, v15, Lf/i/a/a/c1/b;->I:I

    if-eqz v1, :cond_4

    const-string v1, "width"

    .line 19
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_4

    const-string v1, "height"

    .line 20
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 21
    iput-boolean v14, v15, Lf/i/a/a/c1/b;->Q:Z

    goto :goto_3

    .line 22
    :cond_4
    iget-boolean v1, v15, Lf/i/a/a/c1/b;->O:Z

    if-eqz v1, :cond_5

    const-string v1, "channel-count"

    .line 23
    invoke-virtual {v0, v1, v14}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 24
    :cond_5
    iget-object v1, v15, Lf/i/a/a/c1/b;->C:Landroid/media/MediaCodec;

    invoke-virtual {v15, v1, v0}, Lf/i/a/a/c1/b;->X(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    goto :goto_3

    :cond_6
    if-ne v0, v9, :cond_7

    .line 25
    sget v0, Lf/i/a/a/m1/h0;->a:I

    if-ge v0, v12, :cond_a

    .line 26
    iget-object v0, v15, Lf/i/a/a/c1/b;->C:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v15, Lf/i/a/a/c1/b;->T:[Ljava/nio/ByteBuffer;

    goto :goto_3

    .line 27
    :cond_7
    iget-boolean v0, v15, Lf/i/a/a/c1/b;->R:Z

    if-eqz v0, :cond_c

    iget-boolean v0, v15, Lf/i/a/a/c1/b;->i0:Z

    if-nez v0, :cond_8

    iget v0, v15, Lf/i/a/a/c1/b;->c0:I

    if-ne v0, v8, :cond_c

    .line 28
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/c1/b;->a0()V

    goto :goto_4

    .line 29
    :cond_9
    iget-boolean v1, v15, Lf/i/a/a/c1/b;->Q:Z

    if-eqz v1, :cond_b

    .line 30
    iput-boolean v13, v15, Lf/i/a/a/c1/b;->Q:Z

    .line 31
    iget-object v1, v15, Lf/i/a/a/c1/b;->C:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v13}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    :cond_a
    :goto_3
    const/4 v0, 0x2

    const/4 v2, 0x4

    goto/16 :goto_e

    .line 32
    :cond_b
    iget-object v1, v15, Lf/i/a/a/c1/b;->t:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v2, :cond_d

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v1, v7

    if-eqz v1, :cond_d

    .line 33
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/c1/b;->a0()V

    :cond_c
    :goto_4
    const/4 v0, 0x2

    goto/16 :goto_c

    .line 34
    :cond_d
    iput v0, v15, Lf/i/a/a/c1/b;->W:I

    .line 35
    sget v1, Lf/i/a/a/m1/h0;->a:I

    if-lt v1, v12, :cond_e

    .line 36
    iget-object v1, v15, Lf/i/a/a/c1/b;->C:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_5

    .line 37
    :cond_e
    iget-object v1, v15, Lf/i/a/a/c1/b;->T:[Ljava/nio/ByteBuffer;

    aget-object v0, v1, v0

    .line 38
    :goto_5
    iput-object v0, v15, Lf/i/a/a/c1/b;->X:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_f

    .line 39
    iget-object v1, v15, Lf/i/a/a/c1/b;->t:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 40
    iget-object v0, v15, Lf/i/a/a/c1/b;->X:Ljava/nio/ByteBuffer;

    iget-object v1, v15, Lf/i/a/a/c1/b;->t:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 41
    :cond_f
    iget-object v0, v15, Lf/i/a/a/c1/b;->t:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 42
    iget-object v2, v15, Lf/i/a/a/c1/b;->s:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v2, :cond_11

    .line 43
    iget-object v4, v15, Lf/i/a/a/c1/b;->s:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-nez v6, :cond_10

    .line 44
    iget-object v0, v15, Lf/i/a/a/c1/b;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_7

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_11
    const/4 v0, 0x0

    .line 45
    :goto_7
    iput-boolean v0, v15, Lf/i/a/a/c1/b;->Y:Z

    .line 46
    iget-wide v0, v15, Lf/i/a/a/c1/b;->g0:J

    iget-object v2, v15, Lf/i/a/a/c1/b;->t:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_12

    const/4 v0, 0x1

    goto :goto_8

    :cond_12
    const/4 v0, 0x0

    :goto_8
    iput-boolean v0, v15, Lf/i/a/a/c1/b;->Z:Z

    .line 47
    iget-object v0, v15, Lf/i/a/a/c1/b;->t:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v15, v0, v1}, Lf/i/a/a/c1/b;->n0(J)Lf/i/a/a/b0;

    .line 48
    :cond_13
    iget-boolean v0, v15, Lf/i/a/a/c1/b;->N:Z

    if-eqz v0, :cond_14

    iget-boolean v0, v15, Lf/i/a/a/c1/b;->f0:Z

    if-eqz v0, :cond_14

    .line 49
    :try_start_1
    iget-object v6, v15, Lf/i/a/a/c1/b;->C:Landroid/media/MediaCodec;

    iget-object v0, v15, Lf/i/a/a/c1/b;->X:Ljava/nio/ByteBuffer;

    iget v4, v15, Lf/i/a/a/c1/b;->W:I

    iget-object v1, v15, Lf/i/a/a/c1/b;->t:Landroid/media/MediaCodec$BufferInfo;

    iget v5, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v1, v15, Lf/i/a/a/c1/b;->t:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v1, v15, Lf/i/a/a/c1/b;->Y:Z

    iget-boolean v13, v15, Lf/i/a/a/c1/b;->Z:Z

    iget-object v14, v15, Lf/i/a/a/c1/b;->v:Lf/i/a/a/b0;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    move/from16 v20, v1

    move-object/from16 v1, p0

    move-wide/from16 v21, v2

    move-wide/from16 v2, p1

    move/from16 v23, v4

    move/from16 v24, v5

    move-wide/from16 v4, p3

    move-object v7, v0

    const/4 v0, 0x2

    move/from16 v8, v23

    move/from16 v9, v24

    move-wide/from16 v10, v21

    move/from16 v12, v20

    .line 50
    :try_start_2
    invoke-virtual/range {v1 .. v14}, Lf/i/a/a/c1/b;->b0(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZZLf/i/a/a/b0;)Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_a

    :catch_1
    nop

    goto :goto_9

    :catch_2
    const/4 v0, 0x2

    .line 51
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/c1/b;->a0()V

    .line 52
    iget-boolean v1, v15, Lf/i/a/a/c1/b;->j0:Z

    if-eqz v1, :cond_17

    .line 53
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/c1/b;->d0()V

    goto :goto_c

    :cond_14
    const/4 v0, 0x2

    .line 54
    iget-object v6, v15, Lf/i/a/a/c1/b;->C:Landroid/media/MediaCodec;

    iget-object v7, v15, Lf/i/a/a/c1/b;->X:Ljava/nio/ByteBuffer;

    iget v8, v15, Lf/i/a/a/c1/b;->W:I

    iget-object v1, v15, Lf/i/a/a/c1/b;->t:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-wide v10, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v12, v15, Lf/i/a/a/c1/b;->Y:Z

    iget-boolean v13, v15, Lf/i/a/a/c1/b;->Z:Z

    iget-object v14, v15, Lf/i/a/a/c1/b;->v:Lf/i/a/a/b0;

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    .line 55
    invoke-virtual/range {v1 .. v14}, Lf/i/a/a/c1/b;->b0(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZZLf/i/a/a/b0;)Z

    move-result v1

    :goto_a
    if-eqz v1, :cond_17

    .line 56
    iget-object v1, v15, Lf/i/a/a/c1/b;->t:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v1, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v15, v1, v2}, Lf/i/a/a/c1/b;->Y(J)V

    .line 57
    iget-object v1, v15, Lf/i/a/a/c1/b;->t:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-eqz v1, :cond_15

    const/4 v14, 0x1

    goto :goto_b

    :cond_15
    const/4 v14, 0x0

    .line 58
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/c1/b;->g0()V

    if-nez v14, :cond_16

    const/4 v14, 0x1

    goto :goto_e

    .line 59
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/c1/b;->a0()V

    goto :goto_d

    :cond_17
    :goto_c
    const/4 v2, 0x4

    :goto_d
    const/4 v14, 0x0

    :goto_e
    if-eqz v14, :cond_18

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto/16 :goto_0

    .line 60
    :cond_18
    :goto_f
    iget-object v1, v15, Lf/i/a/a/c1/b;->C:Landroid/media/MediaCodec;

    if-eqz v1, :cond_38

    iget v3, v15, Lf/i/a/a/c1/b;->c0:I

    if-eq v3, v0, :cond_38

    iget-boolean v3, v15, Lf/i/a/a/c1/b;->i0:Z

    if-eqz v3, :cond_19

    goto/16 :goto_1a

    .line 61
    :cond_19
    iget v3, v15, Lf/i/a/a/c1/b;->V:I

    if-gez v3, :cond_1c

    const-wide/16 v3, 0x0

    .line 62
    invoke-virtual {v1, v3, v4}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    iput v1, v15, Lf/i/a/a/c1/b;->V:I

    if-gez v1, :cond_1a

    const/4 v1, 0x0

    goto/16 :goto_1b

    .line 63
    :cond_1a
    iget-object v5, v15, Lf/i/a/a/c1/b;->o:Lf/i/a/a/y0/e;

    .line 64
    sget v6, Lf/i/a/a/m1/h0;->a:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_1b

    .line 65
    iget-object v6, v15, Lf/i/a/a/c1/b;->C:Landroid/media/MediaCodec;

    invoke-virtual {v6, v1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_10

    .line 66
    :cond_1b
    iget-object v6, v15, Lf/i/a/a/c1/b;->S:[Ljava/nio/ByteBuffer;

    aget-object v1, v6, v1

    .line 67
    :goto_10
    iput-object v1, v5, Lf/i/a/a/y0/e;->c:Ljava/nio/ByteBuffer;

    .line 68
    iget-object v1, v15, Lf/i/a/a/c1/b;->o:Lf/i/a/a/y0/e;

    invoke-virtual {v1}, Lf/i/a/a/y0/e;->i()V

    goto :goto_11

    :cond_1c
    const-wide/16 v3, 0x0

    const/16 v7, 0x15

    .line 69
    :goto_11
    iget v1, v15, Lf/i/a/a/c1/b;->c0:I

    const/4 v5, 0x1

    if-ne v1, v5, :cond_1e

    .line 70
    iget-boolean v1, v15, Lf/i/a/a/c1/b;->R:Z

    if-eqz v1, :cond_1d

    goto :goto_12

    .line 71
    :cond_1d
    iput-boolean v5, v15, Lf/i/a/a/c1/b;->f0:Z

    .line 72
    iget-object v8, v15, Lf/i/a/a/c1/b;->C:Landroid/media/MediaCodec;

    iget v9, v15, Lf/i/a/a/c1/b;->V:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x4

    invoke-virtual/range {v8 .. v14}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 73
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/c1/b;->f0()V

    .line 74
    :goto_12
    iput v0, v15, Lf/i/a/a/c1/b;->c0:I

    const/4 v1, 0x0

    goto/16 :goto_1c

    .line 75
    :cond_1e
    iget-boolean v1, v15, Lf/i/a/a/c1/b;->P:Z

    if-eqz v1, :cond_1f

    const/4 v1, 0x0

    .line 76
    iput-boolean v1, v15, Lf/i/a/a/c1/b;->P:Z

    .line 77
    iget-object v6, v15, Lf/i/a/a/c1/b;->o:Lf/i/a/a/y0/e;

    iget-object v6, v6, Lf/i/a/a/y0/e;->c:Ljava/nio/ByteBuffer;

    sget-object v8, Lf/i/a/a/c1/b;->o0:[B

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 78
    iget-object v6, v15, Lf/i/a/a/c1/b;->C:Landroid/media/MediaCodec;

    iget v8, v15, Lf/i/a/a/c1/b;->V:I

    const/16 v20, 0x0

    sget-object v9, Lf/i/a/a/c1/b;->o0:[B

    array-length v9, v9

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    move-object/from16 v18, v6

    move/from16 v19, v8

    move/from16 v21, v9

    invoke-virtual/range {v18 .. v24}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 79
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/c1/b;->f0()V

    .line 80
    iput-boolean v5, v15, Lf/i/a/a/c1/b;->e0:Z

    const/4 v8, -0x3

    goto/16 :goto_19

    :cond_1f
    const/4 v1, 0x0

    .line 81
    iget-boolean v6, v15, Lf/i/a/a/c1/b;->k0:Z

    if-eqz v6, :cond_20

    const/4 v6, -0x4

    const/4 v13, 0x0

    goto :goto_14

    .line 82
    :cond_20
    iget v6, v15, Lf/i/a/a/c1/b;->b0:I

    if-ne v6, v5, :cond_22

    const/4 v13, 0x0

    .line 83
    :goto_13
    iget-object v6, v15, Lf/i/a/a/c1/b;->D:Lf/i/a/a/b0;

    iget-object v6, v6, Lf/i/a/a/b0;->k:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v13, v6, :cond_21

    .line 84
    iget-object v6, v15, Lf/i/a/a/c1/b;->D:Lf/i/a/a/b0;

    iget-object v6, v6, Lf/i/a/a/b0;->k:Ljava/util/List;

    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 85
    iget-object v8, v15, Lf/i/a/a/c1/b;->o:Lf/i/a/a/y0/e;

    iget-object v8, v8, Lf/i/a/a/y0/e;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v13, v13, 0x1

    goto :goto_13

    .line 86
    :cond_21
    iput v0, v15, Lf/i/a/a/c1/b;->b0:I

    .line 87
    :cond_22
    iget-object v6, v15, Lf/i/a/a/c1/b;->o:Lf/i/a/a/y0/e;

    iget-object v6, v6, Lf/i/a/a/y0/e;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    .line 88
    iget-object v6, v15, Lf/i/a/a/c1/b;->q:Lf/i/a/a/c0;

    iget-object v8, v15, Lf/i/a/a/c1/b;->o:Lf/i/a/a/y0/e;

    invoke-virtual {v15, v6, v8, v1}, Lf/i/a/a/p;->E(Lf/i/a/a/c0;Lf/i/a/a/y0/e;Z)I

    move-result v6

    .line 89
    :goto_14
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/p;->g()Z

    move-result v8

    if-eqz v8, :cond_23

    .line 90
    iget-wide v8, v15, Lf/i/a/a/c1/b;->h0:J

    iput-wide v8, v15, Lf/i/a/a/c1/b;->g0:J

    :cond_23
    const/4 v8, -0x3

    if-ne v6, v8, :cond_24

    goto/16 :goto_1d

    :cond_24
    const/4 v9, -0x5

    if-ne v6, v9, :cond_26

    .line 91
    iget v6, v15, Lf/i/a/a/c1/b;->b0:I

    if-ne v6, v0, :cond_25

    .line 92
    iget-object v6, v15, Lf/i/a/a/c1/b;->o:Lf/i/a/a/y0/e;

    invoke-virtual {v6}, Lf/i/a/a/y0/e;->i()V

    .line 93
    iput v5, v15, Lf/i/a/a/c1/b;->b0:I

    .line 94
    :cond_25
    iget-object v6, v15, Lf/i/a/a/c1/b;->q:Lf/i/a/a/c0;

    iget-object v6, v6, Lf/i/a/a/c0;->a:Lf/i/a/a/b0;

    invoke-virtual {v15, v6}, Lf/i/a/a/c1/b;->W(Lf/i/a/a/b0;)V

    goto/16 :goto_19

    .line 95
    :cond_26
    iget-object v6, v15, Lf/i/a/a/c1/b;->o:Lf/i/a/a/y0/e;

    invoke-virtual {v6}, Lf/i/a/a/y0/a;->h()Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 96
    iget v6, v15, Lf/i/a/a/c1/b;->b0:I

    if-ne v6, v0, :cond_27

    .line 97
    iget-object v6, v15, Lf/i/a/a/c1/b;->o:Lf/i/a/a/y0/e;

    invoke-virtual {v6}, Lf/i/a/a/y0/e;->i()V

    .line 98
    iput v5, v15, Lf/i/a/a/c1/b;->b0:I

    .line 99
    :cond_27
    iput-boolean v5, v15, Lf/i/a/a/c1/b;->i0:Z

    .line 100
    iget-boolean v6, v15, Lf/i/a/a/c1/b;->e0:Z

    if-nez v6, :cond_28

    .line 101
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/c1/b;->a0()V

    goto/16 :goto_1d

    .line 102
    :cond_28
    :try_start_3
    iget-boolean v6, v15, Lf/i/a/a/c1/b;->R:Z

    if-eqz v6, :cond_29

    goto/16 :goto_1d

    .line 103
    :cond_29
    iput-boolean v5, v15, Lf/i/a/a/c1/b;->f0:Z

    .line 104
    iget-object v6, v15, Lf/i/a/a/c1/b;->C:Landroid/media/MediaCodec;

    iget v9, v15, Lf/i/a/a/c1/b;->V:I

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x4

    move-object/from16 v18, v6

    move/from16 v19, v9

    invoke-virtual/range {v18 .. v24}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 105
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/c1/b;->f0()V
    :try_end_3
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1d

    :catch_3
    move-exception v0

    .line 106
    iget v1, v15, Lf/i/a/a/p;->c:I

    .line 107
    invoke-static {v0, v1}, Lf/i/a/a/w;->a(Ljava/lang/Exception;I)Lf/i/a/a/w;

    move-result-object v0

    throw v0

    .line 108
    :cond_2a
    iget-boolean v6, v15, Lf/i/a/a/c1/b;->l0:Z

    if-eqz v6, :cond_2b

    iget-object v6, v15, Lf/i/a/a/c1/b;->o:Lf/i/a/a/y0/e;

    .line 109
    invoke-virtual {v6, v5}, Lf/i/a/a/y0/a;->f(I)Z

    move-result v6

    if-nez v6, :cond_2b

    .line 110
    iget-object v6, v15, Lf/i/a/a/c1/b;->o:Lf/i/a/a/y0/e;

    invoke-virtual {v6}, Lf/i/a/a/y0/e;->i()V

    .line 111
    iget v6, v15, Lf/i/a/a/c1/b;->b0:I

    if-ne v6, v0, :cond_37

    .line 112
    iput v5, v15, Lf/i/a/a/c1/b;->b0:I

    goto/16 :goto_19

    .line 113
    :cond_2b
    iput-boolean v1, v15, Lf/i/a/a/c1/b;->l0:Z

    .line 114
    iget-object v6, v15, Lf/i/a/a/c1/b;->o:Lf/i/a/a/y0/e;

    const/high16 v9, 0x40000000    # 2.0f

    .line 115
    invoke-virtual {v6, v9}, Lf/i/a/a/y0/a;->f(I)Z

    move-result v6

    .line 116
    iget-object v9, v15, Lf/i/a/a/c1/b;->w:Lf/i/a/a/z0/f;

    if-eqz v9, :cond_2e

    if-nez v6, :cond_2c

    iget-boolean v9, v15, Lf/i/a/a/c1/b;->l:Z

    if-eqz v9, :cond_2c

    goto :goto_15

    .line 117
    :cond_2c
    iget-object v9, v15, Lf/i/a/a/c1/b;->w:Lf/i/a/a/z0/f;

    invoke-interface {v9}, Lf/i/a/a/z0/f;->c()I

    move-result v9

    if-eq v9, v5, :cond_2d

    if-eq v9, v2, :cond_2e

    const/4 v14, 0x1

    goto :goto_16

    .line 118
    :cond_2d
    iget-object v0, v15, Lf/i/a/a/c1/b;->w:Lf/i/a/a/z0/f;

    invoke-interface {v0}, Lf/i/a/a/z0/f;->b()Lf/i/a/a/z0/f$a;

    move-result-object v0

    .line 119
    iget v1, v15, Lf/i/a/a/p;->c:I

    .line 120
    invoke-static {v0, v1}, Lf/i/a/a/w;->a(Ljava/lang/Exception;I)Lf/i/a/a/w;

    move-result-object v0

    throw v0

    :cond_2e
    :goto_15
    const/4 v14, 0x0

    .line 121
    :goto_16
    iput-boolean v14, v15, Lf/i/a/a/c1/b;->k0:Z

    if-eqz v14, :cond_2f

    goto/16 :goto_1d

    .line 122
    :cond_2f
    iget-boolean v9, v15, Lf/i/a/a/c1/b;->K:Z

    if-eqz v9, :cond_31

    if-nez v6, :cond_31

    .line 123
    iget-object v9, v15, Lf/i/a/a/c1/b;->o:Lf/i/a/a/y0/e;

    iget-object v9, v9, Lf/i/a/a/y0/e;->c:Ljava/nio/ByteBuffer;

    invoke-static {v9}, Lf/i/a/a/m1/s;->b(Ljava/nio/ByteBuffer;)V

    .line 124
    iget-object v9, v15, Lf/i/a/a/c1/b;->o:Lf/i/a/a/y0/e;

    iget-object v9, v9, Lf/i/a/a/y0/e;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    if-nez v9, :cond_30

    goto/16 :goto_19

    .line 125
    :cond_30
    iput-boolean v1, v15, Lf/i/a/a/c1/b;->K:Z

    .line 126
    :cond_31
    :try_start_4
    iget-object v9, v15, Lf/i/a/a/c1/b;->o:Lf/i/a/a/y0/e;

    iget-wide v9, v9, Lf/i/a/a/y0/e;->d:J

    .line 127
    iget-object v11, v15, Lf/i/a/a/c1/b;->o:Lf/i/a/a/y0/e;

    invoke-virtual {v11}, Lf/i/a/a/y0/a;->g()Z

    move-result v11

    if-eqz v11, :cond_32

    .line 128
    iget-object v11, v15, Lf/i/a/a/c1/b;->s:Ljava/util/ArrayList;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_32
    iget-boolean v11, v15, Lf/i/a/a/c1/b;->m0:Z

    if-eqz v11, :cond_33

    .line 130
    iget-object v11, v15, Lf/i/a/a/c1/b;->r:Lf/i/a/a/m1/d0;

    iget-object v12, v15, Lf/i/a/a/c1/b;->u:Lf/i/a/a/b0;

    invoke-virtual {v11, v9, v10, v12}, Lf/i/a/a/m1/d0;->a(JLjava/lang/Object;)V

    .line 131
    iput-boolean v1, v15, Lf/i/a/a/c1/b;->m0:Z

    .line 132
    :cond_33
    iget-wide v11, v15, Lf/i/a/a/c1/b;->h0:J

    .line 133
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    iput-wide v11, v15, Lf/i/a/a/c1/b;->h0:J

    .line 134
    iget-object v11, v15, Lf/i/a/a/c1/b;->o:Lf/i/a/a/y0/e;

    .line 135
    iget-object v11, v11, Lf/i/a/a/y0/e;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 136
    iget-object v11, v15, Lf/i/a/a/c1/b;->o:Lf/i/a/a/y0/e;

    invoke-virtual {v15, v11}, Lf/i/a/a/c1/b;->Z(Lf/i/a/a/y0/e;)V

    if-eqz v6, :cond_36

    .line 137
    iget-object v6, v15, Lf/i/a/a/c1/b;->o:Lf/i/a/a/y0/e;

    .line 138
    iget-object v6, v6, Lf/i/a/a/y0/e;->b:Lf/i/a/a/y0/b;

    .line 139
    iget-object v6, v6, Lf/i/a/a/y0/b;->d:Landroid/media/MediaCodec$CryptoInfo;

    if-nez v13, :cond_34

    goto :goto_17

    .line 140
    :cond_34
    iget-object v11, v6, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    if-nez v11, :cond_35

    new-array v11, v5, [I

    .line 141
    iput-object v11, v6, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 142
    :cond_35
    iget-object v11, v6, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    aget v12, v11, v1

    add-int/2addr v12, v13

    aput v12, v11, v1

    .line 143
    :goto_17
    iget-object v11, v15, Lf/i/a/a/c1/b;->C:Landroid/media/MediaCodec;

    iget v12, v15, Lf/i/a/a/c1/b;->V:I

    const/16 v20, 0x0

    const/16 v24, 0x0

    move-object/from16 v18, v11

    move/from16 v19, v12

    move-object/from16 v21, v6

    move-wide/from16 v22, v9

    invoke-virtual/range {v18 .. v24}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    goto :goto_18

    .line 144
    :cond_36
    iget-object v6, v15, Lf/i/a/a/c1/b;->C:Landroid/media/MediaCodec;

    iget v11, v15, Lf/i/a/a/c1/b;->V:I

    const/16 v20, 0x0

    iget-object v12, v15, Lf/i/a/a/c1/b;->o:Lf/i/a/a/y0/e;

    iget-object v12, v12, Lf/i/a/a/y0/e;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->limit()I

    move-result v21

    const/16 v24, 0x0

    move-object/from16 v18, v6

    move/from16 v19, v11

    move-wide/from16 v22, v9

    invoke-virtual/range {v18 .. v24}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 145
    :goto_18
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/c1/b;->f0()V

    .line 146
    iput-boolean v5, v15, Lf/i/a/a/c1/b;->e0:Z

    .line 147
    iput v1, v15, Lf/i/a/a/c1/b;->b0:I

    .line 148
    iget-object v6, v15, Lf/i/a/a/c1/b;->n0:Lf/i/a/a/y0/d;

    iget v9, v6, Lf/i/a/a/y0/d;->c:I

    add-int/2addr v9, v5

    iput v9, v6, Lf/i/a/a/y0/d;->c:I
    :try_end_4
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_37
    :goto_19
    const/4 v14, 0x1

    goto :goto_1e

    :catch_4
    move-exception v0

    .line 149
    iget v1, v15, Lf/i/a/a/p;->c:I

    .line 150
    invoke-static {v0, v1}, Lf/i/a/a/w;->a(Ljava/lang/Exception;I)Lf/i/a/a/w;

    move-result-object v0

    throw v0

    :cond_38
    :goto_1a
    const/4 v1, 0x0

    const-wide/16 v3, 0x0

    :goto_1b
    const/4 v5, 0x1

    const/16 v7, 0x15

    :goto_1c
    const/4 v8, -0x3

    :goto_1d
    const/4 v14, 0x0

    :goto_1e
    if-eqz v14, :cond_3b

    .line 151
    iget-wide v9, v15, Lf/i/a/a/c1/b;->A:J

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v9, v11

    if-eqz v6, :cond_3a

    .line 152
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long v9, v9, v16

    iget-wide v11, v15, Lf/i/a/a/c1/b;->A:J

    cmp-long v6, v9, v11

    if-gez v6, :cond_39

    goto :goto_1f

    :cond_39
    const/4 v14, 0x0

    goto :goto_20

    :cond_3a
    :goto_1f
    const/4 v14, 0x1

    :goto_20
    if-eqz v14, :cond_3b

    goto/16 :goto_f

    .line 153
    :cond_3b
    invoke-static {}, Lc/a/a/b/g/h;->N()V

    goto :goto_21

    :cond_3c
    const/4 v1, 0x0

    .line 154
    iget-object v0, v15, Lf/i/a/a/c1/b;->n0:Lf/i/a/a/y0/d;

    iget v2, v0, Lf/i/a/a/y0/d;->d:I

    .line 155
    iget-object v3, v15, Lf/i/a/a/p;->e:Lf/i/a/a/h1/k0;

    iget-wide v4, v15, Lf/i/a/a/p;->g:J

    sub-long v4, p1, v4

    invoke-interface {v3, v4, v5}, Lf/i/a/a/h1/k0;->q(J)I

    move-result v3

    add-int/2addr v2, v3

    .line 156
    iput v2, v0, Lf/i/a/a/y0/d;->d:I

    .line 157
    invoke-virtual {v15, v1}, Lf/i/a/a/c1/b;->c0(Z)Z

    .line 158
    :goto_21
    iget-object v0, v15, Lf/i/a/a/c1/b;->n0:Lf/i/a/a/y0/d;

    .line 159
    monitor-enter v0

    .line 160
    monitor-exit v0

    return-void
.end method

.method public final i0(Lf/i/a/a/z0/f;)V
    .locals 1
    .param p1    # Lf/i/a/a/z0/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i/a/a/z0/f<",
            "Lf/i/a/a/z0/j;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lf/i/a/a/c1/b;->x:Lf/i/a/a/z0/f;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lf/i/a/a/c1/b;->x:Lf/i/a/a/z0/f;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lf/i/a/a/c1/b;->w:Lf/i/a/a/z0/f;

    if-eq p1, v0, :cond_0

    .line 4
    iget-object v0, p0, Lf/i/a/a/c1/b;->k:Lf/i/a/a/z0/g;

    check-cast v0, Lf/i/a/a/z0/d;

    invoke-virtual {v0, p1}, Lf/i/a/a/z0/d;->b(Lf/i/a/a/z0/f;)V

    :cond_0
    return-void
.end method

.method public j0(Lf/i/a/a/c1/a;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public abstract k0(Lf/i/a/a/c1/c;Lf/i/a/a/z0/g;Lf/i/a/a/b0;)I
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
.end method

.method public final l(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    .line 1
    iput p1, p0, Lf/i/a/a/c1/b;->B:F

    .line 2
    iget-object p1, p0, Lf/i/a/a/c1/b;->C:Landroid/media/MediaCodec;

    if-eqz p1, :cond_0

    iget p1, p0, Lf/i/a/a/c1/b;->d0:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 3
    iget p1, p0, Lf/i/a/a/p;->d:I

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lf/i/a/a/c1/b;->l0()V

    :cond_0
    return-void
.end method

.method public final l0()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    .line 1
    sget v0, Lf/i/a/a/m1/h0;->a:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lf/i/a/a/c1/b;->B:F

    iget-object v1, p0, Lf/i/a/a/c1/b;->D:Lf/i/a/a/b0;

    .line 3
    iget-object v2, p0, Lf/i/a/a/p;->f:[Lf/i/a/a/b0;

    .line 4
    invoke-virtual {p0, v0, v1, v2}, Lf/i/a/a/c1/b;->Q(FLf/i/a/a/b0;[Lf/i/a/a/b0;)F

    move-result v0

    .line 5
    iget v1, p0, Lf/i/a/a/c1/b;->E:F

    cmpl-float v2, v1, v0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v3, v0, v2

    if-nez v3, :cond_2

    .line 6
    invoke-virtual {p0}, Lf/i/a/a/c1/b;->K()V

    goto :goto_0

    :cond_2
    cmpl-float v1, v1, v2

    if-nez v1, :cond_3

    .line 7
    iget v1, p0, Lf/i/a/a/c1/b;->n:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_4

    .line 8
    :cond_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "operating-rate"

    .line 9
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 10
    iget-object v2, p0, Lf/i/a/a/c1/b;->C:Landroid/media/MediaCodec;

    invoke-virtual {v2, v1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    .line 11
    iput v0, p0, Lf/i/a/a/c1/b;->E:F

    :cond_4
    :goto_0
    return-void
.end method

.method public final m0()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/c1/b;->x:Lf/i/a/a/z0/f;

    invoke-interface {v0}, Lf/i/a/a/z0/f;->a()Lf/i/a/a/z0/j;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lf/i/a/a/c1/b;->d0()V

    .line 3
    invoke-virtual {p0}, Lf/i/a/a/c1/b;->T()V

    return-void

    .line 4
    :cond_0
    sget-object v1, Lf/i/a/a/q;->e:Ljava/util/UUID;

    iget-object v2, v0, Lf/i/a/a/z0/j;->a:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lf/i/a/a/c1/b;->d0()V

    .line 6
    invoke-virtual {p0}, Lf/i/a/a/c1/b;->T()V

    return-void

    .line 7
    :cond_1
    invoke-virtual {p0}, Lf/i/a/a/c1/b;->M()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 8
    :cond_2
    :try_start_0
    iget-object v1, p0, Lf/i/a/a/c1/b;->y:Landroid/media/MediaCrypto;

    iget-object v0, v0, Lf/i/a/a/z0/j;->b:[B

    invoke-virtual {v1, v0}, Landroid/media/MediaCrypto;->setMediaDrmSession([B)V
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    iget-object v0, p0, Lf/i/a/a/c1/b;->x:Lf/i/a/a/z0/f;

    invoke-virtual {p0, v0}, Lf/i/a/a/c1/b;->h0(Lf/i/a/a/z0/f;)V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lf/i/a/a/c1/b;->c0:I

    .line 11
    iput v0, p0, Lf/i/a/a/c1/b;->d0:I

    return-void

    :catch_0
    move-exception v0

    .line 12
    iget v1, p0, Lf/i/a/a/p;->c:I

    .line 13
    invoke-static {v0, v1}, Lf/i/a/a/w;->a(Ljava/lang/Exception;I)Lf/i/a/a/w;

    move-result-object v0

    throw v0
.end method

.method public final n0(J)Lf/i/a/a/b0;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/c1/b;->r:Lf/i/a/a/m1/d0;

    .line 2
    monitor-enter v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 3
    :goto_0
    :try_start_0
    iget v3, v0, Lf/i/a/a/m1/d0;->d:I

    if-lez v3, :cond_1

    .line 4
    iget-object v3, v0, Lf/i/a/a/m1/d0;->a:[J

    iget v4, v0, Lf/i/a/a/m1/d0;->c:I

    aget-wide v4, v3, v4

    sub-long v3, p1, v4

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gez v7, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget-object v2, v0, Lf/i/a/a/m1/d0;->b:[Ljava/lang/Object;

    iget v3, v0, Lf/i/a/a/m1/d0;->c:I

    aget-object v4, v2, v3

    .line 6
    aput-object v1, v2, v3

    add-int/lit8 v3, v3, 0x1

    .line 7
    array-length v2, v2

    rem-int/2addr v3, v2

    iput v3, v0, Lf/i/a/a/m1/d0;->c:I

    .line 8
    iget v2, v0, Lf/i/a/a/m1/d0;->d:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lf/i/a/a/m1/d0;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v4

    goto :goto_0

    .line 9
    :cond_1
    :goto_1
    monitor-exit v0

    .line 10
    check-cast v2, Lf/i/a/a/b0;

    if-eqz v2, :cond_2

    .line 11
    iput-object v2, p0, Lf/i/a/a/c1/b;->v:Lf/i/a/a/b0;

    :cond_2
    return-object v2

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0

    throw p1
.end method

.method public x()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lf/i/a/a/c1/b;->u:Lf/i/a/a/b0;

    .line 2
    iget-object v0, p0, Lf/i/a/a/c1/b;->x:Lf/i/a/a/z0/f;

    if-nez v0, :cond_1

    iget-object v0, p0, Lf/i/a/a/c1/b;->w:Lf/i/a/a/z0/f;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lf/i/a/a/c1/b;->N()Z

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lf/i/a/a/c1/b;->A()V

    :goto_1
    return-void
.end method
