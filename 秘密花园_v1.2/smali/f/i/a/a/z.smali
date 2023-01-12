.class public final Lf/i/a/a/z;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lf/i/a/a/h1/d0$a;
.implements Lf/i/a/a/j1/m$a;
.implements Lf/i/a/a/h1/e0$b;
.implements Lf/i/a/a/u$a;
.implements Lf/i/a/a/n0$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/z$d;,
        Lf/i/a/a/z$b;,
        Lf/i/a/a/z$c;,
        Lf/i/a/a/z$e;
    }
.end annotation


# instance fields
.field public A:Z

.field public B:Z

.field public C:I

.field public D:Lf/i/a/a/z$e;

.field public E:J

.field public F:I

.field public final a:[Lf/i/a/a/p0;

.field public final b:[Lf/i/a/a/p;

.field public final c:Lf/i/a/a/j1/m;

.field public final d:Lf/i/a/a/j1/n;

.field public final e:Lf/i/a/a/t;

.field public final f:Lf/i/a/a/l1/g;

.field public final g:Lf/i/a/a/m1/c0;

.field public final h:Landroid/os/HandlerThread;

.field public final i:Landroid/os/Handler;

.field public final j:Lf/i/a/a/u0$c;

.field public final k:Lf/i/a/a/u0$b;

.field public final l:J

.field public final m:Z

.field public final n:Lf/i/a/a/u;

.field public final o:Lf/i/a/a/z$d;

.field public final p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lf/i/a/a/z$c;",
            ">;"
        }
    .end annotation
.end field

.field public final q:Lf/i/a/a/m1/h;

.field public final r:Lf/i/a/a/g0;

.field public s:Lf/i/a/a/s0;

.field public t:Lf/i/a/a/i0;

.field public u:Lf/i/a/a/h1/e0;

.field public v:[Lf/i/a/a/p0;

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:I


# direct methods
.method public constructor <init>([Lf/i/a/a/p0;Lf/i/a/a/j1/m;Lf/i/a/a/j1/n;Lf/i/a/a/t;Lf/i/a/a/l1/g;ZIZLandroid/os/Handler;Lf/i/a/a/m1/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/z;->a:[Lf/i/a/a/p0;

    .line 3
    iput-object p2, p0, Lf/i/a/a/z;->c:Lf/i/a/a/j1/m;

    .line 4
    iput-object p3, p0, Lf/i/a/a/z;->d:Lf/i/a/a/j1/n;

    .line 5
    iput-object p4, p0, Lf/i/a/a/z;->e:Lf/i/a/a/t;

    .line 6
    iput-object p5, p0, Lf/i/a/a/z;->f:Lf/i/a/a/l1/g;

    .line 7
    iput-boolean p6, p0, Lf/i/a/a/z;->x:Z

    .line 8
    iput p7, p0, Lf/i/a/a/z;->z:I

    .line 9
    iput-boolean p8, p0, Lf/i/a/a/z;->A:Z

    .line 10
    iput-object p9, p0, Lf/i/a/a/z;->i:Landroid/os/Handler;

    .line 11
    iput-object p10, p0, Lf/i/a/a/z;->q:Lf/i/a/a/m1/h;

    .line 12
    new-instance p6, Lf/i/a/a/g0;

    invoke-direct {p6}, Lf/i/a/a/g0;-><init>()V

    iput-object p6, p0, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    .line 13
    iget-wide p6, p4, Lf/i/a/a/t;->i:J

    .line 14
    iput-wide p6, p0, Lf/i/a/a/z;->l:J

    .line 15
    iget-boolean p4, p4, Lf/i/a/a/t;->j:Z

    .line 16
    iput-boolean p4, p0, Lf/i/a/a/z;->m:Z

    .line 17
    sget-object p4, Lf/i/a/a/s0;->d:Lf/i/a/a/s0;

    iput-object p4, p0, Lf/i/a/a/z;->s:Lf/i/a/a/s0;

    const-wide p6, -0x7fffffffffffffffL    # -4.9E-324

    .line 18
    invoke-static {p6, p7, p3}, Lf/i/a/a/i0;->c(JLf/i/a/a/j1/n;)Lf/i/a/a/i0;

    move-result-object p3

    iput-object p3, p0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    .line 19
    new-instance p3, Lf/i/a/a/z$d;

    const/4 p4, 0x0

    invoke-direct {p3, p4}, Lf/i/a/a/z$d;-><init>(Lf/i/a/a/z$a;)V

    iput-object p3, p0, Lf/i/a/a/z;->o:Lf/i/a/a/z$d;

    .line 20
    array-length p3, p1

    new-array p3, p3, [Lf/i/a/a/p;

    iput-object p3, p0, Lf/i/a/a/z;->b:[Lf/i/a/a/p;

    const/4 p3, 0x0

    const/4 p4, 0x0

    .line 21
    :goto_0
    array-length p6, p1

    if-ge p4, p6, :cond_0

    .line 22
    aget-object p6, p1, p4

    invoke-interface {p6, p4}, Lf/i/a/a/p0;->f(I)V

    .line 23
    iget-object p6, p0, Lf/i/a/a/z;->b:[Lf/i/a/a/p;

    aget-object p7, p1, p4

    invoke-interface {p7}, Lf/i/a/a/p0;->u()Lf/i/a/a/p;

    move-result-object p7

    aput-object p7, p6, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 24
    :cond_0
    new-instance p1, Lf/i/a/a/u;

    invoke-direct {p1, p0, p10}, Lf/i/a/a/u;-><init>(Lf/i/a/a/u$a;Lf/i/a/a/m1/h;)V

    iput-object p1, p0, Lf/i/a/a/z;->n:Lf/i/a/a/u;

    .line 25
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lf/i/a/a/z;->p:Ljava/util/ArrayList;

    new-array p1, p3, [Lf/i/a/a/p0;

    .line 26
    iput-object p1, p0, Lf/i/a/a/z;->v:[Lf/i/a/a/p0;

    .line 27
    new-instance p1, Lf/i/a/a/u0$c;

    invoke-direct {p1}, Lf/i/a/a/u0$c;-><init>()V

    iput-object p1, p0, Lf/i/a/a/z;->j:Lf/i/a/a/u0$c;

    .line 28
    new-instance p1, Lf/i/a/a/u0$b;

    invoke-direct {p1}, Lf/i/a/a/u0$b;-><init>()V

    iput-object p1, p0, Lf/i/a/a/z;->k:Lf/i/a/a/u0$b;

    .line 29
    iput-object p0, p2, Lf/i/a/a/j1/m;->a:Lf/i/a/a/j1/m$a;

    .line 30
    iput-object p5, p2, Lf/i/a/a/j1/m;->b:Lf/i/a/a/l1/g;

    .line 31
    new-instance p1, Landroid/os/HandlerThread;

    const/16 p2, -0x10

    const-string p3, "ExoPlayerImplInternal:Handler"

    invoke-direct {p1, p3, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lf/i/a/a/z;->h:Landroid/os/HandlerThread;

    .line 32
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 33
    iget-object p1, p0, Lf/i/a/a/z;->h:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-interface {p10, p1, p0}, Lf/i/a/a/m1/h;->b(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lf/i/a/a/m1/c0;

    move-result-object p1

    iput-object p1, p0, Lf/i/a/a/z;->g:Lf/i/a/a/m1/c0;

    return-void
.end method

.method public static g(Lf/i/a/a/j1/j;)[Lf/i/a/a/b0;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p0}, Lf/i/a/a/j1/j;->length()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    new-array v2, v1, [Lf/i/a/a/b0;

    :goto_1
    if-ge v0, v1, :cond_1

    .line 3
    invoke-interface {p0, v0}, Lf/i/a/a/j1/j;->c(I)Lf/i/a/a/b0;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v2
.end method


# virtual methods
.method public final A(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    .line 2
    invoke-virtual {v0}, Lf/i/a/a/g0;->i()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    .line 3
    iget-object v0, v0, Lf/i/a/a/g0;->g:Lf/i/a/a/e0;

    .line 4
    iget-wide v0, v0, Lf/i/a/a/e0;->n:J

    add-long/2addr p1, v0

    .line 5
    :goto_0
    iput-wide p1, p0, Lf/i/a/a/z;->E:J

    .line 6
    iget-object v0, p0, Lf/i/a/a/z;->n:Lf/i/a/a/u;

    .line 7
    iget-object v0, v0, Lf/i/a/a/u;->a:Lf/i/a/a/m1/a0;

    invoke-virtual {v0, p1, p2}, Lf/i/a/a/m1/a0;->a(J)V

    .line 8
    iget-object p1, p0, Lf/i/a/a/z;->v:[Lf/i/a/a/p0;

    array-length p2, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_1

    aget-object v2, p1, v1

    .line 9
    iget-wide v3, p0, Lf/i/a/a/z;->E:J

    invoke-interface {v2, v3, v4}, Lf/i/a/a/p0;->p(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 10
    :cond_1
    iget-object p1, p0, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    invoke-virtual {p1}, Lf/i/a/a/g0;->d()Lf/i/a/a/e0;

    move-result-object p1

    :goto_2
    if-eqz p1, :cond_4

    .line 11
    invoke-virtual {p1}, Lf/i/a/a/e0;->f()Lf/i/a/a/j1/n;

    move-result-object p2

    .line 12
    iget-object p2, p2, Lf/i/a/a/j1/n;->c:Lf/i/a/a/j1/k;

    invoke-virtual {p2}, Lf/i/a/a/j1/k;->a()[Lf/i/a/a/j1/j;

    move-result-object p2

    .line 13
    array-length v1, p2

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_3

    aget-object v3, p2, v2

    if-eqz v3, :cond_2

    .line 14
    invoke-interface {v3}, Lf/i/a/a/j1/j;->q()V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 15
    :cond_3
    iget-object p1, p1, Lf/i/a/a/e0;->k:Lf/i/a/a/e0;

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final B(Lf/i/a/a/z$c;)Z
    .locals 11

    .line 1
    iget-object v0, p1, Lf/i/a/a/z$c;->d:Ljava/lang/Object;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_5

    .line 2
    iget-object v0, p1, Lf/i/a/a/z$c;->a:Lf/i/a/a/n0;

    .line 3
    iget-object v3, v0, Lf/i/a/a/n0;->c:Lf/i/a/a/u0;

    .line 4
    iget v7, v0, Lf/i/a/a/n0;->g:I

    .line 5
    iget-wide v4, v0, Lf/i/a/a/n0;->h:J

    .line 6
    invoke-static {v4, v5}, Lf/i/a/a/q;->a(J)J

    move-result-wide v8

    .line 7
    iget-object v0, p0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    iget-object v0, v0, Lf/i/a/a/i0;->a:Lf/i/a/a/u0;

    .line 8
    invoke-virtual {v0}, Lf/i/a/a/u0;->q()Z

    move-result v4

    const/4 v10, 0x0

    if-eqz v4, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {v3}, Lf/i/a/a/u0;->q()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v3, v0

    .line 10
    :cond_1
    :try_start_0
    iget-object v5, p0, Lf/i/a/a/z;->j:Lf/i/a/a/u0$c;

    iget-object v6, p0, Lf/i/a/a/z;->k:Lf/i/a/a/u0$b;

    move-object v4, v3

    invoke-virtual/range {v4 .. v9}, Lf/i/a/a/u0;->j(Lf/i/a/a/u0$c;Lf/i/a/a/u0$b;IJ)Landroid/util/Pair;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v3, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    iget-object v3, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lf/i/a/a/u0;->b(Ljava/lang/Object;)I

    move-result v0

    if-eq v0, v1, :cond_3

    :goto_0
    move-object v10, v4

    goto :goto_1

    :catch_0
    nop

    :cond_3
    :goto_1
    if-nez v10, :cond_4

    return v2

    .line 12
    :cond_4
    iget-object v0, p0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    iget-object v0, v0, Lf/i/a/a/i0;->a:Lf/i/a/a/u0;

    iget-object v1, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 13
    invoke-virtual {v0, v1}, Lf/i/a/a/u0;->b(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    .line 14
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 15
    iput v0, p1, Lf/i/a/a/z$c;->b:I

    .line 16
    iput-wide v1, p1, Lf/i/a/a/z$c;->c:J

    .line 17
    iput-object v3, p1, Lf/i/a/a/z$c;->d:Ljava/lang/Object;

    goto :goto_2

    .line 18
    :cond_5
    iget-object v3, p0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    iget-object v3, v3, Lf/i/a/a/i0;->a:Lf/i/a/a/u0;

    invoke-virtual {v3, v0}, Lf/i/a/a/u0;->b(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v1, :cond_6

    return v2

    .line 19
    :cond_6
    iput v0, p1, Lf/i/a/a/z$c;->b:I

    :goto_2
    const/4 p1, 0x1

    return p1
.end method

.method public final C(Lf/i/a/a/z$e;Z)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i/a/a/z$e;",
            "Z)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    iget-object v0, v0, Lf/i/a/a/i0;->a:Lf/i/a/a/u0;

    .line 2
    iget-object v1, p1, Lf/i/a/a/z$e;->a:Lf/i/a/a/u0;

    .line 3
    invoke-virtual {v0}, Lf/i/a/a/u0;->q()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    .line 4
    :cond_0
    invoke-virtual {v1}, Lf/i/a/a/u0;->q()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 5
    :cond_1
    :try_start_0
    iget-object v5, p0, Lf/i/a/a/z;->j:Lf/i/a/a/u0$c;

    iget-object v6, p0, Lf/i/a/a/z;->k:Lf/i/a/a/u0$b;

    iget v7, p1, Lf/i/a/a/z$e;->b:I

    iget-wide v8, p1, Lf/i/a/a/z$e;->c:J

    move-object v4, v1

    invoke-virtual/range {v4 .. v9}, Lf/i/a/a/u0;->j(Lf/i/a/a/u0$c;Lf/i/a/a/u0$b;IJ)Landroid/util/Pair;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v1, :cond_2

    return-object p1

    .line 6
    :cond_2
    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lf/i/a/a/u0;->b(Ljava/lang/Object;)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    return-object p1

    :cond_3
    if-eqz p2, :cond_4

    .line 7
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, p1, v1, v0}, Lf/i/a/a/z;->D(Ljava/lang/Object;Lf/i/a/a/u0;Lf/i/a/a/u0;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 8
    iget-object p1, p0, Lf/i/a/a/z;->k:Lf/i/a/a/u0$b;

    .line 9
    invoke-virtual {v0, v2, p1}, Lf/i/a/a/u0;->f(ILf/i/a/a/u0$b;)Lf/i/a/a/u0$b;

    move-result-object p1

    iget p1, p1, Lf/i/a/a/u0$b;->c:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    invoke-virtual {p0, v0, p1, v1, v2}, Lf/i/a/a/z;->j(Lf/i/a/a/u0;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :catch_0
    :cond_4
    return-object v3
.end method

.method public final D(Ljava/lang/Object;Lf/i/a/a/u0;Lf/i/a/a/u0;)Ljava/lang/Object;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p2, p1}, Lf/i/a/a/u0;->b(Ljava/lang/Object;)I

    move-result p1

    .line 2
    invoke-virtual {p2}, Lf/i/a/a/u0;->i()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v4, p1

    const/4 p1, -0x1

    :goto_0
    if-ge v2, v0, :cond_1

    if-ne p1, v1, :cond_1

    .line 3
    iget-object v5, p0, Lf/i/a/a/z;->k:Lf/i/a/a/u0$b;

    iget-object v6, p0, Lf/i/a/a/z;->j:Lf/i/a/a/u0$c;

    iget v7, p0, Lf/i/a/a/z;->z:I

    iget-boolean v8, p0, Lf/i/a/a/z;->A:Z

    move-object v3, p2

    invoke-virtual/range {v3 .. v8}, Lf/i/a/a/u0;->d(ILf/i/a/a/u0$b;Lf/i/a/a/u0$c;IZ)I

    move-result v4

    if-ne v4, v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p2, v4}, Lf/i/a/a/u0;->m(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p1}, Lf/i/a/a/u0;->b(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ne p1, v1, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    .line 5
    :cond_2
    invoke-virtual {p3, p1}, Lf/i/a/a/u0;->m(I)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public final E(JJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/z;->g:Lf/i/a/a/m1/c0;

    .line 2
    iget-object v0, v0, Lf/i/a/a/m1/c0;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object v0, p0, Lf/i/a/a/z;->g:Lf/i/a/a/m1/c0;

    add-long/2addr p1, p3

    .line 4
    iget-object p3, v0, Lf/i/a/a/m1/c0;->a:Landroid/os/Handler;

    invoke-virtual {p3, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    return-void
.end method

.method public final F(Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    .line 2
    iget-object v0, v0, Lf/i/a/a/g0;->g:Lf/i/a/a/e0;

    .line 3
    iget-object v0, v0, Lf/i/a/a/e0;->f:Lf/i/a/a/f0;

    iget-object v2, v0, Lf/i/a/a/f0;->a:Lf/i/a/a/h1/e0$a;

    .line 4
    iget-object v0, p0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    iget-wide v0, v0, Lf/i/a/a/i0;->m:J

    const/4 v3, 0x1

    .line 5
    invoke-virtual {p0, v2, v0, v1, v3}, Lf/i/a/a/z;->H(Lf/i/a/a/h1/e0$a;JZ)J

    move-result-wide v3

    .line 6
    iget-object v0, p0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    iget-wide v0, v0, Lf/i/a/a/i0;->m:J

    cmp-long v5, v3, v0

    if-eqz v5, :cond_0

    .line 7
    iget-object v1, p0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    iget-wide v5, v1, Lf/i/a/a/i0;->e:J

    .line 8
    invoke-virtual {p0}, Lf/i/a/a/z;->k()J

    move-result-wide v7

    .line 9
    invoke-virtual/range {v1 .. v8}, Lf/i/a/a/i0;->a(Lf/i/a/a/h1/e0$a;JJJ)Lf/i/a/a/i0;

    move-result-object v0

    iput-object v0, p0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    if-eqz p1, :cond_0

    .line 10
    iget-object p1, p0, Lf/i/a/a/z;->o:Lf/i/a/a/z$d;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lf/i/a/a/z$d;->b(I)V

    :cond_0
    return-void
.end method

.method public final G(Lf/i/a/a/z$e;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    iget-object v2, v1, Lf/i/a/a/z;->o:Lf/i/a/a/z$d;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lf/i/a/a/z$d;->a(I)V

    .line 2
    invoke-virtual {v1, v0, v3}, Lf/i/a/a/z;->C(Lf/i/a/a/z$e;Z)Landroid/util/Pair;

    move-result-object v2

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v2, :cond_0

    .line 3
    iget-object v2, v1, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    iget-boolean v9, v1, Lf/i/a/a/z;->A:Z

    iget-object v10, v1, Lf/i/a/a/z;->j:Lf/i/a/a/u0$c;

    invoke-virtual {v2, v9, v10}, Lf/i/a/a/i0;->d(ZLf/i/a/a/u0$c;)Lf/i/a/a/h1/e0$a;

    move-result-object v2

    move-wide v10, v7

    move-wide v12, v10

    goto :goto_0

    .line 4
    :cond_0
    iget-object v9, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 5
    iget-object v10, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 6
    iget-object v12, v1, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    invoke-virtual {v12, v9, v10, v11}, Lf/i/a/a/g0;->m(Ljava/lang/Object;J)Lf/i/a/a/h1/e0$a;

    move-result-object v9

    .line 7
    invoke-virtual {v9}, Lf/i/a/a/h1/e0$a;->b()Z

    move-result v12

    if-eqz v12, :cond_1

    move-wide v12, v5

    move-object v2, v9

    :goto_0
    move-wide/from16 v17, v10

    move-object v10, v2

    move-wide v11, v12

    const/4 v2, 0x1

    :goto_1
    move-wide/from16 v13, v17

    goto :goto_3

    .line 8
    :cond_1
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 9
    iget-wide v14, v0, Lf/i/a/a/z$e;->c:J

    cmp-long v2, v14, v7

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    move-wide/from16 v17, v10

    move-object v10, v9

    move-wide v11, v12

    goto :goto_1

    :goto_3
    const/4 v15, 0x2

    .line 10
    :try_start_0
    iget-object v9, v1, Lf/i/a/a/z;->u:Lf/i/a/a/h1/e0;

    if-eqz v9, :cond_b

    iget v9, v1, Lf/i/a/a/z;->C:I

    if-lez v9, :cond_3

    goto/16 :goto_8

    :cond_3
    cmp-long v0, v11, v7

    if-nez v0, :cond_4

    const/4 v0, 0x4

    .line 11
    invoke-virtual {v1, v0}, Lf/i/a/a/z;->Q(I)V

    .line 12
    invoke-virtual {v1, v4, v4, v3, v4}, Lf/i/a/a/z;->z(ZZZZ)V

    const/4 v7, 0x2

    goto/16 :goto_9

    .line 13
    :cond_4
    iget-object v0, v1, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    iget-object v0, v0, Lf/i/a/a/i0;->c:Lf/i/a/a/h1/e0$a;

    invoke-virtual {v10, v0}, Lf/i/a/a/h1/e0$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 14
    iget-object v0, v1, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    .line 15
    iget-object v0, v0, Lf/i/a/a/g0;->g:Lf/i/a/a/e0;

    if-eqz v0, :cond_5

    cmp-long v7, v11, v5

    if-eqz v7, :cond_5

    .line 16
    iget-object v0, v0, Lf/i/a/a/e0;->a:Lf/i/a/a/h1/d0;

    iget-object v5, v1, Lf/i/a/a/z;->s:Lf/i/a/a/s0;

    .line 17
    invoke-interface {v0, v11, v12, v5}, Lf/i/a/a/h1/d0;->b(JLf/i/a/a/s0;)J

    move-result-wide v5

    goto :goto_4

    :cond_5
    move-wide v5, v11

    .line 18
    :goto_4
    invoke-static {v5, v6}, Lf/i/a/a/q;->b(J)J

    move-result-wide v7

    iget-object v0, v1, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    iget-wide v3, v0, Lf/i/a/a/i0;->m:J

    invoke-static {v3, v4}, Lf/i/a/a/q;->b(J)J

    move-result-wide v3

    cmp-long v0, v7, v3

    if-nez v0, :cond_7

    .line 19
    iget-object v0, v1, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    iget-wide v11, v0, Lf/i/a/a/i0;->m:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    iget-object v9, v1, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    .line 21
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/z;->k()J

    move-result-wide v3

    const/4 v7, 0x2

    move-wide v15, v3

    .line 22
    invoke-virtual/range {v9 .. v16}, Lf/i/a/a/i0;->a(Lf/i/a/a/h1/e0$a;JJJ)Lf/i/a/a/i0;

    move-result-object v0

    iput-object v0, v1, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    if-eqz v2, :cond_6

    .line 23
    iget-object v0, v1, Lf/i/a/a/z;->o:Lf/i/a/a/z$d;

    invoke-virtual {v0, v7}, Lf/i/a/a/z$d;->b(I)V

    :cond_6
    return-void

    :cond_7
    const/4 v7, 0x2

    goto :goto_5

    :cond_8
    const/4 v7, 0x2

    move-wide v5, v11

    .line 24
    :goto_5
    :try_start_1
    iget-object v0, v1, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    .line 25
    iget-object v3, v0, Lf/i/a/a/g0;->g:Lf/i/a/a/e0;

    .line 26
    iget-object v0, v0, Lf/i/a/a/g0;->h:Lf/i/a/a/e0;

    if-eq v3, v0, :cond_9

    const/4 v0, 0x1

    goto :goto_6

    :cond_9
    const/4 v0, 0x0

    .line 27
    :goto_6
    invoke-virtual {v1, v10, v5, v6, v0}, Lf/i/a/a/z;->H(Lf/i/a/a/h1/e0$a;JZ)J

    move-result-wide v3

    cmp-long v0, v11, v3

    if-eqz v0, :cond_a

    const/16 v16, 0x1

    goto :goto_7

    :cond_a
    const/16 v16, 0x0

    :goto_7
    or-int v2, v2, v16

    move-wide v11, v3

    goto :goto_9

    :cond_b
    :goto_8
    const/4 v7, 0x2

    .line 28
    iput-object v0, v1, Lf/i/a/a/z;->D:Lf/i/a/a/z$e;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    :goto_9
    iget-object v9, v1, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    .line 30
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/z;->k()J

    move-result-wide v15

    .line 31
    invoke-virtual/range {v9 .. v16}, Lf/i/a/a/i0;->a(Lf/i/a/a/h1/e0$a;JJJ)Lf/i/a/a/i0;

    move-result-object v0

    iput-object v0, v1, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    if-eqz v2, :cond_c

    .line 32
    iget-object v0, v1, Lf/i/a/a/z;->o:Lf/i/a/a/z$d;

    invoke-virtual {v0, v7}, Lf/i/a/a/z$d;->b(I)V

    :cond_c
    return-void

    :catchall_0
    move-exception v0

    goto :goto_a

    :catchall_1
    move-exception v0

    const/4 v7, 0x2

    .line 33
    :goto_a
    iget-object v9, v1, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    .line 34
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/z;->k()J

    move-result-wide v15

    .line 35
    invoke-virtual/range {v9 .. v16}, Lf/i/a/a/i0;->a(Lf/i/a/a/h1/e0$a;JJJ)Lf/i/a/a/i0;

    move-result-object v3

    iput-object v3, v1, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    if-eqz v2, :cond_d

    .line 36
    iget-object v2, v1, Lf/i/a/a/z;->o:Lf/i/a/a/z$d;

    invoke-virtual {v2, v7}, Lf/i/a/a/z$d;->b(I)V

    .line 37
    :cond_d
    throw v0
.end method

.method public final H(Lf/i/a/a/h1/e0$a;JZ)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/z;->T()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lf/i/a/a/z;->y:Z

    const/4 v1, 0x2

    .line 3
    invoke-virtual {p0, v1}, Lf/i/a/a/z;->Q(I)V

    .line 4
    iget-object v2, p0, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    .line 5
    iget-object v2, v2, Lf/i/a/a/g0;->g:Lf/i/a/a/e0;

    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_1

    .line 6
    iget-object v4, v3, Lf/i/a/a/e0;->f:Lf/i/a/a/f0;

    iget-object v4, v4, Lf/i/a/a/f0;->a:Lf/i/a/a/h1/e0$a;

    invoke-virtual {p1, v4}, Lf/i/a/a/h1/e0$a;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, v3, Lf/i/a/a/e0;->d:Z

    if-eqz v4, :cond_0

    .line 7
    iget-object p1, p0, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    invoke-virtual {p1, v3}, Lf/i/a/a/g0;->l(Lf/i/a/a/e0;)Z

    goto :goto_1

    .line 8
    :cond_0
    iget-object v3, p0, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    invoke-virtual {v3}, Lf/i/a/a/g0;->a()Lf/i/a/a/e0;

    move-result-object v3

    goto :goto_0

    :cond_1
    :goto_1
    const-wide/16 v4, 0x0

    if-nez p4, :cond_2

    if-ne v2, v3, :cond_2

    if-eqz v3, :cond_4

    .line 9
    iget-wide v6, v3, Lf/i/a/a/e0;->n:J

    add-long/2addr v6, p2

    cmp-long p1, v6, v4

    if-gez p1, :cond_4

    .line 10
    :cond_2
    iget-object p1, p0, Lf/i/a/a/z;->v:[Lf/i/a/a/p0;

    array-length p4, p1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, p4, :cond_3

    aget-object v6, p1, v2

    .line 11
    invoke-virtual {p0, v6}, Lf/i/a/a/z;->c(Lf/i/a/a/p0;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    new-array p1, v0, [Lf/i/a/a/p0;

    .line 12
    iput-object p1, p0, Lf/i/a/a/z;->v:[Lf/i/a/a/p0;

    const/4 v2, 0x0

    if-eqz v3, :cond_4

    .line 13
    iput-wide v4, v3, Lf/i/a/a/e0;->n:J

    :cond_4
    if-eqz v3, :cond_6

    .line 14
    invoke-virtual {p0, v2}, Lf/i/a/a/z;->W(Lf/i/a/a/e0;)V

    .line 15
    iget-boolean p1, v3, Lf/i/a/a/e0;->e:Z

    if-eqz p1, :cond_5

    .line 16
    iget-object p1, v3, Lf/i/a/a/e0;->a:Lf/i/a/a/h1/d0;

    invoke-interface {p1, p2, p3}, Lf/i/a/a/h1/d0;->u(J)J

    move-result-wide p1

    .line 17
    iget-object p3, v3, Lf/i/a/a/e0;->a:Lf/i/a/a/h1/d0;

    iget-wide v2, p0, Lf/i/a/a/z;->l:J

    sub-long v2, p1, v2

    iget-boolean p4, p0, Lf/i/a/a/z;->m:Z

    invoke-interface {p3, v2, v3, p4}, Lf/i/a/a/h1/d0;->t(JZ)V

    move-wide p2, p1

    .line 18
    :cond_5
    invoke-virtual {p0, p2, p3}, Lf/i/a/a/z;->A(J)V

    .line 19
    invoke-virtual {p0}, Lf/i/a/a/z;->t()V

    goto :goto_3

    .line 20
    :cond_6
    iget-object p1, p0, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    const/4 p4, 0x1

    invoke-virtual {p1, p4}, Lf/i/a/a/g0;->b(Z)V

    .line 21
    iget-object p1, p0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    sget-object p4, Lf/i/a/a/h1/p0;->d:Lf/i/a/a/h1/p0;

    iget-object v2, p0, Lf/i/a/a/z;->d:Lf/i/a/a/j1/n;

    .line 22
    invoke-virtual {p1, p4, v2}, Lf/i/a/a/i0;->b(Lf/i/a/a/h1/p0;Lf/i/a/a/j1/n;)Lf/i/a/a/i0;

    move-result-object p1

    iput-object p1, p0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    .line 23
    invoke-virtual {p0, p2, p3}, Lf/i/a/a/z;->A(J)V

    .line 24
    :goto_3
    invoke-virtual {p0, v0}, Lf/i/a/a/z;->n(Z)V

    .line 25
    iget-object p1, p0, Lf/i/a/a/z;->g:Lf/i/a/a/m1/c0;

    invoke-virtual {p1, v1}, Lf/i/a/a/m1/c0;->c(I)Z

    return-wide p2
.end method

.method public final I(Lf/i/a/a/n0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    .line 1
    iget-wide v0, p1, Lf/i/a/a/n0;->h:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lf/i/a/a/z;->J(Lf/i/a/a/n0;)V

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lf/i/a/a/z;->u:Lf/i/a/a/h1/e0;

    if-eqz v0, :cond_3

    iget v0, p0, Lf/i/a/a/z;->C:I

    if-lez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Lf/i/a/a/z$c;

    invoke-direct {v0, p1}, Lf/i/a/a/z$c;-><init>(Lf/i/a/a/n0;)V

    .line 5
    invoke-virtual {p0, v0}, Lf/i/a/a/z;->B(Lf/i/a/a/z$c;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    iget-object p1, p0, Lf/i/a/a/z;->p:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, p0, Lf/i/a/a/z;->p:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Lf/i/a/a/n0;->b(Z)V

    goto :goto_1

    .line 9
    :cond_3
    :goto_0
    iget-object v0, p0, Lf/i/a/a/z;->p:Ljava/util/ArrayList;

    new-instance v1, Lf/i/a/a/z$c;

    invoke-direct {v1, p1}, Lf/i/a/a/z$c;-><init>(Lf/i/a/a/n0;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method public final J(Lf/i/a/a/n0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lf/i/a/a/n0;->f:Landroid/os/Handler;

    .line 2
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lf/i/a/a/z;->g:Lf/i/a/a/m1/c0;

    .line 3
    iget-object v1, v1, Lf/i/a/a/m1/c0;->a:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lf/i/a/a/z;->b(Lf/i/a/a/n0;)V

    .line 5
    iget-object p1, p0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    iget p1, p1, Lf/i/a/a/i0;->f:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v0, :cond_0

    if-ne p1, v1, :cond_2

    .line 6
    :cond_0
    iget-object p1, p0, Lf/i/a/a/z;->g:Lf/i/a/a/m1/c0;

    invoke-virtual {p1, v1}, Lf/i/a/a/m1/c0;->c(I)Z

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lf/i/a/a/z;->g:Lf/i/a/a/m1/c0;

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p1}, Lf/i/a/a/m1/c0;->b(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final K(Lf/i/a/a/n0;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lf/i/a/a/n0;->f:Landroid/os/Handler;

    .line 2
    new-instance v1, Lf/i/a/a/n;

    invoke-direct {v1, p0, p1}, Lf/i/a/a/n;-><init>(Lf/i/a/a/z;Lf/i/a/a/n0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final L(ZLjava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 4
    .param p2    # Ljava/util/concurrent/atomic/AtomicBoolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lf/i/a/a/z;->B:Z

    if-eq v0, p1, :cond_1

    .line 2
    iput-boolean p1, p0, Lf/i/a/a/z;->B:Z

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lf/i/a/a/z;->a:[Lf/i/a/a/p0;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 4
    invoke-interface {v2}, Lf/i/a/a/p0;->c()I

    move-result v3

    if-nez v3, :cond_0

    .line 5
    invoke-interface {v2}, Lf/i/a/a/p0;->reset()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 6
    monitor-enter p0

    const/4 p1, 0x1

    .line 7
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 9
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public final M(Z)V
    .locals 24

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    iget-boolean v2, v1, Lf/i/a/a/i0;->g:Z

    move/from16 v12, p1

    if-eq v2, v12, :cond_0

    .line 2
    new-instance v2, Lf/i/a/a/i0;

    move-object v3, v2

    iget-object v4, v1, Lf/i/a/a/i0;->a:Lf/i/a/a/u0;

    iget-object v5, v1, Lf/i/a/a/i0;->b:Ljava/lang/Object;

    iget-object v6, v1, Lf/i/a/a/i0;->c:Lf/i/a/a/h1/e0$a;

    iget-wide v7, v1, Lf/i/a/a/i0;->d:J

    iget-wide v9, v1, Lf/i/a/a/i0;->e:J

    iget v11, v1, Lf/i/a/a/i0;->f:I

    iget-object v13, v1, Lf/i/a/a/i0;->h:Lf/i/a/a/h1/p0;

    iget-object v14, v1, Lf/i/a/a/i0;->i:Lf/i/a/a/j1/n;

    iget-object v15, v1, Lf/i/a/a/i0;->j:Lf/i/a/a/h1/e0$a;

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    iget-wide v2, v1, Lf/i/a/a/i0;->k:J

    move-wide/from16 v16, v2

    iget-wide v2, v1, Lf/i/a/a/i0;->l:J

    move-wide/from16 v18, v2

    iget-wide v1, v1, Lf/i/a/a/i0;->m:J

    move-wide/from16 v20, v1

    move/from16 v12, p1

    move-object/from16 v3, v23

    invoke-direct/range {v3 .. v21}, Lf/i/a/a/i0;-><init>(Lf/i/a/a/u0;Ljava/lang/Object;Lf/i/a/a/h1/e0$a;JJIZLf/i/a/a/h1/p0;Lf/i/a/a/j1/n;Lf/i/a/a/h1/e0$a;JJJ)V

    move-object/from16 v1, v22

    .line 3
    iput-object v1, v0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    :cond_0
    return-void
.end method

.method public final N(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lf/i/a/a/z;->y:Z

    .line 2
    iput-boolean p1, p0, Lf/i/a/a/z;->x:Z

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lf/i/a/a/z;->T()V

    .line 4
    invoke-virtual {p0}, Lf/i/a/a/z;->V()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    iget p1, p1, Lf/i/a/a/i0;->f:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-ne p1, v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lf/i/a/a/z;->R()V

    .line 7
    iget-object p1, p0, Lf/i/a/a/z;->g:Lf/i/a/a/m1/c0;

    invoke-virtual {p1, v1}, Lf/i/a/a/m1/c0;->c(I)Z

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    .line 8
    iget-object p1, p0, Lf/i/a/a/z;->g:Lf/i/a/a/m1/c0;

    invoke-virtual {p1, v1}, Lf/i/a/a/m1/c0;->c(I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final O(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    .line 1
    iput p1, p0, Lf/i/a/a/z;->z:I

    .line 2
    iget-object v0, p0, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    .line 3
    iput p1, v0, Lf/i/a/a/g0;->e:I

    .line 4
    invoke-virtual {v0}, Lf/i/a/a/g0;->o()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Lf/i/a/a/z;->F(Z)V

    :cond_0
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Lf/i/a/a/z;->n(Z)V

    return-void
.end method

.method public final P(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lf/i/a/a/z;->A:Z

    .line 2
    iget-object v0, p0, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    .line 3
    iput-boolean p1, v0, Lf/i/a/a/g0;->f:Z

    .line 4
    invoke-virtual {v0}, Lf/i/a/a/g0;->o()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Lf/i/a/a/z;->F(Z)V

    :cond_0
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Lf/i/a/a/z;->n(Z)V

    return-void
.end method

.method public final Q(I)V
    .locals 24

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    iget v2, v1, Lf/i/a/a/i0;->f:I

    move/from16 v11, p1

    if-eq v2, v11, :cond_0

    .line 2
    new-instance v2, Lf/i/a/a/i0;

    move-object v3, v2

    iget-object v4, v1, Lf/i/a/a/i0;->a:Lf/i/a/a/u0;

    iget-object v5, v1, Lf/i/a/a/i0;->b:Ljava/lang/Object;

    iget-object v6, v1, Lf/i/a/a/i0;->c:Lf/i/a/a/h1/e0$a;

    iget-wide v7, v1, Lf/i/a/a/i0;->d:J

    iget-wide v9, v1, Lf/i/a/a/i0;->e:J

    iget-boolean v12, v1, Lf/i/a/a/i0;->g:Z

    iget-object v13, v1, Lf/i/a/a/i0;->h:Lf/i/a/a/h1/p0;

    iget-object v14, v1, Lf/i/a/a/i0;->i:Lf/i/a/a/j1/n;

    iget-object v15, v1, Lf/i/a/a/i0;->j:Lf/i/a/a/h1/e0$a;

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    iget-wide v2, v1, Lf/i/a/a/i0;->k:J

    move-wide/from16 v16, v2

    iget-wide v2, v1, Lf/i/a/a/i0;->l:J

    move-wide/from16 v18, v2

    iget-wide v1, v1, Lf/i/a/a/i0;->m:J

    move-wide/from16 v20, v1

    move/from16 v11, p1

    move-object/from16 v3, v23

    invoke-direct/range {v3 .. v21}, Lf/i/a/a/i0;-><init>(Lf/i/a/a/u0;Ljava/lang/Object;Lf/i/a/a/h1/e0$a;JJIZLf/i/a/a/h1/p0;Lf/i/a/a/j1/n;Lf/i/a/a/h1/e0$a;JJJ)V

    move-object/from16 v1, v22

    .line 3
    iput-object v1, v0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    :cond_0
    return-void
.end method

.method public final R()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lf/i/a/a/z;->y:Z

    .line 2
    iget-object v1, p0, Lf/i/a/a/z;->n:Lf/i/a/a/u;

    .line 3
    iget-object v1, v1, Lf/i/a/a/u;->a:Lf/i/a/a/m1/a0;

    .line 4
    iget-boolean v2, v1, Lf/i/a/a/m1/a0;->b:Z

    if-nez v2, :cond_0

    .line 5
    iget-object v2, v1, Lf/i/a/a/m1/a0;->a:Lf/i/a/a/m1/h;

    invoke-interface {v2}, Lf/i/a/a/m1/h;->c()J

    move-result-wide v2

    iput-wide v2, v1, Lf/i/a/a/m1/a0;->d:J

    const/4 v2, 0x1

    .line 6
    iput-boolean v2, v1, Lf/i/a/a/m1/a0;->b:Z

    .line 7
    :cond_0
    iget-object v1, p0, Lf/i/a/a/z;->v:[Lf/i/a/a/p0;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 8
    invoke-interface {v3}, Lf/i/a/a/p0;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final S(ZZZ)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 1
    iget-boolean p1, p0, Lf/i/a/a/z;->B:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-virtual {p0, p1, v1, p2, p2}, Lf/i/a/a/z;->z(ZZZZ)V

    .line 2
    iget-object p1, p0, Lf/i/a/a/z;->o:Lf/i/a/a/z$d;

    iget p2, p0, Lf/i/a/a/z;->C:I

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Lf/i/a/a/z$d;->a(I)V

    .line 3
    iput v0, p0, Lf/i/a/a/z;->C:I

    .line 4
    iget-object p1, p0, Lf/i/a/a/z;->e:Lf/i/a/a/t;

    .line 5
    invoke-virtual {p1, v1}, Lf/i/a/a/t;->b(Z)V

    .line 6
    invoke-virtual {p0, v1}, Lf/i/a/a/z;->Q(I)V

    return-void
.end method

.method public final T()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/z;->n:Lf/i/a/a/u;

    .line 2
    iget-object v0, v0, Lf/i/a/a/u;->a:Lf/i/a/a/m1/a0;

    .line 3
    iget-boolean v1, v0, Lf/i/a/a/m1/a0;->b:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lf/i/a/a/m1/a0;->v()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lf/i/a/a/m1/a0;->a(J)V

    .line 5
    iput-boolean v2, v0, Lf/i/a/a/m1/a0;->b:Z

    .line 6
    :cond_0
    iget-object v0, p0, Lf/i/a/a/z;->v:[Lf/i/a/a/p0;

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 7
    invoke-interface {v3}, Lf/i/a/a/p0;->c()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 8
    invoke-interface {v3}, Lf/i/a/a/p0;->stop()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final U(Lf/i/a/a/h1/p0;Lf/i/a/a/j1/n;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lf/i/a/a/z;->e:Lf/i/a/a/t;

    iget-object v0, p0, Lf/i/a/a/z;->a:[Lf/i/a/a/p0;

    iget-object p2, p2, Lf/i/a/a/j1/n;->c:Lf/i/a/a/j1/k;

    if-eqz p1, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 3
    aget-object v3, v0, v2

    invoke-interface {v3}, Lf/i/a/a/p0;->t()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 4
    iget-object v3, p2, Lf/i/a/a/j1/k;->b:[Lf/i/a/a/j1/j;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 5
    :goto_1
    iput-boolean v2, p1, Lf/i/a/a/t;->m:Z

    .line 6
    iget v2, p1, Lf/i/a/a/t;->g:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    const/4 v2, 0x0

    .line 7
    :goto_2
    array-length v3, v0

    if-ge v1, v3, :cond_3

    .line 8
    iget-object v3, p2, Lf/i/a/a/j1/k;->b:[Lf/i/a/a/j1/j;

    aget-object v3, v3, v1

    if-eqz v3, :cond_2

    .line 9
    aget-object v3, v0, v1

    invoke-interface {v3}, Lf/i/a/a/p0;->t()I

    move-result v3

    invoke-static {v3}, Lf/i/a/a/m1/h0;->B(I)I

    move-result v3

    add-int/2addr v3, v2

    move v2, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 10
    :cond_3
    iput v2, p1, Lf/i/a/a/t;->k:I

    .line 11
    iget-object p1, p1, Lf/i/a/a/t;->a:Lf/i/a/a/l1/q;

    invoke-virtual {p1, v2}, Lf/i/a/a/l1/q;->b(I)V

    return-void

    :cond_4
    const/4 p1, 0x0

    .line 12
    throw p1
.end method

.method public final V()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    invoke-virtual {v0}, Lf/i/a/a/g0;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    .line 3
    iget-object v0, v0, Lf/i/a/a/g0;->g:Lf/i/a/a/e0;

    .line 4
    iget-object v1, v0, Lf/i/a/a/e0;->a:Lf/i/a/a/h1/d0;

    invoke-interface {v1}, Lf/i/a/a/h1/d0;->l()J

    move-result-wide v4

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v4, v1

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {p0, v4, v5}, Lf/i/a/a/z;->A(J)V

    .line 6
    iget-object v0, p0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    iget-wide v0, v0, Lf/i/a/a/i0;->m:J

    cmp-long v2, v4, v0

    if-eqz v2, :cond_10

    .line 7
    iget-object v2, p0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    iget-object v3, v2, Lf/i/a/a/i0;->c:Lf/i/a/a/h1/e0$a;

    iget-wide v6, v2, Lf/i/a/a/i0;->e:J

    .line 8
    invoke-virtual {p0}, Lf/i/a/a/z;->k()J

    move-result-wide v8

    .line 9
    invoke-virtual/range {v2 .. v9}, Lf/i/a/a/i0;->a(Lf/i/a/a/h1/e0$a;JJJ)Lf/i/a/a/i0;

    move-result-object v0

    iput-object v0, p0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    .line 10
    iget-object v0, p0, Lf/i/a/a/z;->o:Lf/i/a/a/z$d;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lf/i/a/a/z$d;->b(I)V

    goto/16 :goto_8

    .line 11
    :cond_1
    iget-object v1, p0, Lf/i/a/a/z;->n:Lf/i/a/a/u;

    .line 12
    invoke-virtual {v1}, Lf/i/a/a/u;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 13
    invoke-virtual {v1}, Lf/i/a/a/u;->a()V

    .line 14
    iget-object v1, v1, Lf/i/a/a/u;->d:Lf/i/a/a/m1/q;

    invoke-interface {v1}, Lf/i/a/a/m1/q;->v()J

    move-result-wide v1

    goto :goto_0

    .line 15
    :cond_2
    iget-object v1, v1, Lf/i/a/a/u;->a:Lf/i/a/a/m1/a0;

    invoke-virtual {v1}, Lf/i/a/a/m1/a0;->v()J

    move-result-wide v1

    .line 16
    :goto_0
    iput-wide v1, p0, Lf/i/a/a/z;->E:J

    .line 17
    iget-wide v3, v0, Lf/i/a/a/e0;->n:J

    sub-long/2addr v1, v3

    .line 18
    iget-object v0, p0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    iget-wide v3, v0, Lf/i/a/a/i0;->m:J

    .line 19
    iget-object v0, p0, Lf/i/a/a/z;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    iget-object v0, v0, Lf/i/a/a/i0;->c:Lf/i/a/a/h1/e0$a;

    invoke-virtual {v0}, Lf/i/a/a/h1/e0$a;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_7

    .line 20
    :cond_3
    iget-object v0, p0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    iget-wide v5, v0, Lf/i/a/a/i0;->d:J

    cmp-long v0, v5, v3

    if-nez v0, :cond_4

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    .line 21
    :cond_4
    iget-object v0, p0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    iget-object v5, v0, Lf/i/a/a/i0;->a:Lf/i/a/a/u0;

    iget-object v0, v0, Lf/i/a/a/i0;->c:Lf/i/a/a/h1/e0$a;

    iget-object v0, v0, Lf/i/a/a/h1/e0$a;->a:Ljava/lang/Object;

    .line 22
    invoke-virtual {v5, v0}, Lf/i/a/a/u0;->b(Ljava/lang/Object;)I

    move-result v0

    .line 23
    iget v5, p0, Lf/i/a/a/z;->F:I

    const/4 v6, 0x0

    if-lez v5, :cond_5

    iget-object v7, p0, Lf/i/a/a/z;->p:Ljava/util/ArrayList;

    add-int/lit8 v5, v5, -0x1

    .line 24
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf/i/a/a/z$c;

    move-object v7, p0

    move-wide v8, v1

    goto :goto_2

    :cond_5
    move-object v5, p0

    move-wide v7, v1

    :goto_1
    move-wide v8, v7

    move-object v7, v5

    move-object v5, v6

    :goto_2
    if-eqz v5, :cond_8

    .line 25
    iget v10, v5, Lf/i/a/a/z$c;->b:I

    if-gt v10, v0, :cond_6

    if-ne v10, v0, :cond_8

    iget-wide v10, v5, Lf/i/a/a/z$c;->c:J

    cmp-long v5, v10, v3

    if-lez v5, :cond_8

    .line 26
    :cond_6
    iget v5, v7, Lf/i/a/a/z;->F:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v7, Lf/i/a/a/z;->F:I

    if-lez v5, :cond_7

    .line 27
    iget-object v10, v7, Lf/i/a/a/z;->p:Ljava/util/ArrayList;

    add-int/lit8 v5, v5, -0x1

    .line 28
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf/i/a/a/z$c;

    goto :goto_2

    :cond_7
    move-object v5, v7

    move-wide v7, v8

    goto :goto_1

    .line 29
    :cond_8
    iget v5, v7, Lf/i/a/a/z;->F:I

    iget-object v10, v7, Lf/i/a/a/z;->p:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_9

    iget-object v5, v7, Lf/i/a/a/z;->p:Ljava/util/ArrayList;

    iget v10, v7, Lf/i/a/a/z;->F:I

    .line 31
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf/i/a/a/z$c;

    goto :goto_3

    :cond_9
    move-object v5, v6

    :goto_3
    if-eqz v5, :cond_b

    .line 32
    iget-object v10, v5, Lf/i/a/a/z$c;->d:Ljava/lang/Object;

    if-eqz v10, :cond_b

    iget v10, v5, Lf/i/a/a/z$c;->b:I

    if-lt v10, v0, :cond_a

    if-ne v10, v0, :cond_b

    iget-wide v10, v5, Lf/i/a/a/z$c;->c:J

    cmp-long v12, v10, v3

    if-gtz v12, :cond_b

    .line 33
    :cond_a
    iget v5, v7, Lf/i/a/a/z;->F:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v7, Lf/i/a/a/z;->F:I

    .line 34
    iget-object v10, v7, Lf/i/a/a/z;->p:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_9

    iget-object v5, v7, Lf/i/a/a/z;->p:Ljava/util/ArrayList;

    iget v10, v7, Lf/i/a/a/z;->F:I

    .line 36
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf/i/a/a/z$c;

    goto :goto_3

    :cond_b
    :goto_4
    if-eqz v5, :cond_f

    .line 37
    iget-object v10, v5, Lf/i/a/a/z$c;->d:Ljava/lang/Object;

    if-eqz v10, :cond_f

    iget v10, v5, Lf/i/a/a/z$c;->b:I

    if-ne v10, v0, :cond_f

    iget-wide v10, v5, Lf/i/a/a/z$c;->c:J

    cmp-long v12, v10, v3

    if-lez v12, :cond_f

    cmp-long v12, v10, v8

    if-gtz v12, :cond_f

    .line 38
    :try_start_0
    iget-object v10, v5, Lf/i/a/a/z$c;->a:Lf/i/a/a/n0;

    invoke-virtual {v7, v10}, Lf/i/a/a/z;->J(Lf/i/a/a/n0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    iget-object v5, v5, Lf/i/a/a/z$c;->a:Lf/i/a/a/n0;

    .line 40
    iget-boolean v10, v5, Lf/i/a/a/n0;->i:Z

    if-nez v10, :cond_c

    .line 41
    invoke-virtual {v5}, Lf/i/a/a/n0;->a()Z

    .line 42
    iget v5, v7, Lf/i/a/a/z;->F:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v7, Lf/i/a/a/z;->F:I

    goto :goto_5

    .line 43
    :cond_c
    iget-object v5, v7, Lf/i/a/a/z;->p:Ljava/util/ArrayList;

    iget v10, v7, Lf/i/a/a/z;->F:I

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 44
    :goto_5
    iget v5, v7, Lf/i/a/a/z;->F:I

    iget-object v10, v7, Lf/i/a/a/z;->p:Ljava/util/ArrayList;

    .line 45
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_d

    iget-object v5, v7, Lf/i/a/a/z;->p:Ljava/util/ArrayList;

    iget v10, v7, Lf/i/a/a/z;->F:I

    .line 46
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf/i/a/a/z$c;

    goto :goto_4

    :cond_d
    move-object v5, v6

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 47
    iget-object v1, v5, Lf/i/a/a/z$c;->a:Lf/i/a/a/n0;

    .line 48
    iget-boolean v2, v1, Lf/i/a/a/n0;->i:Z

    if-nez v2, :cond_e

    .line 49
    invoke-virtual {v1}, Lf/i/a/a/n0;->a()Z

    .line 50
    iget v1, v7, Lf/i/a/a/z;->F:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v7, Lf/i/a/a/z;->F:I

    goto :goto_6

    .line 51
    :cond_e
    iget-object v1, v7, Lf/i/a/a/z;->p:Ljava/util/ArrayList;

    iget v2, v7, Lf/i/a/a/z;->F:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 52
    :goto_6
    throw v0

    .line 53
    :cond_f
    :goto_7
    iget-object v0, p0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    iput-wide v1, v0, Lf/i/a/a/i0;->m:J

    .line 54
    :cond_10
    :goto_8
    iget-object v0, p0, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    .line 55
    iget-object v0, v0, Lf/i/a/a/g0;->i:Lf/i/a/a/e0;

    .line 56
    iget-object v1, p0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    invoke-virtual {v0}, Lf/i/a/a/e0;->d()J

    move-result-wide v2

    iput-wide v2, v1, Lf/i/a/a/i0;->k:J

    .line 57
    iget-object v0, p0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    invoke-virtual {p0}, Lf/i/a/a/z;->k()J

    move-result-wide v1

    iput-wide v1, v0, Lf/i/a/a/i0;->l:J

    return-void
.end method

.method public final W(Lf/i/a/a/e0;)V
    .locals 8
    .param p1    # Lf/i/a/a/e0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    .line 2
    iget-object v0, v0, Lf/i/a/a/g0;->g:Lf/i/a/a/e0;

    if-eqz v0, :cond_6

    if-ne p1, v0, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    iget-object v1, p0, Lf/i/a/a/z;->a:[Lf/i/a/a/p0;

    array-length v1, v1

    new-array v1, v1, [Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4
    :goto_0
    iget-object v5, p0, Lf/i/a/a/z;->a:[Lf/i/a/a/p0;

    array-length v6, v5

    if-ge v3, v6, :cond_5

    .line 5
    aget-object v5, v5, v3

    .line 6
    invoke-interface {v5}, Lf/i/a/a/p0;->c()I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    aput-boolean v6, v1, v3

    .line 7
    invoke-virtual {v0}, Lf/i/a/a/e0;->f()Lf/i/a/a/j1/n;

    move-result-object v6

    invoke-virtual {v6, v3}, Lf/i/a/a/j1/n;->b(I)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v4, v4, 0x1

    .line 8
    :cond_2
    aget-boolean v6, v1, v3

    if-eqz v6, :cond_4

    .line 9
    invoke-virtual {v0}, Lf/i/a/a/e0;->f()Lf/i/a/a/j1/n;

    move-result-object v6

    invoke-virtual {v6, v3}, Lf/i/a/a/j1/n;->b(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 10
    invoke-interface {v5}, Lf/i/a/a/p0;->q()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 11
    invoke-interface {v5}, Lf/i/a/a/p0;->k()Lf/i/a/a/h1/k0;

    move-result-object v6

    iget-object v7, p1, Lf/i/a/a/e0;->c:[Lf/i/a/a/h1/k0;

    aget-object v7, v7, v3

    if-ne v6, v7, :cond_4

    .line 12
    :cond_3
    invoke-virtual {p0, v5}, Lf/i/a/a/z;->c(Lf/i/a/a/p0;)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 13
    :cond_5
    iget-object p1, p0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    .line 14
    invoke-virtual {v0}, Lf/i/a/a/e0;->e()Lf/i/a/a/h1/p0;

    move-result-object v2

    .line 15
    invoke-virtual {v0}, Lf/i/a/a/e0;->f()Lf/i/a/a/j1/n;

    move-result-object v0

    .line 16
    invoke-virtual {p1, v2, v0}, Lf/i/a/a/i0;->b(Lf/i/a/a/h1/p0;Lf/i/a/a/j1/n;)Lf/i/a/a/i0;

    move-result-object p1

    iput-object p1, p0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    .line 17
    invoke-virtual {p0, v1, v4}, Lf/i/a/a/z;->e([ZI)V

    :cond_6
    :goto_2
    return-void
.end method

.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/z;->g:Lf/i/a/a/m1/c0;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lf/i/a/a/m1/c0;->c(I)Z

    return-void
.end method

.method public final b(Lf/i/a/a/n0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lf/i/a/a/n0;->a()Z

    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p1, Lf/i/a/a/n0;->a:Lf/i/a/a/n0$b;

    .line 3
    iget v2, p1, Lf/i/a/a/n0;->d:I

    .line 4
    iget-object v3, p1, Lf/i/a/a/n0;->e:Ljava/lang/Object;

    .line 5
    invoke-interface {v1, v2, v3}, Lf/i/a/a/n0$b;->j(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {p1, v0}, Lf/i/a/a/n0;->b(Z)V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Lf/i/a/a/n0;->b(Z)V

    .line 7
    throw v1
.end method

.method public final c(Lf/i/a/a/p0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/z;->n:Lf/i/a/a/u;

    .line 2
    iget-object v1, v0, Lf/i/a/a/u;->c:Lf/i/a/a/p0;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Lf/i/a/a/u;->d:Lf/i/a/a/m1/q;

    .line 4
    iput-object v1, v0, Lf/i/a/a/u;->c:Lf/i/a/a/p0;

    .line 5
    :cond_0
    invoke-interface {p1}, Lf/i/a/a/p0;->c()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 6
    invoke-interface {p1}, Lf/i/a/a/p0;->stop()V

    .line 7
    :cond_1
    invoke-interface {p1}, Lf/i/a/a/p0;->b()V

    return-void
.end method

.method public final d()V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lf/i/a/a/z;->q:Lf/i/a/a/m1/h;

    invoke-interface {v0}, Lf/i/a/a/m1/h;->a()J

    move-result-wide v2

    .line 2
    iget-object v0, v1, Lf/i/a/a/z;->u:Lf/i/a/a/h1/e0;

    const/4 v4, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v11, 0x1

    if-nez v0, :cond_0

    goto/16 :goto_13

    .line 3
    :cond_0
    iget v12, v1, Lf/i/a/a/z;->C:I

    if-lez v12, :cond_1

    .line 4
    invoke-interface {v0}, Lf/i/a/a/h1/e0;->b()V

    goto/16 :goto_13

    .line 5
    :cond_1
    iget-object v0, v1, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    iget-wide v12, v1, Lf/i/a/a/z;->E:J

    invoke-virtual {v0, v12, v13}, Lf/i/a/a/g0;->k(J)V

    .line 6
    iget-object v0, v1, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    .line 7
    iget-object v12, v0, Lf/i/a/a/g0;->i:Lf/i/a/a/e0;

    if-eqz v12, :cond_3

    iget-object v13, v12, Lf/i/a/a/e0;->f:Lf/i/a/a/f0;

    iget-boolean v13, v13, Lf/i/a/a/f0;->g:Z

    if-nez v13, :cond_2

    .line 8
    invoke-virtual {v12}, Lf/i/a/a/e0;->g()Z

    move-result v12

    if-eqz v12, :cond_2

    iget-object v12, v0, Lf/i/a/a/g0;->i:Lf/i/a/a/e0;

    iget-object v12, v12, Lf/i/a/a/e0;->f:Lf/i/a/a/f0;

    iget-wide v12, v12, Lf/i/a/a/f0;->e:J

    cmp-long v14, v12, v7

    if-eqz v14, :cond_2

    iget v0, v0, Lf/i/a/a/g0;->j:I

    const/16 v12, 0x64

    if-ge v0, v12, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_c

    .line 9
    iget-object v12, v1, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    iget-wide v13, v1, Lf/i/a/a/z;->E:J

    iget-object v0, v1, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    .line 10
    iget-object v15, v12, Lf/i/a/a/g0;->i:Lf/i/a/a/e0;

    if-nez v15, :cond_4

    .line 11
    iget-object v13, v0, Lf/i/a/a/i0;->c:Lf/i/a/a/h1/e0$a;

    iget-wide v14, v0, Lf/i/a/a/i0;->e:J

    iget-wide v5, v0, Lf/i/a/a/i0;->d:J

    move-wide/from16 v16, v5

    invoke-virtual/range {v12 .. v17}, Lf/i/a/a/g0;->e(Lf/i/a/a/h1/e0$a;JJ)Lf/i/a/a/f0;

    move-result-object v0

    goto :goto_2

    .line 12
    :cond_4
    invoke-virtual {v12, v15, v13, v14}, Lf/i/a/a/g0;->c(Lf/i/a/a/e0;J)Lf/i/a/a/f0;

    move-result-object v0

    :goto_2
    if-nez v0, :cond_7

    .line 13
    iget-object v0, v1, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    .line 14
    iget-object v0, v0, Lf/i/a/a/g0;->i:Lf/i/a/a/e0;

    if-eqz v0, :cond_6

    .line 15
    iget-object v0, v1, Lf/i/a/a/z;->v:[Lf/i/a/a/p0;

    array-length v5, v0

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_6

    aget-object v12, v0, v6

    .line 16
    invoke-interface {v12}, Lf/i/a/a/p0;->g()Z

    move-result v12

    if-nez v12, :cond_5

    goto/16 :goto_7

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 17
    :cond_6
    iget-object v0, v1, Lf/i/a/a/z;->u:Lf/i/a/a/h1/e0;

    invoke-interface {v0}, Lf/i/a/a/h1/e0;->b()V

    goto/16 :goto_7

    .line 18
    :cond_7
    iget-object v5, v1, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    iget-object v6, v1, Lf/i/a/a/z;->b:[Lf/i/a/a/p;

    iget-object v12, v1, Lf/i/a/a/z;->c:Lf/i/a/a/j1/m;

    iget-object v13, v1, Lf/i/a/a/z;->e:Lf/i/a/a/t;

    .line 19
    iget-object v13, v13, Lf/i/a/a/t;->a:Lf/i/a/a/l1/q;

    .line 20
    iget-object v14, v1, Lf/i/a/a/z;->u:Lf/i/a/a/h1/e0;

    .line 21
    iget-object v15, v5, Lf/i/a/a/g0;->i:Lf/i/a/a/e0;

    if-nez v15, :cond_9

    iget-object v15, v0, Lf/i/a/a/f0;->a:Lf/i/a/a/h1/e0$a;

    .line 22
    invoke-virtual {v15}, Lf/i/a/a/h1/e0$a;->b()Z

    move-result v15

    if-eqz v15, :cond_8

    iget-wide v9, v0, Lf/i/a/a/f0;->c:J

    cmp-long v15, v9, v7

    if-eqz v15, :cond_8

    goto :goto_4

    :cond_8
    const-wide/16 v20, 0x0

    goto :goto_5

    .line 23
    :cond_9
    iget-wide v9, v15, Lf/i/a/a/e0;->n:J

    .line 24
    iget-object v15, v15, Lf/i/a/a/e0;->f:Lf/i/a/a/f0;

    iget-wide v7, v15, Lf/i/a/a/f0;->e:J

    add-long/2addr v9, v7

    iget-wide v7, v0, Lf/i/a/a/f0;->b:J

    sub-long/2addr v9, v7

    :goto_4
    move-wide/from16 v20, v9

    .line 25
    :goto_5
    new-instance v7, Lf/i/a/a/e0;

    move-object/from16 v18, v7

    move-object/from16 v19, v6

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    move-object/from16 v25, v0

    invoke-direct/range {v18 .. v25}, Lf/i/a/a/e0;-><init>([Lf/i/a/a/p;JLf/i/a/a/j1/m;Lf/i/a/a/l1/e;Lf/i/a/a/h1/e0;Lf/i/a/a/f0;)V

    .line 26
    iget-object v6, v5, Lf/i/a/a/g0;->i:Lf/i/a/a/e0;

    if-eqz v6, :cond_b

    .line 27
    invoke-virtual {v5}, Lf/i/a/a/g0;->i()Z

    move-result v6

    invoke-static {v6}, Lc/a/a/b/g/h;->v(Z)V

    .line 28
    iget-object v6, v5, Lf/i/a/a/g0;->i:Lf/i/a/a/e0;

    .line 29
    iget-object v8, v6, Lf/i/a/a/e0;->k:Lf/i/a/a/e0;

    if-ne v7, v8, :cond_a

    goto :goto_6

    .line 30
    :cond_a
    invoke-virtual {v6}, Lf/i/a/a/e0;->b()V

    .line 31
    iput-object v7, v6, Lf/i/a/a/e0;->k:Lf/i/a/a/e0;

    .line 32
    invoke-virtual {v6}, Lf/i/a/a/e0;->c()V

    .line 33
    :cond_b
    :goto_6
    iput-object v4, v5, Lf/i/a/a/g0;->k:Ljava/lang/Object;

    .line 34
    iput-object v7, v5, Lf/i/a/a/g0;->i:Lf/i/a/a/e0;

    .line 35
    iget v6, v5, Lf/i/a/a/g0;->j:I

    add-int/2addr v6, v11

    iput v6, v5, Lf/i/a/a/g0;->j:I

    .line 36
    iget-object v5, v7, Lf/i/a/a/e0;->a:Lf/i/a/a/h1/d0;

    .line 37
    iget-wide v6, v0, Lf/i/a/a/f0;->b:J

    invoke-interface {v5, v1, v6, v7}, Lf/i/a/a/h1/d0;->m(Lf/i/a/a/h1/d0$a;J)V

    .line 38
    invoke-virtual {v1, v11}, Lf/i/a/a/z;->M(Z)V

    const/4 v0, 0x0

    .line 39
    invoke-virtual {v1, v0}, Lf/i/a/a/z;->n(Z)V

    .line 40
    :cond_c
    :goto_7
    iget-object v0, v1, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    .line 41
    iget-object v0, v0, Lf/i/a/a/g0;->i:Lf/i/a/a/e0;

    if-eqz v0, :cond_f

    .line 42
    invoke-virtual {v0}, Lf/i/a/a/e0;->g()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_8

    .line 43
    :cond_d
    iget-object v0, v1, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    iget-boolean v0, v0, Lf/i/a/a/i0;->g:Z

    if-nez v0, :cond_e

    .line 44
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/z;->t()V

    :cond_e
    const/4 v0, 0x0

    goto :goto_9

    :cond_f
    :goto_8
    const/4 v0, 0x0

    .line 45
    invoke-virtual {v1, v0}, Lf/i/a/a/z;->M(Z)V

    .line 46
    :goto_9
    iget-object v5, v1, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    invoke-virtual {v5}, Lf/i/a/a/g0;->i()Z

    move-result v5

    if-nez v5, :cond_10

    goto/16 :goto_13

    .line 47
    :cond_10
    iget-object v5, v1, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    .line 48
    iget-object v6, v5, Lf/i/a/a/g0;->g:Lf/i/a/a/e0;

    .line 49
    iget-object v5, v5, Lf/i/a/a/g0;->h:Lf/i/a/a/e0;

    move-object v7, v6

    const/4 v6, 0x0

    .line 50
    :goto_a
    iget-boolean v8, v1, Lf/i/a/a/z;->x:Z

    if-eqz v8, :cond_13

    if-eq v7, v5, :cond_13

    iget-wide v8, v1, Lf/i/a/a/z;->E:J

    .line 51
    iget-object v10, v7, Lf/i/a/a/e0;->k:Lf/i/a/a/e0;

    .line 52
    iget-object v12, v10, Lf/i/a/a/e0;->f:Lf/i/a/a/f0;

    iget-wide v12, v12, Lf/i/a/a/f0;->b:J

    iget-wide v14, v10, Lf/i/a/a/e0;->n:J

    add-long/2addr v12, v14

    cmp-long v10, v8, v12

    if-ltz v10, :cond_13

    if-eqz v6, :cond_11

    .line 53
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/z;->u()V

    .line 54
    :cond_11
    iget-object v6, v7, Lf/i/a/a/e0;->f:Lf/i/a/a/f0;

    iget-boolean v6, v6, Lf/i/a/a/f0;->f:Z

    if-eqz v6, :cond_12

    const/4 v6, 0x0

    goto :goto_b

    :cond_12
    const/4 v6, 0x3

    .line 55
    :goto_b
    iget-object v8, v1, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    invoke-virtual {v8}, Lf/i/a/a/g0;->a()Lf/i/a/a/e0;

    move-result-object v8

    .line 56
    invoke-virtual {v1, v7}, Lf/i/a/a/z;->W(Lf/i/a/a/e0;)V

    .line 57
    iget-object v7, v1, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    iget-object v9, v8, Lf/i/a/a/e0;->f:Lf/i/a/a/f0;

    iget-object v10, v9, Lf/i/a/a/f0;->a:Lf/i/a/a/h1/e0$a;

    iget-wide v12, v9, Lf/i/a/a/f0;->b:J

    iget-wide v14, v9, Lf/i/a/a/f0;->c:J

    .line 58
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/z;->k()J

    move-result-wide v24

    move-object/from16 v18, v7

    move-object/from16 v19, v10

    move-wide/from16 v20, v12

    move-wide/from16 v22, v14

    .line 59
    invoke-virtual/range {v18 .. v25}, Lf/i/a/a/i0;->a(Lf/i/a/a/h1/e0$a;JJJ)Lf/i/a/a/i0;

    move-result-object v7

    iput-object v7, v1, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    .line 60
    iget-object v7, v1, Lf/i/a/a/z;->o:Lf/i/a/a/z$d;

    invoke-virtual {v7, v6}, Lf/i/a/a/z$d;->b(I)V

    .line 61
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/z;->V()V

    move-object v7, v8

    const/4 v6, 0x1

    goto :goto_a

    .line 62
    :cond_13
    iget-object v6, v5, Lf/i/a/a/e0;->f:Lf/i/a/a/f0;

    iget-boolean v6, v6, Lf/i/a/a/f0;->g:Z

    if-eqz v6, :cond_15

    const/4 v6, 0x0

    .line 63
    :goto_c
    iget-object v7, v1, Lf/i/a/a/z;->a:[Lf/i/a/a/p0;

    array-length v8, v7

    if-ge v6, v8, :cond_21

    .line 64
    aget-object v7, v7, v6

    .line 65
    iget-object v8, v5, Lf/i/a/a/e0;->c:[Lf/i/a/a/h1/k0;

    aget-object v8, v8, v6

    if-eqz v8, :cond_14

    .line 66
    invoke-interface {v7}, Lf/i/a/a/p0;->k()Lf/i/a/a/h1/k0;

    move-result-object v9

    if-ne v9, v8, :cond_14

    .line 67
    invoke-interface {v7}, Lf/i/a/a/p0;->g()Z

    move-result v8

    if-eqz v8, :cond_14

    .line 68
    invoke-interface {v7}, Lf/i/a/a/p0;->m()V

    :cond_14
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 69
    :cond_15
    iget-object v6, v5, Lf/i/a/a/e0;->k:Lf/i/a/a/e0;

    if-nez v6, :cond_16

    goto/16 :goto_13

    :cond_16
    const/4 v6, 0x0

    .line 70
    :goto_d
    iget-object v7, v1, Lf/i/a/a/z;->a:[Lf/i/a/a/p0;

    array-length v8, v7

    if-ge v6, v8, :cond_18

    .line 71
    aget-object v7, v7, v6

    .line 72
    iget-object v8, v5, Lf/i/a/a/e0;->c:[Lf/i/a/a/h1/k0;

    aget-object v8, v8, v6

    .line 73
    invoke-interface {v7}, Lf/i/a/a/p0;->k()Lf/i/a/a/h1/k0;

    move-result-object v9

    if-ne v9, v8, :cond_21

    if-eqz v8, :cond_17

    .line 74
    invoke-interface {v7}, Lf/i/a/a/p0;->g()Z

    move-result v7

    if-nez v7, :cond_17

    goto/16 :goto_13

    :cond_17
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 75
    :cond_18
    iget-object v6, v5, Lf/i/a/a/e0;->k:Lf/i/a/a/e0;

    .line 76
    iget-boolean v6, v6, Lf/i/a/a/e0;->d:Z

    if-nez v6, :cond_19

    .line 77
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/z;->v()V

    goto/16 :goto_13

    .line 78
    :cond_19
    invoke-virtual {v5}, Lf/i/a/a/e0;->f()Lf/i/a/a/j1/n;

    move-result-object v5

    .line 79
    iget-object v6, v1, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    .line 80
    iget-object v7, v6, Lf/i/a/a/g0;->h:Lf/i/a/a/e0;

    if-eqz v7, :cond_1a

    .line 81
    iget-object v7, v7, Lf/i/a/a/e0;->k:Lf/i/a/a/e0;

    if-eqz v7, :cond_1a

    const/4 v7, 0x1

    goto :goto_e

    :cond_1a
    const/4 v7, 0x0

    .line 82
    :goto_e
    invoke-static {v7}, Lc/a/a/b/g/h;->v(Z)V

    .line 83
    iget-object v7, v6, Lf/i/a/a/g0;->h:Lf/i/a/a/e0;

    .line 84
    iget-object v7, v7, Lf/i/a/a/e0;->k:Lf/i/a/a/e0;

    .line 85
    iput-object v7, v6, Lf/i/a/a/g0;->h:Lf/i/a/a/e0;

    .line 86
    invoke-virtual {v7}, Lf/i/a/a/e0;->f()Lf/i/a/a/j1/n;

    move-result-object v6

    .line 87
    iget-object v8, v7, Lf/i/a/a/e0;->a:Lf/i/a/a/h1/d0;

    .line 88
    invoke-interface {v8}, Lf/i/a/a/h1/d0;->l()J

    move-result-wide v8

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v10, v8, v12

    if-eqz v10, :cond_1b

    const/4 v8, 0x1

    goto :goto_f

    :cond_1b
    const/4 v8, 0x0

    :goto_f
    const/4 v9, 0x0

    .line 89
    :goto_10
    iget-object v10, v1, Lf/i/a/a/z;->a:[Lf/i/a/a/p0;

    array-length v12, v10

    if-ge v9, v12, :cond_21

    .line 90
    aget-object v10, v10, v9

    .line 91
    invoke-virtual {v5, v9}, Lf/i/a/a/j1/n;->b(I)Z

    move-result v12

    if-nez v12, :cond_1c

    goto :goto_12

    :cond_1c
    if-eqz v8, :cond_1d

    .line 92
    invoke-interface {v10}, Lf/i/a/a/p0;->m()V

    goto :goto_12

    .line 93
    :cond_1d
    invoke-interface {v10}, Lf/i/a/a/p0;->q()Z

    move-result v12

    if-nez v12, :cond_20

    .line 94
    iget-object v12, v6, Lf/i/a/a/j1/n;->c:Lf/i/a/a/j1/k;

    .line 95
    iget-object v12, v12, Lf/i/a/a/j1/k;->b:[Lf/i/a/a/j1/j;

    aget-object v12, v12, v9

    .line 96
    invoke-virtual {v6, v9}, Lf/i/a/a/j1/n;->b(I)Z

    move-result v13

    .line 97
    iget-object v14, v1, Lf/i/a/a/z;->b:[Lf/i/a/a/p;

    aget-object v14, v14, v9

    .line 98
    iget v14, v14, Lf/i/a/a/p;->a:I

    const/4 v15, 0x6

    if-ne v14, v15, :cond_1e

    const/4 v14, 0x1

    goto :goto_11

    :cond_1e
    const/4 v14, 0x0

    .line 99
    :goto_11
    iget-object v15, v5, Lf/i/a/a/j1/n;->b:[Lf/i/a/a/q0;

    aget-object v15, v15, v9

    .line 100
    iget-object v0, v6, Lf/i/a/a/j1/n;->b:[Lf/i/a/a/q0;

    aget-object v0, v0, v9

    if-eqz v13, :cond_1f

    .line 101
    invoke-virtual {v0, v15}, Lf/i/a/a/q0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    if-nez v14, :cond_1f

    .line 102
    invoke-static {v12}, Lf/i/a/a/z;->g(Lf/i/a/a/j1/j;)[Lf/i/a/a/b0;

    move-result-object v0

    .line 103
    iget-object v12, v7, Lf/i/a/a/e0;->c:[Lf/i/a/a/h1/k0;

    aget-object v12, v12, v9

    .line 104
    iget-wide v13, v7, Lf/i/a/a/e0;->n:J

    .line 105
    invoke-interface {v10, v0, v12, v13, v14}, Lf/i/a/a/p0;->w([Lf/i/a/a/b0;Lf/i/a/a/h1/k0;J)V

    goto :goto_12

    .line 106
    :cond_1f
    invoke-interface {v10}, Lf/i/a/a/p0;->m()V

    :cond_20
    :goto_12
    add-int/lit8 v9, v9, 0x1

    const/4 v0, 0x0

    goto :goto_10

    .line 107
    :cond_21
    :goto_13
    iget-object v0, v1, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    invoke-virtual {v0}, Lf/i/a/a/g0;->i()Z

    move-result v0

    const-wide/16 v5, 0xa

    if-nez v0, :cond_22

    .line 108
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/z;->v()V

    .line 109
    invoke-virtual {v1, v2, v3, v5, v6}, Lf/i/a/a/z;->E(JJ)V

    return-void

    .line 110
    :cond_22
    iget-object v0, v1, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    .line 111
    iget-object v0, v0, Lf/i/a/a/g0;->g:Lf/i/a/a/e0;

    const-string v7, "doSomeWork"

    .line 112
    invoke-static {v7}, Lc/a/a/b/g/h;->g(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/z;->V()V

    .line 114
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long v7, v7, v9

    .line 115
    iget-object v12, v0, Lf/i/a/a/e0;->a:Lf/i/a/a/h1/d0;

    iget-object v13, v1, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    iget-wide v13, v13, Lf/i/a/a/i0;->m:J

    iget-wide v9, v1, Lf/i/a/a/z;->l:J

    sub-long/2addr v13, v9

    iget-boolean v9, v1, Lf/i/a/a/z;->m:Z

    invoke-interface {v12, v13, v14, v9}, Lf/i/a/a/h1/d0;->t(JZ)V

    .line 116
    iget-object v9, v1, Lf/i/a/a/z;->v:[Lf/i/a/a/p0;

    array-length v10, v9

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    :goto_14
    if-ge v12, v10, :cond_29

    aget-object v15, v9, v12

    .line 117
    iget-wide v5, v1, Lf/i/a/a/z;->E:J

    invoke-interface {v15, v5, v6, v7, v8}, Lf/i/a/a/p0;->i(JJ)V

    if-eqz v14, :cond_23

    .line 118
    invoke-interface {v15}, Lf/i/a/a/p0;->a()Z

    move-result v5

    if-eqz v5, :cond_23

    const/4 v14, 0x1

    goto :goto_15

    :cond_23
    const/4 v14, 0x0

    .line 119
    :goto_15
    invoke-interface {v15}, Lf/i/a/a/p0;->d()Z

    move-result v5

    if-nez v5, :cond_26

    invoke-interface {v15}, Lf/i/a/a/p0;->a()Z

    move-result v5

    if-nez v5, :cond_26

    .line 120
    iget-object v5, v1, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    .line 121
    iget-object v5, v5, Lf/i/a/a/g0;->h:Lf/i/a/a/e0;

    .line 122
    iget-object v5, v5, Lf/i/a/a/e0;->k:Lf/i/a/a/e0;

    if-eqz v5, :cond_24

    .line 123
    iget-boolean v5, v5, Lf/i/a/a/e0;->d:Z

    if-eqz v5, :cond_24

    invoke-interface {v15}, Lf/i/a/a/p0;->g()Z

    move-result v5

    if-eqz v5, :cond_24

    const/4 v5, 0x1

    goto :goto_16

    :cond_24
    const/4 v5, 0x0

    :goto_16
    if-eqz v5, :cond_25

    goto :goto_17

    :cond_25
    const/4 v5, 0x0

    goto :goto_18

    :cond_26
    :goto_17
    const/4 v5, 0x1

    :goto_18
    if-nez v5, :cond_27

    .line 124
    invoke-interface {v15}, Lf/i/a/a/p0;->n()V

    :cond_27
    if-eqz v13, :cond_28

    if-eqz v5, :cond_28

    const/4 v13, 0x1

    goto :goto_19

    :cond_28
    const/4 v13, 0x0

    :goto_19
    add-int/lit8 v12, v12, 0x1

    const-wide/16 v5, 0xa

    goto :goto_14

    :cond_29
    if-nez v13, :cond_2a

    .line 125
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/z;->v()V

    .line 126
    :cond_2a
    iget-object v5, v0, Lf/i/a/a/e0;->f:Lf/i/a/a/f0;

    iget-wide v5, v5, Lf/i/a/a/f0;->e:J

    const/4 v7, 0x4

    const/4 v8, 0x2

    if-eqz v14, :cond_2c

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v12, v5, v9

    if-eqz v12, :cond_2b

    .line 127
    iget-object v9, v1, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    iget-wide v9, v9, Lf/i/a/a/i0;->m:J

    cmp-long v12, v5, v9

    if-gtz v12, :cond_2c

    :cond_2b
    iget-object v0, v0, Lf/i/a/a/e0;->f:Lf/i/a/a/f0;

    iget-boolean v0, v0, Lf/i/a/a/f0;->g:Z

    if-eqz v0, :cond_2c

    .line 128
    invoke-virtual {v1, v7}, Lf/i/a/a/z;->Q(I)V

    .line 129
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/z;->T()V

    goto/16 :goto_20

    .line 130
    :cond_2c
    iget-object v0, v1, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    iget v5, v0, Lf/i/a/a/i0;->f:I

    if-ne v5, v8, :cond_37

    .line 131
    iget-object v5, v1, Lf/i/a/a/z;->v:[Lf/i/a/a/p0;

    array-length v5, v5

    if-nez v5, :cond_2d

    .line 132
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/z;->r()Z

    move-result v11

    goto/16 :goto_1f

    :cond_2d
    if-nez v13, :cond_2e

    goto :goto_1e

    .line 133
    :cond_2e
    iget-boolean v0, v0, Lf/i/a/a/i0;->g:Z

    if-nez v0, :cond_2f

    goto :goto_1f

    .line 134
    :cond_2f
    iget-object v0, v1, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    .line 135
    iget-object v0, v0, Lf/i/a/a/g0;->i:Lf/i/a/a/e0;

    .line 136
    invoke-virtual {v0}, Lf/i/a/a/e0;->g()Z

    move-result v5

    if-eqz v5, :cond_30

    iget-object v0, v0, Lf/i/a/a/e0;->f:Lf/i/a/a/f0;

    iget-boolean v0, v0, Lf/i/a/a/f0;->g:Z

    if-eqz v0, :cond_30

    const/4 v0, 0x1

    goto :goto_1a

    :cond_30
    const/4 v0, 0x0

    :goto_1a
    if-nez v0, :cond_36

    .line 137
    iget-object v0, v1, Lf/i/a/a/z;->e:Lf/i/a/a/t;

    .line 138
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/z;->k()J

    move-result-wide v5

    iget-object v9, v1, Lf/i/a/a/z;->n:Lf/i/a/a/u;

    invoke-virtual {v9}, Lf/i/a/a/u;->e()Lf/i/a/a/j0;

    move-result-object v9

    iget v9, v9, Lf/i/a/a/j0;->a:F

    iget-boolean v10, v1, Lf/i/a/a/z;->y:Z

    if-eqz v0, :cond_35

    .line 139
    invoke-static {v5, v6, v9}, Lf/i/a/a/m1/h0;->I(JF)J

    move-result-wide v4

    if-eqz v10, :cond_31

    .line 140
    iget-wide v9, v0, Lf/i/a/a/t;->f:J

    goto :goto_1b

    :cond_31
    iget-wide v9, v0, Lf/i/a/a/t;->e:J

    :goto_1b
    const-wide/16 v14, 0x0

    cmp-long v6, v9, v14

    if-lez v6, :cond_33

    cmp-long v6, v4, v9

    if-gez v6, :cond_33

    .line 141
    iget-boolean v4, v0, Lf/i/a/a/t;->h:Z

    if-nez v4, :cond_32

    iget-object v4, v0, Lf/i/a/a/t;->a:Lf/i/a/a/l1/q;

    .line 142
    monitor-enter v4

    .line 143
    :try_start_0
    iget v5, v4, Lf/i/a/a/l1/q;->f:I

    iget v6, v4, Lf/i/a/a/l1/q;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int v5, v5, v6

    monitor-exit v4

    .line 144
    iget v0, v0, Lf/i/a/a/t;->k:I

    if-lt v5, v0, :cond_32

    goto :goto_1c

    :catchall_0
    move-exception v0

    .line 145
    monitor-exit v4

    throw v0

    :cond_32
    const/4 v0, 0x0

    goto :goto_1d

    :cond_33
    :goto_1c
    const/4 v0, 0x1

    :goto_1d
    if-eqz v0, :cond_34

    goto :goto_1f

    :cond_34
    :goto_1e
    const/4 v11, 0x0

    goto :goto_1f

    .line 146
    :cond_35
    throw v4

    :cond_36
    :goto_1f
    if-eqz v11, :cond_37

    const/4 v0, 0x3

    .line 147
    invoke-virtual {v1, v0}, Lf/i/a/a/z;->Q(I)V

    .line 148
    iget-boolean v4, v1, Lf/i/a/a/z;->x:Z

    if-eqz v4, :cond_3a

    .line 149
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/z;->R()V

    goto :goto_20

    :cond_37
    const/4 v0, 0x3

    .line 150
    iget-object v4, v1, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    iget v4, v4, Lf/i/a/a/i0;->f:I

    if-ne v4, v0, :cond_3a

    iget-object v0, v1, Lf/i/a/a/z;->v:[Lf/i/a/a/p0;

    array-length v0, v0

    if-nez v0, :cond_38

    .line 151
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/z;->r()Z

    move-result v0

    if-eqz v0, :cond_39

    goto :goto_20

    :cond_38
    if-nez v13, :cond_3a

    .line 152
    :cond_39
    iget-boolean v0, v1, Lf/i/a/a/z;->x:Z

    iput-boolean v0, v1, Lf/i/a/a/z;->y:Z

    .line 153
    invoke-virtual {v1, v8}, Lf/i/a/a/z;->Q(I)V

    .line 154
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/z;->T()V

    .line 155
    :cond_3a
    :goto_20
    iget-object v0, v1, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    iget v0, v0, Lf/i/a/a/i0;->f:I

    if-ne v0, v8, :cond_3b

    .line 156
    iget-object v0, v1, Lf/i/a/a/z;->v:[Lf/i/a/a/p0;

    array-length v4, v0

    const/4 v10, 0x0

    :goto_21
    if-ge v10, v4, :cond_3b

    aget-object v5, v0, v10

    .line 157
    invoke-interface {v5}, Lf/i/a/a/p0;->n()V

    add-int/lit8 v10, v10, 0x1

    goto :goto_21

    .line 158
    :cond_3b
    iget-boolean v0, v1, Lf/i/a/a/z;->x:Z

    if-eqz v0, :cond_3c

    iget-object v0, v1, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    iget v0, v0, Lf/i/a/a/i0;->f:I

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3d

    :cond_3c
    iget-object v0, v1, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    iget v0, v0, Lf/i/a/a/i0;->f:I

    if-ne v0, v8, :cond_3e

    :cond_3d
    const-wide/16 v4, 0xa

    .line 159
    invoke-virtual {v1, v2, v3, v4, v5}, Lf/i/a/a/z;->E(JJ)V

    goto :goto_22

    .line 160
    :cond_3e
    iget-object v4, v1, Lf/i/a/a/z;->v:[Lf/i/a/a/p0;

    array-length v4, v4

    if-eqz v4, :cond_3f

    if-eq v0, v7, :cond_3f

    const-wide/16 v4, 0x3e8

    .line 161
    invoke-virtual {v1, v2, v3, v4, v5}, Lf/i/a/a/z;->E(JJ)V

    goto :goto_22

    .line 162
    :cond_3f
    iget-object v0, v1, Lf/i/a/a/z;->g:Lf/i/a/a/m1/c0;

    .line 163
    iget-object v0, v0, Lf/i/a/a/m1/c0;->a:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 164
    :goto_22
    invoke-static {}, Lc/a/a/b/g/h;->N()V

    return-void
.end method

.method public final e([ZI)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 1
    new-array v1, v1, [Lf/i/a/a/p0;

    iput-object v1, v0, Lf/i/a/a/z;->v:[Lf/i/a/a/p0;

    .line 2
    iget-object v1, v0, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    .line 3
    iget-object v1, v1, Lf/i/a/a/g0;->g:Lf/i/a/a/e0;

    .line 4
    invoke-virtual {v1}, Lf/i/a/a/e0;->f()Lf/i/a/a/j1/n;

    move-result-object v1

    const/4 v3, 0x0

    .line 5
    :goto_0
    iget-object v4, v0, Lf/i/a/a/z;->a:[Lf/i/a/a/p0;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 6
    invoke-virtual {v1, v3}, Lf/i/a/a/j1/n;->b(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 7
    iget-object v4, v0, Lf/i/a/a/z;->a:[Lf/i/a/a/p0;

    aget-object v4, v4, v3

    invoke-interface {v4}, Lf/i/a/a/p0;->reset()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 8
    :goto_1
    iget-object v5, v0, Lf/i/a/a/z;->a:[Lf/i/a/a/p0;

    array-length v5, v5

    if-ge v3, v5, :cond_a

    .line 9
    invoke-virtual {v1, v3}, Lf/i/a/a/j1/n;->b(I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 10
    aget-boolean v5, p1, v3

    add-int/lit8 v6, v4, 0x1

    .line 11
    iget-object v7, v0, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    .line 12
    iget-object v7, v7, Lf/i/a/a/g0;->g:Lf/i/a/a/e0;

    .line 13
    iget-object v8, v0, Lf/i/a/a/z;->a:[Lf/i/a/a/p0;

    aget-object v8, v8, v3

    .line 14
    iget-object v9, v0, Lf/i/a/a/z;->v:[Lf/i/a/a/p0;

    aput-object v8, v9, v4

    .line 15
    invoke-interface {v8}, Lf/i/a/a/p0;->c()I

    move-result v4

    if-nez v4, :cond_7

    .line 16
    invoke-virtual {v7}, Lf/i/a/a/e0;->f()Lf/i/a/a/j1/n;

    move-result-object v4

    .line 17
    iget-object v9, v4, Lf/i/a/a/j1/n;->b:[Lf/i/a/a/q0;

    aget-object v10, v9, v3

    .line 18
    iget-object v4, v4, Lf/i/a/a/j1/n;->c:Lf/i/a/a/j1/k;

    .line 19
    iget-object v4, v4, Lf/i/a/a/j1/k;->b:[Lf/i/a/a/j1/j;

    aget-object v4, v4, v3

    .line 20
    invoke-static {v4}, Lf/i/a/a/z;->g(Lf/i/a/a/j1/j;)[Lf/i/a/a/b0;

    move-result-object v11

    .line 21
    iget-boolean v4, v0, Lf/i/a/a/z;->x:Z

    const/4 v9, 0x1

    if-eqz v4, :cond_2

    iget-object v4, v0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    iget v4, v4, Lf/i/a/a/i0;->f:I

    const/4 v12, 0x3

    if-ne v4, v12, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-nez v5, :cond_3

    if-eqz v4, :cond_3

    const/4 v15, 0x1

    goto :goto_3

    :cond_3
    const/4 v15, 0x0

    .line 22
    :goto_3
    iget-object v5, v7, Lf/i/a/a/e0;->c:[Lf/i/a/a/h1/k0;

    aget-object v12, v5, v3

    iget-wide v13, v0, Lf/i/a/a/z;->E:J

    move v5, v3

    .line 23
    iget-wide v2, v7, Lf/i/a/a/e0;->n:J

    move-object v9, v8

    move-wide/from16 v16, v2

    .line 24
    invoke-interface/range {v9 .. v17}, Lf/i/a/a/p0;->h(Lf/i/a/a/q0;[Lf/i/a/a/b0;Lf/i/a/a/h1/k0;JZJ)V

    .line 25
    iget-object v2, v0, Lf/i/a/a/z;->n:Lf/i/a/a/u;

    if-eqz v2, :cond_6

    .line 26
    invoke-interface {v8}, Lf/i/a/a/p0;->r()Lf/i/a/a/m1/q;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 27
    iget-object v7, v2, Lf/i/a/a/u;->d:Lf/i/a/a/m1/q;

    if-eq v3, v7, :cond_5

    if-nez v7, :cond_4

    .line 28
    iput-object v3, v2, Lf/i/a/a/u;->d:Lf/i/a/a/m1/q;

    .line 29
    iput-object v8, v2, Lf/i/a/a/u;->c:Lf/i/a/a/p0;

    .line 30
    iget-object v7, v2, Lf/i/a/a/u;->a:Lf/i/a/a/m1/a0;

    .line 31
    iget-object v7, v7, Lf/i/a/a/m1/a0;->e:Lf/i/a/a/j0;

    .line 32
    invoke-interface {v3, v7}, Lf/i/a/a/m1/q;->s(Lf/i/a/a/j0;)Lf/i/a/a/j0;

    .line 33
    invoke-virtual {v2}, Lf/i/a/a/u;->a()V

    goto :goto_4

    .line 34
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Multiple renderer media clocks enabled."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    new-instance v2, Lf/i/a/a/w;

    const/4 v3, 0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v1, v4}, Lf/i/a/a/w;-><init>(ILjava/lang/Throwable;I)V

    .line 36
    throw v2

    :cond_5
    :goto_4
    if-eqz v4, :cond_8

    .line 37
    invoke-interface {v8}, Lf/i/a/a/p0;->start()V

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    .line 38
    throw v1

    :cond_7
    move v5, v3

    :cond_8
    :goto_5
    move v4, v6

    goto :goto_6

    :cond_9
    move v5, v3

    :goto_6
    add-int/lit8 v3, v5, 0x1

    goto/16 :goto_1

    :cond_a
    return-void
.end method

.method public f(Lf/i/a/a/h1/e0;Lf/i/a/a/u0;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/z;->g:Lf/i/a/a/m1/c0;

    new-instance v1, Lf/i/a/a/z$b;

    invoke-direct {v1, p1, p2, p3}, Lf/i/a/a/z$b;-><init>(Lf/i/a/a/h1/e0;Lf/i/a/a/u0;Ljava/lang/Object;)V

    const/16 p1, 0x8

    invoke-virtual {v0, p1, v1}, Lf/i/a/a/m1/c0;->b(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public h(Lf/i/a/a/h1/d0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/z;->g:Lf/i/a/a/m1/c0;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Lf/i/a/a/m1/c0;->b(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x2

    .line 1
    :try_start_0
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    return v0

    .line 2
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lf/i/a/a/j0;

    invoke-virtual {p0, p1}, Lf/i/a/a/z;->p(Lf/i/a/a/j0;)V

    goto/16 :goto_6

    .line 3
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lf/i/a/a/n0;

    invoke-virtual {p0, p1}, Lf/i/a/a/z;->K(Lf/i/a/a/n0;)V

    goto/16 :goto_6

    .line 4
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lf/i/a/a/n0;

    invoke-virtual {p0, p1}, Lf/i/a/a/z;->I(Lf/i/a/a/n0;)V

    goto/16 :goto_6

    .line 5
    :pswitch_3
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v4, p1}, Lf/i/a/a/z;->L(ZLjava/util/concurrent/atomic/AtomicBoolean;)V

    goto/16 :goto_6

    .line 6
    :pswitch_4
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0, p1}, Lf/i/a/a/z;->P(Z)V

    goto/16 :goto_6

    .line 7
    :pswitch_5
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lf/i/a/a/z;->O(I)V

    goto/16 :goto_6

    .line 8
    :pswitch_6
    invoke-virtual {p0}, Lf/i/a/a/z;->y()V

    goto/16 :goto_6

    .line 9
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lf/i/a/a/h1/d0;

    invoke-virtual {p0, p1}, Lf/i/a/a/z;->m(Lf/i/a/a/h1/d0;)V

    goto :goto_6

    .line 10
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lf/i/a/a/h1/d0;

    invoke-virtual {p0, p1}, Lf/i/a/a/z;->o(Lf/i/a/a/h1/d0;)V

    goto :goto_6

    .line 11
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lf/i/a/a/z$b;

    invoke-virtual {p0, p1}, Lf/i/a/a/z;->q(Lf/i/a/a/z$b;)V

    goto :goto_6

    .line 12
    :pswitch_a
    invoke-virtual {p0}, Lf/i/a/a/z;->x()V

    return v1

    .line 13
    :pswitch_b
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {p0, v0, p1, v1}, Lf/i/a/a/z;->S(ZZZ)V

    goto :goto_6

    .line 14
    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lf/i/a/a/s0;

    .line 15
    iput-object p1, p0, Lf/i/a/a/z;->s:Lf/i/a/a/s0;

    goto :goto_6

    .line 16
    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lf/i/a/a/j0;

    .line 17
    iget-object v4, p0, Lf/i/a/a/z;->n:Lf/i/a/a/u;

    invoke-virtual {v4, p1}, Lf/i/a/a/u;->s(Lf/i/a/a/j0;)Lf/i/a/a/j0;

    goto :goto_6

    .line 18
    :pswitch_e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lf/i/a/a/z$e;

    invoke-virtual {p0, p1}, Lf/i/a/a/z;->G(Lf/i/a/a/z$e;)V

    goto :goto_6

    .line 19
    :pswitch_f
    invoke-virtual {p0}, Lf/i/a/a/z;->d()V

    goto :goto_6

    .line 20
    :pswitch_10
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    invoke-virtual {p0, p1}, Lf/i/a/a/z;->N(Z)V

    goto :goto_6

    .line 21
    :pswitch_11
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lf/i/a/a/h1/e0;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    :goto_4
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    goto :goto_5

    :cond_5
    const/4 p1, 0x0

    :goto_5
    invoke-virtual {p0, v4, v5, p1}, Lf/i/a/a/z;->w(Lf/i/a/a/h1/e0;ZZ)V

    .line 22
    :goto_6
    invoke-virtual {p0}, Lf/i/a/a/z;->u()V
    :try_end_0
    .catch Lf/i/a/a/w; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-exception p1

    goto :goto_7

    :catch_1
    move-exception p1

    .line 23
    :goto_7
    instance-of v4, p1, Ljava/lang/OutOfMemoryError;

    if-eqz v4, :cond_6

    check-cast p1, Ljava/lang/OutOfMemoryError;

    .line 24
    new-instance v4, Lf/i/a/a/w;

    const/4 v5, 0x4

    invoke-direct {v4, v5, p1, v2}, Lf/i/a/a/w;-><init>(ILjava/lang/Throwable;I)V

    goto :goto_8

    .line 25
    :cond_6
    check-cast p1, Ljava/lang/RuntimeException;

    .line 26
    new-instance v4, Lf/i/a/a/w;

    invoke-direct {v4, v3, p1, v2}, Lf/i/a/a/w;-><init>(ILjava/lang/Throwable;I)V

    .line 27
    :goto_8
    iget-object p1, p0, Lf/i/a/a/z;->i:Landroid/os/Handler;

    invoke-virtual {p1, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 28
    invoke-virtual {p0, v1, v0, v0}, Lf/i/a/a/z;->S(ZZZ)V

    .line 29
    invoke-virtual {p0}, Lf/i/a/a/z;->u()V

    goto :goto_9

    :catch_2
    move-exception p1

    .line 30
    iget-object v4, p0, Lf/i/a/a/z;->i:Landroid/os/Handler;

    .line 31
    new-instance v5, Lf/i/a/a/w;

    invoke-direct {v5, v0, p1, v2}, Lf/i/a/a/w;-><init>(ILjava/lang/Throwable;I)V

    .line 32
    invoke-virtual {v4, v3, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 33
    invoke-virtual {p0, v0, v0, v0}, Lf/i/a/a/z;->S(ZZZ)V

    .line 34
    invoke-virtual {p0}, Lf/i/a/a/z;->u()V

    goto :goto_9

    :catch_3
    move-exception p1

    .line 35
    iget-object v2, p0, Lf/i/a/a/z;->i:Landroid/os/Handler;

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 36
    invoke-virtual {p0, v1, v0, v0}, Lf/i/a/a/z;->S(ZZZ)V

    .line 37
    invoke-virtual {p0}, Lf/i/a/a/z;->u()V

    :goto_9
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public i(Lf/i/a/a/h1/l0;)V
    .locals 2

    .line 1
    check-cast p1, Lf/i/a/a/h1/d0;

    .line 2
    iget-object v0, p0, Lf/i/a/a/z;->g:Lf/i/a/a/m1/c0;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Lf/i/a/a/m1/c0;->b(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final j(Lf/i/a/a/u0;IJ)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i/a/a/u0;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v1, p0, Lf/i/a/a/z;->j:Lf/i/a/a/u0$c;

    iget-object v2, p0, Lf/i/a/a/z;->k:Lf/i/a/a/u0$b;

    move-object v0, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lf/i/a/a/u0;->j(Lf/i/a/a/u0$c;Lf/i/a/a/u0$b;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final k()J
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    iget-wide v0, v0, Lf/i/a/a/i0;->k:J

    invoke-virtual {p0, v0, v1}, Lf/i/a/a/z;->l(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final l(J)J
    .locals 7

    .line 1
    iget-object v0, p0, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    .line 2
    iget-object v0, v0, Lf/i/a/a/g0;->i:Lf/i/a/a/e0;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 3
    :cond_0
    iget-wide v3, p0, Lf/i/a/a/z;->E:J

    .line 4
    iget-wide v5, v0, Lf/i/a/a/e0;->n:J

    sub-long/2addr v3, v5

    sub-long/2addr p1, v3

    .line 5
    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final m(Lf/i/a/a/h1/d0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    .line 2
    iget-object v0, v0, Lf/i/a/a/g0;->i:Lf/i/a/a/e0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lf/i/a/a/e0;->a:Lf/i/a/a/h1/d0;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object p1, p0, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    iget-wide v0, p0, Lf/i/a/a/z;->E:J

    invoke-virtual {p1, v0, v1}, Lf/i/a/a/g0;->k(J)V

    .line 4
    invoke-virtual {p0}, Lf/i/a/a/z;->t()V

    return-void
.end method

.method public final n(Z)V
    .locals 25

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    .line 2
    iget-object v1, v1, Lf/i/a/a/g0;->i:Lf/i/a/a/e0;

    if-nez v1, :cond_0

    .line 3
    iget-object v2, v0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    iget-object v2, v2, Lf/i/a/a/i0;->c:Lf/i/a/a/h1/e0$a;

    goto :goto_0

    :cond_0
    iget-object v2, v1, Lf/i/a/a/e0;->f:Lf/i/a/a/f0;

    iget-object v2, v2, Lf/i/a/a/f0;->a:Lf/i/a/a/h1/e0$a;

    :goto_0
    move-object v15, v2

    .line 4
    iget-object v2, v0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    iget-object v2, v2, Lf/i/a/a/i0;->j:Lf/i/a/a/h1/e0$a;

    .line 5
    invoke-virtual {v2, v15}, Lf/i/a/a/h1/e0$a;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 6
    iget-object v14, v0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    .line 7
    new-instance v13, Lf/i/a/a/i0;

    move-object v3, v13

    iget-object v4, v14, Lf/i/a/a/i0;->a:Lf/i/a/a/u0;

    iget-object v5, v14, Lf/i/a/a/i0;->b:Ljava/lang/Object;

    iget-object v6, v14, Lf/i/a/a/i0;->c:Lf/i/a/a/h1/e0$a;

    iget-wide v7, v14, Lf/i/a/a/i0;->d:J

    iget-wide v9, v14, Lf/i/a/a/i0;->e:J

    iget v11, v14, Lf/i/a/a/i0;->f:I

    iget-boolean v12, v14, Lf/i/a/a/i0;->g:Z

    move-object/from16 v16, v13

    iget-object v13, v14, Lf/i/a/a/i0;->h:Lf/i/a/a/h1/p0;

    move/from16 v22, v2

    move-object/from16 v2, v16

    move-object/from16 v23, v1

    iget-object v1, v14, Lf/i/a/a/i0;->i:Lf/i/a/a/j1/n;

    move-object v0, v14

    move-object v14, v1

    move-object/from16 v24, v2

    iget-wide v1, v0, Lf/i/a/a/i0;->k:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lf/i/a/a/i0;->l:J

    move-wide/from16 v18, v1

    iget-wide v0, v0, Lf/i/a/a/i0;->m:J

    move-wide/from16 v20, v0

    invoke-direct/range {v3 .. v21}, Lf/i/a/a/i0;-><init>(Lf/i/a/a/u0;Ljava/lang/Object;Lf/i/a/a/h1/e0$a;JJIZLf/i/a/a/h1/p0;Lf/i/a/a/j1/n;Lf/i/a/a/h1/e0$a;JJJ)V

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    .line 8
    iput-object v1, v0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    goto :goto_1

    :cond_1
    move-object/from16 v23, v1

    move/from16 v22, v2

    .line 9
    :goto_1
    iget-object v1, v0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    if-nez v23, :cond_2

    iget-wide v2, v1, Lf/i/a/a/i0;->m:J

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual/range {v23 .. v23}, Lf/i/a/a/e0;->d()J

    move-result-wide v2

    :goto_2
    iput-wide v2, v1, Lf/i/a/a/i0;->k:J

    .line 11
    iget-object v1, v0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/z;->k()J

    move-result-wide v2

    iput-wide v2, v1, Lf/i/a/a/i0;->l:J

    if-nez v22, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    if-eqz v23, :cond_4

    move-object/from16 v1, v23

    .line 12
    iget-boolean v2, v1, Lf/i/a/a/e0;->d:Z

    if-eqz v2, :cond_4

    .line 13
    invoke-virtual {v1}, Lf/i/a/a/e0;->e()Lf/i/a/a/h1/p0;

    move-result-object v2

    .line 14
    invoke-virtual {v1}, Lf/i/a/a/e0;->f()Lf/i/a/a/j1/n;

    move-result-object v1

    .line 15
    invoke-virtual {v0, v2, v1}, Lf/i/a/a/z;->U(Lf/i/a/a/h1/p0;Lf/i/a/a/j1/n;)V

    :cond_4
    return-void
.end method

.method public final o(Lf/i/a/a/h1/d0;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    .line 2
    iget-object v1, v1, Lf/i/a/a/g0;->i:Lf/i/a/a/e0;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, v1, Lf/i/a/a/e0;->a:Lf/i/a/a/h1/d0;

    move-object/from16 v3, p1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v1, v0, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    .line 4
    iget-object v1, v1, Lf/i/a/a/g0;->i:Lf/i/a/a/e0;

    .line 5
    iget-object v3, v0, Lf/i/a/a/z;->n:Lf/i/a/a/u;

    .line 6
    invoke-virtual {v3}, Lf/i/a/a/u;->e()Lf/i/a/a/j0;

    move-result-object v3

    iget v3, v3, Lf/i/a/a/j0;->a:F

    iget-object v4, v0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    iget-object v4, v4, Lf/i/a/a/i0;->a:Lf/i/a/a/u0;

    .line 7
    iput-boolean v2, v1, Lf/i/a/a/e0;->d:Z

    .line 8
    iget-object v2, v1, Lf/i/a/a/e0;->a:Lf/i/a/a/h1/d0;

    invoke-interface {v2}, Lf/i/a/a/h1/d0;->o()Lf/i/a/a/h1/p0;

    move-result-object v2

    iput-object v2, v1, Lf/i/a/a/e0;->l:Lf/i/a/a/h1/p0;

    .line 9
    invoke-virtual {v1, v3, v4}, Lf/i/a/a/e0;->j(FLf/i/a/a/u0;)Lf/i/a/a/j1/n;

    move-result-object v4

    invoke-static {v4}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v2, v1, Lf/i/a/a/e0;->f:Lf/i/a/a/f0;

    iget-wide v5, v2, Lf/i/a/a/f0;->b:J

    .line 11
    iget-object v2, v1, Lf/i/a/a/e0;->h:[Lf/i/a/a/p;

    array-length v2, v2

    new-array v8, v2, [Z

    const/4 v7, 0x0

    move-object v3, v1

    invoke-virtual/range {v3 .. v8}, Lf/i/a/a/e0;->a(Lf/i/a/a/j1/n;JZ[Z)J

    move-result-wide v11

    .line 12
    iget-wide v2, v1, Lf/i/a/a/e0;->n:J

    iget-object v4, v1, Lf/i/a/a/e0;->f:Lf/i/a/a/f0;

    iget-wide v5, v4, Lf/i/a/a/f0;->b:J

    sub-long v7, v5, v11

    add-long/2addr v7, v2

    iput-wide v7, v1, Lf/i/a/a/e0;->n:J

    cmp-long v2, v11, v5

    if-nez v2, :cond_2

    goto :goto_1

    .line 13
    :cond_2
    new-instance v2, Lf/i/a/a/f0;

    iget-object v10, v4, Lf/i/a/a/f0;->a:Lf/i/a/a/h1/e0$a;

    iget-wide v13, v4, Lf/i/a/a/f0;->c:J

    iget-wide v5, v4, Lf/i/a/a/f0;->d:J

    iget-wide v7, v4, Lf/i/a/a/f0;->e:J

    iget-boolean v3, v4, Lf/i/a/a/f0;->f:Z

    iget-boolean v4, v4, Lf/i/a/a/f0;->g:Z

    move-object v9, v2

    move-wide v15, v5

    move-wide/from16 v17, v7

    move/from16 v19, v3

    move/from16 v20, v4

    invoke-direct/range {v9 .. v20}, Lf/i/a/a/f0;-><init>(Lf/i/a/a/h1/e0$a;JJJJZZ)V

    move-object v4, v2

    .line 14
    :goto_1
    iput-object v4, v1, Lf/i/a/a/e0;->f:Lf/i/a/a/f0;

    .line 15
    invoke-virtual {v1}, Lf/i/a/a/e0;->e()Lf/i/a/a/h1/p0;

    move-result-object v2

    invoke-virtual {v1}, Lf/i/a/a/e0;->f()Lf/i/a/a/j1/n;

    move-result-object v1

    .line 16
    invoke-virtual {v0, v2, v1}, Lf/i/a/a/z;->U(Lf/i/a/a/h1/p0;Lf/i/a/a/j1/n;)V

    .line 17
    iget-object v1, v0, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    invoke-virtual {v1}, Lf/i/a/a/g0;->i()Z

    move-result v1

    if-nez v1, :cond_3

    .line 18
    iget-object v1, v0, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    invoke-virtual {v1}, Lf/i/a/a/g0;->a()Lf/i/a/a/e0;

    move-result-object v1

    .line 19
    iget-object v1, v1, Lf/i/a/a/e0;->f:Lf/i/a/a/f0;

    iget-wide v1, v1, Lf/i/a/a/f0;->b:J

    invoke-virtual {v0, v1, v2}, Lf/i/a/a/z;->A(J)V

    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Lf/i/a/a/z;->W(Lf/i/a/a/e0;)V

    .line 21
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/z;->t()V

    return-void
.end method

.method public final p(Lf/i/a/a/j0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/z;->i:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2
    iget v0, p1, Lf/i/a/a/j0;->a:F

    .line 3
    iget-object v1, p0, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    invoke-virtual {v1}, Lf/i/a/a/g0;->d()Lf/i/a/a/e0;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 4
    iget-boolean v3, v1, Lf/i/a/a/e0;->d:Z

    if-eqz v3, :cond_2

    .line 5
    invoke-virtual {v1}, Lf/i/a/a/e0;->f()Lf/i/a/a/j1/n;

    move-result-object v3

    iget-object v3, v3, Lf/i/a/a/j1/n;->c:Lf/i/a/a/j1/k;

    invoke-virtual {v3}, Lf/i/a/a/j1/k;->a()[Lf/i/a/a/j1/j;

    move-result-object v3

    .line 6
    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    if-eqz v5, :cond_0

    .line 7
    invoke-interface {v5, v0}, Lf/i/a/a/j1/j;->n(F)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 8
    :cond_1
    iget-object v1, v1, Lf/i/a/a/e0;->k:Lf/i/a/a/e0;

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lf/i/a/a/z;->a:[Lf/i/a/a/p0;

    array-length v1, v0

    :goto_2
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    if-eqz v3, :cond_3

    .line 10
    iget v4, p1, Lf/i/a/a/j0;->a:F

    invoke-interface {v3, v4}, Lf/i/a/a/p0;->l(F)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final q(Lf/i/a/a/z$b;)V
    .locals 37
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v1, Lf/i/a/a/z$b;->a:Lf/i/a/a/h1/e0;

    iget-object v3, v0, Lf/i/a/a/z;->u:Lf/i/a/a/h1/e0;

    if-eq v2, v3, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v2, v0, Lf/i/a/a/z;->o:Lf/i/a/a/z$d;

    iget v3, v0, Lf/i/a/a/z;->C:I

    invoke-virtual {v2, v3}, Lf/i/a/a/z$d;->a(I)V

    const/4 v2, 0x0

    .line 3
    iput v2, v0, Lf/i/a/a/z;->C:I

    .line 4
    iget-object v3, v0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    iget-object v4, v3, Lf/i/a/a/i0;->a:Lf/i/a/a/u0;

    .line 5
    iget-object v15, v1, Lf/i/a/a/z$b;->b:Lf/i/a/a/u0;

    move-object v6, v15

    .line 6
    iget-object v7, v1, Lf/i/a/a/z$b;->c:Ljava/lang/Object;

    .line 7
    iget-object v1, v0, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    .line 8
    iput-object v15, v1, Lf/i/a/a/g0;->d:Lf/i/a/a/u0;

    .line 9
    new-instance v1, Lf/i/a/a/i0;

    move-object v5, v1

    iget-object v8, v3, Lf/i/a/a/i0;->c:Lf/i/a/a/h1/e0$a;

    iget-wide v9, v3, Lf/i/a/a/i0;->d:J

    iget-wide v11, v3, Lf/i/a/a/i0;->e:J

    iget v13, v3, Lf/i/a/a/i0;->f:I

    iget-boolean v14, v3, Lf/i/a/a/i0;->g:Z

    iget-object v2, v3, Lf/i/a/a/i0;->h:Lf/i/a/a/h1/p0;

    move-object/from16 p1, v15

    move-object v15, v2

    iget-object v2, v3, Lf/i/a/a/i0;->i:Lf/i/a/a/j1/n;

    move-object/from16 v16, v2

    iget-object v2, v3, Lf/i/a/a/i0;->j:Lf/i/a/a/h1/e0$a;

    move-object/from16 v17, v2

    move-object v2, v1

    iget-wide v0, v3, Lf/i/a/a/i0;->k:J

    move-wide/from16 v18, v0

    iget-wide v0, v3, Lf/i/a/a/i0;->l:J

    move-wide/from16 v20, v0

    iget-wide v0, v3, Lf/i/a/a/i0;->m:J

    move-wide/from16 v22, v0

    invoke-direct/range {v5 .. v23}, Lf/i/a/a/i0;-><init>(Lf/i/a/a/u0;Ljava/lang/Object;Lf/i/a/a/h1/e0$a;JJIZLf/i/a/a/h1/p0;Lf/i/a/a/j1/n;Lf/i/a/a/h1/e0$a;JJJ)V

    move-object/from16 v0, p0

    .line 10
    iput-object v2, v0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    .line 11
    iget-object v1, v0, Lf/i/a/a/z;->p:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, -0x1

    add-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_2

    .line 12
    iget-object v3, v0, Lf/i/a/a/z;->p:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf/i/a/a/z$c;

    invoke-virtual {v0, v3}, Lf/i/a/a/z;->B(Lf/i/a/a/z$c;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 13
    iget-object v3, v0, Lf/i/a/a/z;->p:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf/i/a/a/z$c;

    iget-object v3, v3, Lf/i/a/a/z$c;->a:Lf/i/a/a/n0;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lf/i/a/a/n0;->b(Z)V

    .line 14
    iget-object v3, v0, Lf/i/a/a/z;->p:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 15
    :cond_2
    iget-object v1, v0, Lf/i/a/a/z;->p:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 16
    iget-object v1, v0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    iget-object v1, v1, Lf/i/a/a/i0;->c:Lf/i/a/a/h1/e0$a;

    .line 17
    invoke-virtual {v1}, Lf/i/a/a/h1/e0$a;->b()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    iget-wide v5, v3, Lf/i/a/a/i0;->e:J

    goto :goto_1

    :cond_3
    iget-object v3, v0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    iget-wide v5, v3, Lf/i/a/a/i0;->m:J

    .line 18
    :goto_1
    iget-object v3, v0, Lf/i/a/a/z;->D:Lf/i/a/a/z$e;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v11, 0x1

    if-eqz v3, :cond_5

    .line 19
    invoke-virtual {v0, v3, v11}, Lf/i/a/a/z;->C(Lf/i/a/a/z$e;Z)Landroid/util/Pair;

    move-result-object v1

    .line 20
    iput-object v8, v0, Lf/i/a/a/z;->D:Lf/i/a/a/z$e;

    if-nez v1, :cond_4

    .line 21
    invoke-virtual {v0, v7}, Lf/i/a/a/z;->Q(I)V

    const/4 v1, 0x0

    .line 22
    invoke-virtual {v0, v1, v1, v11, v1}, Lf/i/a/a/z;->z(ZZZZ)V

    return-void

    .line 23
    :cond_4
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 24
    iget-object v4, v0, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v1, v2, v3}, Lf/i/a/a/g0;->m(Ljava/lang/Object;J)Lf/i/a/a/h1/e0$a;

    move-result-object v1

    goto/16 :goto_3

    :cond_5
    cmp-long v3, v5, v9

    if-nez v3, :cond_7

    .line 25
    invoke-virtual/range {p1 .. p1}, Lf/i/a/a/u0;->q()Z

    move-result v3

    if-nez v3, :cond_7

    .line 26
    iget-boolean v1, v0, Lf/i/a/a/z;->A:Z

    move-object/from16 v3, p1

    .line 27
    invoke-virtual {v3, v1}, Lf/i/a/a/u0;->a(Z)I

    move-result v1

    .line 28
    invoke-virtual {v0, v3, v1, v9, v10}, Lf/i/a/a/z;->j(Lf/i/a/a/u0;IJ)Landroid/util/Pair;

    move-result-object v1

    .line 29
    iget-object v2, v0, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v2, v3, v12, v13}, Lf/i/a/a/g0;->m(Ljava/lang/Object;J)Lf/i/a/a/h1/e0$a;

    move-result-object v2

    .line 30
    invoke-virtual {v2}, Lf/i/a/a/h1/e0$a;->b()Z

    move-result v3

    if-nez v3, :cond_6

    .line 31
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_2

    :cond_6
    move-wide v3, v5

    :goto_2
    move-object v13, v2

    move-wide/from16 v16, v3

    goto :goto_4

    :cond_7
    move-object/from16 v3, p1

    .line 32
    iget-object v12, v1, Lf/i/a/a/h1/e0$a;->a:Ljava/lang/Object;

    invoke-virtual {v3, v12}, Lf/i/a/a/u0;->b(Ljava/lang/Object;)I

    move-result v12

    if-ne v12, v2, :cond_9

    .line 33
    iget-object v1, v1, Lf/i/a/a/h1/e0$a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, v4, v3}, Lf/i/a/a/z;->D(Ljava/lang/Object;Lf/i/a/a/u0;Lf/i/a/a/u0;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_8

    .line 34
    invoke-virtual {v0, v7}, Lf/i/a/a/z;->Q(I)V

    const/4 v1, 0x0

    .line 35
    invoke-virtual {v0, v1, v1, v11, v1}, Lf/i/a/a/z;->z(ZZZZ)V

    return-void

    .line 36
    :cond_8
    iget-object v2, v0, Lf/i/a/a/z;->k:Lf/i/a/a/u0$b;

    .line 37
    invoke-virtual {v3, v1, v2}, Lf/i/a/a/u0;->h(Ljava/lang/Object;Lf/i/a/a/u0$b;)Lf/i/a/a/u0$b;

    move-result-object v1

    iget v1, v1, Lf/i/a/a/u0$b;->c:I

    .line 38
    invoke-virtual {v0, v3, v1, v9, v10}, Lf/i/a/a/z;->j(Lf/i/a/a/u0;IJ)Landroid/util/Pair;

    move-result-object v1

    .line 39
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 40
    iget-object v4, v0, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v1, v2, v3}, Lf/i/a/a/g0;->m(Ljava/lang/Object;J)Lf/i/a/a/h1/e0$a;

    move-result-object v1

    :goto_3
    move-object v13, v1

    move-wide/from16 v16, v2

    goto :goto_4

    .line 41
    :cond_9
    invoke-virtual {v1}, Lf/i/a/a/h1/e0$a;->b()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 42
    iget-object v2, v0, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    iget-object v1, v1, Lf/i/a/a/h1/e0$a;->a:Ljava/lang/Object;

    invoke-virtual {v2, v1, v5, v6}, Lf/i/a/a/g0;->m(Ljava/lang/Object;J)Lf/i/a/a/h1/e0$a;

    move-result-object v1

    :cond_a
    move-object v13, v1

    move-wide/from16 v16, v5

    .line 43
    :goto_4
    iget-object v1, v0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    iget-object v1, v1, Lf/i/a/a/i0;->c:Lf/i/a/a/h1/e0$a;

    invoke-virtual {v1, v13}, Lf/i/a/a/h1/e0$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1e

    cmp-long v1, v5, v16

    if-nez v1, :cond_1e

    .line 44
    iget-object v1, v0, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    iget-wide v4, v0, Lf/i/a/a/z;->E:J

    .line 45
    iget-object v6, v1, Lf/i/a/a/g0;->h:Lf/i/a/a/e0;

    const-wide/high16 v12, -0x8000000000000000L

    if-nez v6, :cond_b

    goto :goto_7

    .line 46
    :cond_b
    iget-wide v2, v6, Lf/i/a/a/e0;->n:J

    const/4 v7, 0x0

    .line 47
    :goto_5
    iget-object v14, v0, Lf/i/a/a/z;->a:[Lf/i/a/a/p0;

    array-length v15, v14

    if-ge v7, v15, :cond_f

    .line 48
    aget-object v14, v14, v7

    invoke-interface {v14}, Lf/i/a/a/p0;->c()I

    move-result v14

    if-eqz v14, :cond_e

    iget-object v14, v0, Lf/i/a/a/z;->a:[Lf/i/a/a/p0;

    aget-object v14, v14, v7

    .line 49
    invoke-interface {v14}, Lf/i/a/a/p0;->k()Lf/i/a/a/h1/k0;

    move-result-object v14

    iget-object v15, v6, Lf/i/a/a/e0;->c:[Lf/i/a/a/h1/k0;

    aget-object v15, v15, v7

    if-eq v14, v15, :cond_c

    goto :goto_6

    .line 50
    :cond_c
    iget-object v14, v0, Lf/i/a/a/z;->a:[Lf/i/a/a/p0;

    aget-object v14, v14, v7

    invoke-interface {v14}, Lf/i/a/a/p0;->o()J

    move-result-wide v14

    cmp-long v16, v14, v12

    if-nez v16, :cond_d

    move-wide v2, v12

    goto :goto_7

    .line 51
    :cond_d
    invoke-static {v14, v15, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :cond_e
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 52
    :cond_f
    :goto_7
    invoke-virtual {v1}, Lf/i/a/a/g0;->d()Lf/i/a/a/e0;

    move-result-object v6

    move-object/from16 v36, v8

    move-object v8, v6

    move-object/from16 v6, v36

    :goto_8
    if-eqz v8, :cond_1c

    .line 53
    iget-object v7, v8, Lf/i/a/a/e0;->f:Lf/i/a/a/f0;

    if-nez v6, :cond_10

    .line 54
    invoke-virtual {v1, v7}, Lf/i/a/a/g0;->h(Lf/i/a/a/f0;)Lf/i/a/a/f0;

    move-result-object v6

    goto :goto_b

    .line 55
    :cond_10
    invoke-virtual {v1, v6, v4, v5}, Lf/i/a/a/g0;->c(Lf/i/a/a/e0;J)Lf/i/a/a/f0;

    move-result-object v14

    if-nez v14, :cond_11

    .line 56
    invoke-virtual {v1, v6}, Lf/i/a/a/g0;->l(Lf/i/a/a/e0;)Z

    move-result v1

    goto :goto_a

    .line 57
    :cond_11
    iget-wide v12, v7, Lf/i/a/a/f0;->b:J

    iget-wide v9, v14, Lf/i/a/a/f0;->b:J

    cmp-long v17, v12, v9

    if-nez v17, :cond_12

    iget-object v9, v7, Lf/i/a/a/f0;->a:Lf/i/a/a/h1/e0$a;

    iget-object v10, v14, Lf/i/a/a/f0;->a:Lf/i/a/a/h1/e0$a;

    invoke-virtual {v9, v10}, Lf/i/a/a/h1/e0$a;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    const/4 v9, 0x1

    goto :goto_9

    :cond_12
    const/4 v9, 0x0

    :goto_9
    if-nez v9, :cond_13

    .line 58
    invoke-virtual {v1, v6}, Lf/i/a/a/g0;->l(Lf/i/a/a/e0;)Z

    move-result v1

    :goto_a
    xor-int/2addr v11, v1

    goto/16 :goto_12

    :cond_13
    move-object v6, v14

    .line 59
    :goto_b
    iget-wide v9, v7, Lf/i/a/a/f0;->c:J

    .line 60
    iget-wide v12, v6, Lf/i/a/a/f0;->c:J

    cmp-long v14, v9, v12

    if-nez v14, :cond_14

    move-wide/from16 v22, v2

    move-wide/from16 v20, v4

    move-object v12, v6

    goto :goto_c

    :cond_14
    new-instance v12, Lf/i/a/a/f0;

    iget-object v13, v6, Lf/i/a/a/f0;->a:Lf/i/a/a/h1/e0$a;

    move-object v14, v12

    iget-wide v11, v6, Lf/i/a/a/f0;->b:J

    move-wide/from16 v20, v4

    iget-wide v4, v6, Lf/i/a/a/f0;->d:J

    move-wide/from16 v22, v2

    iget-wide v2, v6, Lf/i/a/a/f0;->e:J

    iget-boolean v15, v6, Lf/i/a/a/f0;->f:Z

    iget-boolean v0, v6, Lf/i/a/a/f0;->g:Z

    move-object/from16 v24, v14

    move-object/from16 v25, v13

    move-wide/from16 v26, v11

    move-wide/from16 v28, v9

    move-wide/from16 v30, v4

    move-wide/from16 v32, v2

    move/from16 v34, v15

    move/from16 v35, v0

    invoke-direct/range {v24 .. v35}, Lf/i/a/a/f0;-><init>(Lf/i/a/a/h1/e0$a;JJJJZZ)V

    move-object v12, v14

    .line 61
    :goto_c
    iput-object v12, v8, Lf/i/a/a/e0;->f:Lf/i/a/a/f0;

    .line 62
    iget-wide v2, v7, Lf/i/a/a/f0;->e:J

    iget-wide v4, v6, Lf/i/a/a/f0;->e:J

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v9

    if-eqz v0, :cond_16

    cmp-long v0, v2, v4

    if-nez v0, :cond_15

    goto :goto_d

    :cond_15
    const/4 v0, 0x0

    goto :goto_e

    :cond_16
    :goto_d
    const/4 v0, 0x1

    :goto_e
    if-nez v0, :cond_1b

    .line 63
    iget-wide v2, v6, Lf/i/a/a/f0;->e:J

    cmp-long v0, v2, v9

    if-nez v0, :cond_17

    const-wide v2, 0x7fffffffffffffffL

    goto :goto_f

    .line 64
    :cond_17
    iget-wide v4, v8, Lf/i/a/a/e0;->n:J

    add-long/2addr v2, v4

    .line 65
    :goto_f
    iget-object v0, v1, Lf/i/a/a/g0;->h:Lf/i/a/a/e0;

    if-ne v8, v0, :cond_19

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v22, v4

    if-eqz v0, :cond_18

    cmp-long v0, v22, v2

    if-ltz v0, :cond_19

    :cond_18
    const/4 v0, 0x1

    goto :goto_10

    :cond_19
    const/4 v0, 0x0

    .line 66
    :goto_10
    invoke-virtual {v1, v8}, Lf/i/a/a/g0;->l(Lf/i/a/a/e0;)Z

    move-result v1

    if-nez v1, :cond_1a

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_11

    :cond_1a
    const/4 v0, 0x0

    :goto_11
    move v11, v0

    goto :goto_12

    :cond_1b
    const-wide/high16 v4, -0x8000000000000000L

    .line 67
    iget-object v0, v8, Lf/i/a/a/e0;->k:Lf/i/a/a/e0;

    const/4 v11, 0x1

    move-wide v12, v4

    move-object v6, v8

    move-wide/from16 v4, v20

    move-wide/from16 v2, v22

    move-object v8, v0

    move-object/from16 v0, p0

    goto/16 :goto_8

    :cond_1c
    const/4 v11, 0x1

    :goto_12
    if-nez v11, :cond_1d

    const/4 v1, 0x0

    move-object/from16 v0, p0

    .line 68
    invoke-virtual {v0, v1}, Lf/i/a/a/z;->F(Z)V

    goto :goto_17

    :cond_1d
    move-object/from16 v0, p0

    goto :goto_16

    .line 69
    :cond_1e
    iget-object v1, v0, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    invoke-virtual {v1}, Lf/i/a/a/g0;->d()Lf/i/a/a/e0;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 70
    :cond_1f
    :goto_13
    iget-object v1, v1, Lf/i/a/a/e0;->k:Lf/i/a/a/e0;

    if-eqz v1, :cond_20

    .line 71
    iget-object v4, v1, Lf/i/a/a/e0;->f:Lf/i/a/a/f0;

    iget-object v4, v4, Lf/i/a/a/f0;->a:Lf/i/a/a/h1/e0$a;

    invoke-virtual {v4, v13}, Lf/i/a/a/h1/e0$a;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 72
    iget-object v4, v0, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    iget-object v5, v1, Lf/i/a/a/e0;->f:Lf/i/a/a/f0;

    invoke-virtual {v4, v5}, Lf/i/a/a/g0;->h(Lf/i/a/a/f0;)Lf/i/a/a/f0;

    move-result-object v4

    iput-object v4, v1, Lf/i/a/a/e0;->f:Lf/i/a/a/f0;

    goto :goto_13

    .line 73
    :cond_20
    invoke-virtual {v13}, Lf/i/a/a/h1/e0$a;->b()Z

    move-result v1

    if-eqz v1, :cond_21

    goto :goto_14

    :cond_21
    move-wide/from16 v2, v16

    .line 74
    :goto_14
    iget-object v1, v0, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    .line 75
    iget-object v4, v1, Lf/i/a/a/g0;->g:Lf/i/a/a/e0;

    .line 76
    iget-object v1, v1, Lf/i/a/a/g0;->h:Lf/i/a/a/e0;

    if-eq v4, v1, :cond_22

    const/4 v5, 0x1

    goto :goto_15

    :cond_22
    const/4 v5, 0x0

    .line 77
    :goto_15
    invoke-virtual {v0, v13, v2, v3, v5}, Lf/i/a/a/z;->H(Lf/i/a/a/h1/e0$a;JZ)J

    move-result-wide v14

    .line 78
    iget-object v12, v0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    .line 79
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/z;->k()J

    move-result-wide v18

    .line 80
    invoke-virtual/range {v12 .. v19}, Lf/i/a/a/i0;->a(Lf/i/a/a/h1/e0$a;JJJ)Lf/i/a/a/i0;

    move-result-object v1

    iput-object v1, v0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    :goto_16
    const/4 v1, 0x0

    .line 81
    :goto_17
    invoke-virtual {v0, v1}, Lf/i/a/a/z;->n(Z)V

    return-void
.end method

.method public final r()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    .line 2
    iget-object v0, v0, Lf/i/a/a/g0;->g:Lf/i/a/a/e0;

    .line 3
    iget-object v1, v0, Lf/i/a/a/e0;->k:Lf/i/a/a/e0;

    .line 4
    iget-object v0, v0, Lf/i/a/a/e0;->f:Lf/i/a/a/f0;

    iget-wide v2, v0, Lf/i/a/a/f0;->e:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    iget-wide v4, v0, Lf/i/a/a/i0;->m:J

    cmp-long v0, v4, v2

    if-ltz v0, :cond_1

    if-eqz v1, :cond_0

    iget-boolean v0, v1, Lf/i/a/a/e0;->d:Z

    if-nez v0, :cond_1

    iget-object v0, v1, Lf/i/a/a/e0;->f:Lf/i/a/a/f0;

    iget-object v0, v0, Lf/i/a/a/f0;->a:Lf/i/a/a/h1/e0$a;

    .line 6
    invoke-virtual {v0}, Lf/i/a/a/h1/e0$a;->b()Z

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

.method public synthetic s(Lf/i/a/a/n0;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lf/i/a/a/z;->b(Lf/i/a/a/n0;)V
    :try_end_0
    .catch Lf/i/a/a/w; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Unexpected error delivering message on external thread."

    .line 2
    invoke-static {v0, v1, p1}, Lf/i/a/a/m1/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final t()V
    .locals 13

    .line 1
    iget-object v0, p0, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    .line 2
    iget-object v0, v0, Lf/i/a/a/g0;->i:Lf/i/a/a/e0;

    .line 3
    iget-boolean v1, v0, Lf/i/a/a/e0;->d:Z

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lf/i/a/a/e0;->a:Lf/i/a/a/h1/d0;

    invoke-interface {v1}, Lf/i/a/a/h1/d0;->c()J

    move-result-wide v1

    :goto_0
    const-wide/high16 v3, -0x8000000000000000L

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-nez v6, :cond_1

    .line 4
    invoke-virtual {p0, v5}, Lf/i/a/a/z;->M(Z)V

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0, v1, v2}, Lf/i/a/a/z;->l(J)J

    move-result-wide v1

    .line 6
    iget-object v3, p0, Lf/i/a/a/z;->e:Lf/i/a/a/t;

    iget-object v4, p0, Lf/i/a/a/z;->n:Lf/i/a/a/u;

    .line 7
    invoke-virtual {v4}, Lf/i/a/a/u;->e()Lf/i/a/a/j0;

    move-result-object v4

    iget v4, v4, Lf/i/a/a/j0;->a:F

    .line 8
    iget-object v6, v3, Lf/i/a/a/t;->a:Lf/i/a/a/l1/q;

    .line 9
    monitor-enter v6

    .line 10
    :try_start_0
    iget v7, v6, Lf/i/a/a/l1/q;->f:I

    iget v8, v6, Lf/i/a/a/l1/q;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int v7, v7, v8

    monitor-exit v6

    .line 11
    iget v6, v3, Lf/i/a/a/t;->k:I

    const/4 v8, 0x1

    if-lt v7, v6, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 12
    :goto_1
    iget-boolean v7, v3, Lf/i/a/a/t;->m:Z

    if-eqz v7, :cond_3

    iget-wide v9, v3, Lf/i/a/a/t;->c:J

    goto :goto_2

    :cond_3
    iget-wide v9, v3, Lf/i/a/a/t;->b:J

    :goto_2
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, v4, v7

    if-lez v7, :cond_4

    .line 13
    invoke-static {v9, v10, v4}, Lf/i/a/a/m1/h0;->E(JF)J

    move-result-wide v9

    .line 14
    iget-wide v11, v3, Lf/i/a/a/t;->d:J

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    :cond_4
    cmp-long v4, v1, v9

    if-gez v4, :cond_7

    .line 15
    iget-boolean v1, v3, Lf/i/a/a/t;->h:Z

    if-nez v1, :cond_5

    if-nez v6, :cond_6

    :cond_5
    const/4 v5, 0x1

    :cond_6
    iput-boolean v5, v3, Lf/i/a/a/t;->l:Z

    goto :goto_3

    .line 16
    :cond_7
    iget-wide v7, v3, Lf/i/a/a/t;->d:J

    cmp-long v4, v1, v7

    if-gez v4, :cond_8

    if-eqz v6, :cond_9

    .line 17
    :cond_8
    iput-boolean v5, v3, Lf/i/a/a/t;->l:Z

    .line 18
    :cond_9
    :goto_3
    iget-boolean v1, v3, Lf/i/a/a/t;->l:Z

    .line 19
    invoke-virtual {p0, v1}, Lf/i/a/a/z;->M(Z)V

    if-eqz v1, :cond_a

    .line 20
    iget-wide v1, p0, Lf/i/a/a/z;->E:J

    .line 21
    invoke-virtual {v0}, Lf/i/a/a/e0;->h()Z

    move-result v3

    invoke-static {v3}, Lc/a/a/b/g/h;->v(Z)V

    .line 22
    iget-wide v3, v0, Lf/i/a/a/e0;->n:J

    sub-long/2addr v1, v3

    .line 23
    iget-object v0, v0, Lf/i/a/a/e0;->a:Lf/i/a/a/h1/d0;

    invoke-interface {v0, v1, v2}, Lf/i/a/a/h1/d0;->f(J)Z

    :cond_a
    return-void

    :catchall_0
    move-exception v0

    .line 24
    monitor-exit v6

    throw v0
.end method

.method public final u()V
    .locals 5

    .line 1
    iget-object v0, p0, Lf/i/a/a/z;->o:Lf/i/a/a/z$d;

    iget-object v1, p0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    .line 2
    iget-object v2, v0, Lf/i/a/a/z$d;->a:Lf/i/a/a/i0;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    iget v1, v0, Lf/i/a/a/z$d;->b:I

    if-gtz v1, :cond_1

    iget-boolean v0, v0, Lf/i/a/a/z$d;->c:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Lf/i/a/a/z;->i:Landroid/os/Handler;

    iget-object v1, p0, Lf/i/a/a/z;->o:Lf/i/a/a/z$d;

    .line 4
    iget v2, v1, Lf/i/a/a/z$d;->b:I

    .line 5
    iget-boolean v4, v1, Lf/i/a/a/z$d;->c:Z

    if-eqz v4, :cond_2

    .line 6
    iget v1, v1, Lf/i/a/a/z$d;->d:I

    goto :goto_2

    :cond_2
    const/4 v1, -0x1

    .line 7
    :goto_2
    iget-object v4, p0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    .line 8
    invoke-virtual {v0, v3, v2, v1, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 10
    iget-object v0, p0, Lf/i/a/a/z;->o:Lf/i/a/a/z$d;

    iget-object v1, p0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    .line 11
    iput-object v1, v0, Lf/i/a/a/z$d;->a:Lf/i/a/a/i0;

    .line 12
    iput v3, v0, Lf/i/a/a/z$d;->b:I

    .line 13
    iput-boolean v3, v0, Lf/i/a/a/z$d;->c:Z

    :cond_3
    return-void
.end method

.method public final v()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    .line 2
    iget-object v1, v0, Lf/i/a/a/g0;->i:Lf/i/a/a/e0;

    .line 3
    iget-object v0, v0, Lf/i/a/a/g0;->h:Lf/i/a/a/e0;

    if-eqz v1, :cond_3

    .line 4
    iget-boolean v2, v1, Lf/i/a/a/e0;->d:Z

    if-nez v2, :cond_3

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, v0, Lf/i/a/a/e0;->k:Lf/i/a/a/e0;

    if-ne v0, v1, :cond_3

    .line 6
    :cond_0
    iget-object v0, p0, Lf/i/a/a/z;->v:[Lf/i/a/a/p0;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 7
    invoke-interface {v4}, Lf/i/a/a/p0;->g()Z

    move-result v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, v1, Lf/i/a/a/e0;->a:Lf/i/a/a/h1/d0;

    invoke-interface {v0}, Lf/i/a/a/h1/d0;->s()V

    :cond_3
    return-void
.end method

.method public final w(Lf/i/a/a/h1/e0;ZZ)V
    .locals 2

    .line 1
    iget v0, p0, Lf/i/a/a/z;->C:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lf/i/a/a/z;->C:I

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, p2, p3}, Lf/i/a/a/z;->z(ZZZZ)V

    .line 3
    iget-object p2, p0, Lf/i/a/a/z;->e:Lf/i/a/a/t;

    .line 4
    invoke-virtual {p2, v0}, Lf/i/a/a/t;->b(Z)V

    .line 5
    iput-object p1, p0, Lf/i/a/a/z;->u:Lf/i/a/a/h1/e0;

    const/4 p2, 0x2

    .line 6
    invoke-virtual {p0, p2}, Lf/i/a/a/z;->Q(I)V

    .line 7
    iget-object p3, p0, Lf/i/a/a/z;->f:Lf/i/a/a/l1/g;

    invoke-interface {p3}, Lf/i/a/a/l1/g;->a()Lf/i/a/a/l1/i0;

    move-result-object p3

    invoke-interface {p1, p0, p3}, Lf/i/a/a/h1/e0;->e(Lf/i/a/a/h1/e0$b;Lf/i/a/a/l1/i0;)V

    .line 8
    iget-object p1, p0, Lf/i/a/a/z;->g:Lf/i/a/a/m1/c0;

    invoke-virtual {p1, p2}, Lf/i/a/a/m1/c0;->c(I)Z

    return-void
.end method

.method public final x()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0, v0, v0, v0}, Lf/i/a/a/z;->z(ZZZZ)V

    .line 2
    iget-object v1, p0, Lf/i/a/a/z;->e:Lf/i/a/a/t;

    .line 3
    invoke-virtual {v1, v0}, Lf/i/a/a/t;->b(Z)V

    .line 4
    invoke-virtual {p0, v0}, Lf/i/a/a/z;->Q(I)V

    .line 5
    iget-object v1, p0, Lf/i/a/a/z;->h:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    iput-boolean v0, p0, Lf/i/a/a/z;->w:Z

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final y()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    invoke-virtual {v1}, Lf/i/a/a/g0;->i()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, v0, Lf/i/a/a/z;->n:Lf/i/a/a/u;

    invoke-virtual {v1}, Lf/i/a/a/u;->e()Lf/i/a/a/j0;

    move-result-object v1

    iget v1, v1, Lf/i/a/a/j0;->a:F

    .line 3
    iget-object v2, v0, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    .line 4
    iget-object v3, v2, Lf/i/a/a/g0;->g:Lf/i/a/a/e0;

    .line 5
    iget-object v2, v2, Lf/i/a/a/g0;->h:Lf/i/a/a/e0;

    const/4 v4, 0x1

    move-object v5, v3

    const/4 v3, 0x1

    :goto_0
    if-eqz v5, :cond_d

    .line 6
    iget-boolean v6, v5, Lf/i/a/a/e0;->d:Z

    if-nez v6, :cond_1

    goto/16 :goto_5

    .line 7
    :cond_1
    iget-object v6, v0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    iget-object v6, v6, Lf/i/a/a/i0;->a:Lf/i/a/a/u0;

    invoke-virtual {v5, v1, v6}, Lf/i/a/a/e0;->j(FLf/i/a/a/u0;)Lf/i/a/a/j1/n;

    move-result-object v8

    const/4 v6, 0x0

    if-eqz v8, :cond_b

    const/4 v1, 0x4

    if-eqz v3, :cond_8

    .line 8
    iget-object v2, v0, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    .line 9
    iget-object v3, v2, Lf/i/a/a/g0;->g:Lf/i/a/a/e0;

    .line 10
    invoke-virtual {v2, v3}, Lf/i/a/a/g0;->l(Lf/i/a/a/e0;)Z

    move-result v11

    .line 11
    iget-object v2, v0, Lf/i/a/a/z;->a:[Lf/i/a/a/p0;

    array-length v2, v2

    new-array v2, v2, [Z

    .line 12
    iget-object v5, v0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    iget-wide v9, v5, Lf/i/a/a/i0;->m:J

    move-object v7, v3

    move-object v12, v2

    .line 13
    invoke-virtual/range {v7 .. v12}, Lf/i/a/a/e0;->a(Lf/i/a/a/j1/n;JZ[Z)J

    move-result-wide v7

    .line 14
    iget-object v5, v0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    iget v9, v5, Lf/i/a/a/i0;->f:I

    if-eq v9, v1, :cond_2

    iget-wide v9, v5, Lf/i/a/a/i0;->m:J

    cmp-long v5, v7, v9

    if-eqz v5, :cond_2

    .line 15
    iget-object v12, v0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    iget-object v13, v12, Lf/i/a/a/i0;->c:Lf/i/a/a/h1/e0$a;

    iget-wide v9, v12, Lf/i/a/a/i0;->e:J

    .line 16
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/z;->k()J

    move-result-wide v18

    move-wide v14, v7

    move-wide/from16 v16, v9

    .line 17
    invoke-virtual/range {v12 .. v19}, Lf/i/a/a/i0;->a(Lf/i/a/a/h1/e0$a;JJJ)Lf/i/a/a/i0;

    move-result-object v5

    iput-object v5, v0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    .line 18
    iget-object v5, v0, Lf/i/a/a/z;->o:Lf/i/a/a/z$d;

    invoke-virtual {v5, v1}, Lf/i/a/a/z$d;->b(I)V

    .line 19
    invoke-virtual {v0, v7, v8}, Lf/i/a/a/z;->A(J)V

    .line 20
    :cond_2
    iget-object v5, v0, Lf/i/a/a/z;->a:[Lf/i/a/a/p0;

    array-length v5, v5

    new-array v5, v5, [Z

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 21
    :goto_1
    iget-object v9, v0, Lf/i/a/a/z;->a:[Lf/i/a/a/p0;

    array-length v10, v9

    if-ge v7, v10, :cond_7

    .line 22
    aget-object v9, v9, v7

    .line 23
    invoke-interface {v9}, Lf/i/a/a/p0;->c()I

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    :goto_2
    aput-boolean v10, v5, v7

    .line 24
    iget-object v10, v3, Lf/i/a/a/e0;->c:[Lf/i/a/a/h1/k0;

    aget-object v10, v10, v7

    if-eqz v10, :cond_4

    add-int/lit8 v8, v8, 0x1

    .line 25
    :cond_4
    aget-boolean v11, v5, v7

    if-eqz v11, :cond_6

    .line 26
    invoke-interface {v9}, Lf/i/a/a/p0;->k()Lf/i/a/a/h1/k0;

    move-result-object v11

    if-eq v10, v11, :cond_5

    .line 27
    invoke-virtual {v0, v9}, Lf/i/a/a/z;->c(Lf/i/a/a/p0;)V

    goto :goto_3

    .line 28
    :cond_5
    aget-boolean v10, v2, v7

    if-eqz v10, :cond_6

    .line 29
    iget-wide v10, v0, Lf/i/a/a/z;->E:J

    invoke-interface {v9, v10, v11}, Lf/i/a/a/p0;->p(J)V

    :cond_6
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 30
    :cond_7
    iget-object v2, v0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    .line 31
    invoke-virtual {v3}, Lf/i/a/a/e0;->e()Lf/i/a/a/h1/p0;

    move-result-object v6

    invoke-virtual {v3}, Lf/i/a/a/e0;->f()Lf/i/a/a/j1/n;

    move-result-object v3

    .line 32
    invoke-virtual {v2, v6, v3}, Lf/i/a/a/i0;->b(Lf/i/a/a/h1/p0;Lf/i/a/a/j1/n;)Lf/i/a/a/i0;

    move-result-object v2

    iput-object v2, v0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    .line 33
    invoke-virtual {v0, v5, v8}, Lf/i/a/a/z;->e([ZI)V

    goto :goto_4

    .line 34
    :cond_8
    iget-object v2, v0, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    invoke-virtual {v2, v5}, Lf/i/a/a/g0;->l(Lf/i/a/a/e0;)Z

    .line 35
    iget-boolean v2, v5, Lf/i/a/a/e0;->d:Z

    if-eqz v2, :cond_9

    .line 36
    iget-object v2, v5, Lf/i/a/a/e0;->f:Lf/i/a/a/f0;

    iget-wide v2, v2, Lf/i/a/a/f0;->b:J

    iget-wide v6, v0, Lf/i/a/a/z;->E:J

    .line 37
    iget-wide v9, v5, Lf/i/a/a/e0;->n:J

    sub-long/2addr v6, v9

    .line 38
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const/4 v9, 0x0

    .line 39
    iget-object v6, v5, Lf/i/a/a/e0;->h:[Lf/i/a/a/p;

    array-length v6, v6

    new-array v10, v6, [Z

    move-object v6, v8

    move-wide v7, v2

    invoke-virtual/range {v5 .. v10}, Lf/i/a/a/e0;->a(Lf/i/a/a/j1/n;JZ[Z)J

    .line 40
    :cond_9
    :goto_4
    invoke-virtual {v0, v4}, Lf/i/a/a/z;->n(Z)V

    .line 41
    iget-object v2, v0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    iget v2, v2, Lf/i/a/a/i0;->f:I

    if-eq v2, v1, :cond_a

    .line 42
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/z;->t()V

    .line 43
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/z;->V()V

    .line 44
    iget-object v1, v0, Lf/i/a/a/z;->g:Lf/i/a/a/m1/c0;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lf/i/a/a/m1/c0;->c(I)Z

    :cond_a
    return-void

    :cond_b
    if-ne v5, v2, :cond_c

    const/4 v3, 0x0

    .line 45
    :cond_c
    iget-object v5, v5, Lf/i/a/a/e0;->k:Lf/i/a/a/e0;

    goto/16 :goto_0

    :cond_d
    :goto_5
    return-void
.end method

.method public final z(ZZZZ)V
    .locals 23

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lf/i/a/a/z;->g:Lf/i/a/a/m1/c0;

    .line 2
    iget-object v1, v1, Lf/i/a/a/m1/c0;->a:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lf/i/a/a/z;->y:Z

    .line 4
    iget-object v2, v0, Lf/i/a/a/z;->n:Lf/i/a/a/u;

    .line 5
    iget-object v2, v2, Lf/i/a/a/u;->a:Lf/i/a/a/m1/a0;

    .line 6
    iget-boolean v3, v2, Lf/i/a/a/m1/a0;->b:Z

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {v2}, Lf/i/a/a/m1/a0;->v()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lf/i/a/a/m1/a0;->a(J)V

    .line 8
    iput-boolean v1, v2, Lf/i/a/a/m1/a0;->b:Z

    :cond_0
    const-wide/16 v2, 0x0

    .line 9
    iput-wide v2, v0, Lf/i/a/a/z;->E:J

    .line 10
    iget-object v2, v0, Lf/i/a/a/z;->v:[Lf/i/a/a/p0;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 11
    :try_start_0
    invoke-virtual {v0, v5}, Lf/i/a/a/z;->c(Lf/i/a/a/p0;)V
    :try_end_0
    .catch Lf/i/a/a/w; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 12
    iget-object v2, v0, Lf/i/a/a/z;->a:[Lf/i/a/a/p0;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 13
    :try_start_1
    invoke-interface {v5}, Lf/i/a/a/p0;->reset()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    new-array v2, v1, [Lf/i/a/a/p0;

    .line 14
    iput-object v2, v0, Lf/i/a/a/z;->v:[Lf/i/a/a/p0;

    const/4 v2, 0x0

    if-eqz p3, :cond_3

    .line 15
    iput-object v2, v0, Lf/i/a/a/z;->D:Lf/i/a/a/z$e;

    goto :goto_2

    :cond_3
    if-eqz p4, :cond_5

    .line 16
    iget-object v3, v0, Lf/i/a/a/z;->D:Lf/i/a/a/z$e;

    if-nez v3, :cond_4

    iget-object v3, v0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    iget-object v3, v3, Lf/i/a/a/i0;->a:Lf/i/a/a/u0;

    invoke-virtual {v3}, Lf/i/a/a/u0;->q()Z

    move-result v3

    if-nez v3, :cond_4

    .line 17
    iget-object v3, v0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    iget-object v4, v3, Lf/i/a/a/i0;->a:Lf/i/a/a/u0;

    iget-object v3, v3, Lf/i/a/a/i0;->c:Lf/i/a/a/h1/e0$a;

    iget-object v3, v3, Lf/i/a/a/h1/e0$a;->a:Ljava/lang/Object;

    iget-object v5, v0, Lf/i/a/a/z;->k:Lf/i/a/a/u0$b;

    invoke-virtual {v4, v3, v5}, Lf/i/a/a/u0;->h(Ljava/lang/Object;Lf/i/a/a/u0$b;)Lf/i/a/a/u0$b;

    .line 18
    iget-object v3, v0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    iget-wide v3, v3, Lf/i/a/a/i0;->m:J

    iget-object v5, v0, Lf/i/a/a/z;->k:Lf/i/a/a/u0$b;

    .line 19
    iget-wide v6, v5, Lf/i/a/a/u0$b;->e:J

    add-long/2addr v3, v6

    .line 20
    new-instance v6, Lf/i/a/a/z$e;

    sget-object v7, Lf/i/a/a/u0;->a:Lf/i/a/a/u0;

    iget v5, v5, Lf/i/a/a/u0$b;->c:I

    invoke-direct {v6, v7, v5, v3, v4}, Lf/i/a/a/z$e;-><init>(Lf/i/a/a/u0;IJ)V

    iput-object v6, v0, Lf/i/a/a/z;->D:Lf/i/a/a/z$e;

    :cond_4
    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    :goto_2
    move/from16 v3, p3

    .line 21
    :goto_3
    iget-object v4, v0, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    xor-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Lf/i/a/a/g0;->b(Z)V

    .line 22
    invoke-virtual {v0, v1}, Lf/i/a/a/z;->M(Z)V

    if-eqz p4, :cond_7

    .line 23
    iget-object v4, v0, Lf/i/a/a/z;->r:Lf/i/a/a/g0;

    sget-object v5, Lf/i/a/a/u0;->a:Lf/i/a/a/u0;

    .line 24
    iput-object v5, v4, Lf/i/a/a/g0;->d:Lf/i/a/a/u0;

    .line 25
    iget-object v4, v0, Lf/i/a/a/z;->p:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf/i/a/a/z$c;

    .line 26
    iget-object v5, v5, Lf/i/a/a/z$c;->a:Lf/i/a/a/n0;

    invoke-virtual {v5, v1}, Lf/i/a/a/n0;->b(Z)V

    goto :goto_4

    .line 27
    :cond_6
    iget-object v4, v0, Lf/i/a/a/z;->p:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 28
    iput v1, v0, Lf/i/a/a/z;->F:I

    :cond_7
    if-eqz v3, :cond_8

    .line 29
    iget-object v1, v0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    iget-boolean v4, v0, Lf/i/a/a/z;->A:Z

    iget-object v5, v0, Lf/i/a/a/z;->j:Lf/i/a/a/u0$c;

    .line 30
    invoke-virtual {v1, v4, v5}, Lf/i/a/a/i0;->d(ZLf/i/a/a/u0$c;)Lf/i/a/a/h1/e0$a;

    move-result-object v1

    goto :goto_5

    :cond_8
    iget-object v1, v0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    iget-object v1, v1, Lf/i/a/a/i0;->c:Lf/i/a/a/h1/e0$a;

    :goto_5
    move-object/from16 v16, v1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v3, :cond_9

    move-wide/from16 v21, v4

    goto :goto_6

    .line 31
    :cond_9
    iget-object v1, v0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    iget-wide v6, v1, Lf/i/a/a/i0;->m:J

    move-wide/from16 v21, v6

    :goto_6
    if-eqz v3, :cond_a

    move-wide v10, v4

    goto :goto_7

    .line 32
    :cond_a
    iget-object v1, v0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    iget-wide v3, v1, Lf/i/a/a/i0;->e:J

    move-wide v10, v3

    .line 33
    :goto_7
    new-instance v1, Lf/i/a/a/i0;

    if-eqz p4, :cond_b

    sget-object v3, Lf/i/a/a/u0;->a:Lf/i/a/a/u0;

    goto :goto_8

    :cond_b
    iget-object v3, v0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    iget-object v3, v3, Lf/i/a/a/i0;->a:Lf/i/a/a/u0;

    :goto_8
    move-object v5, v3

    if-eqz p4, :cond_c

    move-object v6, v2

    goto :goto_9

    :cond_c
    iget-object v3, v0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    iget-object v3, v3, Lf/i/a/a/i0;->b:Ljava/lang/Object;

    move-object v6, v3

    :goto_9
    iget-object v3, v0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    iget v12, v3, Lf/i/a/a/i0;->f:I

    const/4 v13, 0x0

    if-eqz p4, :cond_d

    sget-object v3, Lf/i/a/a/h1/p0;->d:Lf/i/a/a/h1/p0;

    goto :goto_a

    :cond_d
    iget-object v3, v3, Lf/i/a/a/i0;->h:Lf/i/a/a/h1/p0;

    :goto_a
    move-object v14, v3

    if-eqz p4, :cond_e

    iget-object v3, v0, Lf/i/a/a/z;->d:Lf/i/a/a/j1/n;

    goto :goto_b

    :cond_e
    iget-object v3, v0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    iget-object v3, v3, Lf/i/a/a/i0;->i:Lf/i/a/a/j1/n;

    :goto_b
    move-object v15, v3

    const-wide/16 v19, 0x0

    move-object v4, v1

    move-object/from16 v7, v16

    move-wide/from16 v8, v21

    move-wide/from16 v17, v21

    invoke-direct/range {v4 .. v22}, Lf/i/a/a/i0;-><init>(Lf/i/a/a/u0;Ljava/lang/Object;Lf/i/a/a/h1/e0$a;JJIZLf/i/a/a/h1/p0;Lf/i/a/a/j1/n;Lf/i/a/a/h1/e0$a;JJJ)V

    iput-object v1, v0, Lf/i/a/a/z;->t:Lf/i/a/a/i0;

    if-eqz p2, :cond_f

    .line 34
    iget-object v1, v0, Lf/i/a/a/z;->u:Lf/i/a/a/h1/e0;

    if-eqz v1, :cond_f

    .line 35
    invoke-interface {v1, v0}, Lf/i/a/a/h1/e0;->i(Lf/i/a/a/h1/e0$b;)V

    .line 36
    iput-object v2, v0, Lf/i/a/a/z;->u:Lf/i/a/a/h1/e0;

    :cond_f
    return-void
.end method
