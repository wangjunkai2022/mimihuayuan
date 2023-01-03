.class public Lf/i/a/a/h1/s0/g;
.super Ljava/lang/Object;
.source "ChunkSampleStream.java"

# interfaces
.implements Lf/i/a/a/h1/k0;
.implements Lf/i/a/a/h1/l0;
.implements Lf/i/a/a/l1/c0$b;
.implements Lf/i/a/a/l1/c0$f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/h1/s0/g$a;,
        Lf/i/a/a/h1/s0/g$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lf/i/a/a/h1/s0/h;",
        ">",
        "Ljava/lang/Object;",
        "Lf/i/a/a/h1/k0;",
        "Lf/i/a/a/h1/l0;",
        "Lf/i/a/a/l1/c0$b<",
        "Lf/i/a/a/h1/s0/d;",
        ">;",
        "Lf/i/a/a/l1/c0$f;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:[I

.field public final c:[Lf/i/a/a/b0;

.field public final d:[Z

.field public final e:Lf/i/a/a/h1/s0/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final f:Lf/i/a/a/h1/l0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i/a/a/h1/l0$a<",
            "Lf/i/a/a/h1/s0/g<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final g:Lf/i/a/a/h1/f0$a;

.field public final h:Lf/i/a/a/l1/b0;

.field public final i:Lf/i/a/a/l1/c0;

.field public final j:Lf/i/a/a/h1/s0/f;

.field public final k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lf/i/a/a/h1/s0/a;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/i/a/a/h1/s0/a;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Lf/i/a/a/h1/j0;

.field public final n:[Lf/i/a/a/h1/j0;

.field public final o:Lf/i/a/a/h1/s0/c;

.field public p:Lf/i/a/a/b0;

.field public q:Lf/i/a/a/h1/s0/g$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i/a/a/h1/s0/g$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public r:J

.field public s:J

.field public t:I

.field public u:J

.field public v:Z


# direct methods
.method public constructor <init>(I[I[Lf/i/a/a/b0;Lf/i/a/a/h1/s0/h;Lf/i/a/a/h1/l0$a;Lf/i/a/a/l1/e;JLf/i/a/a/l1/b0;Lf/i/a/a/h1/f0$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I[",
            "Lf/i/a/a/b0;",
            "TT;",
            "Lf/i/a/a/h1/l0$a<",
            "Lf/i/a/a/h1/s0/g<",
            "TT;>;>;",
            "Lf/i/a/a/l1/e;",
            "J",
            "Lf/i/a/a/l1/b0;",
            "Lf/i/a/a/h1/f0$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lf/i/a/a/h1/s0/g;->a:I

    .line 3
    iput-object p2, p0, Lf/i/a/a/h1/s0/g;->b:[I

    .line 4
    iput-object p3, p0, Lf/i/a/a/h1/s0/g;->c:[Lf/i/a/a/b0;

    .line 5
    iput-object p4, p0, Lf/i/a/a/h1/s0/g;->e:Lf/i/a/a/h1/s0/h;

    .line 6
    iput-object p5, p0, Lf/i/a/a/h1/s0/g;->f:Lf/i/a/a/h1/l0$a;

    .line 7
    iput-object p10, p0, Lf/i/a/a/h1/s0/g;->g:Lf/i/a/a/h1/f0$a;

    .line 8
    iput-object p9, p0, Lf/i/a/a/h1/s0/g;->h:Lf/i/a/a/l1/b0;

    .line 9
    new-instance p3, Lf/i/a/a/l1/c0;

    const-string p4, "Loader:ChunkSampleStream"

    invoke-direct {p3, p4}, Lf/i/a/a/l1/c0;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lf/i/a/a/h1/s0/g;->i:Lf/i/a/a/l1/c0;

    .line 10
    new-instance p3, Lf/i/a/a/h1/s0/f;

    invoke-direct {p3}, Lf/i/a/a/h1/s0/f;-><init>()V

    iput-object p3, p0, Lf/i/a/a/h1/s0/g;->j:Lf/i/a/a/h1/s0/f;

    .line 11
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lf/i/a/a/h1/s0/g;->k:Ljava/util/ArrayList;

    .line 12
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lf/i/a/a/h1/s0/g;->l:Ljava/util/List;

    const/4 p3, 0x0

    if-nez p2, :cond_0

    const/4 p4, 0x0

    goto :goto_0

    .line 13
    :cond_0
    array-length p4, p2

    .line 14
    :goto_0
    new-array p5, p4, [Lf/i/a/a/h1/j0;

    iput-object p5, p0, Lf/i/a/a/h1/s0/g;->n:[Lf/i/a/a/h1/j0;

    .line 15
    new-array p5, p4, [Z

    iput-object p5, p0, Lf/i/a/a/h1/s0/g;->d:[Z

    add-int/lit8 p5, p4, 0x1

    .line 16
    new-array p9, p5, [I

    .line 17
    new-array p5, p5, [Lf/i/a/a/h1/j0;

    .line 18
    new-instance p10, Lf/i/a/a/h1/j0;

    invoke-direct {p10, p6}, Lf/i/a/a/h1/j0;-><init>(Lf/i/a/a/l1/e;)V

    iput-object p10, p0, Lf/i/a/a/h1/s0/g;->m:Lf/i/a/a/h1/j0;

    .line 19
    aput p1, p9, p3

    .line 20
    aput-object p10, p5, p3

    :goto_1
    if-ge p3, p4, :cond_1

    .line 21
    new-instance p1, Lf/i/a/a/h1/j0;

    invoke-direct {p1, p6}, Lf/i/a/a/h1/j0;-><init>(Lf/i/a/a/l1/e;)V

    .line 22
    iget-object p10, p0, Lf/i/a/a/h1/s0/g;->n:[Lf/i/a/a/h1/j0;

    aput-object p1, p10, p3

    add-int/lit8 p10, p3, 0x1

    .line 23
    aput-object p1, p5, p10

    .line 24
    aget p1, p2, p3

    aput p1, p9, p10

    move p3, p10

    goto :goto_1

    .line 25
    :cond_1
    new-instance p1, Lf/i/a/a/h1/s0/c;

    invoke-direct {p1, p9, p5}, Lf/i/a/a/h1/s0/c;-><init>([I[Lf/i/a/a/h1/j0;)V

    iput-object p1, p0, Lf/i/a/a/h1/s0/g;->o:Lf/i/a/a/h1/s0/c;

    .line 26
    iput-wide p7, p0, Lf/i/a/a/h1/s0/g;->r:J

    .line 27
    iput-wide p7, p0, Lf/i/a/a/h1/s0/g;->s:J

    return-void
.end method


# virtual methods
.method public final A(II)I
    .locals 2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/s0/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 2
    iget-object v0, p0, Lf/i/a/a/h1/s0/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/h1/s0/a;

    const/4 v1, 0x0

    .line 3
    iget-object v0, v0, Lf/i/a/a/h1/s0/a;->m:[I

    aget v0, v0, v1

    if-le v0, p1, :cond_0

    add-int/lit8 p2, p2, -0x1

    return p2

    .line 4
    :cond_1
    iget-object p1, p0, Lf/i/a/a/h1/s0/g;->k:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public B(Lf/i/a/a/h1/s0/g$b;)V
    .locals 3
    .param p1    # Lf/i/a/a/h1/s0/g$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i/a/a/h1/s0/g$b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lf/i/a/a/h1/s0/g;->q:Lf/i/a/a/h1/s0/g$b;

    .line 2
    iget-object p1, p0, Lf/i/a/a/h1/s0/g;->m:Lf/i/a/a/h1/j0;

    invoke-virtual {p1}, Lf/i/a/a/h1/j0;->j()V

    .line 3
    iget-object p1, p0, Lf/i/a/a/h1/s0/g;->n:[Lf/i/a/a/h1/j0;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 4
    invoke-virtual {v2}, Lf/i/a/a/h1/j0;->j()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lf/i/a/a/h1/s0/g;->i:Lf/i/a/a/l1/c0;

    invoke-virtual {p1, p0}, Lf/i/a/a/l1/c0;->f(Lf/i/a/a/l1/c0$f;)V

    return-void
.end method

.method public C(J)V
    .locals 10

    .line 1
    iput-wide p1, p0, Lf/i/a/a/h1/s0/g;->s:J

    .line 2
    invoke-virtual {p0}, Lf/i/a/a/h1/s0/g;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iput-wide p1, p0, Lf/i/a/a/h1/s0/g;->r:J

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, Lf/i/a/a/h1/s0/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 5
    iget-object v3, p0, Lf/i/a/a/h1/s0/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf/i/a/a/h1/s0/a;

    .line 6
    iget-wide v4, v3, Lf/i/a/a/h1/s0/d;->f:J

    cmp-long v6, v4, p1

    if-nez v6, :cond_1

    .line 7
    iget-wide v4, v3, Lf/i/a/a/h1/s0/a;->j:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v9, v4, v7

    if-nez v9, :cond_1

    move-object v0, v3

    goto :goto_1

    :cond_1
    if-lez v6, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_3
    :goto_1
    iget-object v2, p0, Lf/i/a/a/h1/s0/g;->m:Lf/i/a/a/h1/j0;

    invoke-virtual {v2}, Lf/i/a/a/h1/j0;->v()V

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 9
    iget-object v3, p0, Lf/i/a/a/h1/s0/g;->m:Lf/i/a/a/h1/j0;

    .line 10
    iget-object v0, v0, Lf/i/a/a/h1/s0/a;->m:[I

    aget v0, v0, v1

    .line 11
    iget-object v3, v3, Lf/i/a/a/h1/j0;->c:Lf/i/a/a/h1/i0;

    .line 12
    monitor-enter v3

    .line 13
    :try_start_0
    iget v4, v3, Lf/i/a/a/h1/i0;->j:I

    if-gt v4, v0, :cond_4

    iget v4, v3, Lf/i/a/a/h1/i0;->j:I

    iget v5, v3, Lf/i/a/a/h1/i0;->i:I

    add-int/2addr v4, v5

    if-gt v0, v4, :cond_4

    .line 14
    iget v4, v3, Lf/i/a/a/h1/i0;->j:I

    sub-int/2addr v0, v4

    iput v0, v3, Lf/i/a/a/h1/i0;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit v3

    const/4 v0, 0x1

    goto :goto_2

    .line 16
    :cond_4
    monitor-exit v3

    const/4 v0, 0x0

    :goto_2
    const-wide/16 v3, 0x0

    .line 17
    iput-wide v3, p0, Lf/i/a/a/h1/s0/g;->u:J

    goto :goto_5

    :catchall_0
    move-exception p1

    .line 18
    monitor-exit v3

    throw p1

    .line 19
    :cond_5
    iget-object v0, p0, Lf/i/a/a/h1/s0/g;->m:Lf/i/a/a/h1/j0;

    .line 20
    invoke-virtual {p0}, Lf/i/a/a/h1/s0/g;->c()J

    move-result-wide v3

    cmp-long v5, p1, v3

    if-gez v5, :cond_6

    const/4 v3, 0x1

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    .line 21
    :goto_3
    invoke-virtual {v0, p1, p2, v2, v3}, Lf/i/a/a/h1/j0;->e(JZZ)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_7

    const/4 v0, 0x1

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    .line 22
    :goto_4
    iget-wide v3, p0, Lf/i/a/a/h1/s0/g;->s:J

    iput-wide v3, p0, Lf/i/a/a/h1/s0/g;->u:J

    :goto_5
    if-eqz v0, :cond_8

    .line 23
    iget-object v0, p0, Lf/i/a/a/h1/s0/g;->m:Lf/i/a/a/h1/j0;

    .line 24
    invoke-virtual {v0}, Lf/i/a/a/h1/j0;->m()I

    move-result v0

    .line 25
    invoke-virtual {p0, v0, v1}, Lf/i/a/a/h1/s0/g;->A(II)I

    move-result v0

    iput v0, p0, Lf/i/a/a/h1/s0/g;->t:I

    .line 26
    iget-object v0, p0, Lf/i/a/a/h1/s0/g;->n:[Lf/i/a/a/h1/j0;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v3, :cond_a

    aget-object v5, v0, v4

    .line 27
    invoke-virtual {v5}, Lf/i/a/a/h1/j0;->v()V

    .line 28
    invoke-virtual {v5, p1, p2, v2, v1}, Lf/i/a/a/h1/j0;->e(JZZ)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 29
    :cond_8
    iput-wide p1, p0, Lf/i/a/a/h1/s0/g;->r:J

    .line 30
    iput-boolean v1, p0, Lf/i/a/a/h1/s0/g;->v:Z

    .line 31
    iget-object p1, p0, Lf/i/a/a/h1/s0/g;->k:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 32
    iput v1, p0, Lf/i/a/a/h1/s0/g;->t:I

    .line 33
    iget-object p1, p0, Lf/i/a/a/h1/s0/g;->i:Lf/i/a/a/l1/c0;

    invoke-virtual {p1}, Lf/i/a/a/l1/c0;->d()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 34
    iget-object p1, p0, Lf/i/a/a/h1/s0/g;->i:Lf/i/a/a/l1/c0;

    invoke-virtual {p1}, Lf/i/a/a/l1/c0;->b()V

    goto :goto_8

    .line 35
    :cond_9
    iget-object p1, p0, Lf/i/a/a/h1/s0/g;->m:Lf/i/a/a/h1/j0;

    .line 36
    invoke-virtual {p1, v1}, Lf/i/a/a/h1/j0;->u(Z)V

    .line 37
    iget-object p1, p0, Lf/i/a/a/h1/s0/g;->n:[Lf/i/a/a/h1/j0;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_7
    if-ge v0, p2, :cond_a

    aget-object v2, p1, v0

    .line 38
    invoke-virtual {v2, v1}, Lf/i/a/a/h1/j0;->u(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_a
    :goto_8
    return-void
.end method

.method public a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/s0/g;->i:Lf/i/a/a/l1/c0;

    const/high16 v1, -0x80000000

    .line 2
    invoke-virtual {v0, v1}, Lf/i/a/a/l1/c0;->e(I)V

    .line 3
    iget-object v0, p0, Lf/i/a/a/h1/s0/g;->i:Lf/i/a/a/l1/c0;

    invoke-virtual {v0}, Lf/i/a/a/l1/c0;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lf/i/a/a/h1/s0/g;->e:Lf/i/a/a/h1/s0/h;

    invoke-interface {v0}, Lf/i/a/a/h1/s0/h;->a()V

    :cond_0
    return-void
.end method

.method public c()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/h1/s0/g;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, p0, Lf/i/a/a/h1/s0/g;->r:J

    return-wide v0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lf/i/a/a/h1/s0/g;->v:Z

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lf/i/a/a/h1/s0/g;->w()Lf/i/a/a/h1/s0/a;

    move-result-object v0

    iget-wide v0, v0, Lf/i/a/a/h1/s0/d;->g:J

    :goto_0
    return-wide v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf/i/a/a/h1/s0/g;->v:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lf/i/a/a/h1/s0/g;->y()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lf/i/a/a/h1/s0/g;->m:Lf/i/a/a/h1/j0;

    invoke-virtual {v0}, Lf/i/a/a/h1/j0;->o()Z

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

.method public e()J
    .locals 4

    .line 1
    iget-boolean v0, p0, Lf/i/a/a/h1/s0/g;->v:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lf/i/a/a/h1/s0/g;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-wide v0, p0, Lf/i/a/a/h1/s0/g;->r:J

    return-wide v0

    .line 4
    :cond_1
    iget-wide v0, p0, Lf/i/a/a/h1/s0/g;->s:J

    .line 5
    invoke-virtual {p0}, Lf/i/a/a/h1/s0/g;->w()Lf/i/a/a/h1/s0/a;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Lf/i/a/a/h1/s0/l;->d()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lf/i/a/a/h1/s0/g;->k:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    iget-object v2, p0, Lf/i/a/a/h1/s0/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/i/a/a/h1/s0/a;

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    .line 8
    iget-wide v2, v2, Lf/i/a/a/h1/s0/d;->g:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 9
    :cond_4
    iget-object v2, p0, Lf/i/a/a/h1/s0/g;->m:Lf/i/a/a/h1/j0;

    invoke-virtual {v2}, Lf/i/a/a/h1/j0;->l()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public f(J)Z
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Lf/i/a/a/h1/s0/g;->v:Z

    const/4 v2, 0x0

    if-nez v1, :cond_a

    iget-object v1, v0, Lf/i/a/a/h1/s0/g;->i:Lf/i/a/a/l1/c0;

    invoke-virtual {v1}, Lf/i/a/a/l1/c0;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/h1/s0/g;->y()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 4
    iget-wide v4, v0, Lf/i/a/a/h1/s0/g;->r:J

    goto :goto_0

    .line 5
    :cond_1
    iget-object v3, v0, Lf/i/a/a/h1/s0/g;->l:Ljava/util/List;

    .line 6
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/h1/s0/g;->w()Lf/i/a/a/h1/s0/a;

    move-result-object v4

    iget-wide v4, v4, Lf/i/a/a/h1/s0/d;->g:J

    :goto_0
    move-object v11, v3

    move-wide v9, v4

    .line 7
    iget-object v6, v0, Lf/i/a/a/h1/s0/g;->e:Lf/i/a/a/h1/s0/h;

    iget-object v12, v0, Lf/i/a/a/h1/s0/g;->j:Lf/i/a/a/h1/s0/f;

    move-wide/from16 v7, p1

    invoke-interface/range {v6 .. v12}, Lf/i/a/a/h1/s0/h;->h(JJLjava/util/List;Lf/i/a/a/h1/s0/f;)V

    .line 8
    iget-object v3, v0, Lf/i/a/a/h1/s0/g;->j:Lf/i/a/a/h1/s0/f;

    iget-boolean v4, v3, Lf/i/a/a/h1/s0/f;->b:Z

    .line 9
    iget-object v5, v3, Lf/i/a/a/h1/s0/f;->a:Lf/i/a/a/h1/s0/d;

    const/4 v6, 0x0

    .line 10
    iput-object v6, v3, Lf/i/a/a/h1/s0/f;->a:Lf/i/a/a/h1/s0/d;

    .line 11
    iput-boolean v2, v3, Lf/i/a/a/h1/s0/f;->b:Z

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, 0x1

    if-eqz v4, :cond_2

    .line 12
    iput-wide v6, v0, Lf/i/a/a/h1/s0/g;->r:J

    .line 13
    iput-boolean v3, v0, Lf/i/a/a/h1/s0/g;->v:Z

    return v3

    :cond_2
    if-nez v5, :cond_3

    return v2

    .line 14
    :cond_3
    instance-of v4, v5, Lf/i/a/a/h1/s0/a;

    if-eqz v4, :cond_9

    .line 15
    move-object v4, v5

    check-cast v4, Lf/i/a/a/h1/s0/a;

    if-eqz v1, :cond_6

    .line 16
    iget-wide v8, v4, Lf/i/a/a/h1/s0/d;->f:J

    iget-wide v10, v0, Lf/i/a/a/h1/s0/g;->r:J

    cmp-long v1, v8, v10

    if-nez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_5

    const-wide/16 v8, 0x0

    goto :goto_2

    .line 17
    :cond_5
    iget-wide v8, v0, Lf/i/a/a/h1/s0/g;->r:J

    :goto_2
    iput-wide v8, v0, Lf/i/a/a/h1/s0/g;->u:J

    .line 18
    iput-wide v6, v0, Lf/i/a/a/h1/s0/g;->r:J

    .line 19
    :cond_6
    iget-object v1, v0, Lf/i/a/a/h1/s0/g;->o:Lf/i/a/a/h1/s0/c;

    .line 20
    iput-object v1, v4, Lf/i/a/a/h1/s0/a;->l:Lf/i/a/a/h1/s0/c;

    .line 21
    iget-object v6, v1, Lf/i/a/a/h1/s0/c;->b:[Lf/i/a/a/h1/j0;

    array-length v6, v6

    new-array v6, v6, [I

    .line 22
    :goto_3
    iget-object v7, v1, Lf/i/a/a/h1/s0/c;->b:[Lf/i/a/a/h1/j0;

    array-length v8, v7

    if-ge v2, v8, :cond_8

    .line 23
    aget-object v8, v7, v2

    if-eqz v8, :cond_7

    .line 24
    aget-object v7, v7, v2

    .line 25
    iget-object v7, v7, Lf/i/a/a/h1/j0;->c:Lf/i/a/a/h1/i0;

    .line 26
    iget v8, v7, Lf/i/a/a/h1/i0;->j:I

    iget v7, v7, Lf/i/a/a/h1/i0;->i:I

    add-int/2addr v8, v7

    .line 27
    aput v8, v6, v2

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 28
    :cond_8
    iput-object v6, v4, Lf/i/a/a/h1/s0/a;->m:[I

    .line 29
    iget-object v1, v0, Lf/i/a/a/h1/s0/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_9
    iget-object v1, v0, Lf/i/a/a/h1/s0/g;->i:Lf/i/a/a/l1/c0;

    iget-object v2, v0, Lf/i/a/a/h1/s0/g;->h:Lf/i/a/a/l1/b0;

    iget v4, v5, Lf/i/a/a/h1/s0/d;->b:I

    .line 31
    check-cast v2, Lf/i/a/a/l1/w;

    invoke-virtual {v2, v4}, Lf/i/a/a/l1/w;->b(I)I

    move-result v2

    .line 32
    invoke-virtual {v1, v5, v0, v2}, Lf/i/a/a/l1/c0;->g(Lf/i/a/a/l1/c0$e;Lf/i/a/a/l1/c0$b;I)J

    move-result-wide v17

    .line 33
    iget-object v6, v0, Lf/i/a/a/h1/s0/g;->g:Lf/i/a/a/h1/f0$a;

    iget-object v7, v5, Lf/i/a/a/h1/s0/d;->a:Lf/i/a/a/l1/p;

    iget v8, v5, Lf/i/a/a/h1/s0/d;->b:I

    iget v9, v0, Lf/i/a/a/h1/s0/g;->a:I

    iget-object v10, v5, Lf/i/a/a/h1/s0/d;->c:Lf/i/a/a/b0;

    iget v11, v5, Lf/i/a/a/h1/s0/d;->d:I

    iget-object v12, v5, Lf/i/a/a/h1/s0/d;->e:Ljava/lang/Object;

    iget-wide v13, v5, Lf/i/a/a/h1/s0/d;->f:J

    iget-wide v1, v5, Lf/i/a/a/h1/s0/d;->g:J

    move-wide v15, v1

    invoke-virtual/range {v6 .. v18}, Lf/i/a/a/h1/f0$a;->w(Lf/i/a/a/l1/p;IILf/i/a/a/b0;ILjava/lang/Object;JJJ)V

    return v3

    :cond_a
    :goto_4
    return v2
.end method

.method public g(J)V
    .locals 12

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/s0/g;->i:Lf/i/a/a/l1/c0;

    invoke-virtual {v0}, Lf/i/a/a/l1/c0;->d()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lf/i/a/a/h1/s0/g;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lf/i/a/a/h1/s0/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3
    iget-object v1, p0, Lf/i/a/a/h1/s0/g;->e:Lf/i/a/a/h1/s0/h;

    iget-object v2, p0, Lf/i/a/a/h1/s0/g;->l:Ljava/util/List;

    invoke-interface {v1, p1, p2, v2}, Lf/i/a/a/h1/s0/h;->e(JLjava/util/List;)I

    move-result p1

    if-gt v0, p1, :cond_1

    return-void

    :cond_1
    :goto_0
    if-ge p1, v0, :cond_3

    .line 4
    invoke-virtual {p0, p1}, Lf/i/a/a/h1/s0/g;->x(I)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    move p1, v0

    :goto_1
    if-ne p1, v0, :cond_4

    return-void

    .line 5
    :cond_4
    invoke-virtual {p0}, Lf/i/a/a/h1/s0/g;->w()Lf/i/a/a/h1/s0/a;

    move-result-object p2

    iget-wide v0, p2, Lf/i/a/a/h1/s0/d;->g:J

    .line 6
    invoke-virtual {p0, p1}, Lf/i/a/a/h1/s0/g;->v(I)Lf/i/a/a/h1/s0/a;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lf/i/a/a/h1/s0/g;->k:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 8
    iget-wide v2, p0, Lf/i/a/a/h1/s0/g;->s:J

    iput-wide v2, p0, Lf/i/a/a/h1/s0/g;->r:J

    :cond_5
    const/4 p2, 0x0

    .line 9
    iput-boolean p2, p0, Lf/i/a/a/h1/s0/g;->v:Z

    .line 10
    iget-object p2, p0, Lf/i/a/a/h1/s0/g;->g:Lf/i/a/a/h1/f0$a;

    iget v4, p0, Lf/i/a/a/h1/s0/g;->a:I

    iget-wide v2, p1, Lf/i/a/a/h1/s0/d;->f:J

    .line 11
    new-instance p1, Lf/i/a/a/h1/f0$c;

    .line 12
    invoke-virtual {p2, v2, v3}, Lf/i/a/a/h1/f0$a;->a(J)J

    move-result-wide v8

    .line 13
    invoke-virtual {p2, v0, v1}, Lf/i/a/a/h1/f0$a;->a(J)J

    move-result-wide v10

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v11}, Lf/i/a/a/h1/f0$c;-><init>(IILf/i/a/a/b0;ILjava/lang/Object;JJ)V

    .line 14
    invoke-virtual {p2, p1}, Lf/i/a/a/h1/f0$a;->C(Lf/i/a/a/h1/f0$c;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public h()V
    .locals 5

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/s0/g;->m:Lf/i/a/a/h1/j0;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lf/i/a/a/h1/j0;->u(Z)V

    .line 3
    iget-object v0, p0, Lf/i/a/a/h1/s0/g;->n:[Lf/i/a/a/h1/j0;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 4
    invoke-virtual {v4, v1}, Lf/i/a/a/h1/j0;->u(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lf/i/a/a/h1/s0/g;->q:Lf/i/a/a/h1/s0/g$b;

    if-eqz v0, :cond_2

    .line 6
    check-cast v0, Lf/i/a/a/h1/t0/e;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v2, v0, Lf/i/a/a/h1/t0/e;->l:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, p0}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/i/a/a/h1/t0/j$c;

    if-eqz v2, :cond_1

    .line 9
    iget-object v2, v2, Lf/i/a/a/h1/t0/j$c;->a:Lf/i/a/a/h1/j0;

    .line 10
    invoke-virtual {v2, v1}, Lf/i/a/a/h1/j0;->u(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_2
    :goto_1
    return-void
.end method

.method public i(Lf/i/a/a/c0;Lf/i/a/a/y0/e;Z)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/h1/s0/g;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x3

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lf/i/a/a/h1/s0/g;->z()V

    .line 3
    iget-object v0, p0, Lf/i/a/a/h1/s0/g;->m:Lf/i/a/a/h1/j0;

    iget-boolean v4, p0, Lf/i/a/a/h1/s0/g;->v:Z

    iget-wide v5, p0, Lf/i/a/a/h1/s0/g;->u:J

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lf/i/a/a/h1/j0;->s(Lf/i/a/a/c0;Lf/i/a/a/y0/e;ZZJ)I

    move-result p1

    return p1
.end method

.method public k(Lf/i/a/a/l1/c0$e;JJZ)V
    .locals 21

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lf/i/a/a/h1/s0/d;

    .line 2
    iget-object v2, v0, Lf/i/a/a/h1/s0/g;->g:Lf/i/a/a/h1/f0$a;

    iget-object v3, v1, Lf/i/a/a/h1/s0/d;->a:Lf/i/a/a/l1/p;

    .line 3
    iget-object v15, v1, Lf/i/a/a/h1/s0/d;->h:Lf/i/a/a/l1/g0;

    .line 4
    iget-object v4, v15, Lf/i/a/a/l1/g0;->c:Landroid/net/Uri;

    .line 5
    iget-object v5, v15, Lf/i/a/a/l1/g0;->d:Ljava/util/Map;

    .line 6
    iget v6, v1, Lf/i/a/a/h1/s0/d;->b:I

    iget v7, v0, Lf/i/a/a/h1/s0/g;->a:I

    iget-object v8, v1, Lf/i/a/a/h1/s0/d;->c:Lf/i/a/a/b0;

    iget v9, v1, Lf/i/a/a/h1/s0/d;->d:I

    iget-object v10, v1, Lf/i/a/a/h1/s0/d;->e:Ljava/lang/Object;

    iget-wide v11, v1, Lf/i/a/a/h1/s0/d;->f:J

    iget-wide v13, v1, Lf/i/a/a/h1/s0/d;->g:J

    .line 7
    iget-wide v0, v15, Lf/i/a/a/l1/g0;->b:J

    move-wide/from16 v19, v0

    move-wide/from16 v15, p2

    move-wide/from16 v17, p4

    .line 8
    invoke-virtual/range {v2 .. v20}, Lf/i/a/a/h1/f0$a;->n(Lf/i/a/a/l1/p;Landroid/net/Uri;Ljava/util/Map;IILf/i/a/a/b0;ILjava/lang/Object;JJJJJ)V

    move-object/from16 v0, p0

    if-nez p6, :cond_1

    .line 9
    iget-object v1, v0, Lf/i/a/a/h1/s0/g;->m:Lf/i/a/a/h1/j0;

    const/4 v2, 0x0

    .line 10
    invoke-virtual {v1, v2}, Lf/i/a/a/h1/j0;->u(Z)V

    .line 11
    iget-object v1, v0, Lf/i/a/a/h1/s0/g;->n:[Lf/i/a/a/h1/j0;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v1, v4

    .line 12
    invoke-virtual {v5, v2}, Lf/i/a/a/h1/j0;->u(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 13
    :cond_0
    iget-object v1, v0, Lf/i/a/a/h1/s0/g;->f:Lf/i/a/a/h1/l0$a;

    invoke-interface {v1, v0}, Lf/i/a/a/h1/l0$a;->i(Lf/i/a/a/h1/l0;)V

    :cond_1
    return-void
.end method

.method public p(Lf/i/a/a/l1/c0$e;JJLjava/io/IOException;I)Lf/i/a/a/l1/c0$c;
    .locals 29

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v7, p1

    check-cast v7, Lf/i/a/a/h1/s0/d;

    .line 2
    iget-object v1, v7, Lf/i/a/a/h1/s0/d;->h:Lf/i/a/a/l1/g0;

    .line 3
    iget-wide v14, v1, Lf/i/a/a/l1/g0;->b:J

    .line 4
    instance-of v8, v7, Lf/i/a/a/h1/s0/a;

    .line 5
    iget-object v1, v0, Lf/i/a/a/h1/s0/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v9, v1, -0x1

    const-wide/16 v1, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    cmp-long v3, v14, v1

    if-eqz v3, :cond_1

    if-eqz v8, :cond_1

    .line 6
    invoke-virtual {v0, v9}, Lf/i/a/a/h1/s0/g;->x(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v12, 0x1

    :goto_1
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v12, :cond_2

    .line 7
    iget-object v1, v0, Lf/i/a/a/h1/s0/g;->h:Lf/i/a/a/l1/b0;

    iget v2, v7, Lf/i/a/a/h1/s0/d;->b:I

    .line 8
    move-object/from16 v18, v1

    check-cast v18, Lf/i/a/a/l1/w;

    move/from16 v19, v2

    move-wide/from16 v20, p4

    move-object/from16 v22, p6

    move/from16 v23, p7

    invoke-virtual/range {v18 .. v23}, Lf/i/a/a/l1/w;->a(IJLjava/io/IOException;I)J

    move-result-wide v1

    move-wide v5, v1

    goto :goto_2

    :cond_2
    move-wide/from16 v5, v16

    :goto_2
    const/4 v13, 0x0

    .line 9
    iget-object v1, v0, Lf/i/a/a/h1/s0/g;->e:Lf/i/a/a/h1/s0/h;

    move-object v2, v7

    move v3, v12

    move-object/from16 v4, p6

    invoke-interface/range {v1 .. v6}, Lf/i/a/a/h1/s0/h;->i(Lf/i/a/a/h1/s0/d;ZLjava/lang/Exception;J)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v12, :cond_4

    .line 10
    sget-object v13, Lf/i/a/a/l1/c0;->d:Lf/i/a/a/l1/c0$c;

    if-eqz v8, :cond_4

    .line 11
    invoke-virtual {v0, v9}, Lf/i/a/a/h1/s0/g;->v(I)Lf/i/a/a/h1/s0/a;

    move-result-object v1

    if-ne v1, v7, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    .line 12
    :goto_3
    invoke-static {v1}, Lc/a/a/b/g/h;->v(Z)V

    .line 13
    iget-object v1, v0, Lf/i/a/a/h1/s0/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 14
    iget-wide v1, v0, Lf/i/a/a/h1/s0/g;->s:J

    iput-wide v1, v0, Lf/i/a/a/h1/s0/g;->r:J

    :cond_4
    if-nez v13, :cond_6

    .line 15
    iget-object v1, v0, Lf/i/a/a/h1/s0/g;->h:Lf/i/a/a/l1/b0;

    iget v2, v7, Lf/i/a/a/h1/s0/d;->b:I

    .line 16
    move-object/from16 v18, v1

    check-cast v18, Lf/i/a/a/l1/w;

    move/from16 v19, v2

    move-wide/from16 v20, p4

    move-object/from16 v22, p6

    move/from16 v23, p7

    invoke-virtual/range {v18 .. v23}, Lf/i/a/a/l1/w;->c(IJLjava/io/IOException;I)J

    move-result-wide v1

    cmp-long v3, v1, v16

    if-eqz v3, :cond_5

    .line 17
    invoke-static {v10, v1, v2}, Lf/i/a/a/l1/c0;->c(ZJ)Lf/i/a/a/l1/c0$c;

    move-result-object v1

    goto :goto_4

    :cond_5
    sget-object v1, Lf/i/a/a/l1/c0;->e:Lf/i/a/a/l1/c0$c;

    :goto_4
    move-object v13, v1

    :cond_6
    move-object v1, v13

    .line 18
    invoke-virtual {v1}, Lf/i/a/a/l1/c0$c;->a()Z

    move-result v2

    xor-int/2addr v2, v11

    move/from16 v28, v2

    .line 19
    iget-object v8, v0, Lf/i/a/a/h1/s0/g;->g:Lf/i/a/a/h1/f0$a;

    iget-object v9, v7, Lf/i/a/a/h1/s0/d;->a:Lf/i/a/a/l1/p;

    .line 20
    iget-object v3, v7, Lf/i/a/a/h1/s0/d;->h:Lf/i/a/a/l1/g0;

    .line 21
    iget-object v10, v3, Lf/i/a/a/l1/g0;->c:Landroid/net/Uri;

    .line 22
    iget-object v11, v3, Lf/i/a/a/l1/g0;->d:Ljava/util/Map;

    .line 23
    iget v12, v7, Lf/i/a/a/h1/s0/d;->b:I

    iget v13, v0, Lf/i/a/a/h1/s0/g;->a:I

    iget-object v3, v7, Lf/i/a/a/h1/s0/d;->c:Lf/i/a/a/b0;

    move-wide v4, v14

    move-object v14, v3

    iget v15, v7, Lf/i/a/a/h1/s0/d;->d:I

    iget-object v3, v7, Lf/i/a/a/h1/s0/d;->e:Ljava/lang/Object;

    move-object/from16 v16, v3

    move-object/from16 p1, v1

    iget-wide v0, v7, Lf/i/a/a/h1/s0/d;->f:J

    move-wide/from16 v17, v0

    iget-wide v0, v7, Lf/i/a/a/h1/s0/d;->g:J

    move-wide/from16 v19, v0

    move-wide/from16 v21, p2

    move-wide/from16 v23, p4

    move-wide/from16 v25, v4

    move-object/from16 v27, p6

    .line 24
    invoke-virtual/range {v8 .. v28}, Lf/i/a/a/h1/f0$a;->t(Lf/i/a/a/l1/p;Landroid/net/Uri;Ljava/util/Map;IILf/i/a/a/b0;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    move-object/from16 v0, p0

    if-eqz v2, :cond_7

    .line 25
    iget-object v1, v0, Lf/i/a/a/h1/s0/g;->f:Lf/i/a/a/h1/l0$a;

    invoke-interface {v1, v0}, Lf/i/a/a/h1/l0$a;->i(Lf/i/a/a/h1/l0;)V

    :cond_7
    return-object p1
.end method

.method public q(J)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/h1/s0/g;->y()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lf/i/a/a/h1/s0/g;->v:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lf/i/a/a/h1/s0/g;->m:Lf/i/a/a/h1/j0;

    invoke-virtual {v0}, Lf/i/a/a/h1/j0;->l()J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    .line 3
    iget-object p1, p0, Lf/i/a/a/h1/s0/g;->m:Lf/i/a/a/h1/j0;

    invoke-virtual {p1}, Lf/i/a/a/h1/j0;->f()I

    move-result v1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lf/i/a/a/h1/s0/g;->m:Lf/i/a/a/h1/j0;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, p2, v2, v2}, Lf/i/a/a/h1/j0;->e(JZZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    move v1, p1

    .line 5
    :goto_0
    invoke-virtual {p0}, Lf/i/a/a/h1/s0/g;->z()V

    return v1
.end method

.method public r(Lf/i/a/a/l1/c0$e;JJ)V
    .locals 22

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lf/i/a/a/h1/s0/d;

    .line 2
    iget-object v2, v0, Lf/i/a/a/h1/s0/g;->e:Lf/i/a/a/h1/s0/h;

    invoke-interface {v2, v1}, Lf/i/a/a/h1/s0/h;->f(Lf/i/a/a/h1/s0/d;)V

    .line 3
    iget-object v3, v0, Lf/i/a/a/h1/s0/g;->g:Lf/i/a/a/h1/f0$a;

    iget-object v4, v1, Lf/i/a/a/h1/s0/d;->a:Lf/i/a/a/l1/p;

    .line 4
    iget-object v2, v1, Lf/i/a/a/h1/s0/d;->h:Lf/i/a/a/l1/g0;

    .line 5
    iget-object v5, v2, Lf/i/a/a/l1/g0;->c:Landroid/net/Uri;

    .line 6
    iget-object v6, v2, Lf/i/a/a/l1/g0;->d:Ljava/util/Map;

    .line 7
    iget v7, v1, Lf/i/a/a/h1/s0/d;->b:I

    iget v8, v0, Lf/i/a/a/h1/s0/g;->a:I

    iget-object v9, v1, Lf/i/a/a/h1/s0/d;->c:Lf/i/a/a/b0;

    iget v10, v1, Lf/i/a/a/h1/s0/d;->d:I

    iget-object v11, v1, Lf/i/a/a/h1/s0/d;->e:Ljava/lang/Object;

    iget-wide v12, v1, Lf/i/a/a/h1/s0/d;->f:J

    iget-wide v14, v1, Lf/i/a/a/h1/s0/d;->g:J

    .line 8
    iget-wide v1, v2, Lf/i/a/a/l1/g0;->b:J

    move-wide/from16 v20, v1

    move-wide/from16 v16, p2

    move-wide/from16 v18, p4

    .line 9
    invoke-virtual/range {v3 .. v21}, Lf/i/a/a/h1/f0$a;->q(Lf/i/a/a/l1/p;Landroid/net/Uri;Ljava/util/Map;IILf/i/a/a/b0;ILjava/lang/Object;JJJJJ)V

    .line 10
    iget-object v1, v0, Lf/i/a/a/h1/s0/g;->f:Lf/i/a/a/h1/l0$a;

    invoke-interface {v1, v0}, Lf/i/a/a/h1/l0$a;->i(Lf/i/a/a/h1/l0;)V

    return-void
.end method

.method public t(JZ)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/h1/s0/g;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lf/i/a/a/h1/s0/g;->m:Lf/i/a/a/h1/j0;

    .line 3
    iget-object v1, v0, Lf/i/a/a/h1/j0;->c:Lf/i/a/a/h1/i0;

    .line 4
    iget v1, v1, Lf/i/a/a/h1/i0;->j:I

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, p1, p2, p3, v2}, Lf/i/a/a/h1/j0;->i(JZZ)V

    .line 6
    iget-object p1, p0, Lf/i/a/a/h1/s0/g;->m:Lf/i/a/a/h1/j0;

    .line 7
    iget-object p1, p1, Lf/i/a/a/h1/j0;->c:Lf/i/a/a/h1/i0;

    .line 8
    iget p2, p1, Lf/i/a/a/h1/i0;->j:I

    const/4 v0, 0x0

    if-le p2, v1, :cond_2

    .line 9
    monitor-enter p1

    .line 10
    :try_start_0
    iget v1, p1, Lf/i/a/a/h1/i0;->i:I

    if-nez v1, :cond_1

    const-wide/high16 v1, -0x8000000000000000L

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lf/i/a/a/h1/i0;->f:[J

    iget v2, p1, Lf/i/a/a/h1/i0;->k:I

    aget-wide v2, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v1, v2

    :goto_0
    monitor-exit p1

    const/4 p1, 0x0

    .line 11
    :goto_1
    iget-object v3, p0, Lf/i/a/a/h1/s0/g;->n:[Lf/i/a/a/h1/j0;

    array-length v4, v3

    if-ge p1, v4, :cond_2

    .line 12
    aget-object v3, v3, p1

    iget-object v4, p0, Lf/i/a/a/h1/s0/g;->d:[Z

    aget-boolean v4, v4, p1

    invoke-virtual {v3, v1, v2, p3, v4}, Lf/i/a/a/h1/j0;->i(JZZ)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 13
    monitor-exit p1

    throw p2

    .line 14
    :cond_2
    invoke-virtual {p0, p2, v0}, Lf/i/a/a/h1/s0/g;->A(II)I

    move-result p1

    .line 15
    iget p2, p0, Lf/i/a/a/h1/s0/g;->t:I

    .line 16
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-lez p1, :cond_3

    .line 17
    iget-object p2, p0, Lf/i/a/a/h1/s0/g;->k:Ljava/util/ArrayList;

    invoke-static {p2, v0, p1}, Lf/i/a/a/m1/h0;->f0(Ljava/util/List;II)V

    .line 18
    iget p2, p0, Lf/i/a/a/h1/s0/g;->t:I

    sub-int/2addr p2, p1

    iput p2, p0, Lf/i/a/a/h1/s0/g;->t:I

    :cond_3
    return-void
.end method

.method public final v(I)Lf/i/a/a/h1/s0/a;
    .locals 3

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/s0/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/h1/s0/a;

    .line 2
    iget-object v1, p0, Lf/i/a/a/h1/s0/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, p1, v2}, Lf/i/a/a/m1/h0;->f0(Ljava/util/List;II)V

    .line 3
    iget p1, p0, Lf/i/a/a/h1/s0/g;->t:I

    iget-object v1, p0, Lf/i/a/a/h1/s0/g;->k:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lf/i/a/a/h1/s0/g;->t:I

    .line 5
    iget-object p1, p0, Lf/i/a/a/h1/s0/g;->m:Lf/i/a/a/h1/j0;

    .line 6
    iget-object v1, v0, Lf/i/a/a/h1/s0/a;->m:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    .line 7
    invoke-virtual {p1, v1}, Lf/i/a/a/h1/j0;->k(I)V

    .line 8
    :goto_0
    iget-object p1, p0, Lf/i/a/a/h1/s0/g;->n:[Lf/i/a/a/h1/j0;

    array-length v1, p1

    if-ge v2, v1, :cond_0

    .line 9
    aget-object p1, p1, v2

    add-int/lit8 v2, v2, 0x1

    .line 10
    iget-object v1, v0, Lf/i/a/a/h1/s0/a;->m:[I

    aget v1, v1, v2

    .line 11
    invoke-virtual {p1, v1}, Lf/i/a/a/h1/j0;->k(I)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final w()Lf/i/a/a/h1/s0/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/s0/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/h1/s0/a;

    return-object v0
.end method

.method public final x(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/s0/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/i/a/a/h1/s0/a;

    .line 2
    iget-object v0, p0, Lf/i/a/a/h1/s0/g;->m:Lf/i/a/a/h1/j0;

    invoke-virtual {v0}, Lf/i/a/a/h1/j0;->m()I

    move-result v0

    .line 3
    iget-object v1, p1, Lf/i/a/a/h1/s0/a;->m:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v3, 0x1

    if-le v0, v1, :cond_0

    return v3

    :cond_0
    const/4 v0, 0x0

    .line 4
    :cond_1
    iget-object v1, p0, Lf/i/a/a/h1/s0/g;->n:[Lf/i/a/a/h1/j0;

    array-length v4, v1

    if-ge v0, v4, :cond_2

    .line 5
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lf/i/a/a/h1/j0;->m()I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    .line 6
    iget-object v4, p1, Lf/i/a/a/h1/s0/a;->m:[I

    aget v4, v4, v0

    if-le v1, v4, :cond_1

    return v3

    :cond_2
    return v2
.end method

.method public y()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lf/i/a/a/h1/s0/g;->r:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final z()V
    .locals 10

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/s0/g;->m:Lf/i/a/a/h1/j0;

    invoke-virtual {v0}, Lf/i/a/a/h1/j0;->m()I

    move-result v0

    .line 2
    iget v1, p0, Lf/i/a/a/h1/s0/g;->t:I

    add-int/lit8 v1, v1, -0x1

    .line 3
    invoke-virtual {p0, v0, v1}, Lf/i/a/a/h1/s0/g;->A(II)I

    move-result v0

    .line 4
    :goto_0
    iget v1, p0, Lf/i/a/a/h1/s0/g;->t:I

    if-gt v1, v0, :cond_1

    add-int/lit8 v2, v1, 0x1

    .line 5
    iput v2, p0, Lf/i/a/a/h1/s0/g;->t:I

    .line 6
    iget-object v2, p0, Lf/i/a/a/h1/s0/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/h1/s0/a;

    .line 7
    iget-object v9, v1, Lf/i/a/a/h1/s0/d;->c:Lf/i/a/a/b0;

    .line 8
    iget-object v2, p0, Lf/i/a/a/h1/s0/g;->p:Lf/i/a/a/b0;

    invoke-virtual {v9, v2}, Lf/i/a/a/b0;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9
    iget-object v2, p0, Lf/i/a/a/h1/s0/g;->g:Lf/i/a/a/h1/f0$a;

    iget v3, p0, Lf/i/a/a/h1/s0/g;->a:I

    iget v5, v1, Lf/i/a/a/h1/s0/d;->d:I

    iget-object v6, v1, Lf/i/a/a/h1/s0/d;->e:Ljava/lang/Object;

    iget-wide v7, v1, Lf/i/a/a/h1/s0/d;->f:J

    move-object v4, v9

    invoke-virtual/range {v2 .. v8}, Lf/i/a/a/h1/f0$a;->b(ILf/i/a/a/b0;ILjava/lang/Object;J)V

    .line 10
    :cond_0
    iput-object v9, p0, Lf/i/a/a/h1/s0/g;->p:Lf/i/a/a/b0;

    goto :goto_0

    :cond_1
    return-void
.end method
