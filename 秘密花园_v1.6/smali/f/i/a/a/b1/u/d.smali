.class public Lf/i/a/a/b1/u/d;
.super Ljava/lang/Object;
.source "FragmentedMp4Extractor.java"

# interfaces
.implements Lf/i/a/a/b1/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/b1/u/d$b;,
        Lf/i/a/a/b1/u/d$a;
    }
.end annotation


# static fields
.field public static final J:I

.field public static final K:[B

.field public static final L:Lf/i/a/a/b0;


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:Z

.field public E:Z

.field public F:Lf/i/a/a/b1/h;

.field public G:[Lf/i/a/a/b1/p;

.field public H:[Lf/i/a/a/b1/p;

.field public I:Z

.field public final a:I

.field public final b:Lf/i/a/a/b1/u/j;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/i/a/a/b0;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lf/i/a/a/z0/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lf/i/a/a/b1/u/d$b;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lf/i/a/a/m1/u;

.field public final g:Lf/i/a/a/m1/u;

.field public final h:Lf/i/a/a/m1/u;

.field public final i:[B

.field public final j:Lf/i/a/a/m1/u;

.field public final k:Lf/i/a/a/m1/e0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final l:Lf/i/a/a/m1/u;

.field public final m:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lf/i/a/a/b1/u/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lf/i/a/a/b1/u/d$a;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Lf/i/a/a/b1/p;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public p:I

.field public q:I

.field public r:J

.field public s:I

.field public t:Lf/i/a/a/m1/u;

.field public u:J

.field public v:I

.field public w:J

.field public x:J

.field public y:J

.field public z:Lf/i/a/a/b1/u/d$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "seig"

    .line 1
    invoke-static {v0}, Lf/i/a/a/m1/h0;->C(Ljava/lang/String;)I

    move-result v0

    sput v0, Lf/i/a/a/b1/u/d;->J:I

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 2
    fill-array-data v0, :array_0

    sput-object v0, Lf/i/a/a/b1/u/d;->K:[B

    const/4 v0, 0x0

    const-string v1, "application/x-emsg"

    const-wide v2, 0x7fffffffffffffffL

    .line 3
    invoke-static {v0, v1, v2, v3}, Lf/i/a/a/b0;->m(Ljava/lang/String;Ljava/lang/String;J)Lf/i/a/a/b0;

    move-result-object v0

    sput-object v0, Lf/i/a/a/b1/u/d;->L:Lf/i/a/a/b0;

    return-void

    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>(ILf/i/a/a/m1/e0;Lf/i/a/a/b1/u/j;Lf/i/a/a/z0/e;Ljava/util/List;Lf/i/a/a/b1/p;)V
    .locals 1
    .param p2    # Lf/i/a/a/m1/e0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lf/i/a/a/b1/u/j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lf/i/a/a/z0/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lf/i/a/a/b1/p;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lf/i/a/a/m1/e0;",
            "Lf/i/a/a/b1/u/j;",
            "Lf/i/a/a/z0/e;",
            "Ljava/util/List<",
            "Lf/i/a/a/b0;",
            ">;",
            "Lf/i/a/a/b1/p;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    or-int/2addr p1, v0

    .line 2
    iput p1, p0, Lf/i/a/a/b1/u/d;->a:I

    .line 3
    iput-object p2, p0, Lf/i/a/a/b1/u/d;->k:Lf/i/a/a/m1/e0;

    .line 4
    iput-object p3, p0, Lf/i/a/a/b1/u/d;->b:Lf/i/a/a/b1/u/j;

    .line 5
    iput-object p4, p0, Lf/i/a/a/b1/u/d;->d:Lf/i/a/a/z0/e;

    .line 6
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lf/i/a/a/b1/u/d;->c:Ljava/util/List;

    .line 7
    iput-object p6, p0, Lf/i/a/a/b1/u/d;->o:Lf/i/a/a/b1/p;

    .line 8
    new-instance p1, Lf/i/a/a/m1/u;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Lf/i/a/a/m1/u;-><init>(I)V

    iput-object p1, p0, Lf/i/a/a/b1/u/d;->l:Lf/i/a/a/m1/u;

    .line 9
    new-instance p1, Lf/i/a/a/m1/u;

    sget-object p3, Lf/i/a/a/m1/s;->a:[B

    invoke-direct {p1, p3}, Lf/i/a/a/m1/u;-><init>([B)V

    iput-object p1, p0, Lf/i/a/a/b1/u/d;->f:Lf/i/a/a/m1/u;

    .line 10
    new-instance p1, Lf/i/a/a/m1/u;

    const/4 p3, 0x5

    invoke-direct {p1, p3}, Lf/i/a/a/m1/u;-><init>(I)V

    iput-object p1, p0, Lf/i/a/a/b1/u/d;->g:Lf/i/a/a/m1/u;

    .line 11
    new-instance p1, Lf/i/a/a/m1/u;

    invoke-direct {p1}, Lf/i/a/a/m1/u;-><init>()V

    iput-object p1, p0, Lf/i/a/a/b1/u/d;->h:Lf/i/a/a/m1/u;

    new-array p1, p2, [B

    .line 12
    iput-object p1, p0, Lf/i/a/a/b1/u/d;->i:[B

    .line 13
    new-instance p2, Lf/i/a/a/m1/u;

    invoke-direct {p2, p1}, Lf/i/a/a/m1/u;-><init>([B)V

    iput-object p2, p0, Lf/i/a/a/b1/u/d;->j:Lf/i/a/a/m1/u;

    .line 14
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lf/i/a/a/b1/u/d;->m:Ljava/util/ArrayDeque;

    .line 15
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lf/i/a/a/b1/u/d;->n:Ljava/util/ArrayDeque;

    .line 16
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lf/i/a/a/b1/u/d;->e:Landroid/util/SparseArray;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 17
    iput-wide p1, p0, Lf/i/a/a/b1/u/d;->x:J

    .line 18
    iput-wide p1, p0, Lf/i/a/a/b1/u/d;->w:J

    .line 19
    iput-wide p1, p0, Lf/i/a/a/b1/u/d;->y:J

    .line 20
    invoke-virtual {p0}, Lf/i/a/a/b1/u/d;->b()V

    return-void
.end method

.method public static g(Ljava/util/List;)Lf/i/a/a/z0/e;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lf/i/a/a/b1/u/a$b;",
            ">;)",
            "Lf/i/a/a/z0/e;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    .line 2
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf/i/a/a/b1/u/a$b;

    .line 3
    iget v6, v5, Lf/i/a/a/b1/u/a;->a:I

    sget v7, Lf/i/a/a/b1/u/a;->i0:I

    if-ne v6, v7, :cond_2

    if-nez v4, :cond_0

    .line 4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5
    :cond_0
    iget-object v5, v5, Lf/i/a/a/b1/u/a$b;->g1:Lf/i/a/a/m1/u;

    iget-object v5, v5, Lf/i/a/a/m1/u;->a:[B

    .line 6
    invoke-static {v5}, Lc/a/a/b/g/h;->a1([B)Ljava/util/UUID;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    new-instance v7, Lf/i/a/a/z0/e$b;

    const-string v8, "video/mp4"

    invoke-direct {v7, v6, v8, v5}, Lf/i/a/a/z0/e$b;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-nez v4, :cond_4

    goto :goto_2

    .line 8
    :cond_4
    new-instance p0, Lf/i/a/a/z0/e;

    new-array v0, v1, [Lf/i/a/a/z0/e$b;

    .line 9
    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf/i/a/a/z0/e$b;

    invoke-direct {p0, v2, v1, v0}, Lf/i/a/a/z0/e;-><init>(Ljava/lang/String;Z[Lf/i/a/a/z0/e$b;)V

    move-object v2, p0

    :goto_2
    return-object v2
.end method

.method public static j(Lf/i/a/a/m1/u;ILf/i/a/a/b1/u/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/h0;
        }
    .end annotation

    add-int/lit8 p1, p1, 0x8

    .line 1
    invoke-virtual {p0, p1}, Lf/i/a/a/m1/u;->A(I)V

    .line 2
    invoke-virtual {p0}, Lf/i/a/a/m1/u;->d()I

    move-result p1

    .line 3
    invoke-static {p1}, Lf/i/a/a/b1/u/a;->b(I)I

    move-result p1

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_2

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Lf/i/a/a/m1/u;->s()I

    move-result v1

    .line 5
    iget v2, p2, Lf/i/a/a/b1/u/l;->f:I

    if-ne v1, v2, :cond_1

    .line 6
    iget-object v2, p2, Lf/i/a/a/b1/u/l;->n:[Z

    invoke-static {v2, v0, v1, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 7
    invoke-virtual {p0}, Lf/i/a/a/m1/u;->a()I

    move-result p1

    invoke-virtual {p2, p1}, Lf/i/a/a/b1/u/l;->a(I)V

    .line 8
    iget-object p1, p2, Lf/i/a/a/b1/u/l;->q:Lf/i/a/a/m1/u;

    iget-object p1, p1, Lf/i/a/a/m1/u;->a:[B

    iget v1, p2, Lf/i/a/a/b1/u/l;->p:I

    invoke-virtual {p0, p1, v0, v1}, Lf/i/a/a/m1/u;->c([BII)V

    .line 9
    iget-object p0, p2, Lf/i/a/a/b1/u/l;->q:Lf/i/a/a/m1/u;

    invoke-virtual {p0, v0}, Lf/i/a/a/m1/u;->A(I)V

    .line 10
    iput-boolean v0, p2, Lf/i/a/a/b1/u/l;->r:Z

    return-void

    .line 11
    :cond_1
    new-instance p0, Lf/i/a/a/h0;

    const-string p1, "Length mismatch: "

    const-string v0, ", "

    invoke-static {p1, v1, v0}, Lf/b/a/a/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p2, Lf/i/a/a/b1/u/l;->f:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_2
    new-instance p0, Lf/i/a/a/h0;

    const-string p1, "Overriding TrackEncryptionBox parameters is unsupported."

    invoke-direct {p0, p1}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lf/i/a/a/b1/u/d;->p:I

    .line 2
    iput v0, p0, Lf/i/a/a/b1/u/d;->s:I

    return-void
.end method

.method public c(Lf/i/a/a/b1/d;Lf/i/a/a/b1/m;)I
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v2, p0

    move-object v3, v2

    move-object/from16 v0, p1

    move-object v1, v0

    .line 1
    :cond_0
    :goto_0
    iget v4, v2, Lf/i/a/a/b1/u/d;->p:I

    const/4 v6, -0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v4, :cond_34

    if-eq v4, v9, :cond_28

    const-wide v12, 0x7fffffffffffffffL

    const/4 v6, 0x3

    if-eq v4, v7, :cond_23

    if-ne v4, v6, :cond_14

    .line 2
    iget-object v4, v2, Lf/i/a/a/b1/u/d;->z:Lf/i/a/a/b1/u/d$b;

    if-nez v4, :cond_7

    .line 3
    iget-object v4, v2, Lf/i/a/a/b1/u/d;->e:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v14

    move-object v11, v8

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v14, :cond_3

    .line 5
    invoke-virtual {v4, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v7, v16

    check-cast v7, Lf/i/a/a/b1/u/d$b;

    .line 6
    iget v10, v7, Lf/i/a/a/b1/u/d$b;->g:I

    iget-object v5, v7, Lf/i/a/a/b1/u/d$b;->b:Lf/i/a/a/b1/u/l;

    iget v9, v5, Lf/i/a/a/b1/u/l;->e:I

    if-ne v10, v9, :cond_1

    goto :goto_2

    .line 7
    :cond_1
    iget-object v5, v5, Lf/i/a/a/b1/u/l;->g:[J

    aget-wide v9, v5, v10

    cmp-long v5, v9, v12

    if-gez v5, :cond_2

    move-object v11, v7

    move-wide v12, v9

    :cond_2
    :goto_2
    add-int/lit8 v15, v15, 0x1

    const/4 v7, 0x2

    const/4 v9, 0x1

    goto :goto_1

    :cond_3
    if-nez v11, :cond_5

    .line 8
    iget-wide v4, v2, Lf/i/a/a/b1/u/d;->u:J

    .line 9
    iget-wide v6, v0, Lf/i/a/a/b1/d;->d:J

    sub-long/2addr v4, v6

    long-to-int v5, v4

    if-ltz v5, :cond_4

    .line 10
    invoke-virtual {v0, v5}, Lf/i/a/a/b1/d;->h(I)V

    .line 11
    invoke-virtual {v3}, Lf/i/a/a/b1/u/d;->b()V

    const/4 v9, 0x0

    goto/16 :goto_13

    .line 12
    :cond_4
    new-instance v0, Lf/i/a/a/h0;

    const-string v1, "Offset to end of mdat was negative."

    invoke-direct {v0, v1}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_5
    iget-object v4, v11, Lf/i/a/a/b1/u/d$b;->b:Lf/i/a/a/b1/u/l;

    iget-object v4, v4, Lf/i/a/a/b1/u/l;->g:[J

    iget v5, v11, Lf/i/a/a/b1/u/d$b;->g:I

    aget-wide v9, v4, v5

    .line 14
    iget-wide v4, v0, Lf/i/a/a/b1/d;->d:J

    sub-long/2addr v9, v4

    long-to-int v4, v9

    if-gez v4, :cond_6

    const/4 v4, 0x0

    .line 15
    :cond_6
    invoke-virtual {v0, v4}, Lf/i/a/a/b1/d;->h(I)V

    .line 16
    iput-object v11, v2, Lf/i/a/a/b1/u/d;->z:Lf/i/a/a/b1/u/d$b;

    .line 17
    :cond_7
    iget-object v4, v2, Lf/i/a/a/b1/u/d;->z:Lf/i/a/a/b1/u/d$b;

    iget-object v5, v4, Lf/i/a/a/b1/u/d$b;->b:Lf/i/a/a/b1/u/l;

    iget-object v5, v5, Lf/i/a/a/b1/u/l;->i:[I

    iget v7, v4, Lf/i/a/a/b1/u/d$b;->e:I

    aget v5, v5, v7

    iput v5, v2, Lf/i/a/a/b1/u/d;->A:I

    .line 18
    iget v9, v4, Lf/i/a/a/b1/u/d$b;->h:I

    if-ge v7, v9, :cond_d

    .line 19
    invoke-virtual {v0, v5}, Lf/i/a/a/b1/d;->h(I)V

    .line 20
    iget-object v4, v2, Lf/i/a/a/b1/u/d;->z:Lf/i/a/a/b1/u/d$b;

    .line 21
    invoke-virtual {v4}, Lf/i/a/a/b1/u/d$b;->a()Lf/i/a/a/b1/u/k;

    move-result-object v5

    if-nez v5, :cond_8

    goto :goto_4

    .line 22
    :cond_8
    iget-object v7, v4, Lf/i/a/a/b1/u/d$b;->b:Lf/i/a/a/b1/u/l;

    iget-object v7, v7, Lf/i/a/a/b1/u/l;->q:Lf/i/a/a/m1/u;

    .line 23
    iget v5, v5, Lf/i/a/a/b1/u/k;->d:I

    if-eqz v5, :cond_9

    .line 24
    invoke-virtual {v7, v5}, Lf/i/a/a/m1/u;->B(I)V

    .line 25
    :cond_9
    iget-object v5, v4, Lf/i/a/a/b1/u/d$b;->b:Lf/i/a/a/b1/u/l;

    iget v4, v4, Lf/i/a/a/b1/u/d$b;->e:I

    .line 26
    iget-boolean v9, v5, Lf/i/a/a/b1/u/l;->m:Z

    if-eqz v9, :cond_a

    iget-object v5, v5, Lf/i/a/a/b1/u/l;->n:[Z

    aget-boolean v4, v5, v4

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    goto :goto_3

    :cond_a
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_b

    .line 27
    invoke-virtual {v7}, Lf/i/a/a/m1/u;->u()I

    move-result v4

    mul-int/lit8 v4, v4, 0x6

    invoke-virtual {v7, v4}, Lf/i/a/a/m1/u;->B(I)V

    .line 28
    :cond_b
    :goto_4
    iget-object v4, v2, Lf/i/a/a/b1/u/d;->z:Lf/i/a/a/b1/u/d$b;

    invoke-virtual {v4}, Lf/i/a/a/b1/u/d$b;->c()Z

    move-result v4

    if-nez v4, :cond_c

    .line 29
    iput-object v8, v2, Lf/i/a/a/b1/u/d;->z:Lf/i/a/a/b1/u/d$b;

    .line 30
    :cond_c
    iput v6, v2, Lf/i/a/a/b1/u/d;->p:I

    :goto_5
    const/4 v9, 0x1

    goto/16 :goto_13

    .line 31
    :cond_d
    iget-object v4, v4, Lf/i/a/a/b1/u/d$b;->c:Lf/i/a/a/b1/u/j;

    iget v4, v4, Lf/i/a/a/b1/u/j;->g:I

    const/4 v7, 0x1

    if-ne v4, v7, :cond_e

    add-int/lit8 v5, v5, -0x8

    .line 32
    iput v5, v2, Lf/i/a/a/b1/u/d;->A:I

    const/16 v4, 0x8

    .line 33
    invoke-virtual {v0, v4}, Lf/i/a/a/b1/d;->h(I)V

    .line 34
    :cond_e
    iget-object v4, v2, Lf/i/a/a/b1/u/d;->z:Lf/i/a/a/b1/u/d$b;

    .line 35
    invoke-virtual {v4}, Lf/i/a/a/b1/u/d$b;->a()Lf/i/a/a/b1/u/k;

    move-result-object v5

    if-nez v5, :cond_f

    const/4 v4, 0x0

    goto :goto_9

    .line 36
    :cond_f
    iget v7, v5, Lf/i/a/a/b1/u/k;->d:I

    if-eqz v7, :cond_10

    .line 37
    iget-object v5, v4, Lf/i/a/a/b1/u/d$b;->b:Lf/i/a/a/b1/u/l;

    iget-object v5, v5, Lf/i/a/a/b1/u/l;->q:Lf/i/a/a/m1/u;

    goto :goto_6

    .line 38
    :cond_10
    iget-object v5, v5, Lf/i/a/a/b1/u/k;->e:[B

    .line 39
    iget-object v7, v4, Lf/i/a/a/b1/u/d$b;->j:Lf/i/a/a/m1/u;

    array-length v9, v5

    .line 40
    iput-object v5, v7, Lf/i/a/a/m1/u;->a:[B

    .line 41
    iput v9, v7, Lf/i/a/a/m1/u;->c:I

    const/4 v9, 0x0

    .line 42
    iput v9, v7, Lf/i/a/a/m1/u;->b:I

    .line 43
    array-length v5, v5

    move-object/from16 v26, v7

    move v7, v5

    move-object/from16 v5, v26

    .line 44
    :goto_6
    iget-object v9, v4, Lf/i/a/a/b1/u/d$b;->b:Lf/i/a/a/b1/u/l;

    iget v10, v4, Lf/i/a/a/b1/u/d$b;->e:I

    .line 45
    iget-boolean v11, v9, Lf/i/a/a/b1/u/l;->m:Z

    if-eqz v11, :cond_11

    iget-object v9, v9, Lf/i/a/a/b1/u/l;->n:[Z

    aget-boolean v9, v9, v10

    if-eqz v9, :cond_11

    const/4 v9, 0x1

    goto :goto_7

    :cond_11
    const/4 v9, 0x0

    .line 46
    :goto_7
    iget-object v10, v4, Lf/i/a/a/b1/u/d$b;->i:Lf/i/a/a/m1/u;

    iget-object v10, v10, Lf/i/a/a/m1/u;->a:[B

    if-eqz v9, :cond_12

    const/16 v11, 0x80

    goto :goto_8

    :cond_12
    const/4 v11, 0x0

    :goto_8
    or-int/2addr v11, v7

    int-to-byte v11, v11

    const/4 v12, 0x0

    aput-byte v11, v10, v12

    .line 47
    iget-object v10, v4, Lf/i/a/a/b1/u/d$b;->i:Lf/i/a/a/m1/u;

    invoke-virtual {v10, v12}, Lf/i/a/a/m1/u;->A(I)V

    .line 48
    iget-object v10, v4, Lf/i/a/a/b1/u/d$b;->a:Lf/i/a/a/b1/p;

    iget-object v11, v4, Lf/i/a/a/b1/u/d$b;->i:Lf/i/a/a/m1/u;

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Lf/i/a/a/b1/p;->a(Lf/i/a/a/m1/u;I)V

    .line 49
    iget-object v10, v4, Lf/i/a/a/b1/u/d$b;->a:Lf/i/a/a/b1/p;

    invoke-interface {v10, v5, v7}, Lf/i/a/a/b1/p;->a(Lf/i/a/a/m1/u;I)V

    if-nez v9, :cond_13

    add-int/lit8 v4, v7, 0x1

    goto :goto_9

    .line 50
    :cond_13
    iget-object v5, v4, Lf/i/a/a/b1/u/d$b;->b:Lf/i/a/a/b1/u/l;

    iget-object v5, v5, Lf/i/a/a/b1/u/l;->q:Lf/i/a/a/m1/u;

    .line 51
    invoke-virtual {v5}, Lf/i/a/a/m1/u;->u()I

    move-result v9

    const/4 v10, -0x2

    .line 52
    invoke-virtual {v5, v10}, Lf/i/a/a/m1/u;->B(I)V

    mul-int/lit8 v9, v9, 0x6

    const/4 v10, 0x2

    add-int/2addr v9, v10

    .line 53
    iget-object v4, v4, Lf/i/a/a/b1/u/d$b;->a:Lf/i/a/a/b1/p;

    invoke-interface {v4, v5, v9}, Lf/i/a/a/b1/p;->a(Lf/i/a/a/m1/u;I)V

    add-int/lit8 v7, v7, 0x1

    add-int v4, v7, v9

    .line 54
    :goto_9
    iput v4, v2, Lf/i/a/a/b1/u/d;->B:I

    .line 55
    iget v5, v2, Lf/i/a/a/b1/u/d;->A:I

    add-int/2addr v5, v4

    iput v5, v2, Lf/i/a/a/b1/u/d;->A:I

    const/4 v4, 0x4

    .line 56
    iput v4, v2, Lf/i/a/a/b1/u/d;->p:I

    const/4 v4, 0x0

    .line 57
    iput v4, v2, Lf/i/a/a/b1/u/d;->C:I

    .line 58
    iget-object v4, v2, Lf/i/a/a/b1/u/d;->z:Lf/i/a/a/b1/u/d$b;

    iget-object v4, v4, Lf/i/a/a/b1/u/d$b;->c:Lf/i/a/a/b1/u/j;

    iget-object v4, v4, Lf/i/a/a/b1/u/j;->f:Lf/i/a/a/b0;

    iget-object v4, v4, Lf/i/a/a/b0;->i:Ljava/lang/String;

    const-string v5, "audio/ac4"

    .line 59
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, v2, Lf/i/a/a/b1/u/d;->E:Z

    .line 60
    :cond_14
    iget-object v4, v2, Lf/i/a/a/b1/u/d;->z:Lf/i/a/a/b1/u/d$b;

    iget-object v5, v4, Lf/i/a/a/b1/u/d$b;->b:Lf/i/a/a/b1/u/l;

    .line 61
    iget-object v7, v4, Lf/i/a/a/b1/u/d$b;->c:Lf/i/a/a/b1/u/j;

    .line 62
    iget-object v9, v4, Lf/i/a/a/b1/u/d$b;->a:Lf/i/a/a/b1/p;

    .line 63
    iget v4, v4, Lf/i/a/a/b1/u/d$b;->e:I

    .line 64
    iget-object v10, v5, Lf/i/a/a/b1/u/l;->k:[J

    aget-wide v11, v10, v4

    iget-object v10, v5, Lf/i/a/a/b1/u/l;->j:[I

    aget v10, v10, v4

    int-to-long v13, v10

    add-long/2addr v11, v13

    const-wide/16 v13, 0x3e8

    mul-long v11, v11, v13

    .line 65
    iget-object v10, v2, Lf/i/a/a/b1/u/d;->k:Lf/i/a/a/m1/e0;

    if-eqz v10, :cond_15

    .line 66
    invoke-virtual {v10, v11, v12}, Lf/i/a/a/m1/e0;->a(J)J

    move-result-wide v11

    .line 67
    :cond_15
    iget v10, v7, Lf/i/a/a/b1/u/j;->j:I

    if-eqz v10, :cond_1b

    .line 68
    iget-object v13, v2, Lf/i/a/a/b1/u/d;->g:Lf/i/a/a/m1/u;

    iget-object v13, v13, Lf/i/a/a/m1/u;->a:[B

    const/4 v14, 0x0

    .line 69
    aput-byte v14, v13, v14

    const/4 v15, 0x1

    .line 70
    aput-byte v14, v13, v15

    const/4 v15, 0x2

    .line 71
    aput-byte v14, v13, v15

    add-int/lit8 v15, v10, 0x1

    rsub-int/lit8 v10, v10, 0x4

    .line 72
    :goto_a
    iget v6, v2, Lf/i/a/a/b1/u/d;->B:I

    iget v8, v2, Lf/i/a/a/b1/u/d;->A:I

    if-ge v6, v8, :cond_1a

    .line 73
    iget v6, v2, Lf/i/a/a/b1/u/d;->C:I

    if-nez v6, :cond_18

    .line 74
    invoke-virtual {v0, v13, v10, v15, v14}, Lf/i/a/a/b1/d;->g([BIIZ)Z

    .line 75
    iget-object v6, v2, Lf/i/a/a/b1/u/d;->g:Lf/i/a/a/m1/u;

    invoke-virtual {v6, v14}, Lf/i/a/a/m1/u;->A(I)V

    .line 76
    iget-object v6, v2, Lf/i/a/a/b1/u/d;->g:Lf/i/a/a/m1/u;

    invoke-virtual {v6}, Lf/i/a/a/m1/u;->d()I

    move-result v6

    const/4 v8, 0x1

    if-lt v6, v8, :cond_17

    add-int/lit8 v6, v6, -0x1

    .line 77
    iput v6, v2, Lf/i/a/a/b1/u/d;->C:I

    .line 78
    iget-object v6, v2, Lf/i/a/a/b1/u/d;->f:Lf/i/a/a/m1/u;

    invoke-virtual {v6, v14}, Lf/i/a/a/m1/u;->A(I)V

    .line 79
    iget-object v6, v2, Lf/i/a/a/b1/u/d;->f:Lf/i/a/a/m1/u;

    const/4 v14, 0x4

    invoke-interface {v9, v6, v14}, Lf/i/a/a/b1/p;->a(Lf/i/a/a/m1/u;I)V

    .line 80
    iget-object v6, v2, Lf/i/a/a/b1/u/d;->g:Lf/i/a/a/m1/u;

    invoke-interface {v9, v6, v8}, Lf/i/a/a/b1/p;->a(Lf/i/a/a/m1/u;I)V

    .line 81
    iget-object v6, v2, Lf/i/a/a/b1/u/d;->H:[Lf/i/a/a/b1/p;

    array-length v6, v6

    if-lez v6, :cond_16

    iget-object v6, v7, Lf/i/a/a/b1/u/j;->f:Lf/i/a/a/b0;

    iget-object v6, v6, Lf/i/a/a/b0;->i:Ljava/lang/String;

    aget-byte v8, v13, v14

    .line 82
    invoke-static {v6, v8}, Lf/i/a/a/m1/s;->d(Ljava/lang/String;B)Z

    move-result v6

    if-eqz v6, :cond_16

    const/4 v6, 0x1

    goto :goto_b

    :cond_16
    const/4 v6, 0x0

    :goto_b
    iput-boolean v6, v2, Lf/i/a/a/b1/u/d;->D:Z

    .line 83
    iget v6, v2, Lf/i/a/a/b1/u/d;->B:I

    add-int/lit8 v6, v6, 0x5

    iput v6, v2, Lf/i/a/a/b1/u/d;->B:I

    .line 84
    iget v6, v2, Lf/i/a/a/b1/u/d;->A:I

    add-int/2addr v6, v10

    iput v6, v2, Lf/i/a/a/b1/u/d;->A:I

    move-object/from16 v19, v1

    move/from16 v17, v4

    goto :goto_d

    .line 85
    :cond_17
    new-instance v0, Lf/i/a/a/h0;

    const-string v1, "Invalid NAL length"

    invoke-direct {v0, v1}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_18
    iget-boolean v8, v2, Lf/i/a/a/b1/u/d;->D:Z

    if-eqz v8, :cond_19

    .line 87
    iget-object v8, v2, Lf/i/a/a/b1/u/d;->h:Lf/i/a/a/m1/u;

    invoke-virtual {v8, v6}, Lf/i/a/a/m1/u;->w(I)V

    .line 88
    iget-object v6, v2, Lf/i/a/a/b1/u/d;->h:Lf/i/a/a/m1/u;

    iget-object v6, v6, Lf/i/a/a/m1/u;->a:[B

    iget v8, v2, Lf/i/a/a/b1/u/d;->C:I

    const/4 v14, 0x0

    .line 89
    invoke-virtual {v0, v6, v14, v8, v14}, Lf/i/a/a/b1/d;->g([BIIZ)Z

    .line 90
    iget-object v6, v2, Lf/i/a/a/b1/u/d;->h:Lf/i/a/a/m1/u;

    iget v8, v2, Lf/i/a/a/b1/u/d;->C:I

    invoke-interface {v9, v6, v8}, Lf/i/a/a/b1/p;->a(Lf/i/a/a/m1/u;I)V

    .line 91
    iget v6, v2, Lf/i/a/a/b1/u/d;->C:I

    .line 92
    iget-object v8, v2, Lf/i/a/a/b1/u/d;->h:Lf/i/a/a/m1/u;

    iget-object v14, v8, Lf/i/a/a/m1/u;->a:[B

    .line 93
    iget v8, v8, Lf/i/a/a/m1/u;->c:I

    .line 94
    invoke-static {v14, v8}, Lf/i/a/a/m1/s;->g([BI)I

    move-result v8

    .line 95
    iget-object v14, v2, Lf/i/a/a/b1/u/d;->h:Lf/i/a/a/m1/u;

    move-object/from16 v19, v1

    iget-object v1, v7, Lf/i/a/a/b1/u/j;->f:Lf/i/a/a/b0;

    iget-object v1, v1, Lf/i/a/a/b0;->i:Ljava/lang/String;

    move/from16 v17, v4

    const-string v4, "video/hevc"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v14, v1}, Lf/i/a/a/m1/u;->A(I)V

    .line 96
    iget-object v1, v2, Lf/i/a/a/b1/u/d;->h:Lf/i/a/a/m1/u;

    invoke-virtual {v1, v8}, Lf/i/a/a/m1/u;->z(I)V

    .line 97
    iget-object v1, v2, Lf/i/a/a/b1/u/d;->h:Lf/i/a/a/m1/u;

    iget-object v4, v2, Lf/i/a/a/b1/u/d;->H:[Lf/i/a/a/b1/p;

    invoke-static {v11, v12, v1, v4}, Lf/i/a/a/i1/m/f;->a(JLf/i/a/a/m1/u;[Lf/i/a/a/b1/p;)V

    goto :goto_c

    :cond_19
    move-object/from16 v19, v1

    move/from16 v17, v4

    const/4 v1, 0x0

    .line 98
    invoke-interface {v9, v0, v6, v1}, Lf/i/a/a/b1/p;->b(Lf/i/a/a/b1/d;IZ)I

    move-result v6

    .line 99
    :goto_c
    iget v1, v2, Lf/i/a/a/b1/u/d;->B:I

    add-int/2addr v1, v6

    iput v1, v2, Lf/i/a/a/b1/u/d;->B:I

    .line 100
    iget v1, v2, Lf/i/a/a/b1/u/d;->C:I

    sub-int/2addr v1, v6

    iput v1, v2, Lf/i/a/a/b1/u/d;->C:I

    :goto_d
    move/from16 v4, v17

    move-object/from16 v1, v19

    const/4 v8, 0x0

    const/4 v14, 0x0

    goto/16 :goto_a

    :cond_1a
    move-object/from16 v19, v1

    move/from16 v17, v4

    move-object v6, v9

    move-wide v13, v11

    goto :goto_10

    :cond_1b
    move-object/from16 v19, v1

    move/from16 v17, v4

    .line 101
    iget-boolean v1, v2, Lf/i/a/a/b1/u/d;->E:Z

    if-eqz v1, :cond_1c

    .line 102
    iget v1, v2, Lf/i/a/a/b1/u/d;->A:I

    iget-object v4, v2, Lf/i/a/a/b1/u/d;->j:Lf/i/a/a/m1/u;

    invoke-static {v1, v4}, Lf/i/a/a/w0/h;->a(ILf/i/a/a/m1/u;)V

    .line 103
    iget-object v1, v2, Lf/i/a/a/b1/u/d;->j:Lf/i/a/a/m1/u;

    .line 104
    iget v4, v1, Lf/i/a/a/m1/u;->c:I

    .line 105
    invoke-interface {v9, v1, v4}, Lf/i/a/a/b1/p;->a(Lf/i/a/a/m1/u;I)V

    .line 106
    iget v1, v2, Lf/i/a/a/b1/u/d;->A:I

    add-int/2addr v1, v4

    iput v1, v2, Lf/i/a/a/b1/u/d;->A:I

    .line 107
    iget v1, v2, Lf/i/a/a/b1/u/d;->B:I

    add-int/2addr v1, v4

    iput v1, v2, Lf/i/a/a/b1/u/d;->B:I

    const/4 v1, 0x0

    .line 108
    iput-boolean v1, v2, Lf/i/a/a/b1/u/d;->E:Z

    :goto_e
    move/from16 v4, v17

    goto :goto_f

    :cond_1c
    const/4 v1, 0x0

    goto :goto_e

    .line 109
    :goto_f
    iget v6, v2, Lf/i/a/a/b1/u/d;->B:I

    iget v7, v2, Lf/i/a/a/b1/u/d;->A:I

    if-ge v6, v7, :cond_1d

    sub-int/2addr v7, v6

    .line 110
    invoke-interface {v9, v0, v7, v1}, Lf/i/a/a/b1/p;->b(Lf/i/a/a/b1/d;IZ)I

    move-result v6

    .line 111
    iget v1, v2, Lf/i/a/a/b1/u/d;->B:I

    add-int/2addr v1, v6

    iput v1, v2, Lf/i/a/a/b1/u/d;->B:I

    const/4 v1, 0x0

    goto :goto_f

    :cond_1d
    move-object v6, v9

    move-wide v13, v11

    move-object/from16 v1, v19

    .line 112
    :goto_10
    iget-object v5, v5, Lf/i/a/a/b1/u/l;->l:[Z

    aget-boolean v4, v5, v4

    .line 113
    iget-object v5, v2, Lf/i/a/a/b1/u/d;->z:Lf/i/a/a/b1/u/d$b;

    .line 114
    invoke-virtual {v5}, Lf/i/a/a/b1/u/d$b;->a()Lf/i/a/a/b1/u/k;

    move-result-object v5

    if-eqz v5, :cond_1e

    const/high16 v7, 0x40000000    # 2.0f

    or-int/2addr v4, v7

    .line 115
    iget-object v5, v5, Lf/i/a/a/b1/u/k;->c:Lf/i/a/a/b1/p$a;

    move v9, v4

    move-object v12, v5

    goto :goto_11

    :cond_1e
    move v9, v4

    const/4 v12, 0x0

    .line 116
    :goto_11
    iget v10, v2, Lf/i/a/a/b1/u/d;->A:I

    const/4 v11, 0x0

    move-wide v7, v13

    invoke-interface/range {v6 .. v12}, Lf/i/a/a/b1/p;->c(JIIILf/i/a/a/b1/p$a;)V

    .line 117
    :cond_1f
    iget-object v4, v2, Lf/i/a/a/b1/u/d;->n:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_21

    .line 118
    iget-object v4, v2, Lf/i/a/a/b1/u/d;->n:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf/i/a/a/b1/u/d$a;

    .line 119
    iget v5, v2, Lf/i/a/a/b1/u/d;->v:I

    iget v6, v4, Lf/i/a/a/b1/u/d$a;->b:I

    sub-int/2addr v5, v6

    iput v5, v2, Lf/i/a/a/b1/u/d;->v:I

    .line 120
    iget-wide v5, v4, Lf/i/a/a/b1/u/d$a;->a:J

    add-long/2addr v5, v13

    .line 121
    iget-object v7, v2, Lf/i/a/a/b1/u/d;->k:Lf/i/a/a/m1/e0;

    if-eqz v7, :cond_20

    .line 122
    invoke-virtual {v7, v5, v6}, Lf/i/a/a/m1/e0;->a(J)J

    move-result-wide v5

    .line 123
    :cond_20
    iget-object v7, v2, Lf/i/a/a/b1/u/d;->G:[Lf/i/a/a/b1/p;

    array-length v8, v7

    const/4 v9, 0x0

    :goto_12
    if-ge v9, v8, :cond_1f

    aget-object v19, v7, v9

    const/16 v22, 0x1

    .line 124
    iget v10, v4, Lf/i/a/a/b1/u/d$a;->b:I

    iget v11, v2, Lf/i/a/a/b1/u/d;->v:I

    const/16 v25, 0x0

    move-wide/from16 v20, v5

    move/from16 v23, v10

    move/from16 v24, v11

    invoke-interface/range {v19 .. v25}, Lf/i/a/a/b1/p;->c(JIIILf/i/a/a/b1/p$a;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_12

    .line 125
    :cond_21
    iget-object v4, v2, Lf/i/a/a/b1/u/d;->z:Lf/i/a/a/b1/u/d$b;

    invoke-virtual {v4}, Lf/i/a/a/b1/u/d$b;->c()Z

    move-result v4

    if-nez v4, :cond_22

    const/4 v4, 0x0

    .line 126
    iput-object v4, v2, Lf/i/a/a/b1/u/d;->z:Lf/i/a/a/b1/u/d$b;

    :cond_22
    const/4 v4, 0x3

    .line 127
    iput v4, v2, Lf/i/a/a/b1/u/d;->p:I

    goto/16 :goto_5

    :goto_13
    if-eqz v9, :cond_0

    const/4 v4, 0x0

    return v4

    :cond_23
    move-object/from16 v19, v1

    .line 128
    iget-object v1, v2, Lf/i/a/a/b1/u/d;->e:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v4, 0x0

    const/4 v8, 0x0

    :goto_14
    if-ge v4, v1, :cond_25

    .line 129
    iget-object v5, v2, Lf/i/a/a/b1/u/d;->e:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf/i/a/a/b1/u/d$b;

    iget-object v5, v5, Lf/i/a/a/b1/u/d$b;->b:Lf/i/a/a/b1/u/l;

    .line 130
    iget-boolean v6, v5, Lf/i/a/a/b1/u/l;->r:Z

    if-eqz v6, :cond_24

    iget-wide v5, v5, Lf/i/a/a/b1/u/l;->d:J

    cmp-long v7, v5, v12

    if-gez v7, :cond_24

    .line 131
    iget-object v7, v2, Lf/i/a/a/b1/u/d;->e:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lf/i/a/a/b1/u/d$b;

    move-wide v12, v5

    move-object v8, v7

    :cond_24
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_25
    if-nez v8, :cond_26

    const/4 v1, 0x3

    .line 132
    iput v1, v2, Lf/i/a/a/b1/u/d;->p:I

    :goto_15
    move-object/from16 v24, v3

    goto/16 :goto_25

    .line 133
    :cond_26
    iget-wide v4, v0, Lf/i/a/a/b1/d;->d:J

    sub-long/2addr v12, v4

    long-to-int v1, v12

    if-ltz v1, :cond_27

    .line 134
    invoke-virtual {v0, v1}, Lf/i/a/a/b1/d;->h(I)V

    .line 135
    iget-object v1, v8, Lf/i/a/a/b1/u/d$b;->b:Lf/i/a/a/b1/u/l;

    .line 136
    iget-object v4, v1, Lf/i/a/a/b1/u/l;->q:Lf/i/a/a/m1/u;

    iget-object v4, v4, Lf/i/a/a/m1/u;->a:[B

    iget v5, v1, Lf/i/a/a/b1/u/l;->p:I

    const/4 v6, 0x0

    .line 137
    invoke-virtual {v0, v4, v6, v5, v6}, Lf/i/a/a/b1/d;->g([BIIZ)Z

    .line 138
    iget-object v4, v1, Lf/i/a/a/b1/u/l;->q:Lf/i/a/a/m1/u;

    invoke-virtual {v4, v6}, Lf/i/a/a/m1/u;->A(I)V

    .line 139
    iput-boolean v6, v1, Lf/i/a/a/b1/u/l;->r:Z

    goto :goto_15

    .line 140
    :cond_27
    new-instance v0, Lf/i/a/a/h0;

    const-string v1, "Offset to encryption data was negative."

    invoke-direct {v0, v1}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    move-object/from16 v19, v1

    .line 141
    iget-wide v4, v2, Lf/i/a/a/b1/u/d;->r:J

    long-to-int v1, v4

    iget v4, v2, Lf/i/a/a/b1/u/d;->s:I

    sub-int/2addr v1, v4

    .line 142
    iget-object v4, v2, Lf/i/a/a/b1/u/d;->t:Lf/i/a/a/m1/u;

    if-eqz v4, :cond_33

    .line 143
    iget-object v4, v4, Lf/i/a/a/m1/u;->a:[B

    const/16 v5, 0x8

    const/4 v7, 0x0

    .line 144
    invoke-virtual {v0, v4, v5, v1, v7}, Lf/i/a/a/b1/d;->g([BIIZ)Z

    .line 145
    new-instance v1, Lf/i/a/a/b1/u/a$b;

    iget v4, v2, Lf/i/a/a/b1/u/d;->q:I

    iget-object v5, v2, Lf/i/a/a/b1/u/d;->t:Lf/i/a/a/m1/u;

    invoke-direct {v1, v4, v5}, Lf/i/a/a/b1/u/a$b;-><init>(ILf/i/a/a/m1/u;)V

    .line 146
    iget-wide v4, v0, Lf/i/a/a/b1/d;->d:J

    .line 147
    iget-object v0, v2, Lf/i/a/a/b1/u/d;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    .line 148
    iget-object v0, v2, Lf/i/a/a/b1/u/d;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/b1/u/a$a;

    .line 149
    iget-object v0, v0, Lf/i/a/a/b1/u/a$a;->h1:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v24, v3

    goto/16 :goto_1a

    .line 150
    :cond_29
    iget v0, v1, Lf/i/a/a/b1/u/a;->a:I

    sget v7, Lf/i/a/a/b1/u/a;->Q:I

    if-ne v0, v7, :cond_2d

    .line 151
    iget-object v0, v1, Lf/i/a/a/b1/u/a$b;->g1:Lf/i/a/a/m1/u;

    const/16 v1, 0x8

    .line 152
    invoke-virtual {v0, v1}, Lf/i/a/a/m1/u;->A(I)V

    .line 153
    invoke-virtual {v0}, Lf/i/a/a/m1/u;->d()I

    move-result v1

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    const/4 v6, 0x4

    .line 154
    invoke-virtual {v0, v6}, Lf/i/a/a/m1/u;->B(I)V

    .line 155
    invoke-virtual {v0}, Lf/i/a/a/m1/u;->q()J

    move-result-wide v13

    if-nez v1, :cond_2a

    .line 156
    invoke-virtual {v0}, Lf/i/a/a/m1/u;->q()J

    move-result-wide v6

    .line 157
    invoke-virtual {v0}, Lf/i/a/a/m1/u;->q()J

    move-result-wide v8

    goto :goto_16

    .line 158
    :cond_2a
    invoke-virtual {v0}, Lf/i/a/a/m1/u;->t()J

    move-result-wide v6

    .line 159
    invoke-virtual {v0}, Lf/i/a/a/m1/u;->t()J

    move-result-wide v8

    :goto_16
    move-wide/from16 v20, v6

    add-long/2addr v4, v8

    const-wide/32 v9, 0xf4240

    move-wide/from16 v7, v20

    move-wide v11, v13

    .line 160
    invoke-static/range {v7 .. v12}, Lf/i/a/a/m1/h0;->h0(JJJ)J

    move-result-wide v22

    const/4 v1, 0x2

    .line 161
    invoke-virtual {v0, v1}, Lf/i/a/a/m1/u;->B(I)V

    .line 162
    invoke-virtual {v0}, Lf/i/a/a/m1/u;->u()I

    move-result v1

    .line 163
    new-array v6, v1, [I

    .line 164
    new-array v15, v1, [J

    .line 165
    new-array v11, v1, [J

    .line 166
    new-array v12, v1, [J

    move-wide/from16 v7, v22

    const/4 v9, 0x0

    :goto_17
    if-ge v9, v1, :cond_2c

    .line 167
    invoke-virtual {v0}, Lf/i/a/a/m1/u;->d()I

    move-result v10

    const/high16 v16, -0x80000000

    and-int v16, v10, v16

    if-nez v16, :cond_2b

    .line 168
    invoke-virtual {v0}, Lf/i/a/a/m1/u;->q()J

    move-result-wide v16

    const v18, 0x7fffffff

    and-int v10, v10, v18

    .line 169
    aput v10, v6, v9

    .line 170
    aput-wide v4, v15, v9

    .line 171
    aput-wide v7, v12, v9

    add-long v20, v20, v16

    const-wide/32 v16, 0xf4240

    move-wide/from16 v7, v20

    move/from16 v18, v9

    move-wide/from16 v9, v16

    move/from16 p2, v1

    move-object/from16 v24, v3

    move-object v1, v11

    move-object v3, v12

    move-wide v11, v13

    .line 172
    invoke-static/range {v7 .. v12}, Lf/i/a/a/m1/h0;->h0(JJJ)J

    move-result-wide v7

    .line 173
    aget-wide v9, v3, v18

    sub-long v9, v7, v9

    aput-wide v9, v1, v18

    const/4 v9, 0x4

    .line 174
    invoke-virtual {v0, v9}, Lf/i/a/a/m1/u;->B(I)V

    .line 175
    aget v10, v6, v18

    int-to-long v10, v10

    add-long/2addr v4, v10

    add-int/lit8 v10, v18, 0x1

    move-object v11, v1

    move-object v12, v3

    move v9, v10

    move-object/from16 v3, v24

    move/from16 v1, p2

    goto :goto_17

    .line 176
    :cond_2b
    new-instance v0, Lf/i/a/a/h0;

    const-string v1, "Unhandled indirect reference"

    invoke-direct {v0, v1}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    move-object/from16 v24, v3

    move-object v1, v11

    move-object v3, v12

    .line 177
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v4, Lf/i/a/a/b1/b;

    invoke-direct {v4, v6, v15, v1, v3}, Lf/i/a/a/b1/b;-><init>([I[J[J[J)V

    invoke-static {v0, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 178
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v2, Lf/i/a/a/b1/u/d;->y:J

    .line 179
    iget-object v1, v2, Lf/i/a/a/b1/u/d;->F:Lf/i/a/a/b1/h;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lf/i/a/a/b1/n;

    invoke-interface {v1, v0}, Lf/i/a/a/b1/h;->a(Lf/i/a/a/b1/n;)V

    const/4 v0, 0x1

    .line 180
    iput-boolean v0, v2, Lf/i/a/a/b1/u/d;->I:Z

    goto/16 :goto_1a

    :cond_2d
    move-object/from16 v24, v3

    .line 181
    sget v3, Lf/i/a/a/b1/u/a;->U0:I

    if-ne v0, v3, :cond_32

    .line 182
    iget-object v0, v1, Lf/i/a/a/b1/u/a$b;->g1:Lf/i/a/a/m1/u;

    .line 183
    iget-object v1, v2, Lf/i/a/a/b1/u/d;->G:[Lf/i/a/a/b1/p;

    if-eqz v1, :cond_32

    array-length v1, v1

    if-nez v1, :cond_2e

    goto/16 :goto_1a

    :cond_2e
    const/16 v1, 0xc

    .line 184
    invoke-virtual {v0, v1}, Lf/i/a/a/m1/u;->A(I)V

    .line 185
    invoke-virtual {v0}, Lf/i/a/a/m1/u;->a()I

    move-result v3

    .line 186
    invoke-virtual {v0}, Lf/i/a/a/m1/u;->k()Ljava/lang/String;

    .line 187
    invoke-virtual {v0}, Lf/i/a/a/m1/u;->k()Ljava/lang/String;

    .line 188
    invoke-virtual {v0}, Lf/i/a/a/m1/u;->q()J

    move-result-wide v11

    .line 189
    invoke-virtual {v0}, Lf/i/a/a/m1/u;->q()J

    move-result-wide v7

    const-wide/32 v9, 0xf4240

    invoke-static/range {v7 .. v12}, Lf/i/a/a/m1/h0;->h0(JJJ)J

    move-result-wide v4

    .line 190
    iget v7, v0, Lf/i/a/a/m1/u;->b:I

    .line 191
    iget-object v8, v0, Lf/i/a/a/m1/u;->a:[B

    add-int/lit8 v9, v7, -0x4

    const/4 v10, 0x0

    aput-byte v10, v8, v9

    add-int/lit8 v9, v7, -0x3

    .line 192
    aput-byte v10, v8, v9

    add-int/lit8 v9, v7, -0x2

    .line 193
    aput-byte v10, v8, v9

    add-int/2addr v7, v6

    .line 194
    aput-byte v10, v8, v7

    .line 195
    iget-object v6, v2, Lf/i/a/a/b1/u/d;->G:[Lf/i/a/a/b1/p;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_18
    if-ge v8, v7, :cond_2f

    aget-object v9, v6, v8

    .line 196
    invoke-virtual {v0, v1}, Lf/i/a/a/m1/u;->A(I)V

    .line 197
    invoke-interface {v9, v0, v3}, Lf/i/a/a/b1/p;->a(Lf/i/a/a/m1/u;I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_18

    .line 198
    :cond_2f
    iget-wide v0, v2, Lf/i/a/a/b1/u/d;->y:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v0, v6

    if-eqz v8, :cond_31

    add-long/2addr v0, v4

    .line 199
    iget-object v4, v2, Lf/i/a/a/b1/u/d;->k:Lf/i/a/a/m1/e0;

    if-eqz v4, :cond_30

    .line 200
    invoke-virtual {v4, v0, v1}, Lf/i/a/a/m1/e0;->a(J)J

    move-result-wide v0

    .line 201
    :cond_30
    iget-object v4, v2, Lf/i/a/a/b1/u/d;->G:[Lf/i/a/a/b1/p;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_19
    if-ge v6, v5, :cond_32

    aget-object v7, v4, v6

    const/4 v10, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-wide v8, v0

    move v11, v3

    .line 202
    invoke-interface/range {v7 .. v13}, Lf/i/a/a/b1/p;->c(JIIILf/i/a/a/b1/p$a;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    .line 203
    :cond_31
    iget-object v0, v2, Lf/i/a/a/b1/u/d;->n:Ljava/util/ArrayDeque;

    new-instance v1, Lf/i/a/a/b1/u/d$a;

    invoke-direct {v1, v4, v5, v3}, Lf/i/a/a/b1/u/d$a;-><init>(JI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 204
    iget v0, v2, Lf/i/a/a/b1/u/d;->v:I

    add-int/2addr v0, v3

    iput v0, v2, Lf/i/a/a/b1/u/d;->v:I

    :cond_32
    :goto_1a
    move-object/from16 v0, v19

    goto :goto_1b

    :cond_33
    move-object/from16 v24, v3

    .line 205
    invoke-virtual {v0, v1}, Lf/i/a/a/b1/d;->h(I)V

    .line 206
    :goto_1b
    iget-wide v3, v0, Lf/i/a/a/b1/d;->d:J

    .line 207
    invoke-virtual {v2, v3, v4}, Lf/i/a/a/b1/u/d;->k(J)V

    goto/16 :goto_25

    :cond_34
    move-object/from16 v19, v1

    move-object/from16 v24, v3

    .line 208
    iget v1, v2, Lf/i/a/a/b1/u/d;->s:I

    if-nez v1, :cond_36

    .line 209
    iget-object v1, v2, Lf/i/a/a/b1/u/d;->l:Lf/i/a/a/m1/u;

    iget-object v1, v1, Lf/i/a/a/m1/u;->a:[B

    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v3, v4}, Lf/i/a/a/b1/d;->g([BIIZ)Z

    move-result v1

    if-nez v1, :cond_35

    const/4 v9, 0x0

    goto/16 :goto_24

    .line 210
    :cond_35
    iput v3, v2, Lf/i/a/a/b1/u/d;->s:I

    .line 211
    iget-object v1, v2, Lf/i/a/a/b1/u/d;->l:Lf/i/a/a/m1/u;

    invoke-virtual {v1, v5}, Lf/i/a/a/m1/u;->A(I)V

    .line 212
    iget-object v1, v2, Lf/i/a/a/b1/u/d;->l:Lf/i/a/a/m1/u;

    invoke-virtual {v1}, Lf/i/a/a/m1/u;->q()J

    move-result-wide v3

    iput-wide v3, v2, Lf/i/a/a/b1/u/d;->r:J

    .line 213
    iget-object v1, v2, Lf/i/a/a/b1/u/d;->l:Lf/i/a/a/m1/u;

    invoke-virtual {v1}, Lf/i/a/a/m1/u;->d()I

    move-result v1

    iput v1, v2, Lf/i/a/a/b1/u/d;->q:I

    .line 214
    :cond_36
    iget-wide v3, v2, Lf/i/a/a/b1/u/d;->r:J

    const-wide/16 v7, 0x1

    cmp-long v1, v3, v7

    if-nez v1, :cond_37

    .line 215
    iget-object v1, v2, Lf/i/a/a/b1/u/d;->l:Lf/i/a/a/m1/u;

    iget-object v1, v1, Lf/i/a/a/m1/u;->a:[B

    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 216
    invoke-virtual {v0, v1, v3, v3, v4}, Lf/i/a/a/b1/d;->g([BIIZ)Z

    .line 217
    iget v1, v2, Lf/i/a/a/b1/u/d;->s:I

    add-int/2addr v1, v3

    iput v1, v2, Lf/i/a/a/b1/u/d;->s:I

    .line 218
    iget-object v1, v2, Lf/i/a/a/b1/u/d;->l:Lf/i/a/a/m1/u;

    invoke-virtual {v1}, Lf/i/a/a/m1/u;->t()J

    move-result-wide v3

    iput-wide v3, v2, Lf/i/a/a/b1/u/d;->r:J

    goto :goto_1c

    :cond_37
    const-wide/16 v7, 0x0

    cmp-long v1, v3, v7

    if-nez v1, :cond_39

    .line 219
    iget-wide v3, v0, Lf/i/a/a/b1/d;->c:J

    const-wide/16 v7, -0x1

    cmp-long v1, v3, v7

    if-nez v1, :cond_38

    .line 220
    iget-object v1, v2, Lf/i/a/a/b1/u/d;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_38

    .line 221
    iget-object v1, v2, Lf/i/a/a/b1/u/d;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/b1/u/a$a;

    iget-wide v3, v1, Lf/i/a/a/b1/u/a$a;->g1:J

    :cond_38
    cmp-long v1, v3, v7

    if-eqz v1, :cond_39

    .line 222
    iget-wide v7, v0, Lf/i/a/a/b1/d;->d:J

    sub-long/2addr v3, v7

    .line 223
    iget v1, v2, Lf/i/a/a/b1/u/d;->s:I

    int-to-long v7, v1

    add-long/2addr v3, v7

    iput-wide v3, v2, Lf/i/a/a/b1/u/d;->r:J

    .line 224
    :cond_39
    :goto_1c
    iget-wide v3, v2, Lf/i/a/a/b1/u/d;->r:J

    iget v1, v2, Lf/i/a/a/b1/u/d;->s:I

    int-to-long v7, v1

    cmp-long v1, v3, v7

    if-ltz v1, :cond_48

    .line 225
    iget-wide v3, v0, Lf/i/a/a/b1/d;->d:J

    sub-long/2addr v3, v7

    .line 226
    iget v1, v2, Lf/i/a/a/b1/u/d;->q:I

    sget v5, Lf/i/a/a/b1/u/a;->Y:I

    if-ne v1, v5, :cond_3a

    .line 227
    iget-object v1, v2, Lf/i/a/a/b1/u/d;->e:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v9, 0x0

    :goto_1d
    if-ge v9, v1, :cond_3a

    .line 228
    iget-object v5, v2, Lf/i/a/a/b1/u/d;->e:Landroid/util/SparseArray;

    invoke-virtual {v5, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf/i/a/a/b1/u/d$b;

    iget-object v5, v5, Lf/i/a/a/b1/u/d$b;->b:Lf/i/a/a/b1/u/l;

    .line 229
    iput-wide v3, v5, Lf/i/a/a/b1/u/l;->b:J

    .line 230
    iput-wide v3, v5, Lf/i/a/a/b1/u/l;->d:J

    .line 231
    iput-wide v3, v5, Lf/i/a/a/b1/u/l;->c:J

    add-int/lit8 v9, v9, 0x1

    goto :goto_1d

    .line 232
    :cond_3a
    iget v1, v2, Lf/i/a/a/b1/u/d;->q:I

    sget v5, Lf/i/a/a/b1/u/a;->v:I

    if-ne v1, v5, :cond_3c

    const/4 v5, 0x0

    .line 233
    iput-object v5, v2, Lf/i/a/a/b1/u/d;->z:Lf/i/a/a/b1/u/d$b;

    .line 234
    iget-wide v7, v2, Lf/i/a/a/b1/u/d;->r:J

    add-long/2addr v7, v3

    iput-wide v7, v2, Lf/i/a/a/b1/u/d;->u:J

    .line 235
    iget-boolean v1, v2, Lf/i/a/a/b1/u/d;->I:Z

    if-nez v1, :cond_3b

    .line 236
    iget-object v1, v2, Lf/i/a/a/b1/u/d;->F:Lf/i/a/a/b1/h;

    new-instance v5, Lf/i/a/a/b1/n$b;

    iget-wide v7, v2, Lf/i/a/a/b1/u/d;->x:J

    invoke-direct {v5, v7, v8, v3, v4}, Lf/i/a/a/b1/n$b;-><init>(JJ)V

    invoke-interface {v1, v5}, Lf/i/a/a/b1/h;->a(Lf/i/a/a/b1/n;)V

    const/4 v1, 0x1

    .line 237
    iput-boolean v1, v2, Lf/i/a/a/b1/u/d;->I:Z

    :cond_3b
    const/4 v1, 0x2

    .line 238
    iput v1, v2, Lf/i/a/a/b1/u/d;->p:I

    :goto_1e
    const/4 v1, 0x1

    goto/16 :goto_23

    .line 239
    :cond_3c
    sget v3, Lf/i/a/a/b1/u/a;->R:I

    if-eq v1, v3, :cond_3e

    sget v3, Lf/i/a/a/b1/u/a;->T:I

    if-eq v1, v3, :cond_3e

    sget v3, Lf/i/a/a/b1/u/a;->U:I

    if-eq v1, v3, :cond_3e

    sget v3, Lf/i/a/a/b1/u/a;->V:I

    if-eq v1, v3, :cond_3e

    sget v3, Lf/i/a/a/b1/u/a;->W:I

    if-eq v1, v3, :cond_3e

    sget v3, Lf/i/a/a/b1/u/a;->Y:I

    if-eq v1, v3, :cond_3e

    sget v3, Lf/i/a/a/b1/u/a;->Z:I

    if-eq v1, v3, :cond_3e

    sget v3, Lf/i/a/a/b1/u/a;->a0:I

    if-eq v1, v3, :cond_3e

    sget v3, Lf/i/a/a/b1/u/a;->d0:I

    if-ne v1, v3, :cond_3d

    goto :goto_1f

    :cond_3d
    const/4 v1, 0x0

    goto :goto_20

    :cond_3e
    :goto_1f
    const/4 v1, 0x1

    :goto_20
    if-eqz v1, :cond_40

    .line 240
    iget-wide v3, v0, Lf/i/a/a/b1/d;->d:J

    .line 241
    iget-wide v7, v2, Lf/i/a/a/b1/u/d;->r:J

    add-long/2addr v3, v7

    const-wide/16 v7, 0x8

    sub-long/2addr v3, v7

    .line 242
    iget-object v1, v2, Lf/i/a/a/b1/u/d;->m:Ljava/util/ArrayDeque;

    new-instance v5, Lf/i/a/a/b1/u/a$a;

    iget v7, v2, Lf/i/a/a/b1/u/d;->q:I

    invoke-direct {v5, v7, v3, v4}, Lf/i/a/a/b1/u/a$a;-><init>(IJ)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 243
    iget-wide v7, v2, Lf/i/a/a/b1/u/d;->r:J

    iget v1, v2, Lf/i/a/a/b1/u/d;->s:I

    int-to-long v9, v1

    cmp-long v1, v7, v9

    if-nez v1, :cond_3f

    .line 244
    invoke-virtual {v2, v3, v4}, Lf/i/a/a/b1/u/d;->k(J)V

    goto :goto_1e

    .line 245
    :cond_3f
    invoke-virtual/range {v24 .. v24}, Lf/i/a/a/b1/u/d;->b()V

    goto :goto_1e

    .line 246
    :cond_40
    iget v1, v2, Lf/i/a/a/b1/u/d;->q:I

    .line 247
    sget v3, Lf/i/a/a/b1/u/a;->g0:I

    if-eq v1, v3, :cond_42

    sget v3, Lf/i/a/a/b1/u/a;->f0:I

    if-eq v1, v3, :cond_42

    sget v3, Lf/i/a/a/b1/u/a;->S:I

    if-eq v1, v3, :cond_42

    sget v3, Lf/i/a/a/b1/u/a;->Q:I

    if-eq v1, v3, :cond_42

    sget v3, Lf/i/a/a/b1/u/a;->h0:I

    if-eq v1, v3, :cond_42

    sget v3, Lf/i/a/a/b1/u/a;->M:I

    if-eq v1, v3, :cond_42

    sget v3, Lf/i/a/a/b1/u/a;->N:I

    if-eq v1, v3, :cond_42

    sget v3, Lf/i/a/a/b1/u/a;->c0:I

    if-eq v1, v3, :cond_42

    sget v3, Lf/i/a/a/b1/u/a;->O:I

    if-eq v1, v3, :cond_42

    sget v3, Lf/i/a/a/b1/u/a;->P:I

    if-eq v1, v3, :cond_42

    sget v3, Lf/i/a/a/b1/u/a;->i0:I

    if-eq v1, v3, :cond_42

    sget v3, Lf/i/a/a/b1/u/a;->q0:I

    if-eq v1, v3, :cond_42

    sget v3, Lf/i/a/a/b1/u/a;->r0:I

    if-eq v1, v3, :cond_42

    sget v3, Lf/i/a/a/b1/u/a;->v0:I

    if-eq v1, v3, :cond_42

    sget v3, Lf/i/a/a/b1/u/a;->u0:I

    if-eq v1, v3, :cond_42

    sget v3, Lf/i/a/a/b1/u/a;->s0:I

    if-eq v1, v3, :cond_42

    sget v3, Lf/i/a/a/b1/u/a;->t0:I

    if-eq v1, v3, :cond_42

    sget v3, Lf/i/a/a/b1/u/a;->e0:I

    if-eq v1, v3, :cond_42

    sget v3, Lf/i/a/a/b1/u/a;->b0:I

    if-eq v1, v3, :cond_42

    sget v3, Lf/i/a/a/b1/u/a;->U0:I

    if-ne v1, v3, :cond_41

    goto :goto_21

    :cond_41
    const/4 v1, 0x0

    goto :goto_22

    :cond_42
    :goto_21
    const/4 v1, 0x1

    :goto_22
    const-wide/32 v3, 0x7fffffff

    if-eqz v1, :cond_45

    .line 248
    iget v1, v2, Lf/i/a/a/b1/u/d;->s:I

    const/16 v5, 0x8

    if-ne v1, v5, :cond_44

    .line 249
    iget-wide v7, v2, Lf/i/a/a/b1/u/d;->r:J

    cmp-long v1, v7, v3

    if-gtz v1, :cond_43

    .line 250
    new-instance v1, Lf/i/a/a/m1/u;

    long-to-int v3, v7

    invoke-direct {v1, v3}, Lf/i/a/a/m1/u;-><init>(I)V

    iput-object v1, v2, Lf/i/a/a/b1/u/d;->t:Lf/i/a/a/m1/u;

    .line 251
    iget-object v3, v2, Lf/i/a/a/b1/u/d;->l:Lf/i/a/a/m1/u;

    iget-object v3, v3, Lf/i/a/a/m1/u;->a:[B

    iget-object v1, v1, Lf/i/a/a/m1/u;->a:[B

    const/4 v4, 0x0

    invoke-static {v3, v4, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x1

    .line 252
    iput v1, v2, Lf/i/a/a/b1/u/d;->p:I

    goto :goto_23

    .line 253
    :cond_43
    new-instance v0, Lf/i/a/a/h0;

    const-string v1, "Leaf atom with length > 2147483647 (unsupported)."

    invoke-direct {v0, v1}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_44
    new-instance v0, Lf/i/a/a/h0;

    const-string v1, "Leaf atom defines extended atom size (unsupported)."

    invoke-direct {v0, v1}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_45
    iget-wide v7, v2, Lf/i/a/a/b1/u/d;->r:J

    cmp-long v1, v7, v3

    if-gtz v1, :cond_47

    const/4 v1, 0x0

    .line 256
    iput-object v1, v2, Lf/i/a/a/b1/u/d;->t:Lf/i/a/a/m1/u;

    const/4 v1, 0x1

    .line 257
    iput v1, v2, Lf/i/a/a/b1/u/d;->p:I

    :goto_23
    const/4 v9, 0x1

    :goto_24
    if-nez v9, :cond_46

    return v6

    :cond_46
    :goto_25
    move-object/from16 v1, v19

    move-object/from16 v3, v24

    goto/16 :goto_0

    .line 258
    :cond_47
    new-instance v0, Lf/i/a/a/h0;

    const-string v1, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-direct {v0, v1}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_48
    new-instance v0, Lf/i/a/a/h0;

    const-string v1, "Atom size less than header length (unsupported)."

    invoke-direct {v0, v1}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(Lf/i/a/a/b1/h;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lf/i/a/a/b1/u/d;->F:Lf/i/a/a/b1/h;

    .line 2
    iget-object v0, p0, Lf/i/a/a/b1/u/d;->b:Lf/i/a/a/b1/u/j;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lf/i/a/a/b1/u/d$b;

    iget v0, v0, Lf/i/a/a/b1/u/j;->b:I

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0}, Lf/i/a/a/b1/h;->q(II)Lf/i/a/a/b1/p;

    move-result-object p1

    invoke-direct {v1, p1}, Lf/i/a/a/b1/u/d$b;-><init>(Lf/i/a/a/b1/p;)V

    .line 4
    iget-object p1, p0, Lf/i/a/a/b1/u/d;->b:Lf/i/a/a/b1/u/j;

    new-instance v0, Lf/i/a/a/b1/u/c;

    invoke-direct {v0, v2, v2, v2, v2}, Lf/i/a/a/b1/u/c;-><init>(IIII)V

    invoke-virtual {v1, p1, v0}, Lf/i/a/a/b1/u/d$b;->b(Lf/i/a/a/b1/u/j;Lf/i/a/a/b1/u/c;)V

    .line 5
    iget-object p1, p0, Lf/i/a/a/b1/u/d;->e:Landroid/util/SparseArray;

    invoke-virtual {p1, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    invoke-virtual {p0}, Lf/i/a/a/b1/u/d;->h()V

    .line 7
    iget-object p1, p0, Lf/i/a/a/b1/u/d;->F:Lf/i/a/a/b1/h;

    invoke-interface {p1}, Lf/i/a/a/b1/h;->d()V

    :cond_0
    return-void
.end method

.method public final e(Landroid/util/SparseArray;I)Lf/i/a/a/b1/u/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lf/i/a/a/b1/u/c;",
            ">;I)",
            "Lf/i/a/a/b1/u/c;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/i/a/a/b1/u/c;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lf/i/a/a/b1/u/c;

    return-object p1
.end method

.method public f(JJ)V
    .locals 2

    .line 1
    iget-object p1, p0, Lf/i/a/a/b1/u/d;->e:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 2
    iget-object v1, p0, Lf/i/a/a/b1/u/d;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/b1/u/d$b;

    invoke-virtual {v1}, Lf/i/a/a/b1/u/d$b;->d()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lf/i/a/a/b1/u/d;->n:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 4
    iput p2, p0, Lf/i/a/a/b1/u/d;->v:I

    .line 5
    iput-wide p3, p0, Lf/i/a/a/b1/u/d;->w:J

    .line 6
    iget-object p1, p0, Lf/i/a/a/b1/u/d;->m:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 7
    iput-boolean p2, p0, Lf/i/a/a/b1/u/d;->E:Z

    .line 8
    invoke-virtual {p0}, Lf/i/a/a/b1/u/d;->b()V

    return-void
.end method

.method public final h()V
    .locals 8

    .line 1
    iget-object v0, p0, Lf/i/a/a/b1/u/d;->G:[Lf/i/a/a/b1/p;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [Lf/i/a/a/b1/p;

    .line 2
    iput-object v0, p0, Lf/i/a/a/b1/u/d;->G:[Lf/i/a/a/b1/p;

    .line 3
    iget-object v3, p0, Lf/i/a/a/b1/u/d;->o:Lf/i/a/a/b1/p;

    if-eqz v3, :cond_0

    aput-object v3, v0, v1

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget v3, p0, Lf/i/a/a/b1/u/d;->a:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 5
    iget-object v3, p0, Lf/i/a/a/b1/u/d;->G:[Lf/i/a/a/b1/p;

    add-int/lit8 v5, v0, 0x1

    iget-object v6, p0, Lf/i/a/a/b1/u/d;->F:Lf/i/a/a/b1/h;

    iget-object v7, p0, Lf/i/a/a/b1/u/d;->e:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    invoke-interface {v6, v7, v4}, Lf/i/a/a/b1/h;->q(II)Lf/i/a/a/b1/p;

    move-result-object v4

    aput-object v4, v3, v0

    move v0, v5

    .line 7
    :cond_1
    iget-object v3, p0, Lf/i/a/a/b1/u/d;->G:[Lf/i/a/a/b1/p;

    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf/i/a/a/b1/p;

    iput-object v0, p0, Lf/i/a/a/b1/u/d;->G:[Lf/i/a/a/b1/p;

    .line 8
    array-length v3, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    .line 9
    sget-object v6, Lf/i/a/a/b1/u/d;->L:Lf/i/a/a/b0;

    invoke-interface {v5, v6}, Lf/i/a/a/b1/p;->d(Lf/i/a/a/b0;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 10
    :cond_2
    iget-object v0, p0, Lf/i/a/a/b1/u/d;->H:[Lf/i/a/a/b1/p;

    if-nez v0, :cond_3

    .line 11
    iget-object v0, p0, Lf/i/a/a/b1/u/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lf/i/a/a/b1/p;

    iput-object v0, p0, Lf/i/a/a/b1/u/d;->H:[Lf/i/a/a/b1/p;

    .line 12
    :goto_2
    iget-object v0, p0, Lf/i/a/a/b1/u/d;->H:[Lf/i/a/a/b1/p;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    .line 13
    iget-object v0, p0, Lf/i/a/a/b1/u/d;->F:Lf/i/a/a/b1/h;

    iget-object v3, p0, Lf/i/a/a/b1/u/d;->e:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/2addr v3, v2

    add-int/2addr v3, v1

    const/4 v4, 0x3

    invoke-interface {v0, v3, v4}, Lf/i/a/a/b1/h;->q(II)Lf/i/a/a/b1/p;

    move-result-object v0

    .line 14
    iget-object v3, p0, Lf/i/a/a/b1/u/d;->c:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf/i/a/a/b0;

    invoke-interface {v0, v3}, Lf/i/a/a/b1/p;->d(Lf/i/a/a/b0;)V

    .line 15
    iget-object v3, p0, Lf/i/a/a/b1/u/d;->H:[Lf/i/a/a/b1/p;

    aput-object v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public i(Lf/i/a/a/b1/d;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p1, v0}, Lf/i/a/a/b1/u/i;->a(Lf/i/a/a/b1/d;Z)Z

    move-result p1

    return p1
.end method

.method public final k(J)V
    .locals 48
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/h0;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    :cond_0
    :goto_0
    iget-object v1, v0, Lf/i/a/a/b1/u/d;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_59

    iget-object v1, v0, Lf/i/a/a/b1/u/d;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/b1/u/a$a;

    iget-wide v1, v1, Lf/i/a/a/b1/u/a$a;->g1:J

    cmp-long v3, v1, p1

    if-nez v3, :cond_59

    .line 2
    iget-object v1, v0, Lf/i/a/a/b1/u/d;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/b1/u/a$a;

    .line 3
    iget v2, v1, Lf/i/a/a/b1/u/a;->a:I

    sget v3, Lf/i/a/a/b1/u/a;->R:I

    const/16 v4, 0xc

    const/16 v5, 0x8

    if-ne v2, v3, :cond_d

    .line 4
    iget-object v2, v0, Lf/i/a/a/b1/u/d;->b:Lf/i/a/a/b1/u/j;

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v3, "Unexpected moov box."

    invoke-static {v2, v3}, Lc/a/a/b/g/h;->w(ZLjava/lang/Object;)V

    .line 5
    iget-object v2, v0, Lf/i/a/a/b1/u/d;->d:Lf/i/a/a/z0/e;

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v2, v1, Lf/i/a/a/b1/u/a$a;->h1:Ljava/util/List;

    .line 6
    invoke-static {v2}, Lf/i/a/a/b1/u/d;->g(Ljava/util/List;)Lf/i/a/a/z0/e;

    move-result-object v2

    .line 7
    :goto_2
    sget v3, Lf/i/a/a/b1/u/a;->a0:I

    invoke-virtual {v1, v3}, Lf/i/a/a/b1/u/a$a;->d(I)Lf/i/a/a/b1/u/a$a;

    move-result-object v3

    .line 8
    new-instance v13, Landroid/util/SparseArray;

    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V

    .line 9
    iget-object v6, v3, Lf/i/a/a/b1/u/a$a;->h1:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v9, 0x0

    move-wide v14, v7

    :goto_3
    if-ge v9, v6, :cond_6

    .line 10
    iget-object v7, v3, Lf/i/a/a/b1/u/a$a;->h1:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lf/i/a/a/b1/u/a$b;

    .line 11
    iget v8, v7, Lf/i/a/a/b1/u/a;->a:I

    sget v10, Lf/i/a/a/b1/u/a;->O:I

    if-ne v8, v10, :cond_3

    .line 12
    iget-object v7, v7, Lf/i/a/a/b1/u/a$b;->g1:Lf/i/a/a/m1/u;

    .line 13
    invoke-virtual {v7, v4}, Lf/i/a/a/m1/u;->A(I)V

    .line 14
    invoke-virtual {v7}, Lf/i/a/a/m1/u;->d()I

    move-result v4

    .line 15
    invoke-virtual {v7}, Lf/i/a/a/m1/u;->s()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    .line 16
    invoke-virtual {v7}, Lf/i/a/a/m1/u;->s()I

    move-result v10

    .line 17
    invoke-virtual {v7}, Lf/i/a/a/m1/u;->s()I

    move-result v11

    .line 18
    invoke-virtual {v7}, Lf/i/a/a/m1/u;->d()I

    move-result v7

    .line 19
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v12, Lf/i/a/a/b1/u/c;

    invoke-direct {v12, v8, v10, v11, v7}, Lf/i/a/a/b1/u/c;-><init>(IIII)V

    invoke-static {v4, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 20
    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v13, v7, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_5

    .line 21
    :cond_3
    sget v4, Lf/i/a/a/b1/u/a;->b0:I

    if-ne v8, v4, :cond_5

    .line 22
    iget-object v4, v7, Lf/i/a/a/b1/u/a$b;->g1:Lf/i/a/a/m1/u;

    .line 23
    invoke-virtual {v4, v5}, Lf/i/a/a/m1/u;->A(I)V

    .line 24
    invoke-virtual {v4}, Lf/i/a/a/m1/u;->d()I

    move-result v7

    .line 25
    invoke-static {v7}, Lf/i/a/a/b1/u/a;->c(I)I

    move-result v7

    if-nez v7, :cond_4

    .line 26
    invoke-virtual {v4}, Lf/i/a/a/m1/u;->q()J

    move-result-wide v7

    goto :goto_4

    :cond_4
    invoke-virtual {v4}, Lf/i/a/a/m1/u;->t()J

    move-result-wide v7

    :goto_4
    move-wide v14, v7

    :cond_5
    :goto_5
    add-int/lit8 v9, v9, 0x1

    const/16 v4, 0xc

    goto :goto_3

    .line 27
    :cond_6
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 28
    iget-object v4, v1, Lf/i/a/a/b1/u/a$a;->i1:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v4, :cond_9

    .line 29
    iget-object v6, v1, Lf/i/a/a/b1/u/a$a;->i1:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lf/i/a/a/b1/u/a$a;

    .line 30
    iget v7, v6, Lf/i/a/a/b1/u/a;->a:I

    sget v8, Lf/i/a/a/b1/u/a;->T:I

    if-ne v7, v8, :cond_8

    .line 31
    sget v7, Lf/i/a/a/b1/u/a;->S:I

    .line 32
    invoke-virtual {v1, v7}, Lf/i/a/a/b1/u/a$a;->e(I)Lf/i/a/a/b1/u/a$b;

    move-result-object v7

    iget v8, v0, Lf/i/a/a/b1/u/d;->a:I

    and-int/lit8 v8, v8, 0x10

    if-eqz v8, :cond_7

    const/4 v8, 0x1

    const/4 v11, 0x1

    goto :goto_7

    :cond_7
    const/4 v8, 0x0

    const/4 v11, 0x0

    :goto_7
    const/4 v12, 0x0

    move-wide v8, v14

    move-object v10, v2

    .line 33
    invoke-static/range {v6 .. v12}, Lf/i/a/a/b1/u/b;->e(Lf/i/a/a/b1/u/a$a;Lf/i/a/a/b1/u/a$b;JLf/i/a/a/z0/e;ZZ)Lf/i/a/a/b1/u/j;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 34
    iget v7, v6, Lf/i/a/a/b1/u/j;->a:I

    invoke-virtual {v3, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 35
    :cond_9
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 36
    iget-object v2, v0, Lf/i/a/a/b1/u/d;->e:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_b

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_a

    .line 37
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf/i/a/a/b1/u/j;

    .line 38
    new-instance v5, Lf/i/a/a/b1/u/d$b;

    iget-object v6, v0, Lf/i/a/a/b1/u/d;->F:Lf/i/a/a/b1/h;

    iget v7, v4, Lf/i/a/a/b1/u/j;->b:I

    invoke-interface {v6, v2, v7}, Lf/i/a/a/b1/h;->q(II)Lf/i/a/a/b1/p;

    move-result-object v6

    invoke-direct {v5, v6}, Lf/i/a/a/b1/u/d$b;-><init>(Lf/i/a/a/b1/p;)V

    .line 39
    iget v6, v4, Lf/i/a/a/b1/u/j;->a:I

    invoke-virtual {v0, v13, v6}, Lf/i/a/a/b1/u/d;->e(Landroid/util/SparseArray;I)Lf/i/a/a/b1/u/c;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lf/i/a/a/b1/u/d$b;->b(Lf/i/a/a/b1/u/j;Lf/i/a/a/b1/u/c;)V

    .line 40
    iget-object v6, v0, Lf/i/a/a/b1/u/d;->e:Landroid/util/SparseArray;

    iget v7, v4, Lf/i/a/a/b1/u/j;->a:I

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 41
    iget-wide v5, v0, Lf/i/a/a/b1/u/d;->x:J

    iget-wide v7, v4, Lf/i/a/a/b1/u/j;->e:J

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v0, Lf/i/a/a/b1/u/d;->x:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 42
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/b1/u/d;->h()V

    .line 43
    iget-object v1, v0, Lf/i/a/a/b1/u/d;->F:Lf/i/a/a/b1/h;

    invoke-interface {v1}, Lf/i/a/a/b1/h;->d()V

    goto/16 :goto_0

    .line 44
    :cond_b
    iget-object v2, v0, Lf/i/a/a/b1/u/d;->e:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ne v2, v1, :cond_c

    const/4 v2, 0x1

    goto :goto_9

    :cond_c
    const/4 v2, 0x0

    :goto_9
    invoke-static {v2}, Lc/a/a/b/g/h;->v(Z)V

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_0

    .line 45
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf/i/a/a/b1/u/j;

    .line 46
    iget-object v5, v0, Lf/i/a/a/b1/u/d;->e:Landroid/util/SparseArray;

    iget v6, v4, Lf/i/a/a/b1/u/j;->a:I

    .line 47
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf/i/a/a/b1/u/d$b;

    iget v6, v4, Lf/i/a/a/b1/u/j;->a:I

    .line 48
    invoke-virtual {v0, v13, v6}, Lf/i/a/a/b1/u/d;->e(Landroid/util/SparseArray;I)Lf/i/a/a/b1/u/c;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lf/i/a/a/b1/u/d$b;->b(Lf/i/a/a/b1/u/j;Lf/i/a/a/b1/u/c;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 49
    :cond_d
    sget v3, Lf/i/a/a/b1/u/a;->Y:I

    if-ne v2, v3, :cond_58

    .line 50
    iget-object v2, v0, Lf/i/a/a/b1/u/d;->e:Landroid/util/SparseArray;

    iget v3, v0, Lf/i/a/a/b1/u/d;->a:I

    iget-object v4, v0, Lf/i/a/a/b1/u/d;->i:[B

    .line 51
    iget-object v6, v1, Lf/i/a/a/b1/u/a$a;->i1:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_b
    if-ge v7, v6, :cond_50

    .line 52
    iget-object v0, v1, Lf/i/a/a/b1/u/a$a;->i1:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/b1/u/a$a;

    .line 53
    iget v8, v0, Lf/i/a/a/b1/u/a;->a:I

    sget v9, Lf/i/a/a/b1/u/a;->Z:I

    if-ne v8, v9, :cond_4f

    .line 54
    sget v8, Lf/i/a/a/b1/u/a;->N:I

    invoke-virtual {v0, v8}, Lf/i/a/a/b1/u/a$a;->e(I)Lf/i/a/a/b1/u/a$b;

    move-result-object v8

    .line 55
    iget-object v8, v8, Lf/i/a/a/b1/u/a$b;->g1:Lf/i/a/a/m1/u;

    .line 56
    invoke-virtual {v8, v5}, Lf/i/a/a/m1/u;->A(I)V

    .line 57
    invoke-virtual {v8}, Lf/i/a/a/m1/u;->d()I

    move-result v9

    .line 58
    invoke-static {v9}, Lf/i/a/a/b1/u/a;->b(I)I

    move-result v9

    .line 59
    invoke-virtual {v8}, Lf/i/a/a/m1/u;->d()I

    move-result v10

    .line 60
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_e

    const/4 v10, 0x0

    .line 61
    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lf/i/a/a/b1/u/d$b;

    goto :goto_c

    .line 62
    :cond_e
    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lf/i/a/a/b1/u/d$b;

    :goto_c
    if-nez v10, :cond_f

    const/4 v10, 0x0

    goto :goto_11

    :cond_f
    and-int/lit8 v11, v9, 0x1

    if-eqz v11, :cond_10

    .line 63
    invoke-virtual {v8}, Lf/i/a/a/m1/u;->t()J

    move-result-wide v11

    .line 64
    iget-object v13, v10, Lf/i/a/a/b1/u/d$b;->b:Lf/i/a/a/b1/u/l;

    iput-wide v11, v13, Lf/i/a/a/b1/u/l;->c:J

    .line 65
    iput-wide v11, v13, Lf/i/a/a/b1/u/l;->d:J

    .line 66
    :cond_10
    iget-object v11, v10, Lf/i/a/a/b1/u/d$b;->d:Lf/i/a/a/b1/u/c;

    and-int/lit8 v12, v9, 0x2

    if-eqz v12, :cond_11

    .line 67
    invoke-virtual {v8}, Lf/i/a/a/m1/u;->s()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    goto :goto_d

    :cond_11
    iget v12, v11, Lf/i/a/a/b1/u/c;->a:I

    :goto_d
    and-int/lit8 v13, v9, 0x8

    if-eqz v13, :cond_12

    .line 68
    invoke-virtual {v8}, Lf/i/a/a/m1/u;->s()I

    move-result v13

    goto :goto_e

    :cond_12
    iget v13, v11, Lf/i/a/a/b1/u/c;->b:I

    :goto_e
    and-int/lit8 v14, v9, 0x10

    if-eqz v14, :cond_13

    .line 69
    invoke-virtual {v8}, Lf/i/a/a/m1/u;->s()I

    move-result v14

    goto :goto_f

    :cond_13
    iget v14, v11, Lf/i/a/a/b1/u/c;->c:I

    :goto_f
    and-int/lit8 v9, v9, 0x20

    if-eqz v9, :cond_14

    .line 70
    invoke-virtual {v8}, Lf/i/a/a/m1/u;->s()I

    move-result v8

    goto :goto_10

    :cond_14
    iget v8, v11, Lf/i/a/a/b1/u/c;->d:I

    .line 71
    :goto_10
    iget-object v9, v10, Lf/i/a/a/b1/u/d$b;->b:Lf/i/a/a/b1/u/l;

    new-instance v11, Lf/i/a/a/b1/u/c;

    invoke-direct {v11, v12, v13, v14, v8}, Lf/i/a/a/b1/u/c;-><init>(IIII)V

    iput-object v11, v9, Lf/i/a/a/b1/u/l;->a:Lf/i/a/a/b1/u/c;

    :goto_11
    if-nez v10, :cond_15

    goto/16 :goto_31

    .line 72
    :cond_15
    iget-object v8, v10, Lf/i/a/a/b1/u/d$b;->b:Lf/i/a/a/b1/u/l;

    .line 73
    iget-wide v11, v8, Lf/i/a/a/b1/u/l;->s:J

    .line 74
    invoke-virtual {v10}, Lf/i/a/a/b1/u/d$b;->d()V

    .line 75
    sget v9, Lf/i/a/a/b1/u/a;->M:I

    invoke-virtual {v0, v9}, Lf/i/a/a/b1/u/a$a;->e(I)Lf/i/a/a/b1/u/a$b;

    move-result-object v9

    if-eqz v9, :cond_17

    and-int/lit8 v9, v3, 0x2

    if-nez v9, :cond_17

    .line 76
    sget v9, Lf/i/a/a/b1/u/a;->M:I

    invoke-virtual {v0, v9}, Lf/i/a/a/b1/u/a$a;->e(I)Lf/i/a/a/b1/u/a$b;

    move-result-object v9

    iget-object v9, v9, Lf/i/a/a/b1/u/a$b;->g1:Lf/i/a/a/m1/u;

    .line 77
    invoke-virtual {v9, v5}, Lf/i/a/a/m1/u;->A(I)V

    .line 78
    invoke-virtual {v9}, Lf/i/a/a/m1/u;->d()I

    move-result v5

    .line 79
    invoke-static {v5}, Lf/i/a/a/b1/u/a;->c(I)I

    move-result v5

    const/4 v11, 0x1

    if-ne v5, v11, :cond_16

    .line 80
    invoke-virtual {v9}, Lf/i/a/a/m1/u;->t()J

    move-result-wide v11

    goto :goto_12

    :cond_16
    invoke-virtual {v9}, Lf/i/a/a/m1/u;->q()J

    move-result-wide v11

    .line 81
    :cond_17
    :goto_12
    iget-object v5, v0, Lf/i/a/a/b1/u/a$a;->h1:Ljava/util/List;

    .line 82
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_13
    if-ge v15, v9, :cond_19

    .line 83
    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v2

    move-object/from16 v2, v16

    check-cast v2, Lf/i/a/a/b1/u/a$b;

    move/from16 v16, v6

    .line 84
    iget v6, v2, Lf/i/a/a/b1/u/a;->a:I

    move-wide/from16 v18, v11

    sget v11, Lf/i/a/a/b1/u/a;->P:I

    if-ne v6, v11, :cond_18

    .line 85
    iget-object v2, v2, Lf/i/a/a/b1/u/a$b;->g1:Lf/i/a/a/m1/u;

    const/16 v6, 0xc

    .line 86
    invoke-virtual {v2, v6}, Lf/i/a/a/m1/u;->A(I)V

    .line 87
    invoke-virtual {v2}, Lf/i/a/a/m1/u;->s()I

    move-result v2

    if-lez v2, :cond_18

    add-int/2addr v13, v2

    add-int/lit8 v14, v14, 0x1

    :cond_18
    add-int/lit8 v15, v15, 0x1

    move/from16 v6, v16

    move-object/from16 v2, v17

    move-wide/from16 v11, v18

    goto :goto_13

    :cond_19
    move-object/from16 v17, v2

    move/from16 v16, v6

    move-wide/from16 v18, v11

    const/4 v2, 0x0

    .line 88
    iput v2, v10, Lf/i/a/a/b1/u/d$b;->g:I

    .line 89
    iput v2, v10, Lf/i/a/a/b1/u/d$b;->f:I

    .line 90
    iput v2, v10, Lf/i/a/a/b1/u/d$b;->e:I

    .line 91
    iget-object v2, v10, Lf/i/a/a/b1/u/d$b;->b:Lf/i/a/a/b1/u/l;

    .line 92
    iput v14, v2, Lf/i/a/a/b1/u/l;->e:I

    .line 93
    iput v13, v2, Lf/i/a/a/b1/u/l;->f:I

    .line 94
    iget-object v6, v2, Lf/i/a/a/b1/u/l;->h:[I

    if-eqz v6, :cond_1a

    array-length v6, v6

    if-ge v6, v14, :cond_1b

    .line 95
    :cond_1a
    new-array v6, v14, [J

    iput-object v6, v2, Lf/i/a/a/b1/u/l;->g:[J

    .line 96
    new-array v6, v14, [I

    iput-object v6, v2, Lf/i/a/a/b1/u/l;->h:[I

    .line 97
    :cond_1b
    iget-object v6, v2, Lf/i/a/a/b1/u/l;->i:[I

    if-eqz v6, :cond_1c

    array-length v6, v6

    if-ge v6, v13, :cond_1d

    :cond_1c
    mul-int/lit8 v13, v13, 0x7d

    .line 98
    div-int/lit8 v13, v13, 0x64

    .line 99
    new-array v6, v13, [I

    iput-object v6, v2, Lf/i/a/a/b1/u/l;->i:[I

    .line 100
    new-array v6, v13, [I

    iput-object v6, v2, Lf/i/a/a/b1/u/l;->j:[I

    .line 101
    new-array v6, v13, [J

    iput-object v6, v2, Lf/i/a/a/b1/u/l;->k:[J

    .line 102
    new-array v6, v13, [Z

    iput-object v6, v2, Lf/i/a/a/b1/u/l;->l:[Z

    .line 103
    new-array v6, v13, [Z

    iput-object v6, v2, Lf/i/a/a/b1/u/l;->n:[Z

    :cond_1d
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    :goto_14
    if-ge v2, v9, :cond_32

    .line 104
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lf/i/a/a/b1/u/a$b;

    .line 105
    iget v13, v12, Lf/i/a/a/b1/u/a;->a:I

    sget v14, Lf/i/a/a/b1/u/a;->P:I

    if-ne v13, v14, :cond_31

    add-int/lit8 v13, v11, 0x1

    .line 106
    iget-object v12, v12, Lf/i/a/a/b1/u/a$b;->g1:Lf/i/a/a/m1/u;

    const/16 v14, 0x8

    .line 107
    invoke-virtual {v12, v14}, Lf/i/a/a/m1/u;->A(I)V

    .line 108
    invoke-virtual {v12}, Lf/i/a/a/m1/u;->d()I

    move-result v14

    .line 109
    invoke-static {v14}, Lf/i/a/a/b1/u/a;->b(I)I

    move-result v14

    .line 110
    iget-object v15, v10, Lf/i/a/a/b1/u/d$b;->c:Lf/i/a/a/b1/u/j;

    move-object/from16 v20, v5

    .line 111
    iget-object v5, v10, Lf/i/a/a/b1/u/d$b;->b:Lf/i/a/a/b1/u/l;

    move/from16 v21, v9

    .line 112
    iget-object v9, v5, Lf/i/a/a/b1/u/l;->a:Lf/i/a/a/b1/u/c;

    move/from16 v22, v13

    .line 113
    iget-object v13, v5, Lf/i/a/a/b1/u/l;->h:[I

    invoke-virtual {v12}, Lf/i/a/a/m1/u;->s()I

    move-result v23

    aput v23, v13, v11

    .line 114
    iget-object v13, v5, Lf/i/a/a/b1/u/l;->g:[J

    move-object/from16 v24, v0

    move-object/from16 v23, v1

    iget-wide v0, v5, Lf/i/a/a/b1/u/l;->c:J

    aput-wide v0, v13, v11

    and-int/lit8 v0, v14, 0x1

    if-eqz v0, :cond_1e

    .line 115
    aget-wide v0, v13, v11

    move/from16 v25, v7

    invoke-virtual {v12}, Lf/i/a/a/m1/u;->d()I

    move-result v7

    move-object/from16 v26, v8

    int-to-long v7, v7

    add-long/2addr v0, v7

    aput-wide v0, v13, v11

    goto :goto_15

    :cond_1e
    move/from16 v25, v7

    move-object/from16 v26, v8

    :goto_15
    and-int/lit8 v0, v14, 0x4

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_16

    :cond_1f
    const/4 v0, 0x0

    .line 116
    :goto_16
    iget v1, v9, Lf/i/a/a/b1/u/c;->d:I

    if-eqz v0, :cond_20

    .line 117
    invoke-virtual {v12}, Lf/i/a/a/m1/u;->s()I

    move-result v1

    :cond_20
    and-int/lit16 v7, v14, 0x100

    if-eqz v7, :cond_21

    const/4 v7, 0x1

    goto :goto_17

    :cond_21
    const/4 v7, 0x0

    :goto_17
    and-int/lit16 v8, v14, 0x200

    if-eqz v8, :cond_22

    const/4 v8, 0x1

    goto :goto_18

    :cond_22
    const/4 v8, 0x0

    :goto_18
    and-int/lit16 v13, v14, 0x400

    if-eqz v13, :cond_23

    const/4 v13, 0x1

    goto :goto_19

    :cond_23
    const/4 v13, 0x0

    :goto_19
    and-int/lit16 v14, v14, 0x800

    if-eqz v14, :cond_24

    const/4 v14, 0x1

    goto :goto_1a

    :cond_24
    const/4 v14, 0x0

    :goto_1a
    move/from16 v27, v1

    .line 118
    iget-object v1, v15, Lf/i/a/a/b1/u/j;->h:[J

    if-eqz v1, :cond_25

    move-object/from16 v28, v4

    array-length v4, v1

    move-object/from16 v29, v10

    const/4 v10, 0x1

    if-ne v4, v10, :cond_26

    const/4 v4, 0x0

    aget-wide v30, v1, v4

    const-wide/16 v32, 0x0

    cmp-long v1, v30, v32

    if-nez v1, :cond_26

    .line 119
    iget-object v1, v15, Lf/i/a/a/b1/u/j;->i:[J

    aget-wide v30, v1, v4

    const-wide/16 v32, 0x3e8

    move v4, v2

    iget-wide v1, v15, Lf/i/a/a/b1/u/j;->c:J

    move-wide/from16 v34, v1

    invoke-static/range {v30 .. v35}, Lf/i/a/a/m1/h0;->h0(JJJ)J

    move-result-wide v1

    goto :goto_1b

    :cond_25
    move-object/from16 v28, v4

    move-object/from16 v29, v10

    :cond_26
    move v4, v2

    const-wide/16 v1, 0x0

    .line 120
    :goto_1b
    iget-object v10, v5, Lf/i/a/a/b1/u/l;->i:[I

    move/from16 v30, v4

    .line 121
    iget-object v4, v5, Lf/i/a/a/b1/u/l;->j:[I

    move-object/from16 v31, v10

    .line 122
    iget-object v10, v5, Lf/i/a/a/b1/u/l;->k:[J

    move-object/from16 v32, v10

    .line 123
    iget-object v10, v5, Lf/i/a/a/b1/u/l;->l:[Z

    move-object/from16 v33, v10

    .line 124
    iget v10, v15, Lf/i/a/a/b1/u/j;->b:I

    move-wide/from16 v34, v1

    const/4 v1, 0x2

    if-ne v10, v1, :cond_27

    and-int/lit8 v1, v3, 0x1

    if-eqz v1, :cond_27

    const/4 v1, 0x1

    goto :goto_1c

    :cond_27
    const/4 v1, 0x0

    .line 125
    :goto_1c
    iget-object v2, v5, Lf/i/a/a/b1/u/l;->h:[I

    aget v2, v2, v11

    add-int/2addr v2, v6

    move v10, v3

    move-object/from16 v42, v4

    .line 126
    iget-wide v3, v15, Lf/i/a/a/b1/u/j;->c:J

    if-lez v11, :cond_28

    move v15, v10

    .line 127
    iget-wide v10, v5, Lf/i/a/a/b1/u/l;->s:J

    goto :goto_1d

    :cond_28
    move v15, v10

    move-wide/from16 v10, v18

    :goto_1d
    if-ge v6, v2, :cond_30

    if-eqz v7, :cond_29

    .line 128
    invoke-virtual {v12}, Lf/i/a/a/m1/u;->s()I

    move-result v36

    move/from16 v43, v2

    move/from16 v2, v36

    goto :goto_1e

    :cond_29
    move/from16 v43, v2

    iget v2, v9, Lf/i/a/a/b1/u/c;->b:I

    :goto_1e
    if-eqz v8, :cond_2a

    .line 129
    invoke-virtual {v12}, Lf/i/a/a/m1/u;->s()I

    move-result v36

    move/from16 v44, v7

    move/from16 v7, v36

    goto :goto_1f

    :cond_2a
    move/from16 v44, v7

    iget v7, v9, Lf/i/a/a/b1/u/c;->c:I

    :goto_1f
    if-nez v6, :cond_2b

    if-eqz v0, :cond_2b

    move/from16 v45, v0

    move/from16 v0, v27

    goto :goto_20

    :cond_2b
    if-eqz v13, :cond_2c

    .line 130
    invoke-virtual {v12}, Lf/i/a/a/m1/u;->d()I

    move-result v36

    move/from16 v45, v0

    move/from16 v0, v36

    goto :goto_20

    :cond_2c
    move/from16 v45, v0

    iget v0, v9, Lf/i/a/a/b1/u/c;->d:I

    :goto_20
    if-eqz v14, :cond_2d

    move/from16 v46, v8

    .line 131
    invoke-virtual {v12}, Lf/i/a/a/m1/u;->d()I

    move-result v8

    move-object/from16 v47, v9

    int-to-long v8, v8

    const-wide/16 v36, 0x3e8

    mul-long v8, v8, v36

    .line 132
    div-long/2addr v8, v3

    long-to-int v9, v8

    aput v9, v42, v6

    goto :goto_21

    :cond_2d
    move/from16 v46, v8

    move-object/from16 v47, v9

    const/4 v8, 0x0

    .line 133
    aput v8, v42, v6

    :goto_21
    const-wide/16 v38, 0x3e8

    move-wide/from16 v36, v10

    move-wide/from16 v40, v3

    .line 134
    invoke-static/range {v36 .. v41}, Lf/i/a/a/m1/h0;->h0(JJJ)J

    move-result-wide v8

    sub-long v8, v8, v34

    aput-wide v8, v32, v6

    .line 135
    aput v7, v31, v6

    shr-int/lit8 v0, v0, 0x10

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2f

    if-eqz v1, :cond_2e

    if-nez v6, :cond_2f

    :cond_2e
    const/4 v0, 0x1

    goto :goto_22

    :cond_2f
    const/4 v0, 0x0

    .line 136
    :goto_22
    aput-boolean v0, v33, v6

    int-to-long v7, v2

    add-long/2addr v10, v7

    add-int/lit8 v6, v6, 0x1

    move/from16 v2, v43

    move/from16 v7, v44

    move/from16 v0, v45

    move/from16 v8, v46

    move-object/from16 v9, v47

    goto/16 :goto_1d

    :cond_30
    move/from16 v43, v2

    .line 137
    iput-wide v10, v5, Lf/i/a/a/b1/u/l;->s:J

    move/from16 v11, v22

    move/from16 v6, v43

    goto :goto_23

    :cond_31
    move-object/from16 v24, v0

    move-object/from16 v23, v1

    move/from16 v30, v2

    move v15, v3

    move-object/from16 v28, v4

    move-object/from16 v20, v5

    move/from16 v25, v7

    move-object/from16 v26, v8

    move/from16 v21, v9

    move-object/from16 v29, v10

    :goto_23
    add-int/lit8 v2, v30, 0x1

    move v3, v15

    move-object/from16 v5, v20

    move/from16 v9, v21

    move-object/from16 v1, v23

    move-object/from16 v0, v24

    move/from16 v7, v25

    move-object/from16 v8, v26

    move-object/from16 v4, v28

    move-object/from16 v10, v29

    goto/16 :goto_14

    :cond_32
    move-object/from16 v24, v0

    move-object/from16 v23, v1

    move v15, v3

    move-object/from16 v28, v4

    move/from16 v25, v7

    move-object/from16 v26, v8

    .line 138
    iget-object v0, v10, Lf/i/a/a/b1/u/d$b;->c:Lf/i/a/a/b1/u/j;

    move-object/from16 v1, v26

    iget-object v2, v1, Lf/i/a/a/b1/u/l;->a:Lf/i/a/a/b1/u/c;

    iget v2, v2, Lf/i/a/a/b1/u/c;->a:I

    .line 139
    invoke-virtual {v0, v2}, Lf/i/a/a/b1/u/j;->a(I)Lf/i/a/a/b1/u/k;

    move-result-object v0

    .line 140
    sget v2, Lf/i/a/a/b1/u/a;->q0:I

    move-object/from16 v3, v24

    invoke-virtual {v3, v2}, Lf/i/a/a/b1/u/a$a;->e(I)Lf/i/a/a/b1/u/a$b;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 141
    iget-object v2, v2, Lf/i/a/a/b1/u/a$b;->g1:Lf/i/a/a/m1/u;

    .line 142
    iget v4, v0, Lf/i/a/a/b1/u/k;->d:I

    const/16 v5, 0x8

    .line 143
    invoke-virtual {v2, v5}, Lf/i/a/a/m1/u;->A(I)V

    .line 144
    invoke-virtual {v2}, Lf/i/a/a/m1/u;->d()I

    move-result v6

    .line 145
    invoke-static {v6}, Lf/i/a/a/b1/u/a;->b(I)I

    move-result v6

    const/4 v7, 0x1

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_33

    .line 146
    invoke-virtual {v2, v5}, Lf/i/a/a/m1/u;->B(I)V

    .line 147
    :cond_33
    invoke-virtual {v2}, Lf/i/a/a/m1/u;->p()I

    move-result v5

    .line 148
    invoke-virtual {v2}, Lf/i/a/a/m1/u;->s()I

    move-result v6

    .line 149
    iget v7, v1, Lf/i/a/a/b1/u/l;->f:I

    if-ne v6, v7, :cond_38

    if-nez v5, :cond_35

    .line 150
    iget-object v5, v1, Lf/i/a/a/b1/u/l;->n:[Z

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_24
    if-ge v7, v6, :cond_37

    .line 151
    invoke-virtual {v2}, Lf/i/a/a/m1/u;->p()I

    move-result v9

    add-int/2addr v8, v9

    if-le v9, v4, :cond_34

    const/4 v9, 0x1

    goto :goto_25

    :cond_34
    const/4 v9, 0x0

    .line 152
    :goto_25
    aput-boolean v9, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_24

    :cond_35
    if-le v5, v4, :cond_36

    const/4 v2, 0x1

    goto :goto_26

    :cond_36
    const/4 v2, 0x0

    :goto_26
    mul-int v5, v5, v6

    const/4 v4, 0x0

    add-int/lit8 v8, v5, 0x0

    .line 153
    iget-object v5, v1, Lf/i/a/a/b1/u/l;->n:[Z

    invoke-static {v5, v4, v6, v2}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 154
    :cond_37
    invoke-virtual {v1, v8}, Lf/i/a/a/b1/u/l;->a(I)V

    goto :goto_27

    .line 155
    :cond_38
    new-instance v0, Lf/i/a/a/h0;

    const-string v2, "Length mismatch: "

    const-string v3, ", "

    invoke-static {v2, v6, v3}, Lf/b/a/a/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Lf/i/a/a/b1/u/l;->f:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_39
    :goto_27
    sget v2, Lf/i/a/a/b1/u/a;->r0:I

    invoke-virtual {v3, v2}, Lf/i/a/a/b1/u/a$a;->e(I)Lf/i/a/a/b1/u/a$b;

    move-result-object v2

    if-eqz v2, :cond_3d

    .line 157
    iget-object v2, v2, Lf/i/a/a/b1/u/a$b;->g1:Lf/i/a/a/m1/u;

    const/16 v4, 0x8

    .line 158
    invoke-virtual {v2, v4}, Lf/i/a/a/m1/u;->A(I)V

    .line 159
    invoke-virtual {v2}, Lf/i/a/a/m1/u;->d()I

    move-result v5

    .line 160
    invoke-static {v5}, Lf/i/a/a/b1/u/a;->b(I)I

    move-result v6

    const/4 v7, 0x1

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_3a

    .line 161
    invoke-virtual {v2, v4}, Lf/i/a/a/m1/u;->B(I)V

    .line 162
    :cond_3a
    invoke-virtual {v2}, Lf/i/a/a/m1/u;->s()I

    move-result v4

    if-ne v4, v7, :cond_3c

    shr-int/lit8 v4, v5, 0x18

    and-int/lit16 v4, v4, 0xff

    .line 163
    iget-wide v5, v1, Lf/i/a/a/b1/u/l;->d:J

    if-nez v4, :cond_3b

    .line 164
    invoke-virtual {v2}, Lf/i/a/a/m1/u;->q()J

    move-result-wide v7

    goto :goto_28

    :cond_3b
    invoke-virtual {v2}, Lf/i/a/a/m1/u;->t()J

    move-result-wide v7

    :goto_28
    add-long/2addr v5, v7

    iput-wide v5, v1, Lf/i/a/a/b1/u/l;->d:J

    goto :goto_29

    .line 165
    :cond_3c
    new-instance v0, Lf/i/a/a/h0;

    const-string v1, "Unexpected saio entry count: "

    invoke-static {v1, v4}, Lf/b/a/a/a;->J(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_3d
    :goto_29
    sget v2, Lf/i/a/a/b1/u/a;->v0:I

    invoke-virtual {v3, v2}, Lf/i/a/a/b1/u/a$a;->e(I)Lf/i/a/a/b1/u/a$b;

    move-result-object v2

    if-eqz v2, :cond_3e

    .line 167
    iget-object v2, v2, Lf/i/a/a/b1/u/a$b;->g1:Lf/i/a/a/m1/u;

    const/4 v4, 0x0

    .line 168
    invoke-static {v2, v4, v1}, Lf/i/a/a/b1/u/d;->j(Lf/i/a/a/m1/u;ILf/i/a/a/b1/u/l;)V

    .line 169
    :cond_3e
    sget v2, Lf/i/a/a/b1/u/a;->s0:I

    invoke-virtual {v3, v2}, Lf/i/a/a/b1/u/a$a;->e(I)Lf/i/a/a/b1/u/a$b;

    move-result-object v2

    .line 170
    sget v4, Lf/i/a/a/b1/u/a;->t0:I

    invoke-virtual {v3, v4}, Lf/i/a/a/b1/u/a$a;->e(I)Lf/i/a/a/b1/u/a$b;

    move-result-object v4

    if-eqz v2, :cond_4b

    if-eqz v4, :cond_4b

    .line 171
    iget-object v2, v2, Lf/i/a/a/b1/u/a$b;->g1:Lf/i/a/a/m1/u;

    iget-object v4, v4, Lf/i/a/a/b1/u/a$b;->g1:Lf/i/a/a/m1/u;

    if-eqz v0, :cond_3f

    iget-object v0, v0, Lf/i/a/a/b1/u/k;->b:Ljava/lang/String;

    const/16 v5, 0x8

    goto :goto_2a

    :cond_3f
    const/16 v5, 0x8

    const/4 v0, 0x0

    :goto_2a
    move-object v8, v0

    .line 172
    invoke-virtual {v2, v5}, Lf/i/a/a/m1/u;->A(I)V

    .line 173
    invoke-virtual {v2}, Lf/i/a/a/m1/u;->d()I

    move-result v0

    .line 174
    invoke-virtual {v2}, Lf/i/a/a/m1/u;->d()I

    move-result v5

    sget v6, Lf/i/a/a/b1/u/d;->J:I

    if-eq v5, v6, :cond_40

    goto/16 :goto_2e

    .line 175
    :cond_40
    invoke-static {v0}, Lf/i/a/a/b1/u/a;->c(I)I

    move-result v0

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-ne v0, v6, :cond_41

    .line 176
    invoke-virtual {v2, v5}, Lf/i/a/a/m1/u;->B(I)V

    .line 177
    :cond_41
    invoke-virtual {v2}, Lf/i/a/a/m1/u;->d()I

    move-result v0

    if-ne v0, v6, :cond_4a

    const/16 v0, 0x8

    .line 178
    invoke-virtual {v4, v0}, Lf/i/a/a/m1/u;->A(I)V

    .line 179
    invoke-virtual {v4}, Lf/i/a/a/m1/u;->d()I

    move-result v0

    .line 180
    invoke-virtual {v4}, Lf/i/a/a/m1/u;->d()I

    move-result v2

    sget v7, Lf/i/a/a/b1/u/d;->J:I

    if-eq v2, v7, :cond_42

    goto/16 :goto_2e

    :cond_42
    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v6, :cond_44

    .line 181
    invoke-virtual {v4}, Lf/i/a/a/m1/u;->q()J

    move-result-wide v5

    const-wide/16 v9, 0x0

    cmp-long v0, v5, v9

    if-eqz v0, :cond_43

    goto :goto_2b

    .line 182
    :cond_43
    new-instance v0, Lf/i/a/a/h0;

    const-string v1, "Variable length description in sgpd found (unsupported)"

    invoke-direct {v0, v1}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    const/4 v2, 0x2

    if-lt v0, v2, :cond_45

    .line 183
    invoke-virtual {v4, v5}, Lf/i/a/a/m1/u;->B(I)V

    .line 184
    :cond_45
    :goto_2b
    invoke-virtual {v4}, Lf/i/a/a/m1/u;->q()J

    move-result-wide v5

    const-wide/16 v9, 0x1

    cmp-long v0, v5, v9

    if-nez v0, :cond_49

    const/4 v0, 0x1

    .line 185
    invoke-virtual {v4, v0}, Lf/i/a/a/m1/u;->B(I)V

    .line 186
    invoke-virtual {v4}, Lf/i/a/a/m1/u;->p()I

    move-result v2

    and-int/lit16 v5, v2, 0xf0

    shr-int/lit8 v11, v5, 0x4

    and-int/lit8 v12, v2, 0xf

    .line 187
    invoke-virtual {v4}, Lf/i/a/a/m1/u;->p()I

    move-result v2

    if-ne v2, v0, :cond_46

    const/4 v0, 0x1

    const/4 v7, 0x1

    goto :goto_2c

    :cond_46
    const/4 v0, 0x0

    const/4 v7, 0x0

    :goto_2c
    if-nez v7, :cond_47

    goto :goto_2e

    .line 188
    :cond_47
    invoke-virtual {v4}, Lf/i/a/a/m1/u;->p()I

    move-result v9

    const/16 v0, 0x10

    new-array v10, v0, [B

    .line 189
    iget-object v2, v4, Lf/i/a/a/m1/u;->a:[B

    iget v5, v4, Lf/i/a/a/m1/u;->b:I

    const/4 v6, 0x0

    invoke-static {v2, v5, v10, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    iget v2, v4, Lf/i/a/a/m1/u;->b:I

    add-int/2addr v2, v0

    iput v2, v4, Lf/i/a/a/m1/u;->b:I

    if-nez v9, :cond_48

    .line 191
    invoke-virtual {v4}, Lf/i/a/a/m1/u;->p()I

    move-result v0

    .line 192
    new-array v2, v0, [B

    .line 193
    iget-object v5, v4, Lf/i/a/a/m1/u;->a:[B

    iget v13, v4, Lf/i/a/a/m1/u;->b:I

    invoke-static {v5, v13, v2, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    iget v5, v4, Lf/i/a/a/m1/u;->b:I

    add-int/2addr v5, v0

    iput v5, v4, Lf/i/a/a/m1/u;->b:I

    const/4 v0, 0x1

    goto :goto_2d

    :cond_48
    const/4 v0, 0x1

    const/4 v2, 0x0

    :goto_2d
    move-object v13, v2

    .line 195
    iput-boolean v0, v1, Lf/i/a/a/b1/u/l;->m:Z

    .line 196
    new-instance v0, Lf/i/a/a/b1/u/k;

    move-object v6, v0

    invoke-direct/range {v6 .. v13}, Lf/i/a/a/b1/u/k;-><init>(ZLjava/lang/String;I[BII[B)V

    iput-object v0, v1, Lf/i/a/a/b1/u/l;->o:Lf/i/a/a/b1/u/k;

    goto :goto_2e

    .line 197
    :cond_49
    new-instance v0, Lf/i/a/a/h0;

    const-string v1, "Entry count in sgpd != 1 (unsupported)."

    invoke-direct {v0, v1}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_4a
    new-instance v0, Lf/i/a/a/h0;

    const-string v1, "Entry count in sbgp != 1 (unsupported)."

    invoke-direct {v0, v1}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_4b
    :goto_2e
    iget-object v0, v3, Lf/i/a/a/b1/u/a$a;->h1:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_2f
    if-ge v2, v0, :cond_4e

    .line 200
    iget-object v4, v3, Lf/i/a/a/b1/u/a$a;->h1:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf/i/a/a/b1/u/a$b;

    .line 201
    iget v5, v4, Lf/i/a/a/b1/u/a;->a:I

    sget v6, Lf/i/a/a/b1/u/a;->u0:I

    if-ne v5, v6, :cond_4d

    .line 202
    iget-object v4, v4, Lf/i/a/a/b1/u/a$b;->g1:Lf/i/a/a/m1/u;

    const/16 v5, 0x8

    .line 203
    invoke-virtual {v4, v5}, Lf/i/a/a/m1/u;->A(I)V

    .line 204
    iget-object v5, v4, Lf/i/a/a/m1/u;->a:[B

    iget v6, v4, Lf/i/a/a/m1/u;->b:I

    const/4 v7, 0x0

    const/16 v8, 0x10

    move-object/from16 v9, v28

    invoke-static {v5, v6, v9, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    iget v5, v4, Lf/i/a/a/m1/u;->b:I

    add-int/2addr v5, v8

    iput v5, v4, Lf/i/a/a/m1/u;->b:I

    .line 206
    sget-object v5, Lf/i/a/a/b1/u/d;->K:[B

    invoke-static {v9, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_4c

    goto :goto_30

    .line 207
    :cond_4c
    invoke-static {v4, v8, v1}, Lf/i/a/a/b1/u/d;->j(Lf/i/a/a/m1/u;ILf/i/a/a/b1/u/l;)V

    goto :goto_30

    :cond_4d
    move-object/from16 v9, v28

    :goto_30
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v28, v9

    goto :goto_2f

    :cond_4e
    move-object/from16 v9, v28

    goto :goto_32

    :cond_4f
    :goto_31
    move-object/from16 v23, v1

    move-object/from16 v17, v2

    move v15, v3

    move-object v9, v4

    move/from16 v16, v6

    move/from16 v25, v7

    :goto_32
    add-int/lit8 v7, v25, 0x1

    const/16 v5, 0x8

    move-object/from16 v0, p0

    move-object v4, v9

    move v3, v15

    move/from16 v6, v16

    move-object/from16 v2, v17

    move-object/from16 v1, v23

    goto/16 :goto_b

    :cond_50
    move-object/from16 v23, v1

    .line 208
    iget-object v1, v0, Lf/i/a/a/b1/u/d;->d:Lf/i/a/a/z0/e;

    if-eqz v1, :cond_51

    const/4 v1, 0x0

    goto :goto_33

    :cond_51
    move-object/from16 v1, v23

    iget-object v1, v1, Lf/i/a/a/b1/u/a$a;->h1:Ljava/util/List;

    .line 209
    invoke-static {v1}, Lf/i/a/a/b1/u/d;->g(Ljava/util/List;)Lf/i/a/a/z0/e;

    move-result-object v1

    :goto_33
    if-eqz v1, :cond_53

    .line 210
    iget-object v2, v0, Lf/i/a/a/b1/u/d;->e:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_34
    if-ge v3, v2, :cond_53

    .line 211
    iget-object v4, v0, Lf/i/a/a/b1/u/d;->e:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf/i/a/a/b1/u/d$b;

    .line 212
    iget-object v5, v4, Lf/i/a/a/b1/u/d$b;->c:Lf/i/a/a/b1/u/j;

    iget-object v6, v4, Lf/i/a/a/b1/u/d$b;->b:Lf/i/a/a/b1/u/l;

    iget-object v6, v6, Lf/i/a/a/b1/u/l;->a:Lf/i/a/a/b1/u/c;

    iget v6, v6, Lf/i/a/a/b1/u/c;->a:I

    .line 213
    invoke-virtual {v5, v6}, Lf/i/a/a/b1/u/j;->a(I)Lf/i/a/a/b1/u/k;

    move-result-object v5

    if-eqz v5, :cond_52

    .line 214
    iget-object v5, v5, Lf/i/a/a/b1/u/k;->b:Ljava/lang/String;

    goto :goto_35

    :cond_52
    const/4 v5, 0x0

    .line 215
    :goto_35
    iget-object v6, v4, Lf/i/a/a/b1/u/d$b;->a:Lf/i/a/a/b1/p;

    iget-object v4, v4, Lf/i/a/a/b1/u/d$b;->c:Lf/i/a/a/b1/u/j;

    iget-object v4, v4, Lf/i/a/a/b1/u/j;->f:Lf/i/a/a/b0;

    invoke-virtual {v1, v5}, Lf/i/a/a/z0/e;->a(Ljava/lang/String;)Lf/i/a/a/z0/e;

    move-result-object v5

    invoke-virtual {v4, v5}, Lf/i/a/a/b0;->a(Lf/i/a/a/z0/e;)Lf/i/a/a/b0;

    move-result-object v4

    invoke-interface {v6, v4}, Lf/i/a/a/b1/p;->d(Lf/i/a/a/b0;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 216
    :cond_53
    iget-wide v1, v0, Lf/i/a/a/b1/u/d;->w:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 217
    iget-object v1, v0, Lf/i/a/a/b1/u/d;->e:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_36
    if-ge v2, v1, :cond_57

    .line 218
    iget-object v3, v0, Lf/i/a/a/b1/u/d;->e:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf/i/a/a/b1/u/d$b;

    iget-wide v4, v0, Lf/i/a/a/b1/u/d;->w:J

    if-eqz v3, :cond_56

    .line 219
    invoke-static {v4, v5}, Lf/i/a/a/q;->b(J)J

    move-result-wide v4

    .line 220
    iget v6, v3, Lf/i/a/a/b1/u/d$b;->e:I

    .line 221
    :goto_37
    iget-object v7, v3, Lf/i/a/a/b1/u/d$b;->b:Lf/i/a/a/b1/u/l;

    iget v8, v7, Lf/i/a/a/b1/u/l;->f:I

    if-ge v6, v8, :cond_55

    .line 222
    iget-object v8, v7, Lf/i/a/a/b1/u/l;->k:[J

    aget-wide v9, v8, v6

    iget-object v8, v7, Lf/i/a/a/b1/u/l;->j:[I

    aget v8, v8, v6

    int-to-long v11, v8

    add-long/2addr v9, v11

    cmp-long v8, v9, v4

    if-gez v8, :cond_55

    .line 223
    iget-object v7, v7, Lf/i/a/a/b1/u/l;->l:[Z

    aget-boolean v7, v7, v6

    if-eqz v7, :cond_54

    .line 224
    iput v6, v3, Lf/i/a/a/b1/u/d$b;->h:I

    :cond_54
    add-int/lit8 v6, v6, 0x1

    goto :goto_37

    :cond_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    :cond_56
    const/4 v0, 0x0

    .line 225
    throw v0

    :cond_57
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 226
    iput-wide v1, v0, Lf/i/a/a/b1/u/d;->w:J

    goto/16 :goto_0

    .line 227
    :cond_58
    iget-object v2, v0, Lf/i/a/a/b1/u/d;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 228
    iget-object v2, v0, Lf/i/a/a/b1/u/d;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/i/a/a/b1/u/a$a;

    .line 229
    iget-object v2, v2, Lf/i/a/a/b1/u/a$a;->i1:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 230
    :cond_59
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/b1/u/d;->b()V

    return-void
.end method
