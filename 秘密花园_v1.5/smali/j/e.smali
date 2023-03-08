.class public final Lj/e;
.super Ljava/lang/Object;
.source "AsyncTimeout.kt"

# interfaces
.implements Lj/a0;


# instance fields
.field public final synthetic a:Lj/c;

.field public final synthetic b:Lj/a0;


# direct methods
.method public constructor <init>(Lj/c;Lj/a0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a0;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lj/e;->a:Lj/c;

    iput-object p2, p0, Lj/e;->b:Lj/a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lj/g;J)J
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1
    iget-object v1, p0, Lj/e;->a:Lj/c;

    invoke-virtual {v1}, Lj/c;->h()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lj/e;->b:Lj/a0;

    invoke-interface {v1, p1, p2, p3}, Lj/a0;->c(Lj/g;J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p3, 0x1

    .line 3
    iget-object v0, p0, Lj/e;->a:Lj/c;

    invoke-virtual {v0, p3}, Lj/c;->k(Z)V

    return-wide p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    :try_start_1
    iget-object p2, p0, Lj/e;->a:Lj/c;

    invoke-virtual {p2, p1}, Lj/c;->j(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :goto_0
    iget-object p2, p0, Lj/e;->a:Lj/c;

    invoke-virtual {p2, v0}, Lj/c;->k(Z)V

    throw p1

    :cond_0
    const-string p1, "sink"

    .line 6
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lj/e;->a:Lj/c;

    invoke-virtual {v0}, Lj/c;->h()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lj/e;->b:Lj/a0;

    invoke-interface {v0}, Lj/a0;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 3
    iget-object v1, p0, Lj/e;->a:Lj/c;

    invoke-virtual {v1, v0}, Lj/c;->k(Z)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    :try_start_1
    iget-object v1, p0, Lj/e;->a:Lj/c;

    invoke-virtual {v1, v0}, Lj/c;->j(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :goto_0
    iget-object v1, p0, Lj/e;->a:Lj/c;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lj/c;->k(Z)V

    throw v0
.end method

.method public i()Lj/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/e;->a:Lj/c;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "AsyncTimeout.source("

    .line 1
    invoke-static {v0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lj/e;->b:Lj/a0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
