.class public final Lf/i/a/a/h1/v0/d;
.super Ljava/lang/Object;
.source "SsMediaPeriod.java"

# interfaces
.implements Lf/i/a/a/h1/d0;
.implements Lf/i/a/a/h1/l0$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/i/a/a/h1/d0;",
        "Lf/i/a/a/h1/l0$a<",
        "Lf/i/a/a/h1/s0/g<",
        "Lf/i/a/a/h1/v0/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final a:Lf/i/a/a/h1/v0/c$a;

.field public final b:Lf/i/a/a/l1/i0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final c:Lf/i/a/a/l1/d0;

.field public final d:Lf/i/a/a/l1/b0;

.field public final e:Lf/i/a/a/h1/f0$a;

.field public final f:Lf/i/a/a/l1/e;

.field public final g:Lf/i/a/a/h1/p0;

.field public final h:Lf/i/a/a/h1/v;

.field public i:Lf/i/a/a/h1/d0$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public j:Lf/i/a/a/h1/v0/e/a;

.field public k:[Lf/i/a/a/h1/s0/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lf/i/a/a/h1/s0/g<",
            "Lf/i/a/a/h1/v0/c;",
            ">;"
        }
    .end annotation
.end field

.field public l:Lf/i/a/a/h1/l0;

.field public m:Z


# direct methods
.method public constructor <init>(Lf/i/a/a/h1/v0/e/a;Lf/i/a/a/h1/v0/c$a;Lf/i/a/a/l1/i0;Lf/i/a/a/h1/v;Lf/i/a/a/l1/b0;Lf/i/a/a/h1/f0$a;Lf/i/a/a/l1/d0;Lf/i/a/a/l1/e;)V
    .locals 0
    .param p3    # Lf/i/a/a/l1/i0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/h1/v0/d;->j:Lf/i/a/a/h1/v0/e/a;

    .line 3
    iput-object p2, p0, Lf/i/a/a/h1/v0/d;->a:Lf/i/a/a/h1/v0/c$a;

    .line 4
    iput-object p3, p0, Lf/i/a/a/h1/v0/d;->b:Lf/i/a/a/l1/i0;

    .line 5
    iput-object p7, p0, Lf/i/a/a/h1/v0/d;->c:Lf/i/a/a/l1/d0;

    .line 6
    iput-object p5, p0, Lf/i/a/a/h1/v0/d;->d:Lf/i/a/a/l1/b0;

    .line 7
    iput-object p6, p0, Lf/i/a/a/h1/v0/d;->e:Lf/i/a/a/h1/f0$a;

    .line 8
    iput-object p8, p0, Lf/i/a/a/h1/v0/d;->f:Lf/i/a/a/l1/e;

    .line 9
    iput-object p4, p0, Lf/i/a/a/h1/v0/d;->h:Lf/i/a/a/h1/v;

    .line 10
    iget-object p2, p1, Lf/i/a/a/h1/v0/e/a;->f:[Lf/i/a/a/h1/v0/e/a$b;

    array-length p2, p2

    new-array p2, p2, [Lf/i/a/a/h1/o0;

    const/4 p3, 0x0

    const/4 p5, 0x0

    .line 11
    :goto_0
    iget-object p7, p1, Lf/i/a/a/h1/v0/e/a;->f:[Lf/i/a/a/h1/v0/e/a$b;

    array-length p8, p7

    if-ge p5, p8, :cond_0

    .line 12
    new-instance p8, Lf/i/a/a/h1/o0;

    aget-object p7, p7, p5

    iget-object p7, p7, Lf/i/a/a/h1/v0/e/a$b;->j:[Lf/i/a/a/b0;

    invoke-direct {p8, p7}, Lf/i/a/a/h1/o0;-><init>([Lf/i/a/a/b0;)V

    aput-object p8, p2, p5

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Lf/i/a/a/h1/p0;

    invoke-direct {p1, p2}, Lf/i/a/a/h1/p0;-><init>([Lf/i/a/a/h1/o0;)V

    .line 14
    iput-object p1, p0, Lf/i/a/a/h1/v0/d;->g:Lf/i/a/a/h1/p0;

    new-array p1, p3, [Lf/i/a/a/h1/s0/g;

    .line 15
    iput-object p1, p0, Lf/i/a/a/h1/v0/d;->k:[Lf/i/a/a/h1/s0/g;

    if-eqz p4, :cond_1

    .line 16
    new-instance p2, Lf/i/a/a/h1/t;

    invoke-direct {p2, p1}, Lf/i/a/a/h1/t;-><init>([Lf/i/a/a/h1/l0;)V

    .line 17
    iput-object p2, p0, Lf/i/a/a/h1/v0/d;->l:Lf/i/a/a/h1/l0;

    .line 18
    invoke-virtual {p6}, Lf/i/a/a/h1/f0$a;->y()V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 19
    throw p1
.end method


# virtual methods
.method public b(JLf/i/a/a/s0;)J
    .locals 6

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/v0/d;->k:[Lf/i/a/a/h1/s0/g;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget v4, v3, Lf/i/a/a/h1/s0/g;->a:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 3
    iget-object v0, v3, Lf/i/a/a/h1/s0/g;->e:Lf/i/a/a/h1/s0/h;

    invoke-interface {v0, p1, p2, p3}, Lf/i/a/a/h1/s0/h;->b(JLf/i/a/a/s0;)J

    move-result-wide p1

    return-wide p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide p1
.end method

.method public c()J
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/v0/d;->l:Lf/i/a/a/h1/l0;

    invoke-interface {v0}, Lf/i/a/a/h1/l0;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public e()J
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/v0/d;->l:Lf/i/a/a/h1/l0;

    invoke-interface {v0}, Lf/i/a/a/h1/l0;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public f(J)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/v0/d;->l:Lf/i/a/a/h1/l0;

    invoke-interface {v0, p1, p2}, Lf/i/a/a/h1/l0;->f(J)Z

    move-result p1

    return p1
.end method

.method public g(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/v0/d;->l:Lf/i/a/a/h1/l0;

    invoke-interface {v0, p1, p2}, Lf/i/a/a/h1/l0;->g(J)V

    return-void
.end method

.method public i(Lf/i/a/a/h1/l0;)V
    .locals 0

    .line 1
    check-cast p1, Lf/i/a/a/h1/s0/g;

    .line 2
    iget-object p1, p0, Lf/i/a/a/h1/v0/d;->i:Lf/i/a/a/h1/d0$a;

    invoke-interface {p1, p0}, Lf/i/a/a/h1/l0$a;->i(Lf/i/a/a/h1/l0;)V

    return-void
.end method

.method public j([Lf/i/a/a/j1/j;[Z[Lf/i/a/a/h1/k0;[ZJ)J
    .locals 16

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    .line 1
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const/4 v14, 0x0

    .line 2
    :goto_0
    array-length v0, v12

    const/4 v1, 0x0

    if-ge v14, v0, :cond_4

    .line 3
    aget-object v0, p3, v14

    if-eqz v0, :cond_2

    .line 4
    aget-object v0, p3, v14

    check-cast v0, Lf/i/a/a/h1/s0/g;

    .line 5
    aget-object v2, v12, v14

    if-eqz v2, :cond_1

    aget-boolean v2, p2, v14

    if-nez v2, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    iget-object v1, v0, Lf/i/a/a/h1/s0/g;->e:Lf/i/a/a/h1/s0/h;

    .line 7
    check-cast v1, Lf/i/a/a/h1/v0/c;

    aget-object v2, v12, v14

    invoke-interface {v1, v2}, Lf/i/a/a/h1/v0/c;->c(Lf/i/a/a/j1/j;)V

    .line 8
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 9
    :cond_1
    :goto_1
    invoke-virtual {v0, v1}, Lf/i/a/a/h1/s0/g;->B(Lf/i/a/a/h1/s0/g$b;)V

    .line 10
    aput-object v1, p3, v14

    .line 11
    :cond_2
    :goto_2
    aget-object v0, p3, v14

    if-nez v0, :cond_3

    aget-object v0, v12, v14

    if-eqz v0, :cond_3

    .line 12
    aget-object v5, v12, v14

    .line 13
    iget-object v0, v11, Lf/i/a/a/h1/v0/d;->g:Lf/i/a/a/h1/p0;

    invoke-interface {v5}, Lf/i/a/a/j1/j;->j()Lf/i/a/a/h1/o0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/i/a/a/h1/p0;->a(Lf/i/a/a/h1/o0;)I

    move-result v0

    .line 14
    iget-object v1, v11, Lf/i/a/a/h1/v0/d;->a:Lf/i/a/a/h1/v0/c$a;

    iget-object v2, v11, Lf/i/a/a/h1/v0/d;->c:Lf/i/a/a/l1/d0;

    iget-object v3, v11, Lf/i/a/a/h1/v0/d;->j:Lf/i/a/a/h1/v0/e/a;

    iget-object v6, v11, Lf/i/a/a/h1/v0/d;->b:Lf/i/a/a/l1/i0;

    move v4, v0

    .line 15
    invoke-interface/range {v1 .. v6}, Lf/i/a/a/h1/v0/c$a;->a(Lf/i/a/a/l1/d0;Lf/i/a/a/h1/v0/e/a;ILf/i/a/a/j1/j;Lf/i/a/a/l1/i0;)Lf/i/a/a/h1/v0/c;

    move-result-object v4

    .line 16
    new-instance v15, Lf/i/a/a/h1/s0/g;

    iget-object v1, v11, Lf/i/a/a/h1/v0/d;->j:Lf/i/a/a/h1/v0/e/a;

    iget-object v1, v1, Lf/i/a/a/h1/v0/e/a;->f:[Lf/i/a/a/h1/v0/e/a$b;

    aget-object v0, v1, v0

    iget v1, v0, Lf/i/a/a/h1/v0/e/a$b;->a:I

    iget-object v6, v11, Lf/i/a/a/h1/v0/d;->f:Lf/i/a/a/l1/e;

    iget-object v9, v11, Lf/i/a/a/h1/v0/d;->d:Lf/i/a/a/l1/b0;

    iget-object v10, v11, Lf/i/a/a/h1/v0/d;->e:Lf/i/a/a/h1/f0$a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v15

    move-object/from16 v5, p0

    move-wide/from16 v7, p5

    invoke-direct/range {v0 .. v10}, Lf/i/a/a/h1/s0/g;-><init>(I[I[Lf/i/a/a/b0;Lf/i/a/a/h1/s0/h;Lf/i/a/a/h1/l0$a;Lf/i/a/a/l1/e;JLf/i/a/a/l1/b0;Lf/i/a/a/h1/f0$a;)V

    .line 17
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    aput-object v15, p3, v14

    const/4 v0, 0x1

    .line 19
    aput-boolean v0, p4, v14

    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 20
    :cond_4
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 21
    new-array v0, v0, [Lf/i/a/a/h1/s0/g;

    .line 22
    iput-object v0, v11, Lf/i/a/a/h1/v0/d;->k:[Lf/i/a/a/h1/s0/g;

    .line 23
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 24
    iget-object v0, v11, Lf/i/a/a/h1/v0/d;->h:Lf/i/a/a/h1/v;

    iget-object v2, v11, Lf/i/a/a/h1/v0/d;->k:[Lf/i/a/a/h1/s0/g;

    if-eqz v0, :cond_5

    .line 25
    new-instance v0, Lf/i/a/a/h1/t;

    invoke-direct {v0, v2}, Lf/i/a/a/h1/t;-><init>([Lf/i/a/a/h1/l0;)V

    .line 26
    iput-object v0, v11, Lf/i/a/a/h1/v0/d;->l:Lf/i/a/a/h1/l0;

    return-wide p5

    .line 27
    :cond_5
    throw v1
.end method

.method public l()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lf/i/a/a/h1/v0/d;->m:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/i/a/a/h1/v0/d;->e:Lf/i/a/a/h1/f0$a;

    invoke-virtual {v0}, Lf/i/a/a/h1/f0$a;->B()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lf/i/a/a/h1/v0/d;->m:Z

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public m(Lf/i/a/a/h1/d0$a;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/i/a/a/h1/v0/d;->i:Lf/i/a/a/h1/d0$a;

    .line 2
    invoke-interface {p1, p0}, Lf/i/a/a/h1/d0$a;->h(Lf/i/a/a/h1/d0;)V

    return-void
.end method

.method public n(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lf/i/a/a/j1/j;",
            ">;)",
            "Ljava/util/List<",
            "Lf/i/a/a/e1/c0;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 3
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf/i/a/a/j1/j;

    .line 4
    iget-object v4, p0, Lf/i/a/a/h1/v0/d;->g:Lf/i/a/a/h1/p0;

    invoke-interface {v3}, Lf/i/a/a/j1/j;->j()Lf/i/a/a/h1/o0;

    move-result-object v5

    invoke-virtual {v4, v5}, Lf/i/a/a/h1/p0;->a(Lf/i/a/a/h1/o0;)I

    move-result v4

    const/4 v5, 0x0

    .line 5
    :goto_1
    invoke-interface {v3}, Lf/i/a/a/j1/j;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 6
    new-instance v6, Lf/i/a/a/e1/c0;

    invoke-interface {v3, v5}, Lf/i/a/a/j1/j;->e(I)I

    move-result v7

    .line 7
    invoke-direct {v6, v1, v4, v7}, Lf/i/a/a/e1/c0;-><init>(III)V

    .line 8
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public o()Lf/i/a/a/h1/p0;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/v0/d;->g:Lf/i/a/a/h1/p0;

    return-object v0
.end method

.method public s()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/v0/d;->c:Lf/i/a/a/l1/d0;

    invoke-interface {v0}, Lf/i/a/a/l1/d0;->a()V

    return-void
.end method

.method public t(JZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/v0/d;->k:[Lf/i/a/a/h1/s0/g;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3, p1, p2, p3}, Lf/i/a/a/h1/s0/g;->t(JZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public u(J)J
    .locals 4

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/v0/d;->k:[Lf/i/a/a/h1/s0/g;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3, p1, p2}, Lf/i/a/a/h1/s0/g;->C(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide p1
.end method
