.class public Lf/i/a/a/h1/u0/g;
.super Ljava/lang/Object;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/h1/u0/g$b;,
        Lf/i/a/a/h1/u0/g$d;,
        Lf/i/a/a/h1/u0/g$a;,
        Lf/i/a/a/h1/u0/g$e;,
        Lf/i/a/a/h1/u0/g$c;
    }
.end annotation


# instance fields
.field public final a:Lf/i/a/a/h1/u0/i;

.field public final b:Lf/i/a/a/l1/m;

.field public final c:Lf/i/a/a/l1/m;

.field public final d:Lf/i/a/a/h1/u0/q;

.field public final e:[Landroid/net/Uri;

.field public final f:[Lf/i/a/a/b0;

.field public final g:Lf/i/a/a/h1/u0/t/j;

.field public final h:Lf/i/a/a/h1/o0;

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/i/a/a/b0;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lf/i/a/a/h1/u0/g$b;

.field public k:Z

.field public l:[B

.field public m:Ljava/io/IOException;

.field public n:Landroid/net/Uri;

.field public o:Z

.field public p:Lf/i/a/a/j1/j;

.field public q:J

.field public r:Z


# direct methods
.method public constructor <init>(Lf/i/a/a/h1/u0/i;Lf/i/a/a/h1/u0/t/j;[Landroid/net/Uri;[Lf/i/a/a/b0;Lf/i/a/a/h1/u0/h;Lf/i/a/a/l1/i0;Lf/i/a/a/h1/u0/q;Ljava/util/List;)V
    .locals 0
    .param p6    # Lf/i/a/a/l1/i0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i/a/a/h1/u0/i;",
            "Lf/i/a/a/h1/u0/t/j;",
            "[",
            "Landroid/net/Uri;",
            "[",
            "Lf/i/a/a/b0;",
            "Lf/i/a/a/h1/u0/h;",
            "Lf/i/a/a/l1/i0;",
            "Lf/i/a/a/h1/u0/q;",
            "Ljava/util/List<",
            "Lf/i/a/a/b0;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/h1/u0/g;->a:Lf/i/a/a/h1/u0/i;

    .line 3
    iput-object p2, p0, Lf/i/a/a/h1/u0/g;->g:Lf/i/a/a/h1/u0/t/j;

    .line 4
    iput-object p3, p0, Lf/i/a/a/h1/u0/g;->e:[Landroid/net/Uri;

    .line 5
    iput-object p4, p0, Lf/i/a/a/h1/u0/g;->f:[Lf/i/a/a/b0;

    .line 6
    iput-object p7, p0, Lf/i/a/a/h1/u0/g;->d:Lf/i/a/a/h1/u0/q;

    .line 7
    iput-object p8, p0, Lf/i/a/a/h1/u0/g;->i:Ljava/util/List;

    .line 8
    new-instance p1, Lf/i/a/a/h1/u0/g$b;

    invoke-direct {p1}, Lf/i/a/a/h1/u0/g$b;-><init>()V

    iput-object p1, p0, Lf/i/a/a/h1/u0/g;->j:Lf/i/a/a/h1/u0/g$b;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    iput-wide p1, p0, Lf/i/a/a/h1/u0/g;->q:J

    const/4 p1, 0x1

    .line 10
    invoke-interface {p5, p1}, Lf/i/a/a/h1/u0/h;->a(I)Lf/i/a/a/l1/m;

    move-result-object p1

    iput-object p1, p0, Lf/i/a/a/h1/u0/g;->b:Lf/i/a/a/l1/m;

    if-eqz p6, :cond_0

    .line 11
    invoke-interface {p1, p6}, Lf/i/a/a/l1/m;->c(Lf/i/a/a/l1/i0;)V

    :cond_0
    const/4 p1, 0x3

    .line 12
    invoke-interface {p5, p1}, Lf/i/a/a/h1/u0/h;->a(I)Lf/i/a/a/l1/m;

    move-result-object p1

    iput-object p1, p0, Lf/i/a/a/h1/u0/g;->c:Lf/i/a/a/l1/m;

    .line 13
    new-instance p1, Lf/i/a/a/h1/o0;

    invoke-direct {p1, p4}, Lf/i/a/a/h1/o0;-><init>([Lf/i/a/a/b0;)V

    iput-object p1, p0, Lf/i/a/a/h1/u0/g;->h:Lf/i/a/a/h1/o0;

    .line 14
    array-length p1, p3

    new-array p1, p1, [I

    const/4 p2, 0x0

    .line 15
    :goto_0
    array-length p4, p3

    if-ge p2, p4, :cond_1

    .line 16
    aput p2, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 17
    :cond_1
    new-instance p2, Lf/i/a/a/h1/u0/g$e;

    iget-object p3, p0, Lf/i/a/a/h1/u0/g;->h:Lf/i/a/a/h1/o0;

    invoke-direct {p2, p3, p1}, Lf/i/a/a/h1/u0/g$e;-><init>(Lf/i/a/a/h1/o0;[I)V

    iput-object p2, p0, Lf/i/a/a/h1/u0/g;->p:Lf/i/a/a/j1/j;

    return-void
.end method


# virtual methods
.method public a(Lf/i/a/a/h1/u0/k;J)[Lf/i/a/a/h1/s0/m;
    .locals 18
    .param p1    # Lf/i/a/a/h1/u0/k;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    if-nez v9, :cond_0

    const/4 v0, -0x1

    const/4 v10, -0x1

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, v8, Lf/i/a/a/h1/u0/g;->h:Lf/i/a/a/h1/o0;

    iget-object v1, v9, Lf/i/a/a/h1/s0/d;->c:Lf/i/a/a/b0;

    invoke-virtual {v0, v1}, Lf/i/a/a/h1/o0;->a(Lf/i/a/a/b0;)I

    move-result v0

    move v10, v0

    .line 2
    :goto_0
    iget-object v0, v8, Lf/i/a/a/h1/u0/g;->p:Lf/i/a/a/j1/j;

    invoke-interface {v0}, Lf/i/a/a/j1/j;->length()I

    move-result v11

    new-array v12, v11, [Lf/i/a/a/h1/s0/m;

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v11, :cond_4

    .line 3
    iget-object v0, v8, Lf/i/a/a/h1/u0/g;->p:Lf/i/a/a/j1/j;

    invoke-interface {v0, v14}, Lf/i/a/a/j1/j;->e(I)I

    move-result v0

    .line 4
    iget-object v1, v8, Lf/i/a/a/h1/u0/g;->e:[Landroid/net/Uri;

    aget-object v1, v1, v0

    .line 5
    iget-object v2, v8, Lf/i/a/a/h1/u0/g;->g:Lf/i/a/a/h1/u0/t/j;

    check-cast v2, Lf/i/a/a/h1/u0/t/c;

    invoke-virtual {v2, v1}, Lf/i/a/a/h1/u0/t/c;->e(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    sget-object v0, Lf/i/a/a/h1/s0/m;->a:Lf/i/a/a/h1/s0/m;

    aput-object v0, v12, v14

    goto :goto_3

    .line 7
    :cond_1
    iget-object v2, v8, Lf/i/a/a/h1/u0/g;->g:Lf/i/a/a/h1/u0/t/j;

    .line 8
    check-cast v2, Lf/i/a/a/h1/u0/t/c;

    invoke-virtual {v2, v1, v13}, Lf/i/a/a/h1/u0/t/c;->d(Landroid/net/Uri;Z)Lf/i/a/a/h1/u0/t/f;

    move-result-object v15

    .line 9
    iget-wide v1, v15, Lf/i/a/a/h1/u0/t/f;->f:J

    iget-object v3, v8, Lf/i/a/a/h1/u0/g;->g:Lf/i/a/a/h1/u0/t/j;

    .line 10
    check-cast v3, Lf/i/a/a/h1/u0/t/c;

    .line 11
    iget-wide v3, v3, Lf/i/a/a/h1/u0/t/c;->p:J

    sub-long v6, v1, v3

    if-eq v0, v10, :cond_2

    const/4 v0, 0x1

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v15

    move-wide v4, v6

    move-wide/from16 v16, v6

    move-wide/from16 v6, p2

    .line 12
    invoke-virtual/range {v0 .. v7}, Lf/i/a/a/h1/u0/g;->b(Lf/i/a/a/h1/u0/k;ZLf/i/a/a/h1/u0/t/f;JJ)J

    move-result-wide v0

    .line 13
    iget-wide v2, v15, Lf/i/a/a/h1/u0/t/f;->i:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_3

    .line 14
    sget-object v0, Lf/i/a/a/h1/s0/m;->a:Lf/i/a/a/h1/s0/m;

    aput-object v0, v12, v14

    goto :goto_3

    :cond_3
    sub-long/2addr v0, v2

    long-to-int v1, v0

    .line 15
    new-instance v0, Lf/i/a/a/h1/u0/g$d;

    move-wide/from16 v2, v16

    invoke-direct {v0, v15, v2, v3, v1}, Lf/i/a/a/h1/u0/g$d;-><init>(Lf/i/a/a/h1/u0/t/f;JI)V

    aput-object v0, v12, v14

    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_4
    return-object v12
.end method

.method public final b(Lf/i/a/a/h1/u0/k;ZLf/i/a/a/h1/u0/t/f;JJ)J
    .locals 2
    .param p1    # Lf/i/a/a/h1/u0/k;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lf/i/a/a/h1/s0/l;->c()J

    move-result-wide p1

    return-wide p1

    .line 2
    :cond_1
    :goto_0
    iget-wide v0, p3, Lf/i/a/a/h1/u0/t/f;->p:J

    add-long/2addr v0, p4

    if-eqz p1, :cond_3

    .line 3
    iget-boolean p2, p0, Lf/i/a/a/h1/u0/g;->o:Z

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    iget-wide p6, p1, Lf/i/a/a/h1/s0/d;->f:J

    .line 4
    :cond_3
    :goto_1
    iget-boolean p2, p3, Lf/i/a/a/h1/u0/t/f;->l:Z

    if-nez p2, :cond_4

    cmp-long p2, p6, v0

    if-ltz p2, :cond_4

    .line 5
    iget-wide p1, p3, Lf/i/a/a/h1/u0/t/f;->i:J

    iget-object p3, p3, Lf/i/a/a/h1/u0/t/f;->o:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    int-to-long p3, p3

    goto :goto_4

    :cond_4
    sub-long/2addr p6, p4

    .line 6
    iget-object p2, p3, Lf/i/a/a/h1/u0/t/f;->o:Ljava/util/List;

    .line 7
    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    iget-object p5, p0, Lf/i/a/a/h1/u0/g;->g:Lf/i/a/a/h1/u0/t/j;

    .line 8
    check-cast p5, Lf/i/a/a/h1/u0/t/c;

    .line 9
    iget-boolean p5, p5, Lf/i/a/a/h1/u0/t/c;->o:Z

    const/4 p6, 0x1

    if-eqz p5, :cond_6

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 p1, 0x1

    .line 10
    :goto_3
    invoke-static {p2, p4, p6, p1}, Lf/i/a/a/m1/h0;->d(Ljava/util/List;Ljava/lang/Comparable;ZZ)I

    move-result p1

    int-to-long p1, p1

    iget-wide p3, p3, Lf/i/a/a/h1/u0/t/f;->i:J

    :goto_4
    add-long/2addr p1, p3

    return-wide p1
.end method

.method public final c(Landroid/net/Uri;I)Lf/i/a/a/h1/s0/d;
    .locals 10
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    iget-object v1, p0, Lf/i/a/a/h1/u0/g;->j:Lf/i/a/a/h1/u0/g$b;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    iget-object p2, p0, Lf/i/a/a/h1/u0/g;->j:Lf/i/a/a/h1/u0/g$b;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {p2, p1, v1}, Lf/i/a/a/h1/u0/g$b;->b(Landroid/net/Uri;[B)[B

    return-object v0

    .line 3
    :cond_1
    new-instance v0, Lf/i/a/a/l1/p;

    const-wide/16 v4, 0x0

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v9}, Lf/i/a/a/l1/p;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 4
    new-instance p1, Lf/i/a/a/h1/u0/g$a;

    iget-object v3, p0, Lf/i/a/a/h1/u0/g;->c:Lf/i/a/a/l1/m;

    iget-object v1, p0, Lf/i/a/a/h1/u0/g;->f:[Lf/i/a/a/b0;

    aget-object v5, v1, p2

    iget-object p2, p0, Lf/i/a/a/h1/u0/g;->p:Lf/i/a/a/j1/j;

    .line 5
    invoke-interface {p2}, Lf/i/a/a/j1/j;->l()I

    move-result v6

    iget-object p2, p0, Lf/i/a/a/h1/u0/g;->p:Lf/i/a/a/j1/j;

    .line 6
    invoke-interface {p2}, Lf/i/a/a/j1/j;->p()Ljava/lang/Object;

    move-result-object v7

    iget-object v8, p0, Lf/i/a/a/h1/u0/g;->l:[B

    move-object v2, p1

    move-object v4, v0

    invoke-direct/range {v2 .. v8}, Lf/i/a/a/h1/u0/g$a;-><init>(Lf/i/a/a/l1/m;Lf/i/a/a/l1/p;Lf/i/a/a/b0;ILjava/lang/Object;[B)V

    return-object p1
.end method
