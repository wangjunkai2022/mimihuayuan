.class public final Lf/i/a/a/b1/x/b0;
.super Ljava/lang/Object;
.source "TsExtractor.java"

# interfaces
.implements Lf/i/a/a/b1/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/b1/x/b0$b;,
        Lf/i/a/a/b1/x/b0$a;
    }
.end annotation


# static fields
.field public static final s:J

.field public static final t:J

.field public static final u:J

.field public static final v:J


# instance fields
.field public final a:I

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/i/a/a/m1/e0;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lf/i/a/a/m1/u;

.field public final d:Landroid/util/SparseIntArray;

.field public final e:Lf/i/a/a/b1/x/c0$c;

.field public final f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lf/i/a/a/b1/x/c0;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Landroid/util/SparseBooleanArray;

.field public final h:Landroid/util/SparseBooleanArray;

.field public final i:Lf/i/a/a/b1/x/a0;

.field public j:Lf/i/a/a/b1/x/z;

.field public k:Lf/i/a/a/b1/h;

.field public l:I

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Lf/i/a/a/b1/x/c0;

.field public q:I

.field public r:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "AC-3"

    .line 1
    invoke-static {v0}, Lf/i/a/a/m1/h0;->C(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lf/i/a/a/b1/x/b0;->s:J

    const-string v0, "EAC3"

    .line 2
    invoke-static {v0}, Lf/i/a/a/m1/h0;->C(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lf/i/a/a/b1/x/b0;->t:J

    const-string v0, "AC-4"

    .line 3
    invoke-static {v0}, Lf/i/a/a/m1/h0;->C(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lf/i/a/a/b1/x/b0;->u:J

    const-string v0, "HEVC"

    .line 4
    invoke-static {v0}, Lf/i/a/a/m1/h0;->C(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lf/i/a/a/b1/x/b0;->v:J

    return-void
.end method

.method public constructor <init>(ILf/i/a/a/m1/e0;Lf/i/a/a/b1/x/c0$c;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lf/i/a/a/b1/x/b0;->e:Lf/i/a/a/b1/x/c0$c;

    .line 3
    iput p1, p0, Lf/i/a/a/b1/x/b0;->a:I

    const/4 p3, 0x1

    if-eq p1, p3, :cond_1

    const/4 p3, 0x2

    if-ne p1, p3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lf/i/a/a/b1/x/b0;->b:Ljava/util/List;

    .line 5
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lf/i/a/a/b1/x/b0;->b:Ljava/util/List;

    .line 7
    :goto_1
    new-instance p1, Lf/i/a/a/m1/u;

    const/16 p2, 0x24b8

    new-array p2, p2, [B

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lf/i/a/a/m1/u;-><init>([BI)V

    iput-object p1, p0, Lf/i/a/a/b1/x/b0;->c:Lf/i/a/a/m1/u;

    .line 8
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lf/i/a/a/b1/x/b0;->g:Landroid/util/SparseBooleanArray;

    .line 9
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lf/i/a/a/b1/x/b0;->h:Landroid/util/SparseBooleanArray;

    .line 10
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lf/i/a/a/b1/x/b0;->f:Landroid/util/SparseArray;

    .line 11
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lf/i/a/a/b1/x/b0;->d:Landroid/util/SparseIntArray;

    .line 12
    new-instance p1, Lf/i/a/a/b1/x/a0;

    invoke-direct {p1}, Lf/i/a/a/b1/x/a0;-><init>()V

    iput-object p1, p0, Lf/i/a/a/b1/x/b0;->i:Lf/i/a/a/b1/x/a0;

    const/4 p1, -0x1

    .line 13
    iput p1, p0, Lf/i/a/a/b1/x/b0;->r:I

    .line 14
    iget-object p1, p0, Lf/i/a/a/b1/x/b0;->g:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 15
    iget-object p1, p0, Lf/i/a/a/b1/x/b0;->f:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 16
    iget-object p1, p0, Lf/i/a/a/b1/x/b0;->e:Lf/i/a/a/b1/x/c0$c;

    .line 17
    invoke-interface {p1}, Lf/i/a/a/b1/x/c0$c;->a()Landroid/util/SparseArray;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p2, :cond_2

    .line 19
    iget-object v1, p0, Lf/i/a/a/b1/x/b0;->f:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 20
    :cond_2
    iget-object p1, p0, Lf/i/a/a/b1/x/b0;->f:Landroid/util/SparseArray;

    new-instance p2, Lf/i/a/a/b1/x/w;

    new-instance v0, Lf/i/a/a/b1/x/b0$a;

    invoke-direct {v0, p0}, Lf/i/a/a/b1/x/b0$a;-><init>(Lf/i/a/a/b1/x/b0;)V

    invoke-direct {p2, v0}, Lf/i/a/a/b1/x/w;-><init>(Lf/i/a/a/b1/x/v;)V

    invoke-virtual {p1, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lf/i/a/a/b1/x/b0;->p:Lf/i/a/a/b1/x/c0;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public c(Lf/i/a/a/b1/d;Lf/i/a/a/b1/m;)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-wide v10, v1, Lf/i/a/a/b1/d;->c:J

    .line 2
    iget-boolean v3, v0, Lf/i/a/a/b1/x/b0;->m:Z

    const-wide/16 v13, -0x1

    const/16 v15, 0x47

    const/4 v9, 0x2

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_14

    cmp-long v3, v10, v13

    if-eqz v3, :cond_0

    .line 3
    iget v3, v0, Lf/i/a/a/b1/x/b0;->a:I

    if-eq v3, v9, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v3, :cond_e

    .line 4
    iget-object v3, v0, Lf/i/a/a/b1/x/b0;->i:Lf/i/a/a/b1/x/a0;

    .line 5
    iget-boolean v4, v3, Lf/i/a/a/b1/x/a0;->c:Z

    if-nez v4, :cond_e

    .line 6
    iget v4, v0, Lf/i/a/a/b1/x/b0;->r:I

    if-gtz v4, :cond_1

    .line 7
    invoke-virtual {v3, v1}, Lf/i/a/a/b1/x/a0;->a(Lf/i/a/a/b1/d;)I

    goto/16 :goto_7

    .line 8
    :cond_1
    iget-boolean v6, v3, Lf/i/a/a/b1/x/a0;->e:Z

    const-wide/32 v9, 0x1b8a0

    if-nez v6, :cond_6

    .line 9
    iget-wide v11, v1, Lf/i/a/a/b1/d;->c:J

    .line 10
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    long-to-int v6, v9

    int-to-long v9, v6

    sub-long/2addr v11, v9

    .line 11
    iget-wide v9, v1, Lf/i/a/a/b1/d;->d:J

    cmp-long v13, v9, v11

    if-eqz v13, :cond_2

    .line 12
    iput-wide v11, v2, Lf/i/a/a/b1/m;->a:J

    goto :goto_3

    .line 13
    :cond_2
    iget-object v2, v3, Lf/i/a/a/b1/x/a0;->b:Lf/i/a/a/m1/u;

    invoke-virtual {v2, v6}, Lf/i/a/a/m1/u;->w(I)V

    .line 14
    iput v8, v1, Lf/i/a/a/b1/d;->f:I

    .line 15
    iget-object v2, v3, Lf/i/a/a/b1/x/a0;->b:Lf/i/a/a/m1/u;

    iget-object v2, v2, Lf/i/a/a/m1/u;->a:[B

    .line 16
    invoke-virtual {v1, v2, v8, v6, v8}, Lf/i/a/a/b1/d;->d([BIIZ)Z

    .line 17
    iget-object v1, v3, Lf/i/a/a/b1/x/a0;->b:Lf/i/a/a/m1/u;

    .line 18
    iget v2, v1, Lf/i/a/a/m1/u;->b:I

    .line 19
    iget v6, v1, Lf/i/a/a/m1/u;->c:I

    :cond_3
    :goto_1
    add-int/2addr v6, v7

    if-lt v6, v2, :cond_5

    .line 20
    iget-object v9, v1, Lf/i/a/a/m1/u;->a:[B

    aget-byte v9, v9, v6

    if-eq v9, v15, :cond_4

    goto :goto_1

    .line 21
    :cond_4
    invoke-static {v1, v6, v4}, Lc/a/a/b/g/h;->d1(Lf/i/a/a/m1/u;II)J

    move-result-wide v9

    cmp-long v11, v9, v16

    if-eqz v11, :cond_3

    goto :goto_2

    :cond_5
    move-wide/from16 v9, v16

    .line 22
    :goto_2
    iput-wide v9, v3, Lf/i/a/a/b1/x/a0;->g:J

    .line 23
    iput-boolean v5, v3, Lf/i/a/a/b1/x/a0;->e:Z

    goto/16 :goto_7

    .line 24
    :cond_6
    iget-wide v6, v3, Lf/i/a/a/b1/x/a0;->g:J

    cmp-long v11, v6, v16

    if-nez v11, :cond_7

    .line 25
    invoke-virtual {v3, v1}, Lf/i/a/a/b1/x/a0;->a(Lf/i/a/a/b1/d;)I

    goto :goto_7

    .line 26
    :cond_7
    iget-boolean v6, v3, Lf/i/a/a/b1/x/a0;->d:Z

    if-nez v6, :cond_c

    .line 27
    iget-wide v6, v1, Lf/i/a/a/b1/d;->c:J

    .line 28
    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v7, v6

    .line 29
    iget-wide v9, v1, Lf/i/a/a/b1/d;->d:J

    int-to-long v11, v8

    cmp-long v6, v9, v11

    if-eqz v6, :cond_8

    .line 30
    iput-wide v11, v2, Lf/i/a/a/b1/m;->a:J

    :goto_3
    const/4 v8, 0x1

    goto :goto_7

    .line 31
    :cond_8
    iget-object v2, v3, Lf/i/a/a/b1/x/a0;->b:Lf/i/a/a/m1/u;

    invoke-virtual {v2, v7}, Lf/i/a/a/m1/u;->w(I)V

    .line 32
    iput v8, v1, Lf/i/a/a/b1/d;->f:I

    .line 33
    iget-object v2, v3, Lf/i/a/a/b1/x/a0;->b:Lf/i/a/a/m1/u;

    iget-object v2, v2, Lf/i/a/a/m1/u;->a:[B

    .line 34
    invoke-virtual {v1, v2, v8, v7, v8}, Lf/i/a/a/b1/d;->d([BIIZ)Z

    .line 35
    iget-object v1, v3, Lf/i/a/a/b1/x/a0;->b:Lf/i/a/a/m1/u;

    .line 36
    iget v2, v1, Lf/i/a/a/m1/u;->b:I

    .line 37
    iget v6, v1, Lf/i/a/a/m1/u;->c:I

    :goto_4
    if-ge v2, v6, :cond_b

    .line 38
    iget-object v7, v1, Lf/i/a/a/m1/u;->a:[B

    aget-byte v7, v7, v2

    if-eq v7, v15, :cond_9

    goto :goto_5

    .line 39
    :cond_9
    invoke-static {v1, v2, v4}, Lc/a/a/b/g/h;->d1(Lf/i/a/a/m1/u;II)J

    move-result-wide v9

    cmp-long v7, v9, v16

    if-eqz v7, :cond_a

    goto :goto_6

    :cond_a
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_b
    move-wide/from16 v9, v16

    .line 40
    :goto_6
    iput-wide v9, v3, Lf/i/a/a/b1/x/a0;->f:J

    .line 41
    iput-boolean v5, v3, Lf/i/a/a/b1/x/a0;->d:Z

    goto :goto_7

    .line 42
    :cond_c
    iget-wide v4, v3, Lf/i/a/a/b1/x/a0;->f:J

    cmp-long v2, v4, v16

    if-nez v2, :cond_d

    .line 43
    invoke-virtual {v3, v1}, Lf/i/a/a/b1/x/a0;->a(Lf/i/a/a/b1/d;)I

    goto :goto_7

    .line 44
    :cond_d
    iget-object v2, v3, Lf/i/a/a/b1/x/a0;->a:Lf/i/a/a/m1/e0;

    invoke-virtual {v2, v4, v5}, Lf/i/a/a/m1/e0;->b(J)J

    move-result-wide v4

    .line 45
    iget-object v2, v3, Lf/i/a/a/b1/x/a0;->a:Lf/i/a/a/m1/e0;

    iget-wide v6, v3, Lf/i/a/a/b1/x/a0;->g:J

    invoke-virtual {v2, v6, v7}, Lf/i/a/a/m1/e0;->b(J)J

    move-result-wide v6

    sub-long/2addr v6, v4

    .line 46
    iput-wide v6, v3, Lf/i/a/a/b1/x/a0;->h:J

    .line 47
    invoke-virtual {v3, v1}, Lf/i/a/a/b1/x/a0;->a(Lf/i/a/a/b1/d;)I

    :goto_7
    return v8

    .line 48
    :cond_e
    iget-boolean v3, v0, Lf/i/a/a/b1/x/b0;->n:Z

    const-wide/16 v13, 0x0

    if-nez v3, :cond_10

    .line 49
    iput-boolean v5, v0, Lf/i/a/a/b1/x/b0;->n:Z

    .line 50
    iget-object v3, v0, Lf/i/a/a/b1/x/b0;->i:Lf/i/a/a/b1/x/a0;

    .line 51
    iget-wide v5, v3, Lf/i/a/a/b1/x/a0;->h:J

    cmp-long v4, v5, v16

    if-eqz v4, :cond_f

    .line 52
    new-instance v4, Lf/i/a/a/b1/x/z;

    .line 53
    iget-object v3, v3, Lf/i/a/a/b1/x/a0;->a:Lf/i/a/a/m1/e0;

    .line 54
    iget v9, v0, Lf/i/a/a/b1/x/b0;->r:I

    move-object/from16 v17, v3

    move-object v3, v4

    move-object v15, v4

    move-object/from16 v4, v17

    const/4 v12, 0x1

    const/4 v12, 0x0

    move-wide v7, v10

    invoke-direct/range {v3 .. v9}, Lf/i/a/a/b1/x/z;-><init>(Lf/i/a/a/m1/e0;JJI)V

    iput-object v15, v0, Lf/i/a/a/b1/x/b0;->j:Lf/i/a/a/b1/x/z;

    .line 55
    iget-object v3, v0, Lf/i/a/a/b1/x/b0;->k:Lf/i/a/a/b1/h;

    .line 56
    iget-object v4, v15, Lf/i/a/a/b1/a;->a:Lf/i/a/a/b1/a$a;

    .line 57
    invoke-interface {v3, v4}, Lf/i/a/a/b1/h;->a(Lf/i/a/a/b1/n;)V

    goto :goto_8

    :cond_f
    const/4 v12, 0x0

    .line 58
    iget-object v3, v0, Lf/i/a/a/b1/x/b0;->k:Lf/i/a/a/b1/h;

    new-instance v4, Lf/i/a/a/b1/n$b;

    .line 59
    invoke-direct {v4, v5, v6, v13, v14}, Lf/i/a/a/b1/n$b;-><init>(JJ)V

    .line 60
    invoke-interface {v3, v4}, Lf/i/a/a/b1/h;->a(Lf/i/a/a/b1/n;)V

    goto :goto_8

    :cond_10
    const/4 v12, 0x0

    .line 61
    :goto_8
    iget-boolean v3, v0, Lf/i/a/a/b1/x/b0;->o:Z

    if-eqz v3, :cond_11

    .line 62
    iput-boolean v12, v0, Lf/i/a/a/b1/x/b0;->o:Z

    .line 63
    invoke-virtual {v0, v13, v14, v13, v14}, Lf/i/a/a/b1/x/b0;->f(JJ)V

    .line 64
    iget-wide v3, v1, Lf/i/a/a/b1/d;->d:J

    cmp-long v5, v3, v13

    if-eqz v5, :cond_11

    .line 65
    iput-wide v13, v2, Lf/i/a/a/b1/m;->a:J

    const/4 v1, 0x1

    return v1

    .line 66
    :cond_11
    iget-object v3, v0, Lf/i/a/a/b1/x/b0;->j:Lf/i/a/a/b1/x/z;

    if-eqz v3, :cond_13

    .line 67
    iget-object v3, v3, Lf/i/a/a/b1/a;->c:Lf/i/a/a/b1/a$d;

    if-eqz v3, :cond_12

    const/4 v8, 0x1

    goto :goto_9

    :cond_12
    const/4 v8, 0x0

    :goto_9
    if-eqz v8, :cond_13

    .line 68
    iget-object v3, v0, Lf/i/a/a/b1/x/b0;->j:Lf/i/a/a/b1/x/z;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v2, v4}, Lf/i/a/a/b1/a;->a(Lf/i/a/a/b1/d;Lf/i/a/a/b1/m;Lf/i/a/a/b1/a$c;)I

    move-result v1

    return v1

    :cond_13
    const/4 v4, 0x0

    goto :goto_a

    :cond_14
    const/4 v4, 0x0

    const/4 v12, 0x0

    .line 69
    :goto_a
    iget-object v2, v0, Lf/i/a/a/b1/x/b0;->c:Lf/i/a/a/m1/u;

    iget-object v3, v2, Lf/i/a/a/m1/u;->a:[B

    .line 70
    iget v5, v2, Lf/i/a/a/m1/u;->b:I

    rsub-int v5, v5, 0x24b8

    const/16 v6, 0xbc

    if-ge v5, v6, :cond_16

    .line 71
    invoke-virtual {v2}, Lf/i/a/a/m1/u;->a()I

    move-result v2

    if-lez v2, :cond_15

    .line 72
    iget-object v5, v0, Lf/i/a/a/b1/x/b0;->c:Lf/i/a/a/m1/u;

    .line 73
    iget v5, v5, Lf/i/a/a/m1/u;->b:I

    .line 74
    invoke-static {v3, v5, v3, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    :cond_15
    iget-object v5, v0, Lf/i/a/a/b1/x/b0;->c:Lf/i/a/a/m1/u;

    invoke-virtual {v5, v3, v2}, Lf/i/a/a/m1/u;->y([BI)V

    .line 76
    :cond_16
    :goto_b
    iget-object v2, v0, Lf/i/a/a/b1/x/b0;->c:Lf/i/a/a/m1/u;

    invoke-virtual {v2}, Lf/i/a/a/m1/u;->a()I

    move-result v2

    if-ge v2, v6, :cond_18

    .line 77
    iget-object v2, v0, Lf/i/a/a/b1/x/b0;->c:Lf/i/a/a/m1/u;

    .line 78
    iget v2, v2, Lf/i/a/a/m1/u;->c:I

    rsub-int v5, v2, 0x24b8

    .line 79
    invoke-virtual {v1, v3, v2, v5}, Lf/i/a/a/b1/d;->e([BII)I

    move-result v5

    const/4 v7, -0x1

    if-ne v5, v7, :cond_17

    const/4 v8, 0x0

    goto :goto_c

    .line 80
    :cond_17
    iget-object v8, v0, Lf/i/a/a/b1/x/b0;->c:Lf/i/a/a/m1/u;

    add-int/2addr v2, v5

    invoke-virtual {v8, v2}, Lf/i/a/a/m1/u;->z(I)V

    goto :goto_b

    :cond_18
    const/4 v7, -0x1

    const/4 v8, 0x1

    :goto_c
    if-nez v8, :cond_19

    return v7

    .line 81
    :cond_19
    iget-object v1, v0, Lf/i/a/a/b1/x/b0;->c:Lf/i/a/a/m1/u;

    .line 82
    iget v2, v1, Lf/i/a/a/m1/u;->b:I

    .line 83
    iget v3, v1, Lf/i/a/a/m1/u;->c:I

    .line 84
    iget-object v1, v1, Lf/i/a/a/m1/u;->a:[B

    move v5, v2

    :goto_d
    if-ge v5, v3, :cond_1a

    .line 85
    aget-byte v6, v1, v5

    const/16 v7, 0x47

    if-eq v6, v7, :cond_1a

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 86
    :cond_1a
    iget-object v1, v0, Lf/i/a/a/b1/x/b0;->c:Lf/i/a/a/m1/u;

    invoke-virtual {v1, v5}, Lf/i/a/a/m1/u;->A(I)V

    add-int/lit16 v1, v5, 0xbc

    if-le v1, v3, :cond_1c

    .line 87
    iget v3, v0, Lf/i/a/a/b1/x/b0;->q:I

    sub-int/2addr v5, v2

    add-int/2addr v5, v3

    iput v5, v0, Lf/i/a/a/b1/x/b0;->q:I

    .line 88
    iget v2, v0, Lf/i/a/a/b1/x/b0;->a:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1d

    const/16 v2, 0x178

    if-gt v5, v2, :cond_1b

    goto :goto_e

    .line 89
    :cond_1b
    new-instance v1, Lf/i/a/a/h0;

    const-string v2, "Cannot find sync byte. Most likely not a Transport Stream."

    invoke-direct {v1, v2}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1c
    const/4 v3, 0x2

    .line 90
    iput v12, v0, Lf/i/a/a/b1/x/b0;->q:I

    .line 91
    :cond_1d
    :goto_e
    iget-object v2, v0, Lf/i/a/a/b1/x/b0;->c:Lf/i/a/a/m1/u;

    .line 92
    iget v5, v2, Lf/i/a/a/m1/u;->c:I

    if-le v1, v5, :cond_1e

    return v12

    .line 93
    :cond_1e
    invoke-virtual {v2}, Lf/i/a/a/m1/u;->d()I

    move-result v2

    const/high16 v6, 0x800000

    and-int/2addr v6, v2

    if-eqz v6, :cond_1f

    .line 94
    iget-object v2, v0, Lf/i/a/a/b1/x/b0;->c:Lf/i/a/a/m1/u;

    invoke-virtual {v2, v1}, Lf/i/a/a/m1/u;->A(I)V

    return v12

    :cond_1f
    const/high16 v6, 0x400000

    and-int/2addr v6, v2

    if-eqz v6, :cond_20

    const/4 v8, 0x1

    goto :goto_f

    :cond_20
    const/4 v8, 0x0

    :goto_f
    or-int/lit8 v6, v8, 0x0

    const v7, 0x1fff00

    and-int/2addr v7, v2

    shr-int/lit8 v7, v7, 0x8

    and-int/lit8 v8, v2, 0x20

    if-eqz v8, :cond_21

    const/4 v8, 0x1

    goto :goto_10

    :cond_21
    const/4 v8, 0x0

    :goto_10
    and-int/lit8 v9, v2, 0x10

    if-eqz v9, :cond_22

    const/4 v9, 0x1

    goto :goto_11

    :cond_22
    const/4 v9, 0x0

    :goto_11
    if-eqz v9, :cond_23

    .line 95
    iget-object v4, v0, Lf/i/a/a/b1/x/b0;->f:Landroid/util/SparseArray;

    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf/i/a/a/b1/x/c0;

    :cond_23
    if-nez v4, :cond_24

    .line 96
    iget-object v2, v0, Lf/i/a/a/b1/x/b0;->c:Lf/i/a/a/m1/u;

    invoke-virtual {v2, v1}, Lf/i/a/a/m1/u;->A(I)V

    return v12

    .line 97
    :cond_24
    iget v9, v0, Lf/i/a/a/b1/x/b0;->a:I

    if-eq v9, v3, :cond_26

    and-int/lit8 v2, v2, 0xf

    .line 98
    iget-object v9, v0, Lf/i/a/a/b1/x/b0;->d:Landroid/util/SparseIntArray;

    add-int/lit8 v13, v2, -0x1

    invoke-virtual {v9, v7, v13}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    .line 99
    iget-object v13, v0, Lf/i/a/a/b1/x/b0;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v13, v7, v2}, Landroid/util/SparseIntArray;->put(II)V

    if-ne v9, v2, :cond_25

    .line 100
    iget-object v2, v0, Lf/i/a/a/b1/x/b0;->c:Lf/i/a/a/m1/u;

    invoke-virtual {v2, v1}, Lf/i/a/a/m1/u;->A(I)V

    return v12

    :cond_25
    const/4 v13, 0x1

    add-int/2addr v9, v13

    and-int/lit8 v9, v9, 0xf

    if-eq v2, v9, :cond_26

    .line 101
    invoke-interface {v4}, Lf/i/a/a/b1/x/c0;->a()V

    :cond_26
    if-eqz v8, :cond_28

    .line 102
    iget-object v2, v0, Lf/i/a/a/b1/x/b0;->c:Lf/i/a/a/m1/u;

    invoke-virtual {v2}, Lf/i/a/a/m1/u;->p()I

    move-result v2

    .line 103
    iget-object v8, v0, Lf/i/a/a/b1/x/b0;->c:Lf/i/a/a/m1/u;

    invoke-virtual {v8}, Lf/i/a/a/m1/u;->p()I

    move-result v8

    and-int/lit8 v8, v8, 0x40

    if-eqz v8, :cond_27

    const/4 v9, 0x2

    goto :goto_12

    :cond_27
    const/4 v9, 0x0

    :goto_12
    or-int/2addr v6, v9

    .line 104
    iget-object v8, v0, Lf/i/a/a/b1/x/b0;->c:Lf/i/a/a/m1/u;

    const/4 v9, 0x1

    sub-int/2addr v2, v9

    invoke-virtual {v8, v2}, Lf/i/a/a/m1/u;->B(I)V

    .line 105
    :cond_28
    iget-boolean v2, v0, Lf/i/a/a/b1/x/b0;->m:Z

    .line 106
    iget v8, v0, Lf/i/a/a/b1/x/b0;->a:I

    if-eq v8, v3, :cond_2a

    if-nez v2, :cond_2a

    iget-object v8, v0, Lf/i/a/a/b1/x/b0;->h:Landroid/util/SparseBooleanArray;

    .line 107
    invoke-virtual {v8, v7, v12}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v7

    if-nez v7, :cond_29

    goto :goto_13

    :cond_29
    const/4 v8, 0x0

    goto :goto_14

    :cond_2a
    :goto_13
    const/4 v8, 0x1

    :goto_14
    if-eqz v8, :cond_2b

    .line 108
    iget-object v7, v0, Lf/i/a/a/b1/x/b0;->c:Lf/i/a/a/m1/u;

    invoke-virtual {v7, v1}, Lf/i/a/a/m1/u;->z(I)V

    .line 109
    iget-object v7, v0, Lf/i/a/a/b1/x/b0;->c:Lf/i/a/a/m1/u;

    invoke-interface {v4, v7, v6}, Lf/i/a/a/b1/x/c0;->c(Lf/i/a/a/m1/u;I)V

    .line 110
    iget-object v4, v0, Lf/i/a/a/b1/x/b0;->c:Lf/i/a/a/m1/u;

    invoke-virtual {v4, v5}, Lf/i/a/a/m1/u;->z(I)V

    .line 111
    :cond_2b
    iget v4, v0, Lf/i/a/a/b1/x/b0;->a:I

    if-eq v4, v3, :cond_2c

    if-nez v2, :cond_2c

    iget-boolean v2, v0, Lf/i/a/a/b1/x/b0;->m:Z

    if-eqz v2, :cond_2c

    const-wide/16 v2, -0x1

    cmp-long v4, v10, v2

    if-eqz v4, :cond_2c

    const/4 v2, 0x1

    .line 112
    iput-boolean v2, v0, Lf/i/a/a/b1/x/b0;->o:Z

    .line 113
    :cond_2c
    iget-object v2, v0, Lf/i/a/a/b1/x/b0;->c:Lf/i/a/a/m1/u;

    invoke-virtual {v2, v1}, Lf/i/a/a/m1/u;->A(I)V

    return v12
.end method

.method public d(Lf/i/a/a/b1/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/i/a/a/b1/x/b0;->k:Lf/i/a/a/b1/h;

    return-void
.end method

.method public f(JJ)V
    .locals 10

    .line 1
    iget p1, p0, Lf/i/a/a/b1/x/b0;->a:I

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lc/a/a/b/g/h;->v(Z)V

    .line 2
    iget-object p1, p0, Lf/i/a/a/b1/x/b0;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_1
    const-wide/16 v2, 0x0

    if-ge v1, p1, :cond_4

    .line 3
    iget-object v4, p0, Lf/i/a/a/b1/x/b0;->b:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf/i/a/a/m1/e0;

    .line 4
    invoke-virtual {v4}, Lf/i/a/a/m1/e0;->c()J

    move-result-wide v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v9, v5, v7

    if-nez v9, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_2
    if-nez v5, :cond_2

    .line 5
    invoke-virtual {v4}, Lf/i/a/a/m1/e0;->c()J

    move-result-wide v5

    cmp-long v9, v5, v2

    if-eqz v9, :cond_3

    .line 6
    iget-wide v2, v4, Lf/i/a/a/m1/e0;->a:J

    cmp-long v5, v2, p3

    if-eqz v5, :cond_3

    .line 7
    :cond_2
    iput-wide v7, v4, Lf/i/a/a/m1/e0;->c:J

    .line 8
    invoke-virtual {v4, p3, p4}, Lf/i/a/a/m1/e0;->d(J)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    cmp-long p1, p3, v2

    if-eqz p1, :cond_5

    .line 9
    iget-object p1, p0, Lf/i/a/a/b1/x/b0;->j:Lf/i/a/a/b1/x/z;

    if-eqz p1, :cond_5

    .line 10
    invoke-virtual {p1, p3, p4}, Lf/i/a/a/b1/a;->d(J)V

    .line 11
    :cond_5
    iget-object p1, p0, Lf/i/a/a/b1/x/b0;->c:Lf/i/a/a/m1/u;

    invoke-virtual {p1}, Lf/i/a/a/m1/u;->v()V

    .line 12
    iget-object p1, p0, Lf/i/a/a/b1/x/b0;->d:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    const/4 p1, 0x0

    .line 13
    :goto_3
    iget-object p2, p0, Lf/i/a/a/b1/x/b0;->f:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_6

    .line 14
    iget-object p2, p0, Lf/i/a/a/b1/x/b0;->f:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lf/i/a/a/b1/x/c0;

    invoke-interface {p2}, Lf/i/a/a/b1/x/c0;->a()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 15
    :cond_6
    iput v0, p0, Lf/i/a/a/b1/x/b0;->q:I

    return-void
.end method

.method public i(Lf/i/a/a/b1/d;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/b1/x/b0;->c:Lf/i/a/a/m1/u;

    iget-object v0, v0, Lf/i/a/a/m1/u;->a:[B

    const/4 v1, 0x0

    const/16 v2, 0x3ac

    .line 2
    invoke-virtual {p1, v0, v1, v2, v1}, Lf/i/a/a/b1/d;->d([BIIZ)Z

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xbc

    if-ge v2, v3, :cond_3

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x5

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    mul-int/lit16 v4, v3, 0xbc

    add-int/2addr v4, v2

    .line 3
    aget-byte v4, v0, v4

    const/16 v6, 0x47

    if-eq v4, v6, :cond_0

    const/4 v3, 0x0

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_2

    .line 4
    invoke-virtual {p1, v2}, Lf/i/a/a/b1/d;->h(I)V

    return v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method
