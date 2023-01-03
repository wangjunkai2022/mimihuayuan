.class public final Lf/i/a/a/h1/w;
.super Ljava/lang/Object;
.source "DeferredMediaPeriod.java"

# interfaces
.implements Lf/i/a/a/h1/d0;
.implements Lf/i/a/a/h1/d0$a;


# instance fields
.field public final a:Lf/i/a/a/h1/e0;

.field public final b:Lf/i/a/a/h1/e0$a;

.field public final c:Lf/i/a/a/l1/e;

.field public d:Lf/i/a/a/h1/d0;

.field public e:Lf/i/a/a/h1/d0$a;

.field public f:J

.field public g:J


# direct methods
.method public constructor <init>(Lf/i/a/a/h1/e0;Lf/i/a/a/h1/e0$a;Lf/i/a/a/l1/e;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lf/i/a/a/h1/w;->b:Lf/i/a/a/h1/e0$a;

    .line 3
    iput-object p3, p0, Lf/i/a/a/h1/w;->c:Lf/i/a/a/l1/e;

    .line 4
    iput-object p1, p0, Lf/i/a/a/h1/w;->a:Lf/i/a/a/h1/e0;

    .line 5
    iput-wide p4, p0, Lf/i/a/a/h1/w;->f:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    iput-wide p1, p0, Lf/i/a/a/h1/w;->g:J

    return-void
.end method


# virtual methods
.method public a(Lf/i/a/a/h1/e0$a;)V
    .locals 7

    .line 1
    iget-wide v0, p0, Lf/i/a/a/h1/w;->f:J

    .line 2
    iget-wide v2, p0, Lf/i/a/a/h1/w;->g:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    move-wide v0, v2

    .line 3
    :cond_0
    iget-object v2, p0, Lf/i/a/a/h1/w;->a:Lf/i/a/a/h1/e0;

    iget-object v3, p0, Lf/i/a/a/h1/w;->c:Lf/i/a/a/l1/e;

    invoke-interface {v2, p1, v3, v0, v1}, Lf/i/a/a/h1/e0;->c(Lf/i/a/a/h1/e0$a;Lf/i/a/a/l1/e;J)Lf/i/a/a/h1/d0;

    move-result-object p1

    iput-object p1, p0, Lf/i/a/a/h1/w;->d:Lf/i/a/a/h1/d0;

    .line 4
    iget-object v2, p0, Lf/i/a/a/h1/w;->e:Lf/i/a/a/h1/d0$a;

    if-eqz v2, :cond_1

    .line 5
    invoke-interface {p1, p0, v0, v1}, Lf/i/a/a/h1/d0;->m(Lf/i/a/a/h1/d0$a;J)V

    :cond_1
    return-void
.end method

.method public b(JLf/i/a/a/s0;)J
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/w;->d:Lf/i/a/a/h1/d0;

    invoke-interface {v0, p1, p2, p3}, Lf/i/a/a/h1/d0;->b(JLf/i/a/a/s0;)J

    move-result-wide p1

    return-wide p1
.end method

.method public c()J
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/w;->d:Lf/i/a/a/h1/d0;

    invoke-interface {v0}, Lf/i/a/a/h1/d0;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public e()J
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/w;->d:Lf/i/a/a/h1/d0;

    invoke-interface {v0}, Lf/i/a/a/h1/d0;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public f(J)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/w;->d:Lf/i/a/a/h1/d0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lf/i/a/a/h1/d0;->f(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public g(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/w;->d:Lf/i/a/a/h1/d0;

    invoke-interface {v0, p1, p2}, Lf/i/a/a/h1/d0;->g(J)V

    return-void
.end method

.method public h(Lf/i/a/a/h1/d0;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lf/i/a/a/h1/w;->e:Lf/i/a/a/h1/d0$a;

    invoke-interface {p1, p0}, Lf/i/a/a/h1/d0$a;->h(Lf/i/a/a/h1/d0;)V

    return-void
.end method

.method public i(Lf/i/a/a/h1/l0;)V
    .locals 0

    .line 1
    check-cast p1, Lf/i/a/a/h1/d0;

    .line 2
    iget-object p1, p0, Lf/i/a/a/h1/w;->e:Lf/i/a/a/h1/d0$a;

    invoke-interface {p1, p0}, Lf/i/a/a/h1/l0$a;->i(Lf/i/a/a/h1/l0;)V

    return-void
.end method

.method public j([Lf/i/a/a/j1/j;[Z[Lf/i/a/a/h1/k0;[ZJ)J
    .locals 15

    move-object v0, p0

    .line 1
    iget-wide v1, v0, Lf/i/a/a/h1/w;->g:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-wide v5, v0, Lf/i/a/a/h1/w;->f:J

    cmp-long v7, p5, v5

    if-nez v7, :cond_0

    .line 2
    iput-wide v3, v0, Lf/i/a/a/h1/w;->g:J

    move-wide v13, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v13, p5

    .line 3
    :goto_0
    iget-object v8, v0, Lf/i/a/a/h1/w;->d:Lf/i/a/a/h1/d0;

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-interface/range {v8 .. v14}, Lf/i/a/a/h1/d0;->j([Lf/i/a/a/j1/j;[Z[Lf/i/a/a/h1/k0;[ZJ)J

    move-result-wide v1

    return-wide v1
.end method

.method public l()J
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/w;->d:Lf/i/a/a/h1/d0;

    invoke-interface {v0}, Lf/i/a/a/h1/d0;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public m(Lf/i/a/a/h1/d0$a;J)V
    .locals 5

    .line 1
    iput-object p1, p0, Lf/i/a/a/h1/w;->e:Lf/i/a/a/h1/d0$a;

    .line 2
    iget-object p1, p0, Lf/i/a/a/h1/w;->d:Lf/i/a/a/h1/d0;

    if-eqz p1, :cond_1

    .line 3
    iget-wide p2, p0, Lf/i/a/a/h1/w;->f:J

    .line 4
    iget-wide v0, p0, Lf/i/a/a/h1/w;->g:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    move-wide p2, v0

    .line 5
    :cond_0
    invoke-interface {p1, p0, p2, p3}, Lf/i/a/a/h1/d0;->m(Lf/i/a/a/h1/d0$a;J)V

    :cond_1
    return-void
.end method

.method public synthetic n(Ljava/util/List;)Ljava/util/List;
    .locals 0
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

    invoke-static {p0, p1}, Lf/i/a/a/h1/c0;->a(Lf/i/a/a/h1/d0;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public o()Lf/i/a/a/h1/p0;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/w;->d:Lf/i/a/a/h1/d0;

    invoke-interface {v0}, Lf/i/a/a/h1/d0;->o()Lf/i/a/a/h1/p0;

    move-result-object v0

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
    :try_start_0
    iget-object v0, p0, Lf/i/a/a/h1/w;->d:Lf/i/a/a/h1/d0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/i/a/a/h1/w;->d:Lf/i/a/a/h1/d0;

    invoke-interface {v0}, Lf/i/a/a/h1/d0;->s()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lf/i/a/a/h1/w;->a:Lf/i/a/a/h1/e0;

    invoke-interface {v0}, Lf/i/a/a/h1/e0;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 4
    throw v0
.end method

.method public t(JZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/w;->d:Lf/i/a/a/h1/d0;

    invoke-interface {v0, p1, p2, p3}, Lf/i/a/a/h1/d0;->t(JZ)V

    return-void
.end method

.method public u(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/w;->d:Lf/i/a/a/h1/d0;

    invoke-interface {v0, p1, p2}, Lf/i/a/a/h1/d0;->u(J)J

    move-result-wide p1

    return-wide p1
.end method
