.class public final Lj/d;
.super Ljava/lang/Object;
.source "AsyncTimeout.kt"

# interfaces
.implements Lj/y;


# instance fields
.field public final synthetic a:Lj/c;

.field public final synthetic b:Lj/y;


# direct methods
.method public constructor <init>(Lj/c;Lj/y;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/y;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lj/d;->a:Lj/c;

    iput-object p2, p0, Lj/d;->b:Lj/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lj/d;->a:Lj/c;

    invoke-virtual {v0}, Lj/c;->h()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lj/d;->b:Lj/y;

    invoke-interface {v0}, Lj/y;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 3
    iget-object v1, p0, Lj/d;->a:Lj/c;

    invoke-virtual {v1, v0}, Lj/c;->k(Z)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    :try_start_1
    iget-object v1, p0, Lj/d;->a:Lj/c;

    invoke-virtual {v1, v0}, Lj/c;->j(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :goto_0
    iget-object v1, p0, Lj/d;->a:Lj/c;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lj/c;->k(Z)V

    throw v0
.end method

.method public flush()V
    .locals 3

    .line 1
    iget-object v0, p0, Lj/d;->a:Lj/c;

    invoke-virtual {v0}, Lj/c;->h()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lj/d;->b:Lj/y;

    invoke-interface {v0}, Lj/y;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 3
    iget-object v1, p0, Lj/d;->a:Lj/c;

    invoke-virtual {v1, v0}, Lj/c;->k(Z)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    :try_start_1
    iget-object v1, p0, Lj/d;->a:Lj/c;

    invoke-virtual {v1, v0}, Lj/c;->j(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :goto_0
    iget-object v1, p0, Lj/d;->a:Lj/c;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lj/c;->k(Z)V

    throw v0
.end method

.method public i()Lj/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/d;->a:Lj/c;

    return-object v0
.end method

.method public j(Lj/g;J)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 1
    iget-wide v1, p1, Lj/g;->b:J

    const-wide/16 v3, 0x0

    move-wide v5, p2

    .line 2
    invoke-static/range {v1 .. v6}, Lj/b;->i(JJJ)V

    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-lez v3, :cond_4

    .line 3
    iget-object v3, p1, Lj/g;->a:Lj/v;

    if-eqz v3, :cond_3

    :goto_1
    const/high16 v4, 0x10000

    int-to-long v4, v4

    cmp-long v6, v1, v4

    if-gez v6, :cond_2

    .line 4
    iget v4, v3, Lj/v;->c:I

    iget v5, v3, Lj/v;->b:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    add-long/2addr v1, v4

    cmp-long v4, v1, p2

    if-ltz v4, :cond_0

    move-wide v1, p2

    goto :goto_2

    .line 5
    :cond_0
    iget-object v3, v3, Lj/v;->f:Lj/v;

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lh/o/c/g;->e()V

    throw v0

    :cond_2
    :goto_2
    const/4 v3, 0x0

    .line 6
    iget-object v4, p0, Lj/d;->a:Lj/c;

    invoke-virtual {v4}, Lj/c;->h()V

    .line 7
    :try_start_0
    iget-object v4, p0, Lj/d;->b:Lj/y;

    invoke-interface {v4, p1, v1, v2}, Lj/y;->j(Lj/g;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr p2, v1

    const/4 v1, 0x1

    .line 8
    iget-object v2, p0, Lj/d;->a:Lj/c;

    invoke-virtual {v2, v1}, Lj/c;->k(Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 9
    :try_start_1
    iget-object p2, p0, Lj/d;->a:Lj/c;

    invoke-virtual {p2, p1}, Lj/c;->j(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :goto_3
    iget-object p2, p0, Lj/d;->a:Lj/c;

    invoke-virtual {p2, v3}, Lj/c;->k(Z)V

    throw p1

    .line 11
    :cond_3
    invoke-static {}, Lh/o/c/g;->e()V

    throw v0

    :cond_4
    return-void

    :cond_5
    const-string p1, "source"

    .line 12
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "AsyncTimeout.sink("

    .line 1
    invoke-static {v0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lj/d;->b:Lj/y;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
