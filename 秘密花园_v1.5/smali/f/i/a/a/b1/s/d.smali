.class public Lf/i/a/a/b1/s/d;
.super Ljava/lang/Object;
.source "MatroskaExtractor.java"

# interfaces
.implements Lf/i/a/a/b1/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/b1/s/d$c;,
        Lf/i/a/a/b1/s/d$d;,
        Lf/i/a/a/b1/s/d$b;
    }
.end annotation


# static fields
.field public static final Z:[B

.field public static final a0:[B

.field public static final b0:[B

.field public static final c0:[B

.field public static final d0:[B

.field public static final e0:Ljava/util/UUID;


# instance fields
.field public A:J

.field public B:Lf/i/a/a/m1/p;

.field public C:Lf/i/a/a/m1/p;

.field public D:Z

.field public E:I

.field public F:J

.field public G:J

.field public H:I

.field public I:I

.field public J:[I

.field public K:I

.field public L:I

.field public M:I

.field public N:I

.field public O:Z

.field public P:Z

.field public Q:Z

.field public R:Z

.field public S:B

.field public T:I

.field public U:I

.field public V:I

.field public W:Z

.field public X:Z

.field public Y:Lf/i/a/a/b1/h;

.field public final a:Lf/i/a/a/b1/s/c;

.field public final b:Lf/i/a/a/b1/s/f;

.field public final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lf/i/a/a/b1/s/d$c;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Z

.field public final e:Lf/i/a/a/m1/u;

.field public final f:Lf/i/a/a/m1/u;

.field public final g:Lf/i/a/a/m1/u;

.field public final h:Lf/i/a/a/m1/u;

.field public final i:Lf/i/a/a/m1/u;

.field public final j:Lf/i/a/a/m1/u;

.field public final k:Lf/i/a/a/m1/u;

.field public final l:Lf/i/a/a/m1/u;

.field public final m:Lf/i/a/a/m1/u;

.field public n:Ljava/nio/ByteBuffer;

.field public o:J

.field public p:J

.field public q:J

.field public r:J

.field public s:J

.field public t:Lf/i/a/a/b1/s/d$c;

.field public u:Z

.field public v:I

.field public w:J

.field public x:Z

.field public y:J

.field public z:J


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x20

    new-array v1, v0, [B

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lf/i/a/a/b1/s/d;->Z:[B

    const/16 v1, 0xc

    new-array v1, v1, [B

    .line 2
    fill-array-data v1, :array_1

    sput-object v1, Lf/i/a/a/b1/s/d;->a0:[B

    const-string v1, "Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text"

    .line 3
    invoke-static {v1}, Lf/i/a/a/m1/h0;->O(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lf/i/a/a/b1/s/d;->b0:[B

    new-array v0, v0, [B

    .line 4
    fill-array-data v0, :array_2

    sput-object v0, Lf/i/a/a/b1/s/d;->c0:[B

    const/16 v0, 0xa

    new-array v0, v0, [B

    .line 5
    fill-array-data v0, :array_3

    sput-object v0, Lf/i/a/a/b1/s/d;->d0:[B

    .line 6
    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x100000000001000L

    const-wide v3, -0x7fffff55ffc7648fL    # -3.607411173533E-312

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lf/i/a/a/b1/s/d;->e0:Ljava/util/UUID;

    return-void

    :array_0
    .array-data 1
        0x31t
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data

    :array_1
    .array-data 1
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
    .end array-data

    :array_2
    .array-data 1
        0x44t
        0x69t
        0x61t
        0x6ct
        0x6ft
        0x67t
        0x75t
        0x65t
        0x3at
        0x20t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
    .end array-data

    :array_3
    .array-data 1
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 5

    .line 1
    new-instance v0, Lf/i/a/a/b1/s/a;

    invoke-direct {v0}, Lf/i/a/a/b1/s/a;-><init>()V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, -0x1

    .line 3
    iput-wide v1, p0, Lf/i/a/a/b1/s/d;->p:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    iput-wide v3, p0, Lf/i/a/a/b1/s/d;->q:J

    .line 5
    iput-wide v3, p0, Lf/i/a/a/b1/s/d;->r:J

    .line 6
    iput-wide v3, p0, Lf/i/a/a/b1/s/d;->s:J

    .line 7
    iput-wide v1, p0, Lf/i/a/a/b1/s/d;->y:J

    .line 8
    iput-wide v1, p0, Lf/i/a/a/b1/s/d;->z:J

    .line 9
    iput-wide v3, p0, Lf/i/a/a/b1/s/d;->A:J

    .line 10
    iput-object v0, p0, Lf/i/a/a/b1/s/d;->a:Lf/i/a/a/b1/s/c;

    .line 11
    new-instance v1, Lf/i/a/a/b1/s/d$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lf/i/a/a/b1/s/d$b;-><init>(Lf/i/a/a/b1/s/d;Lf/i/a/a/b1/s/d$a;)V

    .line 12
    iput-object v1, v0, Lf/i/a/a/b1/s/a;->d:Lf/i/a/a/b1/s/b;

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    iput-boolean v0, p0, Lf/i/a/a/b1/s/d;->d:Z

    .line 14
    new-instance p1, Lf/i/a/a/b1/s/f;

    invoke-direct {p1}, Lf/i/a/a/b1/s/f;-><init>()V

    iput-object p1, p0, Lf/i/a/a/b1/s/d;->b:Lf/i/a/a/b1/s/f;

    .line 15
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lf/i/a/a/b1/s/d;->c:Landroid/util/SparseArray;

    .line 16
    new-instance p1, Lf/i/a/a/m1/u;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lf/i/a/a/m1/u;-><init>(I)V

    iput-object p1, p0, Lf/i/a/a/b1/s/d;->g:Lf/i/a/a/m1/u;

    .line 17
    new-instance p1, Lf/i/a/a/m1/u;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {p1, v1}, Lf/i/a/a/m1/u;-><init>([B)V

    iput-object p1, p0, Lf/i/a/a/b1/s/d;->h:Lf/i/a/a/m1/u;

    .line 18
    new-instance p1, Lf/i/a/a/m1/u;

    invoke-direct {p1, v0}, Lf/i/a/a/m1/u;-><init>(I)V

    iput-object p1, p0, Lf/i/a/a/b1/s/d;->i:Lf/i/a/a/m1/u;

    .line 19
    new-instance p1, Lf/i/a/a/m1/u;

    sget-object v1, Lf/i/a/a/m1/s;->a:[B

    invoke-direct {p1, v1}, Lf/i/a/a/m1/u;-><init>([B)V

    iput-object p1, p0, Lf/i/a/a/b1/s/d;->e:Lf/i/a/a/m1/u;

    .line 20
    new-instance p1, Lf/i/a/a/m1/u;

    invoke-direct {p1, v0}, Lf/i/a/a/m1/u;-><init>(I)V

    iput-object p1, p0, Lf/i/a/a/b1/s/d;->f:Lf/i/a/a/m1/u;

    .line 21
    new-instance p1, Lf/i/a/a/m1/u;

    invoke-direct {p1}, Lf/i/a/a/m1/u;-><init>()V

    iput-object p1, p0, Lf/i/a/a/b1/s/d;->j:Lf/i/a/a/m1/u;

    .line 22
    new-instance p1, Lf/i/a/a/m1/u;

    invoke-direct {p1}, Lf/i/a/a/m1/u;-><init>()V

    iput-object p1, p0, Lf/i/a/a/b1/s/d;->k:Lf/i/a/a/m1/u;

    .line 23
    new-instance p1, Lf/i/a/a/m1/u;

    const/16 v0, 0x8

    invoke-direct {p1, v0}, Lf/i/a/a/m1/u;-><init>(I)V

    iput-object p1, p0, Lf/i/a/a/b1/s/d;->l:Lf/i/a/a/m1/u;

    .line 24
    new-instance p1, Lf/i/a/a/m1/u;

    invoke-direct {p1}, Lf/i/a/a/m1/u;-><init>()V

    iput-object p1, p0, Lf/i/a/a/b1/s/d;->m:Lf/i/a/a/m1/u;

    return-void
.end method

.method public static g([II)[I
    .locals 1

    if-nez p0, :cond_0

    .line 1
    new-array p0, p1, [I

    return-object p0

    .line 2
    :cond_0
    array-length v0, p0

    if-lt v0, p1, :cond_1

    return-object p0

    .line 3
    :cond_1
    array-length p0, p0

    mul-int/lit8 p0, p0, 0x2

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    new-array p0, p0, [I

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b(Lf/i/a/a/b1/s/d$c;J)V
    .locals 15

    move-object v7, p0

    move-object/from16 v8, p1

    .line 1
    iget-object v0, v8, Lf/i/a/a/b1/s/d$c;->Q:Lf/i/a/a/b1/s/d$d;

    if-eqz v0, :cond_3

    .line 2
    iget-boolean v1, v0, Lf/i/a/a/b1/s/d$d;->b:Z

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    iget v1, v0, Lf/i/a/a/b1/s/d$d;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lf/i/a/a/b1/s/d$d;->c:I

    if-nez v1, :cond_1

    move-wide/from16 v9, p2

    .line 4
    iput-wide v9, v0, Lf/i/a/a/b1/s/d$d;->e:J

    .line 5
    :cond_1
    iget v1, v0, Lf/i/a/a/b1/s/d$d;->c:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    iget-object v1, v8, Lf/i/a/a/b1/s/d$c;->U:Lf/i/a/a/b1/p;

    iget-wide v9, v0, Lf/i/a/a/b1/s/d$d;->e:J

    iget v11, v0, Lf/i/a/a/b1/s/d$d;->f:I

    iget v12, v0, Lf/i/a/a/b1/s/d$d;->d:I

    const/4 v13, 0x0

    iget-object v14, v8, Lf/i/a/a/b1/s/d$c;->h:Lf/i/a/a/b1/p$a;

    move-object v8, v1

    invoke-interface/range {v8 .. v14}, Lf/i/a/a/b1/p;->c(JIIILf/i/a/a/b1/p$a;)V

    const/4 v1, 0x0

    .line 7
    iput v1, v0, Lf/i/a/a/b1/s/d$d;->c:I

    goto :goto_1

    :cond_3
    move-wide/from16 v9, p2

    .line 8
    iget-object v0, v8, Lf/i/a/a/b1/s/d$c;->b:Ljava/lang/String;

    const-string v1, "S_TEXT/UTF8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v3, 0x13

    const-wide/16 v4, 0x3e8

    .line 9
    sget-object v6, Lf/i/a/a/b1/s/d;->a0:[B

    const-string v2, "%02d:%02d:%02d,%03d"

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v6}, Lf/i/a/a/b1/s/d;->e(Lf/i/a/a/b1/s/d$c;Ljava/lang/String;IJ[B)V

    goto :goto_0

    .line 10
    :cond_4
    iget-object v0, v8, Lf/i/a/a/b1/s/d$c;->b:Ljava/lang/String;

    const-string v1, "S_TEXT/ASS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x15

    const-wide/16 v4, 0x2710

    .line 11
    sget-object v6, Lf/i/a/a/b1/s/d;->d0:[B

    const-string v2, "%01d:%02d:%02d:%02d"

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v6}, Lf/i/a/a/b1/s/d;->e(Lf/i/a/a/b1/s/d$c;Ljava/lang/String;IJ[B)V

    .line 12
    :cond_5
    :goto_0
    iget-object v0, v8, Lf/i/a/a/b1/s/d$c;->U:Lf/i/a/a/b1/p;

    iget v11, v7, Lf/i/a/a/b1/s/d;->M:I

    iget v12, v7, Lf/i/a/a/b1/s/d;->V:I

    const/4 v13, 0x0

    iget-object v14, v8, Lf/i/a/a/b1/s/d$c;->h:Lf/i/a/a/b1/p$a;

    move-object v8, v0

    move-wide/from16 v9, p2

    invoke-interface/range {v8 .. v14}, Lf/i/a/a/b1/p;->c(JIIILf/i/a/a/b1/p$a;)V

    :goto_1
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, v7, Lf/i/a/a/b1/s/d;->W:Z

    .line 14
    invoke-virtual {p0}, Lf/i/a/a/b1/s/d;->k()V

    return-void
.end method

.method public final c(Lf/i/a/a/b1/d;Lf/i/a/a/b1/m;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lf/i/a/a/b1/s/d;->W:Z

    const/4 v1, 0x1

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_3

    .line 2
    iget-boolean v3, p0, Lf/i/a/a/b1/s/d;->W:Z

    if-nez v3, :cond_3

    .line 3
    iget-object v2, p0, Lf/i/a/a/b1/s/d;->a:Lf/i/a/a/b1/s/c;

    check-cast v2, Lf/i/a/a/b1/s/a;

    invoke-virtual {v2, p1}, Lf/i/a/a/b1/s/a;->a(Lf/i/a/a/b1/d;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-wide v3, p1, Lf/i/a/a/b1/d;->d:J

    .line 5
    iget-boolean v5, p0, Lf/i/a/a/b1/s/d;->x:Z

    if-eqz v5, :cond_1

    .line 6
    iput-wide v3, p0, Lf/i/a/a/b1/s/d;->z:J

    .line 7
    iget-wide v3, p0, Lf/i/a/a/b1/s/d;->y:J

    iput-wide v3, p2, Lf/i/a/a/b1/m;->a:J

    .line 8
    iput-boolean v0, p0, Lf/i/a/a/b1/s/d;->x:Z

    goto :goto_0

    .line 9
    :cond_1
    iget-boolean v3, p0, Lf/i/a/a/b1/s/d;->u:Z

    if-eqz v3, :cond_2

    iget-wide v3, p0, Lf/i/a/a/b1/s/d;->z:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    .line 10
    iput-wide v3, p2, Lf/i/a/a/b1/m;->a:J

    .line 11
    iput-wide v5, p0, Lf/i/a/a/b1/s/d;->z:J

    :goto_0
    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    return v1

    :cond_3
    if-nez v2, :cond_6

    const/4 p1, 0x0

    .line 12
    :goto_2
    iget-object p2, p0, Lf/i/a/a/b1/s/d;->c:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_5

    .line 13
    iget-object p2, p0, Lf/i/a/a/b1/s/d;->c:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lf/i/a/a/b1/s/d$c;

    .line 14
    iget-object v1, p2, Lf/i/a/a/b1/s/d$c;->Q:Lf/i/a/a/b1/s/d$d;

    if-eqz v1, :cond_4

    .line 15
    iget-boolean v2, v1, Lf/i/a/a/b1/s/d$d;->b:Z

    if-eqz v2, :cond_4

    iget v2, v1, Lf/i/a/a/b1/s/d$d;->c:I

    if-lez v2, :cond_4

    .line 16
    iget-object v3, p2, Lf/i/a/a/b1/s/d$c;->U:Lf/i/a/a/b1/p;

    iget-wide v4, v1, Lf/i/a/a/b1/s/d$d;->e:J

    iget v6, v1, Lf/i/a/a/b1/s/d$d;->f:I

    iget v7, v1, Lf/i/a/a/b1/s/d$d;->d:I

    const/4 v8, 0x0

    iget-object v9, p2, Lf/i/a/a/b1/s/d$c;->h:Lf/i/a/a/b1/p$a;

    invoke-interface/range {v3 .. v9}, Lf/i/a/a/b1/p;->c(JIIILf/i/a/a/b1/p$a;)V

    .line 17
    iput v0, v1, Lf/i/a/a/b1/s/d$d;->c:I

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    const/4 p1, -0x1

    return p1

    :cond_6
    return v0
.end method

.method public final d(Lf/i/a/a/b1/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/i/a/a/b1/s/d;->Y:Lf/i/a/a/b1/h;

    return-void
.end method

.method public final e(Lf/i/a/a/b1/s/d$c;Ljava/lang/String;IJ[B)V
    .locals 13

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lf/i/a/a/b1/s/d;->k:Lf/i/a/a/m1/u;

    iget-object v1, v1, Lf/i/a/a/m1/u;->a:[B

    iget-wide v2, v0, Lf/i/a/a/b1/s/d;->G:J

    const/4 v4, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v2, v5

    if-nez v7, :cond_0

    move-object/from16 v2, p6

    move-object v3, v2

    goto :goto_0

    :cond_0
    const-wide v5, 0xd693a400L

    .line 2
    div-long v5, v2, v5

    long-to-int v6, v5

    mul-int/lit16 v5, v6, 0xe10

    int-to-long v7, v5

    const-wide/32 v9, 0xf4240

    mul-long v7, v7, v9

    sub-long/2addr v2, v7

    const-wide/32 v7, 0x3938700

    .line 3
    div-long v7, v2, v7

    long-to-int v5, v7

    mul-int/lit8 v7, v5, 0x3c

    int-to-long v7, v7

    mul-long v7, v7, v9

    sub-long/2addr v2, v7

    .line 4
    div-long v7, v2, v9

    long-to-int v8, v7

    int-to-long v11, v8

    mul-long v11, v11, v9

    sub-long/2addr v2, v11

    .line 5
    div-long v2, v2, p4

    long-to-int v3, v2

    .line 6
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v4

    const/4 v6, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v6

    const/4 v5, 0x2

    .line 7
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v5

    const/4 v5, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v5

    move-object v3, p2

    .line 8
    invoke-static {v2, p2, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lf/i/a/a/m1/h0;->O(Ljava/lang/String;)[B

    move-result-object v2

    move-object/from16 v3, p6

    .line 9
    :goto_0
    array-length v3, v3

    move/from16 v5, p3

    invoke-static {v2, v4, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, p1

    .line 10
    iget-object v1, v1, Lf/i/a/a/b1/s/d$c;->U:Lf/i/a/a/b1/p;

    iget-object v2, v0, Lf/i/a/a/b1/s/d;->k:Lf/i/a/a/m1/u;

    .line 11
    iget v3, v2, Lf/i/a/a/m1/u;->c:I

    .line 12
    invoke-interface {v1, v2, v3}, Lf/i/a/a/b1/p;->a(Lf/i/a/a/m1/u;I)V

    .line 13
    iget v1, v0, Lf/i/a/a/b1/s/d;->V:I

    iget-object v2, v0, Lf/i/a/a/b1/s/d;->k:Lf/i/a/a/m1/u;

    .line 14
    iget v2, v2, Lf/i/a/a/m1/u;->c:I

    add-int/2addr v1, v2

    .line 15
    iput v1, v0, Lf/i/a/a/b1/s/d;->V:I

    return-void
.end method

.method public f(JJ)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 1
    iput-wide p1, p0, Lf/i/a/a/b1/s/d;->A:J

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lf/i/a/a/b1/s/d;->E:I

    .line 3
    iget-object p2, p0, Lf/i/a/a/b1/s/d;->a:Lf/i/a/a/b1/s/c;

    check-cast p2, Lf/i/a/a/b1/s/a;

    .line 4
    iput p1, p2, Lf/i/a/a/b1/s/a;->e:I

    .line 5
    iget-object p3, p2, Lf/i/a/a/b1/s/a;->b:Ljava/util/ArrayDeque;

    invoke-virtual {p3}, Ljava/util/ArrayDeque;->clear()V

    .line 6
    iget-object p2, p2, Lf/i/a/a/b1/s/a;->c:Lf/i/a/a/b1/s/f;

    .line 7
    iput p1, p2, Lf/i/a/a/b1/s/f;->b:I

    .line 8
    iput p1, p2, Lf/i/a/a/b1/s/f;->c:I

    .line 9
    iget-object p2, p0, Lf/i/a/a/b1/s/d;->b:Lf/i/a/a/b1/s/f;

    .line 10
    iput p1, p2, Lf/i/a/a/b1/s/f;->b:I

    .line 11
    iput p1, p2, Lf/i/a/a/b1/s/f;->c:I

    .line 12
    invoke-virtual {p0}, Lf/i/a/a/b1/s/d;->k()V

    const/4 p2, 0x0

    .line 13
    :goto_0
    iget-object p3, p0, Lf/i/a/a/b1/s/d;->c:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p2, p3, :cond_1

    .line 14
    iget-object p3, p0, Lf/i/a/a/b1/s/d;->c:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lf/i/a/a/b1/s/d$c;

    .line 15
    iget-object p3, p3, Lf/i/a/a/b1/s/d$c;->Q:Lf/i/a/a/b1/s/d$d;

    if-eqz p3, :cond_0

    .line 16
    iput-boolean p1, p3, Lf/i/a/a/b1/s/d$d;->b:Z

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final h(Lf/i/a/a/b1/d;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/b1/s/d;->g:Lf/i/a/a/m1/u;

    .line 2
    iget v1, v0, Lf/i/a/a/m1/u;->c:I

    if-lt v1, p2, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, v0, Lf/i/a/a/m1/u;->a:[B

    array-length v2, v1

    if-ge v2, p2, :cond_1

    .line 4
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iget-object v2, p0, Lf/i/a/a/b1/s/d;->g:Lf/i/a/a/m1/u;

    .line 5
    iget v2, v2, Lf/i/a/a/m1/u;->c:I

    .line 6
    invoke-virtual {v0, v1, v2}, Lf/i/a/a/m1/u;->y([BI)V

    .line 7
    :cond_1
    iget-object v0, p0, Lf/i/a/a/b1/s/d;->g:Lf/i/a/a/m1/u;

    iget-object v1, v0, Lf/i/a/a/m1/u;->a:[B

    .line 8
    iget v0, v0, Lf/i/a/a/m1/u;->c:I

    sub-int v2, p2, v0

    const/4 v3, 0x0

    .line 9
    invoke-virtual {p1, v1, v0, v2, v3}, Lf/i/a/a/b1/d;->g([BIIZ)Z

    .line 10
    iget-object p1, p0, Lf/i/a/a/b1/s/d;->g:Lf/i/a/a/m1/u;

    invoke-virtual {p1, p2}, Lf/i/a/a/m1/u;->z(I)V

    return-void
.end method

.method public final i(Lf/i/a/a/b1/d;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1
    new-instance v1, Lf/i/a/a/b1/s/e;

    invoke-direct {v1}, Lf/i/a/a/b1/s/e;-><init>()V

    .line 2
    iget-wide v2, v0, Lf/i/a/a/b1/d;->c:J

    const-wide/16 v4, -0x1

    const-wide/16 v6, 0x400

    cmp-long v8, v2, v4

    if-eqz v8, :cond_1

    cmp-long v4, v2, v6

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    move-wide v6, v2

    :cond_1
    :goto_0
    long-to-int v4, v6

    .line 3
    iget-object v5, v1, Lf/i/a/a/b1/s/e;->a:Lf/i/a/a/m1/u;

    iget-object v5, v5, Lf/i/a/a/m1/u;->a:[B

    const/4 v6, 0x0

    const/4 v7, 0x4

    .line 4
    invoke-virtual {v0, v5, v6, v7, v6}, Lf/i/a/a/b1/d;->d([BIIZ)Z

    .line 5
    iget-object v5, v1, Lf/i/a/a/b1/s/e;->a:Lf/i/a/a/m1/u;

    invoke-virtual {v5}, Lf/i/a/a/m1/u;->q()J

    move-result-wide v9

    .line 6
    iput v7, v1, Lf/i/a/a/b1/s/e;->b:I

    :goto_1
    const-wide/32 v11, 0x1a45dfa3

    const/4 v5, 0x1

    cmp-long v7, v9, v11

    if-eqz v7, :cond_3

    .line 7
    iget v7, v1, Lf/i/a/a/b1/s/e;->b:I

    add-int/2addr v7, v5

    iput v7, v1, Lf/i/a/a/b1/s/e;->b:I

    if-ne v7, v4, :cond_2

    goto :goto_3

    .line 8
    :cond_2
    iget-object v7, v1, Lf/i/a/a/b1/s/e;->a:Lf/i/a/a/m1/u;

    iget-object v7, v7, Lf/i/a/a/m1/u;->a:[B

    .line 9
    invoke-virtual {v0, v7, v6, v5, v6}, Lf/i/a/a/b1/d;->d([BIIZ)Z

    const/16 v5, 0x8

    shl-long/2addr v9, v5

    const-wide/16 v11, -0x100

    and-long/2addr v9, v11

    .line 10
    iget-object v5, v1, Lf/i/a/a/b1/s/e;->a:Lf/i/a/a/m1/u;

    iget-object v5, v5, Lf/i/a/a/m1/u;->a:[B

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    int-to-long v11, v5

    or-long/2addr v9, v11

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {v1, v0}, Lf/i/a/a/b1/s/e;->a(Lf/i/a/a/b1/d;)J

    move-result-wide v9

    .line 12
    iget v4, v1, Lf/i/a/a/b1/s/e;->b:I

    int-to-long v11, v4

    const-wide/high16 v13, -0x8000000000000000L

    cmp-long v4, v9, v13

    if-eqz v4, :cond_8

    if-eqz v8, :cond_4

    add-long v7, v11, v9

    cmp-long v4, v7, v2

    if-ltz v4, :cond_4

    goto :goto_3

    .line 13
    :cond_4
    :goto_2
    iget v2, v1, Lf/i/a/a/b1/s/e;->b:I

    int-to-long v2, v2

    add-long v7, v11, v9

    cmp-long v4, v2, v7

    if-gez v4, :cond_7

    .line 14
    invoke-virtual {v1, v0}, Lf/i/a/a/b1/s/e;->a(Lf/i/a/a/b1/d;)J

    move-result-wide v2

    cmp-long v4, v2, v13

    if-nez v4, :cond_5

    goto :goto_3

    .line 15
    :cond_5
    invoke-virtual {v1, v0}, Lf/i/a/a/b1/s/e;->a(Lf/i/a/a/b1/d;)J

    move-result-wide v2

    const-wide/16 v7, 0x0

    cmp-long v4, v2, v7

    if-ltz v4, :cond_8

    const-wide/32 v7, 0x7fffffff

    cmp-long v15, v2, v7

    if-lez v15, :cond_6

    goto :goto_3

    :cond_6
    if-eqz v4, :cond_4

    long-to-int v3, v2

    .line 16
    invoke-virtual {v0, v3, v6}, Lf/i/a/a/b1/d;->a(IZ)Z

    .line 17
    iget v2, v1, Lf/i/a/a/b1/s/e;->b:I

    add-int/2addr v2, v3

    iput v2, v1, Lf/i/a/a/b1/s/e;->b:I

    goto :goto_2

    :cond_7
    if-nez v4, :cond_8

    const/4 v6, 0x1

    :cond_8
    :goto_3
    return v6
.end method

.method public final j(Lf/i/a/a/b1/d;Lf/i/a/a/b1/p;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/b1/s/d;->j:Lf/i/a/a/m1/u;

    invoke-virtual {v0}, Lf/i/a/a/m1/u;->a()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 3
    iget-object p3, p0, Lf/i/a/a/b1/s/d;->j:Lf/i/a/a/m1/u;

    invoke-interface {p2, p3, p1}, Lf/i/a/a/b1/p;->a(Lf/i/a/a/m1/u;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-interface {p2, p1, p3, v0}, Lf/i/a/a/b1/p;->b(Lf/i/a/a/b1/d;IZ)I

    move-result p1

    .line 5
    :goto_0
    iget p2, p0, Lf/i/a/a/b1/s/d;->N:I

    add-int/2addr p2, p1

    iput p2, p0, Lf/i/a/a/b1/s/d;->N:I

    .line 6
    iget p2, p0, Lf/i/a/a/b1/s/d;->V:I

    add-int/2addr p2, p1

    iput p2, p0, Lf/i/a/a/b1/s/d;->V:I

    return p1
.end method

.method public final k()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lf/i/a/a/b1/s/d;->N:I

    .line 2
    iput v0, p0, Lf/i/a/a/b1/s/d;->V:I

    .line 3
    iput v0, p0, Lf/i/a/a/b1/s/d;->U:I

    .line 4
    iput-boolean v0, p0, Lf/i/a/a/b1/s/d;->O:Z

    .line 5
    iput-boolean v0, p0, Lf/i/a/a/b1/s/d;->P:Z

    .line 6
    iput-boolean v0, p0, Lf/i/a/a/b1/s/d;->R:Z

    .line 7
    iput v0, p0, Lf/i/a/a/b1/s/d;->T:I

    .line 8
    iput-byte v0, p0, Lf/i/a/a/b1/s/d;->S:B

    .line 9
    iput-boolean v0, p0, Lf/i/a/a/b1/s/d;->Q:Z

    .line 10
    iget-object v0, p0, Lf/i/a/a/b1/s/d;->j:Lf/i/a/a/m1/u;

    invoke-virtual {v0}, Lf/i/a/a/m1/u;->v()V

    return-void
.end method

.method public final l(J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/h0;
        }
    .end annotation

    .line 1
    iget-wide v2, p0, Lf/i/a/a/b1/s/d;->q:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    const-wide/16 v4, 0x3e8

    move-wide v0, p1

    .line 2
    invoke-static/range {v0 .. v5}, Lf/i/a/a/m1/h0;->h0(JJJ)J

    move-result-wide p1

    return-wide p1

    .line 3
    :cond_0
    new-instance p1, Lf/i/a/a/h0;

    const-string p2, "Can\'t scale timecode prior to timecodeScale being set."

    invoke-direct {p1, p2}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final m(Lf/i/a/a/b1/d;Lf/i/a/a/b1/s/d$c;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p2, Lf/i/a/a/b1/s/d$c;->b:Ljava/lang/String;

    const-string v1, "S_TEXT/UTF8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p2, Lf/i/a/a/b1/s/d;->Z:[B

    invoke-virtual {p0, p1, p2, p3}, Lf/i/a/a/b1/s/d;->n(Lf/i/a/a/b1/d;[BI)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p2, Lf/i/a/a/b1/s/d$c;->b:Ljava/lang/String;

    const-string v1, "S_TEXT/ASS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object p2, Lf/i/a/a/b1/s/d;->c0:[B

    invoke-virtual {p0, p1, p2, p3}, Lf/i/a/a/b1/s/d;->n(Lf/i/a/a/b1/d;[BI)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p2, Lf/i/a/a/b1/s/d$c;->U:Lf/i/a/a/b1/p;

    .line 6
    iget-boolean v1, p0, Lf/i/a/a/b1/s/d;->O:Z

    const/16 v2, 0x8

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v1, :cond_10

    .line 7
    iget-boolean v1, p2, Lf/i/a/a/b1/s/d$c;->f:Z

    if-eqz v1, :cond_e

    .line 8
    iget v1, p0, Lf/i/a/a/b1/s/d;->M:I

    const v7, -0x40000001    # -1.9999999f

    and-int/2addr v1, v7

    iput v1, p0, Lf/i/a/a/b1/s/d;->M:I

    .line 9
    iget-boolean v1, p0, Lf/i/a/a/b1/s/d;->P:Z

    const/16 v7, 0x80

    if-nez v1, :cond_3

    .line 10
    iget-object v1, p0, Lf/i/a/a/b1/s/d;->g:Lf/i/a/a/m1/u;

    iget-object v1, v1, Lf/i/a/a/m1/u;->a:[B

    .line 11
    invoke-virtual {p1, v1, v6, v5, v6}, Lf/i/a/a/b1/d;->g([BIIZ)Z

    .line 12
    iget v1, p0, Lf/i/a/a/b1/s/d;->N:I

    add-int/2addr v1, v5

    iput v1, p0, Lf/i/a/a/b1/s/d;->N:I

    .line 13
    iget-object v1, p0, Lf/i/a/a/b1/s/d;->g:Lf/i/a/a/m1/u;

    iget-object v1, v1, Lf/i/a/a/m1/u;->a:[B

    aget-byte v8, v1, v6

    and-int/2addr v8, v7

    if-eq v8, v7, :cond_2

    .line 14
    aget-byte v1, v1, v6

    iput-byte v1, p0, Lf/i/a/a/b1/s/d;->S:B

    .line 15
    iput-boolean v5, p0, Lf/i/a/a/b1/s/d;->P:Z

    goto :goto_0

    .line 16
    :cond_2
    new-instance p1, Lf/i/a/a/h0;

    const-string p2, "Extension bit is set in signal byte"

    invoke-direct {p1, p2}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_3
    :goto_0
    iget-byte v1, p0, Lf/i/a/a/b1/s/d;->S:B

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_f

    .line 18
    iget-byte v1, p0, Lf/i/a/a/b1/s/d;->S:B

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 19
    :goto_2
    iget v8, p0, Lf/i/a/a/b1/s/d;->M:I

    const/high16 v9, 0x40000000    # 2.0f

    or-int/2addr v8, v9

    iput v8, p0, Lf/i/a/a/b1/s/d;->M:I

    .line 20
    iget-boolean v8, p0, Lf/i/a/a/b1/s/d;->Q:Z

    if-nez v8, :cond_7

    .line 21
    iget-object v8, p0, Lf/i/a/a/b1/s/d;->l:Lf/i/a/a/m1/u;

    iget-object v8, v8, Lf/i/a/a/m1/u;->a:[B

    .line 22
    invoke-virtual {p1, v8, v6, v2, v6}, Lf/i/a/a/b1/d;->g([BIIZ)Z

    .line 23
    iget v8, p0, Lf/i/a/a/b1/s/d;->N:I

    add-int/2addr v8, v2

    iput v8, p0, Lf/i/a/a/b1/s/d;->N:I

    .line 24
    iput-boolean v5, p0, Lf/i/a/a/b1/s/d;->Q:Z

    .line 25
    iget-object v8, p0, Lf/i/a/a/b1/s/d;->g:Lf/i/a/a/m1/u;

    iget-object v8, v8, Lf/i/a/a/m1/u;->a:[B

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v7, 0x0

    :goto_3
    or-int/2addr v7, v2

    int-to-byte v7, v7

    aput-byte v7, v8, v6

    .line 26
    iget-object v7, p0, Lf/i/a/a/b1/s/d;->g:Lf/i/a/a/m1/u;

    invoke-virtual {v7, v6}, Lf/i/a/a/m1/u;->A(I)V

    .line 27
    iget-object v7, p0, Lf/i/a/a/b1/s/d;->g:Lf/i/a/a/m1/u;

    invoke-interface {v0, v7, v5}, Lf/i/a/a/b1/p;->a(Lf/i/a/a/m1/u;I)V

    .line 28
    iget v7, p0, Lf/i/a/a/b1/s/d;->V:I

    add-int/2addr v7, v5

    iput v7, p0, Lf/i/a/a/b1/s/d;->V:I

    .line 29
    iget-object v7, p0, Lf/i/a/a/b1/s/d;->l:Lf/i/a/a/m1/u;

    invoke-virtual {v7, v6}, Lf/i/a/a/m1/u;->A(I)V

    .line 30
    iget-object v7, p0, Lf/i/a/a/b1/s/d;->l:Lf/i/a/a/m1/u;

    invoke-interface {v0, v7, v2}, Lf/i/a/a/b1/p;->a(Lf/i/a/a/m1/u;I)V

    .line 31
    iget v7, p0, Lf/i/a/a/b1/s/d;->V:I

    add-int/2addr v7, v2

    iput v7, p0, Lf/i/a/a/b1/s/d;->V:I

    :cond_7
    if-eqz v1, :cond_f

    .line 32
    iget-boolean v1, p0, Lf/i/a/a/b1/s/d;->R:Z

    if-nez v1, :cond_8

    .line 33
    iget-object v1, p0, Lf/i/a/a/b1/s/d;->g:Lf/i/a/a/m1/u;

    iget-object v1, v1, Lf/i/a/a/m1/u;->a:[B

    .line 34
    invoke-virtual {p1, v1, v6, v5, v6}, Lf/i/a/a/b1/d;->g([BIIZ)Z

    .line 35
    iget v1, p0, Lf/i/a/a/b1/s/d;->N:I

    add-int/2addr v1, v5

    iput v1, p0, Lf/i/a/a/b1/s/d;->N:I

    .line 36
    iget-object v1, p0, Lf/i/a/a/b1/s/d;->g:Lf/i/a/a/m1/u;

    invoke-virtual {v1, v6}, Lf/i/a/a/m1/u;->A(I)V

    .line 37
    iget-object v1, p0, Lf/i/a/a/b1/s/d;->g:Lf/i/a/a/m1/u;

    invoke-virtual {v1}, Lf/i/a/a/m1/u;->p()I

    move-result v1

    iput v1, p0, Lf/i/a/a/b1/s/d;->T:I

    .line 38
    iput-boolean v5, p0, Lf/i/a/a/b1/s/d;->R:Z

    .line 39
    :cond_8
    iget v1, p0, Lf/i/a/a/b1/s/d;->T:I

    mul-int/lit8 v1, v1, 0x4

    .line 40
    iget-object v7, p0, Lf/i/a/a/b1/s/d;->g:Lf/i/a/a/m1/u;

    invoke-virtual {v7, v1}, Lf/i/a/a/m1/u;->w(I)V

    .line 41
    iget-object v7, p0, Lf/i/a/a/b1/s/d;->g:Lf/i/a/a/m1/u;

    iget-object v7, v7, Lf/i/a/a/m1/u;->a:[B

    .line 42
    invoke-virtual {p1, v7, v6, v1, v6}, Lf/i/a/a/b1/d;->g([BIIZ)Z

    .line 43
    iget v7, p0, Lf/i/a/a/b1/s/d;->N:I

    add-int/2addr v7, v1

    iput v7, p0, Lf/i/a/a/b1/s/d;->N:I

    .line 44
    iget v1, p0, Lf/i/a/a/b1/s/d;->T:I

    div-int/2addr v1, v3

    add-int/2addr v1, v5

    int-to-short v1, v1

    mul-int/lit8 v7, v1, 0x6

    add-int/2addr v7, v3

    .line 45
    iget-object v8, p0, Lf/i/a/a/b1/s/d;->n:Ljava/nio/ByteBuffer;

    if-eqz v8, :cond_9

    .line 46
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v8

    if-ge v8, v7, :cond_a

    .line 47
    :cond_9
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    iput-object v8, p0, Lf/i/a/a/b1/s/d;->n:Ljava/nio/ByteBuffer;

    .line 48
    :cond_a
    iget-object v8, p0, Lf/i/a/a/b1/s/d;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 49
    iget-object v8, p0, Lf/i/a/a/b1/s/d;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 50
    :goto_4
    iget v9, p0, Lf/i/a/a/b1/s/d;->T:I

    if-ge v1, v9, :cond_c

    .line 51
    iget-object v9, p0, Lf/i/a/a/b1/s/d;->g:Lf/i/a/a/m1/u;

    invoke-virtual {v9}, Lf/i/a/a/m1/u;->s()I

    move-result v9

    .line 52
    rem-int/lit8 v10, v1, 0x2

    if-nez v10, :cond_b

    .line 53
    iget-object v10, p0, Lf/i/a/a/b1/s/d;->n:Ljava/nio/ByteBuffer;

    sub-int v8, v9, v8

    int-to-short v8, v8

    invoke-virtual {v10, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_5

    .line 54
    :cond_b
    iget-object v10, p0, Lf/i/a/a/b1/s/d;->n:Ljava/nio/ByteBuffer;

    sub-int v8, v9, v8

    invoke-virtual {v10, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_5
    add-int/lit8 v1, v1, 0x1

    move v8, v9

    goto :goto_4

    .line 55
    :cond_c
    iget v1, p0, Lf/i/a/a/b1/s/d;->N:I

    sub-int v1, p3, v1

    sub-int/2addr v1, v8

    .line 56
    rem-int/2addr v9, v3

    if-ne v9, v5, :cond_d

    .line 57
    iget-object v8, p0, Lf/i/a/a/b1/s/d;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_6

    .line 58
    :cond_d
    iget-object v8, p0, Lf/i/a/a/b1/s/d;->n:Ljava/nio/ByteBuffer;

    int-to-short v1, v1

    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 59
    iget-object v1, p0, Lf/i/a/a/b1/s/d;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 60
    :goto_6
    iget-object v1, p0, Lf/i/a/a/b1/s/d;->m:Lf/i/a/a/m1/u;

    iget-object v8, p0, Lf/i/a/a/b1/s/d;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-virtual {v1, v8, v7}, Lf/i/a/a/m1/u;->y([BI)V

    .line 61
    iget-object v1, p0, Lf/i/a/a/b1/s/d;->m:Lf/i/a/a/m1/u;

    invoke-interface {v0, v1, v7}, Lf/i/a/a/b1/p;->a(Lf/i/a/a/m1/u;I)V

    .line 62
    iget v1, p0, Lf/i/a/a/b1/s/d;->V:I

    add-int/2addr v1, v7

    iput v1, p0, Lf/i/a/a/b1/s/d;->V:I

    goto :goto_7

    .line 63
    :cond_e
    iget-object v1, p2, Lf/i/a/a/b1/s/d$c;->g:[B

    if-eqz v1, :cond_f

    .line 64
    iget-object v7, p0, Lf/i/a/a/b1/s/d;->j:Lf/i/a/a/m1/u;

    array-length v8, v1

    .line 65
    iput-object v1, v7, Lf/i/a/a/m1/u;->a:[B

    .line 66
    iput v8, v7, Lf/i/a/a/m1/u;->c:I

    .line 67
    iput v6, v7, Lf/i/a/a/m1/u;->b:I

    .line 68
    :cond_f
    :goto_7
    iput-boolean v5, p0, Lf/i/a/a/b1/s/d;->O:Z

    .line 69
    :cond_10
    iget-object v1, p0, Lf/i/a/a/b1/s/d;->j:Lf/i/a/a/m1/u;

    .line 70
    iget v1, v1, Lf/i/a/a/m1/u;->c:I

    add-int/2addr p3, v1

    .line 71
    iget-object v1, p2, Lf/i/a/a/b1/s/d$c;->b:Ljava/lang/String;

    const-string v7, "V_MPEG4/ISO/AVC"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    iget-object v1, p2, Lf/i/a/a/b1/s/d$c;->b:Ljava/lang/String;

    const-string v7, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto/16 :goto_d

    .line 72
    :cond_11
    iget-object v1, p2, Lf/i/a/a/b1/s/d$c;->Q:Lf/i/a/a/b1/s/d$d;

    if-eqz v1, :cond_1a

    .line 73
    iget-object v1, p0, Lf/i/a/a/b1/s/d;->j:Lf/i/a/a/m1/u;

    .line 74
    iget v1, v1, Lf/i/a/a/m1/u;->c:I

    if-nez v1, :cond_12

    const/4 v1, 0x1

    goto :goto_8

    :cond_12
    const/4 v1, 0x0

    .line 75
    :goto_8
    invoke-static {v1}, Lc/a/a/b/g/h;->v(Z)V

    .line 76
    iget-object v1, p2, Lf/i/a/a/b1/s/d$c;->Q:Lf/i/a/a/b1/s/d$d;

    iget v3, p0, Lf/i/a/a/b1/s/d;->M:I

    .line 77
    iget-boolean v7, v1, Lf/i/a/a/b1/s/d$d;->b:Z

    if-nez v7, :cond_18

    .line 78
    iget-object v7, v1, Lf/i/a/a/b1/s/d$d;->a:[B

    const/16 v8, 0xa

    .line 79
    invoke-virtual {p1, v7, v6, v8, v6}, Lf/i/a/a/b1/d;->d([BIIZ)Z

    .line 80
    iput v6, p1, Lf/i/a/a/b1/d;->f:I

    .line 81
    iget-object v7, v1, Lf/i/a/a/b1/s/d$d;->a:[B

    .line 82
    aget-byte v8, v7, v4

    const/4 v9, -0x8

    if-ne v8, v9, :cond_16

    const/4 v8, 0x5

    aget-byte v8, v7, v8

    const/16 v9, 0x72

    if-ne v8, v9, :cond_16

    const/4 v8, 0x6

    aget-byte v8, v7, v8

    const/16 v9, 0x6f

    if-ne v8, v9, :cond_16

    const/4 v8, 0x7

    aget-byte v9, v7, v8

    and-int/lit16 v9, v9, 0xfe

    const/16 v10, 0xba

    if-eq v9, v10, :cond_13

    goto :goto_a

    .line 83
    :cond_13
    aget-byte v9, v7, v8

    and-int/lit16 v9, v9, 0xff

    const/16 v10, 0xbb

    if-ne v9, v10, :cond_14

    const/4 v9, 0x1

    goto :goto_9

    :cond_14
    const/4 v9, 0x0

    :goto_9
    const/16 v10, 0x28

    if-eqz v9, :cond_15

    const/16 v2, 0x9

    .line 84
    :cond_15
    aget-byte v2, v7, v2

    shr-int/2addr v2, v4

    and-int/2addr v2, v8

    shl-int v2, v10, v2

    goto :goto_b

    :cond_16
    :goto_a
    const/4 v2, 0x0

    :goto_b
    if-nez v2, :cond_17

    goto :goto_c

    .line 85
    :cond_17
    iput-boolean v5, v1, Lf/i/a/a/b1/s/d$d;->b:Z

    .line 86
    iput v6, v1, Lf/i/a/a/b1/s/d$d;->c:I

    .line 87
    :cond_18
    iget v2, v1, Lf/i/a/a/b1/s/d$d;->c:I

    if-nez v2, :cond_19

    .line 88
    iput v3, v1, Lf/i/a/a/b1/s/d$d;->f:I

    .line 89
    iput v6, v1, Lf/i/a/a/b1/s/d$d;->d:I

    .line 90
    :cond_19
    iget v2, v1, Lf/i/a/a/b1/s/d$d;->d:I

    add-int/2addr v2, p3

    iput v2, v1, Lf/i/a/a/b1/s/d$d;->d:I

    .line 91
    :cond_1a
    :goto_c
    iget v1, p0, Lf/i/a/a/b1/s/d;->N:I

    if-ge v1, p3, :cond_1e

    sub-int v1, p3, v1

    .line 92
    invoke-virtual {p0, p1, v0, v1}, Lf/i/a/a/b1/s/d;->j(Lf/i/a/a/b1/d;Lf/i/a/a/b1/p;I)I

    goto :goto_c

    .line 93
    :cond_1b
    :goto_d
    iget-object v1, p0, Lf/i/a/a/b1/s/d;->f:Lf/i/a/a/m1/u;

    iget-object v1, v1, Lf/i/a/a/m1/u;->a:[B

    .line 94
    aput-byte v6, v1, v6

    .line 95
    aput-byte v6, v1, v5

    .line 96
    aput-byte v6, v1, v3

    .line 97
    iget v2, p2, Lf/i/a/a/b1/s/d$c;->V:I

    rsub-int/lit8 v3, v2, 0x4

    .line 98
    :goto_e
    iget v5, p0, Lf/i/a/a/b1/s/d;->N:I

    if-ge v5, p3, :cond_1e

    .line 99
    iget v5, p0, Lf/i/a/a/b1/s/d;->U:I

    if-nez v5, :cond_1d

    .line 100
    iget-object v5, p0, Lf/i/a/a/b1/s/d;->j:Lf/i/a/a/m1/u;

    invoke-virtual {v5}, Lf/i/a/a/m1/u;->a()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int v7, v3, v5

    sub-int v8, v2, v5

    .line 101
    invoke-virtual {p1, v1, v7, v8, v6}, Lf/i/a/a/b1/d;->g([BIIZ)Z

    if-lez v5, :cond_1c

    .line 102
    iget-object v7, p0, Lf/i/a/a/b1/s/d;->j:Lf/i/a/a/m1/u;

    .line 103
    iget-object v8, v7, Lf/i/a/a/m1/u;->a:[B

    iget v9, v7, Lf/i/a/a/m1/u;->b:I

    invoke-static {v8, v9, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    iget v8, v7, Lf/i/a/a/m1/u;->b:I

    add-int/2addr v8, v5

    iput v8, v7, Lf/i/a/a/m1/u;->b:I

    .line 105
    :cond_1c
    iget v5, p0, Lf/i/a/a/b1/s/d;->N:I

    add-int/2addr v5, v2

    iput v5, p0, Lf/i/a/a/b1/s/d;->N:I

    .line 106
    iget-object v5, p0, Lf/i/a/a/b1/s/d;->f:Lf/i/a/a/m1/u;

    invoke-virtual {v5, v6}, Lf/i/a/a/m1/u;->A(I)V

    .line 107
    iget-object v5, p0, Lf/i/a/a/b1/s/d;->f:Lf/i/a/a/m1/u;

    invoke-virtual {v5}, Lf/i/a/a/m1/u;->s()I

    move-result v5

    iput v5, p0, Lf/i/a/a/b1/s/d;->U:I

    .line 108
    iget-object v5, p0, Lf/i/a/a/b1/s/d;->e:Lf/i/a/a/m1/u;

    invoke-virtual {v5, v6}, Lf/i/a/a/m1/u;->A(I)V

    .line 109
    iget-object v5, p0, Lf/i/a/a/b1/s/d;->e:Lf/i/a/a/m1/u;

    invoke-interface {v0, v5, v4}, Lf/i/a/a/b1/p;->a(Lf/i/a/a/m1/u;I)V

    .line 110
    iget v5, p0, Lf/i/a/a/b1/s/d;->V:I

    add-int/2addr v5, v4

    iput v5, p0, Lf/i/a/a/b1/s/d;->V:I

    goto :goto_e

    .line 111
    :cond_1d
    invoke-virtual {p0, p1, v0, v5}, Lf/i/a/a/b1/s/d;->j(Lf/i/a/a/b1/d;Lf/i/a/a/b1/p;I)I

    move-result v7

    sub-int/2addr v5, v7

    iput v5, p0, Lf/i/a/a/b1/s/d;->U:I

    goto :goto_e

    .line 112
    :cond_1e
    iget-object p1, p2, Lf/i/a/a/b1/s/d$c;->b:Ljava/lang/String;

    const-string p2, "A_VORBIS"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 113
    iget-object p1, p0, Lf/i/a/a/b1/s/d;->h:Lf/i/a/a/m1/u;

    invoke-virtual {p1, v6}, Lf/i/a/a/m1/u;->A(I)V

    .line 114
    iget-object p1, p0, Lf/i/a/a/b1/s/d;->h:Lf/i/a/a/m1/u;

    invoke-interface {v0, p1, v4}, Lf/i/a/a/b1/p;->a(Lf/i/a/a/m1/u;I)V

    .line 115
    iget p1, p0, Lf/i/a/a/b1/s/d;->V:I

    add-int/2addr p1, v4

    iput p1, p0, Lf/i/a/a/b1/s/d;->V:I

    :cond_1f
    return-void
.end method

.method public final n(Lf/i/a/a/b1/d;[BI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    array-length v0, p2

    add-int/2addr v0, p3

    .line 2
    iget-object v1, p0, Lf/i/a/a/b1/s/d;->k:Lf/i/a/a/m1/u;

    .line 3
    iget-object v2, v1, Lf/i/a/a/m1/u;->a:[B

    array-length v3, v2

    const/4 v4, 0x0

    if-ge v3, v0, :cond_0

    add-int v2, v0, p3

    .line 4
    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    iput-object v2, v1, Lf/i/a/a/m1/u;->a:[B

    goto :goto_0

    .line 5
    :cond_0
    array-length v1, p2

    invoke-static {p2, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    :goto_0
    iget-object v1, p0, Lf/i/a/a/b1/s/d;->k:Lf/i/a/a/m1/u;

    iget-object v1, v1, Lf/i/a/a/m1/u;->a:[B

    array-length p2, p2

    .line 7
    invoke-virtual {p1, v1, p2, p3, v4}, Lf/i/a/a/b1/d;->g([BIIZ)Z

    .line 8
    iget-object p1, p0, Lf/i/a/a/b1/s/d;->k:Lf/i/a/a/m1/u;

    invoke-virtual {p1, v0}, Lf/i/a/a/m1/u;->w(I)V

    return-void
.end method
