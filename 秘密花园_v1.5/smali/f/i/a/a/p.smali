.class public abstract Lf/i/a/a/p;
.super Ljava/lang/Object;
.source "BaseRenderer.java"

# interfaces
.implements Lf/i/a/a/p0;


# instance fields
.field public final a:I

.field public b:Lf/i/a/a/q0;

.field public c:I

.field public d:I

.field public e:Lf/i/a/a/h1/k0;

.field public f:[Lf/i/a/a/b0;

.field public g:J

.field public h:J

.field public i:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lf/i/a/a/p;->a:I

    const-wide/high16 v0, -0x8000000000000000L

    .line 3
    iput-wide v0, p0, Lf/i/a/a/p;->h:J

    return-void
.end method

.method public static G(Lf/i/a/a/z0/g;Lf/i/a/a/z0/e;)Z
    .locals 3
    .param p0    # Lf/i/a/a/z0/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lf/i/a/a/z0/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i/a/a/z0/g<",
            "*>;",
            "Lf/i/a/a/z0/e;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    .line 1
    invoke-static {p1, p0, v0}, Lf/i/a/a/z0/d;->a(Lf/i/a/a/z0/e;Ljava/util/UUID;Z)Ljava/util/List;

    move-result-object p0

    .line 2
    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 3
    iget p0, p1, Lf/i/a/a/z0/e;->d:I

    if-ne p0, v0, :cond_5

    .line 4
    iget-object p0, p1, Lf/i/a/a/z0/e;->a:[Lf/i/a/a/z0/e$b;

    aget-object p0, p0, v1

    .line 5
    sget-object v2, Lf/i/a/a/q;->b:Ljava/util/UUID;

    invoke-virtual {p0, v2}, Lf/i/a/a/z0/e$b;->b(Ljava/util/UUID;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 6
    :cond_2
    iget-object p0, p1, Lf/i/a/a/z0/e;->c:Ljava/lang/String;

    if-eqz p0, :cond_6

    const-string p1, "cenc"

    .line 7
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const-string p1, "cbc1"

    .line 8
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "cbcs"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "cens"

    .line 9
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 10
    :cond_4
    sget p0, Lf/i/a/a/m1/h0;->a:I

    const/16 p1, 0x19

    if-lt p0, p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_0
    return v0
.end method


# virtual methods
.method public A()V
    .locals 0

    return-void
.end method

.method public B()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    return-void
.end method

.method public C()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    return-void
.end method

.method public abstract D([Lf/i/a/a/b0;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation
.end method

.method public final E(Lf/i/a/a/c0;Lf/i/a/a/y0/e;Z)I
    .locals 5

    .line 1
    iget-object v0, p0, Lf/i/a/a/p;->e:Lf/i/a/a/h1/k0;

    invoke-interface {v0, p1, p2, p3}, Lf/i/a/a/h1/k0;->i(Lf/i/a/a/c0;Lf/i/a/a/y0/e;Z)I

    move-result p3

    const/4 v0, -0x4

    if-ne p3, v0, :cond_2

    .line 2
    invoke-virtual {p2}, Lf/i/a/a/y0/a;->h()Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/high16 p1, -0x8000000000000000L

    .line 3
    iput-wide p1, p0, Lf/i/a/a/p;->h:J

    .line 4
    iget-boolean p1, p0, Lf/i/a/a/p;->i:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x3

    :goto_0
    return v0

    .line 5
    :cond_1
    iget-wide v0, p2, Lf/i/a/a/y0/e;->d:J

    iget-wide v2, p0, Lf/i/a/a/p;->g:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Lf/i/a/a/y0/e;->d:J

    .line 6
    iget-wide p1, p0, Lf/i/a/a/p;->h:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lf/i/a/a/p;->h:J

    goto :goto_1

    :cond_2
    const/4 p2, -0x5

    if-ne p3, p2, :cond_3

    .line 7
    iget-object p2, p1, Lf/i/a/a/c0;->a:Lf/i/a/a/b0;

    .line 8
    iget-wide v0, p2, Lf/i/a/a/b0;->m:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    .line 9
    iget-wide v2, p0, Lf/i/a/a/p;->g:J

    add-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Lf/i/a/a/b0;->f(J)Lf/i/a/a/b0;

    move-result-object p2

    .line 10
    iput-object p2, p1, Lf/i/a/a/c0;->a:Lf/i/a/a/b0;

    :cond_3
    :goto_1
    return p3
.end method

.method public abstract F(Lf/i/a/a/b0;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation
.end method

.method public H()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .locals 3

    .line 1
    iget v0, p0, Lf/i/a/a/p;->d:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lc/a/a/b/g/h;->v(Z)V

    .line 2
    iput v2, p0, Lf/i/a/a/p;->d:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lf/i/a/a/p;->e:Lf/i/a/a/h1/k0;

    .line 4
    iput-object v0, p0, Lf/i/a/a/p;->f:[Lf/i/a/a/b0;

    .line 5
    iput-boolean v2, p0, Lf/i/a/a/p;->i:Z

    .line 6
    invoke-virtual {p0}, Lf/i/a/a/p;->x()V

    return-void
.end method

.method public final c()I
    .locals 1

    .line 1
    iget v0, p0, Lf/i/a/a/p;->d:I

    return v0
.end method

.method public final f(I)V
    .locals 0

    .line 1
    iput p1, p0, Lf/i/a/a/p;->c:I

    return-void
.end method

.method public final g()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lf/i/a/a/p;->h:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final h(Lf/i/a/a/q0;[Lf/i/a/a/b0;Lf/i/a/a/h1/k0;JZJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    .line 1
    iget v0, p0, Lf/i/a/a/p;->d:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lc/a/a/b/g/h;->v(Z)V

    .line 2
    iput-object p1, p0, Lf/i/a/a/p;->b:Lf/i/a/a/q0;

    .line 3
    iput v1, p0, Lf/i/a/a/p;->d:I

    .line 4
    invoke-virtual {p0, p6}, Lf/i/a/a/p;->y(Z)V

    .line 5
    iget-boolean p1, p0, Lf/i/a/a/p;->i:Z

    xor-int/2addr p1, v1

    invoke-static {p1}, Lc/a/a/b/g/h;->v(Z)V

    .line 6
    iput-object p3, p0, Lf/i/a/a/p;->e:Lf/i/a/a/h1/k0;

    .line 7
    iput-wide p7, p0, Lf/i/a/a/p;->h:J

    .line 8
    iput-object p2, p0, Lf/i/a/a/p;->f:[Lf/i/a/a/b0;

    .line 9
    iput-wide p7, p0, Lf/i/a/a/p;->g:J

    .line 10
    invoke-virtual {p0, p2, p7, p8}, Lf/i/a/a/p;->D([Lf/i/a/a/b0;J)V

    .line 11
    invoke-virtual {p0, p4, p5, p6}, Lf/i/a/a/p;->z(JZ)V

    return-void
.end method

.method public j(ILjava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    return-void
.end method

.method public final k()Lf/i/a/a/h1/k0;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/p;->e:Lf/i/a/a/h1/k0;

    return-object v0
.end method

.method public synthetic l(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    invoke-static {p0, p1}, Lf/i/a/a/o0;->a(Lf/i/a/a/p0;F)V

    return-void
.end method

.method public final m()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lf/i/a/a/p;->i:Z

    return-void
.end method

.method public final n()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/p;->e:Lf/i/a/a/h1/k0;

    invoke-interface {v0}, Lf/i/a/a/h1/k0;->a()V

    return-void
.end method

.method public final o()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lf/i/a/a/p;->h:J

    return-wide v0
.end method

.method public final p(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lf/i/a/a/p;->i:Z

    .line 2
    iput-wide p1, p0, Lf/i/a/a/p;->h:J

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lf/i/a/a/p;->z(JZ)V

    return-void
.end method

.method public final q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf/i/a/a/p;->i:Z

    return v0
.end method

.method public r()Lf/i/a/a/m1/q;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final reset()V
    .locals 1

    .line 1
    iget v0, p0, Lf/i/a/a/p;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lc/a/a/b/g/h;->v(Z)V

    .line 2
    invoke-virtual {p0}, Lf/i/a/a/p;->A()V

    return-void
.end method

.method public final start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    .line 1
    iget v0, p0, Lf/i/a/a/p;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lc/a/a/b/g/h;->v(Z)V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lf/i/a/a/p;->d:I

    .line 3
    invoke-virtual {p0}, Lf/i/a/a/p;->B()V

    return-void
.end method

.method public final stop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    .line 1
    iget v0, p0, Lf/i/a/a/p;->d:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lc/a/a/b/g/h;->v(Z)V

    .line 2
    iput v1, p0, Lf/i/a/a/p;->d:I

    .line 3
    invoke-virtual {p0}, Lf/i/a/a/p;->C()V

    return-void
.end method

.method public final t()I
    .locals 1

    .line 1
    iget v0, p0, Lf/i/a/a/p;->a:I

    return v0
.end method

.method public final u()Lf/i/a/a/p;
    .locals 0

    return-object p0
.end method

.method public final w([Lf/i/a/a/b0;Lf/i/a/a/h1/k0;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lf/i/a/a/p;->i:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lc/a/a/b/g/h;->v(Z)V

    .line 2
    iput-object p2, p0, Lf/i/a/a/p;->e:Lf/i/a/a/h1/k0;

    .line 3
    iput-wide p3, p0, Lf/i/a/a/p;->h:J

    .line 4
    iput-object p1, p0, Lf/i/a/a/p;->f:[Lf/i/a/a/b0;

    .line 5
    iput-wide p3, p0, Lf/i/a/a/p;->g:J

    .line 6
    invoke-virtual {p0, p1, p3, p4}, Lf/i/a/a/p;->D([Lf/i/a/a/b0;J)V

    return-void
.end method

.method public abstract x()V
.end method

.method public y(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    return-void
.end method

.method public abstract z(JZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation
.end method
