.class public final Lf/i/a/a/l1/k0/e;
.super Ljava/lang/Object;
.source "CacheDataSource.java"

# interfaces
.implements Lf/i/a/a/l1/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/l1/k0/e$a;
    }
.end annotation


# instance fields
.field public final a:Lf/i/a/a/l1/k0/b;

.field public final b:Lf/i/a/a/l1/m;

.field public final c:Lf/i/a/a/l1/m;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:Lf/i/a/a/l1/m;

.field public final e:Lf/i/a/a/l1/k0/j;

.field public final f:Lf/i/a/a/l1/k0/e$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public j:Lf/i/a/a/l1/m;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public k:Z

.field public l:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public m:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public n:I

.field public o:I

.field public p:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public q:J

.field public r:J

.field public s:Lf/i/a/a/l1/k0/k;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public t:Z

.field public u:Z

.field public v:J

.field public w:J


# direct methods
.method public constructor <init>(Lf/i/a/a/l1/k0/b;Lf/i/a/a/l1/m;Lf/i/a/a/l1/m;Lf/i/a/a/l1/k;ILf/i/a/a/l1/k0/e$a;Lf/i/a/a/l1/k0/j;)V
    .locals 0
    .param p4    # Lf/i/a/a/l1/k;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lf/i/a/a/l1/k0/e$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lf/i/a/a/l1/k0/j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/l1/k0/e;->a:Lf/i/a/a/l1/k0/b;

    .line 3
    iput-object p3, p0, Lf/i/a/a/l1/k0/e;->b:Lf/i/a/a/l1/m;

    if-eqz p7, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object p7, Lf/i/a/a/l1/k0/l;->a:Lf/i/a/a/l1/k0/j;

    :goto_0
    iput-object p7, p0, Lf/i/a/a/l1/k0/e;->e:Lf/i/a/a/l1/k0/j;

    and-int/lit8 p1, p5, 0x1

    const/4 p3, 0x0

    const/4 p7, 0x1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 5
    :goto_1
    iput-boolean p1, p0, Lf/i/a/a/l1/k0/e;->g:Z

    and-int/lit8 p1, p5, 0x2

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 6
    :goto_2
    iput-boolean p1, p0, Lf/i/a/a/l1/k0/e;->h:Z

    and-int/lit8 p1, p5, 0x4

    if-eqz p1, :cond_3

    const/4 p3, 0x1

    .line 7
    :cond_3
    iput-boolean p3, p0, Lf/i/a/a/l1/k0/e;->i:Z

    .line 8
    iput-object p2, p0, Lf/i/a/a/l1/k0/e;->d:Lf/i/a/a/l1/m;

    if-eqz p4, :cond_4

    .line 9
    new-instance p1, Lf/i/a/a/l1/h0;

    invoke-direct {p1, p2, p4}, Lf/i/a/a/l1/h0;-><init>(Lf/i/a/a/l1/m;Lf/i/a/a/l1/k;)V

    iput-object p1, p0, Lf/i/a/a/l1/k0/e;->c:Lf/i/a/a/l1/m;

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lf/i/a/a/l1/k0/e;->c:Lf/i/a/a/l1/m;

    .line 11
    :goto_3
    iput-object p6, p0, Lf/i/a/a/l1/k0/e;->f:Lf/i/a/a/l1/k0/e$a;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/l1/k0/e;->g()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/i/a/a/l1/k0/e;->d:Lf/i/a/a/l1/m;

    .line 3
    invoke-interface {v0}, Lf/i/a/a/l1/m;->a()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public b(Lf/i/a/a/l1/p;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lf/i/a/a/l1/k0/e;->e:Lf/i/a/a/l1/k0/j;

    invoke-interface {v0, p1}, Lf/i/a/a/l1/k0/j;->a(Lf/i/a/a/l1/p;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf/i/a/a/l1/k0/e;->p:Ljava/lang/String;

    .line 2
    iget-object v1, p1, Lf/i/a/a/l1/p;->a:Landroid/net/Uri;

    iput-object v1, p0, Lf/i/a/a/l1/k0/e;->l:Landroid/net/Uri;

    .line 3
    iget-object v2, p0, Lf/i/a/a/l1/k0/e;->a:Lf/i/a/a/l1/k0/b;

    .line 4
    invoke-interface {v2, v0}, Lf/i/a/a/l1/k0/b;->c(Ljava/lang/String;)Lf/i/a/a/l1/k0/p;

    move-result-object v0

    .line 5
    check-cast v0, Lf/i/a/a/l1/k0/r;

    .line 6
    iget-object v2, v0, Lf/i/a/a/l1/k0/r;->b:Ljava/util/Map;

    const-string v3, "exo_redir"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 7
    iget-object v0, v0, Lf/i/a/a/l1/k0/r;->b:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 8
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    if-nez v2, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_2

    move-object v1, v4

    .line 10
    :cond_2
    iput-object v1, p0, Lf/i/a/a/l1/k0/e;->m:Landroid/net/Uri;

    .line 11
    iget v0, p1, Lf/i/a/a/l1/p;->b:I

    iput v0, p0, Lf/i/a/a/l1/k0/e;->n:I

    .line 12
    iget v0, p1, Lf/i/a/a/l1/p;->h:I

    iput v0, p0, Lf/i/a/a/l1/k0/e;->o:I

    .line 13
    iget-wide v0, p1, Lf/i/a/a/l1/p;->e:J

    iput-wide v0, p0, Lf/i/a/a/l1/k0/e;->q:J

    .line 14
    iget-boolean v0, p0, Lf/i/a/a/l1/k0/e;->h:Z

    const/4 v1, 0x1

    const/4 v2, -0x1

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lf/i/a/a/l1/k0/e;->t:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    .line 15
    :cond_3
    iget-boolean v0, p0, Lf/i/a/a/l1/k0/e;->i:Z

    if-eqz v0, :cond_4

    iget-wide v6, p1, Lf/i/a/a/l1/p;->f:J

    cmp-long v0, v6, v3

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, -0x1

    :goto_2
    if-eq v0, v2, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    .line 16
    :goto_3
    iput-boolean v1, p0, Lf/i/a/a/l1/k0/e;->u:Z

    if-eqz v1, :cond_6

    .line 17
    iget-object v1, p0, Lf/i/a/a/l1/k0/e;->f:Lf/i/a/a/l1/k0/e$a;

    if-eqz v1, :cond_6

    .line 18
    invoke-interface {v1, v0}, Lf/i/a/a/l1/k0/e$a;->a(I)V

    .line 19
    :cond_6
    iget-wide v0, p1, Lf/i/a/a/l1/p;->f:J

    cmp-long v2, v0, v3

    if-nez v2, :cond_9

    iget-boolean v0, p0, Lf/i/a/a/l1/k0/e;->u:Z

    if-eqz v0, :cond_7

    goto :goto_4

    .line 20
    :cond_7
    iget-object v0, p0, Lf/i/a/a/l1/k0/e;->a:Lf/i/a/a/l1/k0/b;

    iget-object v1, p0, Lf/i/a/a/l1/k0/e;->p:Ljava/lang/String;

    invoke-interface {v0, v1}, Lf/i/a/a/l1/k0/b;->c(Ljava/lang/String;)Lf/i/a/a/l1/k0/p;

    move-result-object v0

    invoke-static {v0}, Lf/i/a/a/l1/k0/o;->a(Lf/i/a/a/l1/k0/p;)J

    move-result-wide v0

    iput-wide v0, p0, Lf/i/a/a/l1/k0/e;->r:J

    cmp-long v2, v0, v3

    if-eqz v2, :cond_a

    .line 21
    iget-wide v2, p1, Lf/i/a/a/l1/p;->e:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lf/i/a/a/l1/k0/e;->r:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_8

    goto :goto_5

    .line 22
    :cond_8
    new-instance p1, Lf/i/a/a/l1/n;

    invoke-direct {p1, v5}, Lf/i/a/a/l1/n;-><init>(I)V

    throw p1

    .line 23
    :cond_9
    :goto_4
    iget-wide v0, p1, Lf/i/a/a/l1/p;->f:J

    iput-wide v0, p0, Lf/i/a/a/l1/k0/e;->r:J

    .line 24
    :cond_a
    :goto_5
    invoke-virtual {p0, v5}, Lf/i/a/a/l1/k0/e;->h(Z)V

    .line 25
    iget-wide v0, p0, Lf/i/a/a/l1/k0/e;->r:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p0, p1}, Lf/i/a/a/l1/k0/e;->f(Ljava/io/IOException;)V

    .line 27
    throw p1
.end method

.method public c(Lf/i/a/a/l1/i0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/l1/k0/e;->b:Lf/i/a/a/l1/m;

    invoke-interface {v0, p1}, Lf/i/a/a/l1/m;->c(Lf/i/a/a/l1/i0;)V

    .line 2
    iget-object v0, p0, Lf/i/a/a/l1/k0/e;->d:Lf/i/a/a/l1/m;

    invoke-interface {v0, p1}, Lf/i/a/a/l1/m;->c(Lf/i/a/a/l1/i0;)V

    return-void
.end method

.method public close()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lf/i/a/a/l1/k0/e;->l:Landroid/net/Uri;

    .line 2
    iput-object v0, p0, Lf/i/a/a/l1/k0/e;->m:Landroid/net/Uri;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lf/i/a/a/l1/k0/e;->n:I

    .line 4
    iget-object v0, p0, Lf/i/a/a/l1/k0/e;->f:Lf/i/a/a/l1/k0/e$a;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lf/i/a/a/l1/k0/e;->v:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 5
    iget-object v1, p0, Lf/i/a/a/l1/k0/e;->a:Lf/i/a/a/l1/k0/b;

    invoke-interface {v1}, Lf/i/a/a/l1/k0/b;->f()J

    move-result-wide v1

    iget-wide v5, p0, Lf/i/a/a/l1/k0/e;->v:J

    invoke-interface {v0, v1, v2, v5, v6}, Lf/i/a/a/l1/k0/e$a;->b(JJ)V

    .line 6
    iput-wide v3, p0, Lf/i/a/a/l1/k0/e;->v:J

    .line 7
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lf/i/a/a/l1/k0/e;->e()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {p0, v0}, Lf/i/a/a/l1/k0/e;->f(Ljava/io/IOException;)V

    .line 9
    throw v0
.end method

.method public d()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/l1/k0/e;->m:Landroid/net/Uri;

    return-object v0
.end method

.method public final e()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/l1/k0/e;->j:Lf/i/a/a/l1/m;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :try_start_0
    invoke-interface {v0}, Lf/i/a/a/l1/m;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iput-object v2, p0, Lf/i/a/a/l1/k0/e;->j:Lf/i/a/a/l1/m;

    .line 4
    iput-boolean v1, p0, Lf/i/a/a/l1/k0/e;->k:Z

    .line 5
    iget-object v0, p0, Lf/i/a/a/l1/k0/e;->s:Lf/i/a/a/l1/k0/k;

    if-eqz v0, :cond_1

    .line 6
    iget-object v1, p0, Lf/i/a/a/l1/k0/e;->a:Lf/i/a/a/l1/k0/b;

    invoke-interface {v1, v0}, Lf/i/a/a/l1/k0/b;->h(Lf/i/a/a/l1/k0/k;)V

    .line 7
    iput-object v2, p0, Lf/i/a/a/l1/k0/e;->s:Lf/i/a/a/l1/k0/k;

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 8
    iput-object v2, p0, Lf/i/a/a/l1/k0/e;->j:Lf/i/a/a/l1/m;

    .line 9
    iput-boolean v1, p0, Lf/i/a/a/l1/k0/e;->k:Z

    .line 10
    iget-object v1, p0, Lf/i/a/a/l1/k0/e;->s:Lf/i/a/a/l1/k0/k;

    if-eqz v1, :cond_2

    .line 11
    iget-object v3, p0, Lf/i/a/a/l1/k0/e;->a:Lf/i/a/a/l1/k0/b;

    invoke-interface {v3, v1}, Lf/i/a/a/l1/k0/b;->h(Lf/i/a/a/l1/k0/k;)V

    .line 12
    iput-object v2, p0, Lf/i/a/a/l1/k0/e;->s:Lf/i/a/a/l1/k0/k;

    .line 13
    :cond_2
    throw v0
.end method

.method public final f(Ljava/io/IOException;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/l1/k0/e;->g()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of p1, p1, Lf/i/a/a/l1/k0/b$a;

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lf/i/a/a/l1/k0/e;->t:Z

    :cond_1
    return-void
.end method

.method public final g()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/l1/k0/e;->j:Lf/i/a/a/l1/m;

    iget-object v1, p0, Lf/i/a/a/l1/k0/e;->b:Lf/i/a/a/l1/m;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final h(Z)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    iget-boolean v0, v1, Lf/i/a/a/l1/k0/e;->u:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object v0, v2

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, v1, Lf/i/a/a/l1/k0/e;->g:Z

    if-eqz v0, :cond_1

    .line 3
    :try_start_0
    iget-object v0, v1, Lf/i/a/a/l1/k0/e;->a:Lf/i/a/a/l1/k0/b;

    iget-object v3, v1, Lf/i/a/a/l1/k0/e;->p:Ljava/lang/String;

    iget-wide v4, v1, Lf/i/a/a/l1/k0/e;->q:J

    invoke-interface {v0, v3, v4, v5}, Lf/i/a/a/l1/k0/b;->g(Ljava/lang/String;J)Lf/i/a/a/l1/k0/k;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 5
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 6
    :cond_1
    iget-object v0, v1, Lf/i/a/a/l1/k0/e;->a:Lf/i/a/a/l1/k0/b;

    iget-object v3, v1, Lf/i/a/a/l1/k0/e;->p:Ljava/lang/String;

    iget-wide v4, v1, Lf/i/a/a/l1/k0/e;->q:J

    invoke-interface {v0, v3, v4, v5}, Lf/i/a/a/l1/k0/b;->i(Ljava/lang/String;J)Lf/i/a/a/l1/k0/k;

    move-result-object v0

    :goto_0
    const-wide/16 v3, -0x1

    const/4 v6, 0x1

    if-nez v0, :cond_2

    .line 7
    iget-object v7, v1, Lf/i/a/a/l1/k0/e;->d:Lf/i/a/a/l1/m;

    .line 8
    new-instance v20, Lf/i/a/a/l1/p;

    iget-object v9, v1, Lf/i/a/a/l1/k0/e;->l:Landroid/net/Uri;

    iget v10, v1, Lf/i/a/a/l1/k0/e;->n:I

    const/4 v11, 0x0

    iget-wide v14, v1, Lf/i/a/a/l1/k0/e;->q:J

    iget-wide v12, v1, Lf/i/a/a/l1/k0/e;->r:J

    iget-object v8, v1, Lf/i/a/a/l1/k0/e;->p:Ljava/lang/String;

    iget v5, v1, Lf/i/a/a/l1/k0/e;->o:I

    move-object/from16 v18, v8

    move-object/from16 v8, v20

    move-wide/from16 v16, v12

    move-wide v12, v14

    move/from16 v19, v5

    invoke-direct/range {v8 .. v19}, Lf/i/a/a/l1/p;-><init>(Landroid/net/Uri;I[BJJJLjava/lang/String;I)V

    goto :goto_1

    .line 9
    :cond_2
    iget-boolean v5, v0, Lf/i/a/a/l1/k0/k;->d:Z

    if-eqz v5, :cond_4

    .line 10
    iget-object v5, v0, Lf/i/a/a/l1/k0/k;->e:Ljava/io/File;

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .line 11
    iget-wide v9, v1, Lf/i/a/a/l1/k0/e;->q:J

    iget-wide v11, v0, Lf/i/a/a/l1/k0/k;->b:J

    sub-long v11, v9, v11

    .line 12
    iget-wide v9, v0, Lf/i/a/a/l1/k0/k;->c:J

    sub-long/2addr v9, v11

    .line 13
    iget-wide v13, v1, Lf/i/a/a/l1/k0/e;->r:J

    cmp-long v5, v13, v3

    if-eqz v5, :cond_3

    .line 14
    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    :cond_3
    move-wide v13, v9

    .line 15
    new-instance v20, Lf/i/a/a/l1/p;

    iget-wide v9, v1, Lf/i/a/a/l1/k0/e;->q:J

    iget-object v15, v1, Lf/i/a/a/l1/k0/e;->p:Ljava/lang/String;

    iget v5, v1, Lf/i/a/a/l1/k0/e;->o:I

    move-object/from16 v7, v20

    move/from16 v16, v5

    invoke-direct/range {v7 .. v16}, Lf/i/a/a/l1/p;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    .line 16
    iget-object v7, v1, Lf/i/a/a/l1/k0/e;->b:Lf/i/a/a/l1/m;

    :goto_1
    move-object v5, v0

    move-object/from16 v0, v20

    goto :goto_4

    .line 17
    :cond_4
    iget-wide v7, v0, Lf/i/a/a/l1/k0/k;->c:J

    cmp-long v5, v7, v3

    if-nez v5, :cond_5

    const/4 v5, 0x1

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_6

    .line 18
    iget-wide v7, v1, Lf/i/a/a/l1/k0/e;->r:J

    goto :goto_3

    .line 19
    :cond_6
    iget-wide v7, v0, Lf/i/a/a/l1/k0/k;->c:J

    .line 20
    iget-wide v9, v1, Lf/i/a/a/l1/k0/e;->r:J

    cmp-long v5, v9, v3

    if-eqz v5, :cond_7

    .line 21
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    :cond_7
    :goto_3
    move-wide/from16 v17, v7

    .line 22
    new-instance v5, Lf/i/a/a/l1/p;

    iget-object v10, v1, Lf/i/a/a/l1/k0/e;->l:Landroid/net/Uri;

    iget v11, v1, Lf/i/a/a/l1/k0/e;->n:I

    const/4 v12, 0x0

    iget-wide v7, v1, Lf/i/a/a/l1/k0/e;->q:J

    iget-object v15, v1, Lf/i/a/a/l1/k0/e;->p:Ljava/lang/String;

    iget v13, v1, Lf/i/a/a/l1/k0/e;->o:I

    move-object v9, v5

    move/from16 v20, v13

    move-wide v13, v7

    move-object/from16 v19, v15

    move-wide v15, v7

    invoke-direct/range {v9 .. v20}, Lf/i/a/a/l1/p;-><init>(Landroid/net/Uri;I[BJJJLjava/lang/String;I)V

    .line 23
    iget-object v7, v1, Lf/i/a/a/l1/k0/e;->c:Lf/i/a/a/l1/m;

    if-eqz v7, :cond_8

    move-object/from16 v21, v5

    move-object v5, v0

    move-object/from16 v0, v21

    goto :goto_4

    .line 24
    :cond_8
    iget-object v7, v1, Lf/i/a/a/l1/k0/e;->d:Lf/i/a/a/l1/m;

    .line 25
    iget-object v8, v1, Lf/i/a/a/l1/k0/e;->a:Lf/i/a/a/l1/k0/b;

    invoke-interface {v8, v0}, Lf/i/a/a/l1/k0/b;->h(Lf/i/a/a/l1/k0/k;)V

    move-object v0, v5

    move-object v5, v2

    .line 26
    :goto_4
    iget-boolean v8, v1, Lf/i/a/a/l1/k0/e;->u:Z

    if-nez v8, :cond_9

    iget-object v8, v1, Lf/i/a/a/l1/k0/e;->d:Lf/i/a/a/l1/m;

    if-ne v7, v8, :cond_9

    iget-wide v8, v1, Lf/i/a/a/l1/k0/e;->q:J

    const-wide/32 v10, 0x19000

    add-long/2addr v8, v10

    goto :goto_5

    :cond_9
    const-wide v8, 0x7fffffffffffffffL

    :goto_5
    iput-wide v8, v1, Lf/i/a/a/l1/k0/e;->w:J

    if-eqz p1, :cond_d

    .line 27
    iget-object v8, v1, Lf/i/a/a/l1/k0/e;->j:Lf/i/a/a/l1/m;

    iget-object v9, v1, Lf/i/a/a/l1/k0/e;->d:Lf/i/a/a/l1/m;

    if-ne v8, v9, :cond_a

    const/4 v8, 0x1

    goto :goto_6

    :cond_a
    const/4 v8, 0x0

    .line 28
    :goto_6
    invoke-static {v8}, Lc/a/a/b/g/h;->v(Z)V

    .line 29
    iget-object v8, v1, Lf/i/a/a/l1/k0/e;->d:Lf/i/a/a/l1/m;

    if-ne v7, v8, :cond_b

    return-void

    .line 30
    :cond_b
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/l1/k0/e;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 31
    iget-boolean v0, v5, Lf/i/a/a/l1/k0/k;->d:Z

    xor-int/2addr v0, v6

    if-eqz v0, :cond_c

    .line 32
    iget-object v0, v1, Lf/i/a/a/l1/k0/e;->a:Lf/i/a/a/l1/k0/b;

    invoke-interface {v0, v5}, Lf/i/a/a/l1/k0/b;->h(Lf/i/a/a/l1/k0/k;)V

    .line 33
    :cond_c
    throw v2

    :cond_d
    :goto_7
    if-eqz v5, :cond_e

    .line 34
    iget-boolean v8, v5, Lf/i/a/a/l1/k0/k;->d:Z

    xor-int/2addr v8, v6

    if-eqz v8, :cond_e

    .line 35
    iput-object v5, v1, Lf/i/a/a/l1/k0/e;->s:Lf/i/a/a/l1/k0/k;

    .line 36
    :cond_e
    iput-object v7, v1, Lf/i/a/a/l1/k0/e;->j:Lf/i/a/a/l1/m;

    .line 37
    iget-wide v8, v0, Lf/i/a/a/l1/p;->f:J

    cmp-long v5, v8, v3

    if-nez v5, :cond_f

    const/4 v5, 0x1

    goto :goto_8

    :cond_f
    const/4 v5, 0x0

    :goto_8
    iput-boolean v5, v1, Lf/i/a/a/l1/k0/e;->k:Z

    .line 38
    invoke-interface {v7, v0}, Lf/i/a/a/l1/m;->b(Lf/i/a/a/l1/p;)J

    move-result-wide v7

    .line 39
    new-instance v0, Lf/i/a/a/l1/k0/q;

    invoke-direct {v0}, Lf/i/a/a/l1/k0/q;-><init>()V

    .line 40
    iget-boolean v5, v1, Lf/i/a/a/l1/k0/e;->k:Z

    if-eqz v5, :cond_10

    cmp-long v5, v7, v3

    if-eqz v5, :cond_10

    .line 41
    iput-wide v7, v1, Lf/i/a/a/l1/k0/e;->r:J

    .line 42
    iget-wide v3, v1, Lf/i/a/a/l1/k0/e;->q:J

    add-long/2addr v3, v7

    invoke-static {v0, v3, v4}, Lf/i/a/a/l1/k0/q;->a(Lf/i/a/a/l1/k0/q;J)Lf/i/a/a/l1/k0/q;

    .line 43
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/l1/k0/e;->g()Z

    move-result v3

    xor-int/2addr v3, v6

    if-eqz v3, :cond_14

    .line 44
    iget-object v3, v1, Lf/i/a/a/l1/k0/e;->j:Lf/i/a/a/l1/m;

    invoke-interface {v3}, Lf/i/a/a/l1/m;->d()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v1, Lf/i/a/a/l1/k0/e;->m:Landroid/net/Uri;

    .line 45
    iget-object v4, v1, Lf/i/a/a/l1/k0/e;->l:Landroid/net/Uri;

    invoke-virtual {v4, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v6

    if-eqz v3, :cond_11

    .line 46
    iget-object v3, v1, Lf/i/a/a/l1/k0/e;->m:Landroid/net/Uri;

    goto :goto_9

    :cond_11
    move-object v3, v2

    :goto_9
    const-string v4, "exo_redir"

    if-nez v3, :cond_12

    .line 47
    iget-object v2, v0, Lf/i/a/a/l1/k0/q;->b:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v2, v0, Lf/i/a/a/l1/k0/q;->a:Ljava/util/Map;

    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 49
    :cond_12
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 50
    iget-object v5, v0, Lf/i/a/a/l1/k0/q;->a:Ljava/util/Map;

    if-eqz v3, :cond_13

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v2, v0, Lf/i/a/a/l1/k0/q;->b:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_a

    .line 52
    :cond_13
    throw v2

    .line 53
    :cond_14
    :goto_a
    iget-object v2, v1, Lf/i/a/a/l1/k0/e;->j:Lf/i/a/a/l1/m;

    iget-object v3, v1, Lf/i/a/a/l1/k0/e;->c:Lf/i/a/a/l1/m;

    if-ne v2, v3, :cond_15

    const/4 v5, 0x1

    goto :goto_b

    :cond_15
    const/4 v5, 0x0

    :goto_b
    if-eqz v5, :cond_16

    .line 54
    iget-object v2, v1, Lf/i/a/a/l1/k0/e;->a:Lf/i/a/a/l1/k0/b;

    iget-object v3, v1, Lf/i/a/a/l1/k0/e;->p:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Lf/i/a/a/l1/k0/b;->d(Ljava/lang/String;Lf/i/a/a/l1/k0/q;)V

    :cond_16
    return-void
.end method

.method public final i()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lf/i/a/a/l1/k0/e;->r:J

    .line 2
    iget-object v0, p0, Lf/i/a/a/l1/k0/e;->j:Lf/i/a/a/l1/m;

    iget-object v1, p0, Lf/i/a/a/l1/k0/e;->c:Lf/i/a/a/l1/m;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Lf/i/a/a/l1/k0/q;

    invoke-direct {v0}, Lf/i/a/a/l1/k0/q;-><init>()V

    .line 4
    iget-wide v1, p0, Lf/i/a/a/l1/k0/e;->q:J

    invoke-static {v0, v1, v2}, Lf/i/a/a/l1/k0/q;->a(Lf/i/a/a/l1/k0/q;J)Lf/i/a/a/l1/k0/q;

    .line 5
    iget-object v1, p0, Lf/i/a/a/l1/k0/e;->a:Lf/i/a/a/l1/k0/b;

    iget-object v2, p0, Lf/i/a/a/l1/k0/e;->p:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lf/i/a/a/l1/k0/b;->d(Ljava/lang/String;Lf/i/a/a/l1/k0/q;)V

    :cond_1
    return-void
.end method

.method public read([BII)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 1
    :cond_0
    iget-wide v1, p0, Lf/i/a/a/l1/k0/e;->r:J

    const-wide/16 v3, 0x0

    const/4 v5, -0x1

    cmp-long v6, v1, v3

    if-nez v6, :cond_1

    return v5

    .line 2
    :cond_1
    :try_start_0
    iget-wide v1, p0, Lf/i/a/a/l1/k0/e;->q:J

    iget-wide v6, p0, Lf/i/a/a/l1/k0/e;->w:J

    cmp-long v8, v1, v6

    if-ltz v8, :cond_2

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, v1}, Lf/i/a/a/l1/k0/e;->h(Z)V

    .line 4
    :cond_2
    iget-object v1, p0, Lf/i/a/a/l1/k0/e;->j:Lf/i/a/a/l1/m;

    invoke-interface {v1, p1, p2, p3}, Lf/i/a/a/l1/m;->read([BII)I

    move-result v1

    const-wide/16 v6, -0x1

    if-eq v1, v5, :cond_4

    .line 5
    invoke-virtual {p0}, Lf/i/a/a/l1/k0/e;->g()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6
    iget-wide p1, p0, Lf/i/a/a/l1/k0/e;->v:J

    int-to-long v2, v1

    add-long/2addr p1, v2

    iput-wide p1, p0, Lf/i/a/a/l1/k0/e;->v:J

    .line 7
    :cond_3
    iget-wide p1, p0, Lf/i/a/a/l1/k0/e;->q:J

    int-to-long v2, v1

    add-long/2addr p1, v2

    iput-wide p1, p0, Lf/i/a/a/l1/k0/e;->q:J

    .line 8
    iget-wide p1, p0, Lf/i/a/a/l1/k0/e;->r:J

    cmp-long p3, p1, v6

    if-eqz p3, :cond_6

    .line 9
    iget-wide p1, p0, Lf/i/a/a/l1/k0/e;->r:J

    sub-long/2addr p1, v2

    iput-wide p1, p0, Lf/i/a/a/l1/k0/e;->r:J

    goto :goto_0

    .line 10
    :cond_4
    iget-boolean v2, p0, Lf/i/a/a/l1/k0/e;->k:Z

    if-eqz v2, :cond_5

    .line 11
    invoke-virtual {p0}, Lf/i/a/a/l1/k0/e;->i()V

    goto :goto_0

    .line 12
    :cond_5
    iget-wide v8, p0, Lf/i/a/a/l1/k0/e;->r:J

    cmp-long v2, v8, v3

    if-gtz v2, :cond_7

    iget-wide v2, p0, Lf/i/a/a/l1/k0/e;->r:J

    cmp-long v4, v2, v6

    if-nez v4, :cond_6

    goto :goto_1

    :cond_6
    :goto_0
    return v1

    .line 13
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lf/i/a/a/l1/k0/e;->e()V

    .line 14
    invoke-virtual {p0, v0}, Lf/i/a/a/l1/k0/e;->h(Z)V

    .line 15
    invoke-virtual {p0, p1, p2, p3}, Lf/i/a/a/l1/k0/e;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 16
    iget-boolean p2, p0, Lf/i/a/a/l1/k0/e;->k:Z

    if-eqz p2, :cond_8

    invoke-static {p1}, Lf/i/a/a/l1/k0/l;->e(Ljava/io/IOException;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 17
    invoke-virtual {p0}, Lf/i/a/a/l1/k0/e;->i()V

    return v5

    .line 18
    :cond_8
    invoke-virtual {p0, p1}, Lf/i/a/a/l1/k0/e;->f(Ljava/io/IOException;)V

    .line 19
    throw p1
.end method
