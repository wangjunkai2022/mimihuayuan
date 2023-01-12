.class public Lf/d/a/o/n/a0;
.super Ljava/lang/Object;
.source "SourceGenerator.java"

# interfaces
.implements Lf/d/a/o/n/g;
.implements Lf/d/a/o/m/d$a;
.implements Lf/d/a/o/n/g$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/d/a/o/n/g;",
        "Lf/d/a/o/m/d$a<",
        "Ljava/lang/Object;",
        ">;",
        "Lf/d/a/o/n/g$a;"
    }
.end annotation


# instance fields
.field public final a:Lf/d/a/o/n/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/o/n/h<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:Lf/d/a/o/n/g$a;

.field public c:I

.field public d:Lf/d/a/o/n/d;

.field public e:Ljava/lang/Object;

.field public volatile f:Lf/d/a/o/o/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/o/o/n$a<",
            "*>;"
        }
    .end annotation
.end field

.field public g:Lf/d/a/o/n/e;


# direct methods
.method public constructor <init>(Lf/d/a/o/n/h;Lf/d/a/o/n/g$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/o/n/h<",
            "*>;",
            "Lf/d/a/o/n/g$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/d/a/o/n/a0;->a:Lf/d/a/o/n/h;

    .line 3
    iput-object p2, p0, Lf/d/a/o/n/a0;->b:Lf/d/a/o/n/g$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public b(Lf/d/a/o/f;Ljava/lang/Exception;Lf/d/a/o/m/d;Lf/d/a/o/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/o/f;",
            "Ljava/lang/Exception;",
            "Lf/d/a/o/m/d<",
            "*>;",
            "Lf/d/a/o/a;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p4, p0, Lf/d/a/o/n/a0;->b:Lf/d/a/o/n/g$a;

    iget-object v0, p0, Lf/d/a/o/n/a0;->f:Lf/d/a/o/o/n$a;

    iget-object v0, v0, Lf/d/a/o/o/n$a;->c:Lf/d/a/o/m/d;

    invoke-interface {v0}, Lf/d/a/o/m/d;->e()Lf/d/a/o/a;

    move-result-object v0

    invoke-interface {p4, p1, p2, p3, v0}, Lf/d/a/o/n/g$a;->b(Lf/d/a/o/f;Ljava/lang/Exception;Lf/d/a/o/m/d;Lf/d/a/o/a;)V

    return-void
.end method

.method public c(Ljava/lang/Exception;)V
    .locals 4
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lf/d/a/o/n/a0;->b:Lf/d/a/o/n/g$a;

    iget-object v1, p0, Lf/d/a/o/n/a0;->g:Lf/d/a/o/n/e;

    iget-object v2, p0, Lf/d/a/o/n/a0;->f:Lf/d/a/o/o/n$a;

    iget-object v2, v2, Lf/d/a/o/o/n$a;->c:Lf/d/a/o/m/d;

    iget-object v3, p0, Lf/d/a/o/n/a0;->f:Lf/d/a/o/o/n$a;

    iget-object v3, v3, Lf/d/a/o/o/n$a;->c:Lf/d/a/o/m/d;

    invoke-interface {v3}, Lf/d/a/o/m/d;->e()Lf/d/a/o/a;

    move-result-object v3

    invoke-interface {v0, v1, p1, v2, v3}, Lf/d/a/o/n/g$a;->b(Lf/d/a/o/f;Ljava/lang/Exception;Lf/d/a/o/m/d;Lf/d/a/o/a;)V

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/d/a/o/n/a0;->f:Lf/d/a/o/o/n$a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lf/d/a/o/o/n$a;->c:Lf/d/a/o/m/d;

    invoke-interface {v0}, Lf/d/a/o/m/d;->cancel()V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lf/d/a/o/n/a0;->a:Lf/d/a/o/n/h;

    .line 2
    iget-object v0, v0, Lf/d/a/o/n/h;->p:Lf/d/a/o/n/k;

    if-eqz p1, :cond_0

    .line 3
    iget-object v1, p0, Lf/d/a/o/n/a0;->f:Lf/d/a/o/o/n$a;

    iget-object v1, v1, Lf/d/a/o/o/n$a;->c:Lf/d/a/o/m/d;

    invoke-interface {v1}, Lf/d/a/o/m/d;->e()Lf/d/a/o/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/d/a/o/n/k;->c(Lf/d/a/o/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iput-object p1, p0, Lf/d/a/o/n/a0;->e:Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lf/d/a/o/n/a0;->b:Lf/d/a/o/n/g$a;

    invoke-interface {p1}, Lf/d/a/o/n/g$a;->a()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lf/d/a/o/n/a0;->b:Lf/d/a/o/n/g$a;

    iget-object v1, p0, Lf/d/a/o/n/a0;->f:Lf/d/a/o/o/n$a;

    iget-object v1, v1, Lf/d/a/o/o/n$a;->a:Lf/d/a/o/f;

    iget-object v2, p0, Lf/d/a/o/n/a0;->f:Lf/d/a/o/o/n$a;

    iget-object v3, v2, Lf/d/a/o/o/n$a;->c:Lf/d/a/o/m/d;

    iget-object v2, p0, Lf/d/a/o/n/a0;->f:Lf/d/a/o/o/n$a;

    iget-object v2, v2, Lf/d/a/o/o/n$a;->c:Lf/d/a/o/m/d;

    .line 7
    invoke-interface {v2}, Lf/d/a/o/m/d;->e()Lf/d/a/o/a;

    move-result-object v4

    iget-object v5, p0, Lf/d/a/o/n/a0;->g:Lf/d/a/o/n/e;

    move-object v2, p1

    .line 8
    invoke-interface/range {v0 .. v5}, Lf/d/a/o/n/g$a;->f(Lf/d/a/o/f;Ljava/lang/Object;Lf/d/a/o/m/d;Lf/d/a/o/a;Lf/d/a/o/f;)V

    :goto_0
    return-void
.end method

.method public e()Z
    .locals 9

    .line 1
    iget-object v0, p0, Lf/d/a/o/n/a0;->e:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iput-object v1, p0, Lf/d/a/o/n/a0;->e:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lf/d/a/u/e;->b()J

    move-result-wide v2

    .line 4
    :try_start_0
    iget-object v4, p0, Lf/d/a/o/n/a0;->a:Lf/d/a/o/n/h;

    invoke-virtual {v4, v0}, Lf/d/a/o/n/h;->e(Ljava/lang/Object;)Lf/d/a/o/d;

    move-result-object v4

    .line 5
    new-instance v5, Lf/d/a/o/n/f;

    iget-object v6, p0, Lf/d/a/o/n/a0;->a:Lf/d/a/o/n/h;

    .line 6
    iget-object v6, v6, Lf/d/a/o/n/h;->i:Lf/d/a/o/h;

    .line 7
    invoke-direct {v5, v4, v0, v6}, Lf/d/a/o/n/f;-><init>(Lf/d/a/o/d;Ljava/lang/Object;Lf/d/a/o/h;)V

    .line 8
    new-instance v6, Lf/d/a/o/n/e;

    iget-object v7, p0, Lf/d/a/o/n/a0;->f:Lf/d/a/o/o/n$a;

    iget-object v7, v7, Lf/d/a/o/o/n$a;->a:Lf/d/a/o/f;

    iget-object v8, p0, Lf/d/a/o/n/a0;->a:Lf/d/a/o/n/h;

    .line 9
    iget-object v8, v8, Lf/d/a/o/n/h;->n:Lf/d/a/o/f;

    .line 10
    invoke-direct {v6, v7, v8}, Lf/d/a/o/n/e;-><init>(Lf/d/a/o/f;Lf/d/a/o/f;)V

    iput-object v6, p0, Lf/d/a/o/n/a0;->g:Lf/d/a/o/n/e;

    .line 11
    iget-object v6, p0, Lf/d/a/o/n/a0;->a:Lf/d/a/o/n/h;

    invoke-virtual {v6}, Lf/d/a/o/n/h;->b()Lf/d/a/o/n/c0/a;

    move-result-object v6

    iget-object v7, p0, Lf/d/a/o/n/a0;->g:Lf/d/a/o/n/e;

    invoke-interface {v6, v7, v5}, Lf/d/a/o/n/c0/a;->a(Lf/d/a/o/f;Lf/d/a/o/n/c0/a$b;)V

    const-string v5, "SourceGenerator"

    const/4 v6, 0x2

    .line 12
    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Finished encoding source to cache, key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lf/d/a/o/n/a0;->g:Lf/d/a/o/n/e;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", data: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", encoder: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", duration: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-static {v2, v3}, Lf/d/a/u/e;->a(J)D

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :cond_0
    iget-object v0, p0, Lf/d/a/o/n/a0;->f:Lf/d/a/o/o/n$a;

    iget-object v0, v0, Lf/d/a/o/o/n$a;->c:Lf/d/a/o/m/d;

    invoke-interface {v0}, Lf/d/a/o/m/d;->b()V

    .line 16
    new-instance v0, Lf/d/a/o/n/d;

    iget-object v2, p0, Lf/d/a/o/n/a0;->f:Lf/d/a/o/o/n$a;

    iget-object v2, v2, Lf/d/a/o/o/n$a;->a:Lf/d/a/o/f;

    .line 17
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lf/d/a/o/n/a0;->a:Lf/d/a/o/n/h;

    invoke-direct {v0, v2, v3, p0}, Lf/d/a/o/n/d;-><init>(Ljava/util/List;Lf/d/a/o/n/h;Lf/d/a/o/n/g$a;)V

    iput-object v0, p0, Lf/d/a/o/n/a0;->d:Lf/d/a/o/n/d;

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 18
    iget-object v1, p0, Lf/d/a/o/n/a0;->f:Lf/d/a/o/o/n$a;

    iget-object v1, v1, Lf/d/a/o/o/n$a;->c:Lf/d/a/o/m/d;

    invoke-interface {v1}, Lf/d/a/o/m/d;->b()V

    throw v0

    .line 19
    :cond_1
    :goto_0
    iget-object v0, p0, Lf/d/a/o/n/a0;->d:Lf/d/a/o/n/d;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lf/d/a/o/n/d;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 20
    :cond_2
    iput-object v1, p0, Lf/d/a/o/n/a0;->d:Lf/d/a/o/n/d;

    .line 21
    iput-object v1, p0, Lf/d/a/o/n/a0;->f:Lf/d/a/o/o/n$a;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_3
    :goto_1
    if-nez v1, :cond_6

    .line 22
    iget v3, p0, Lf/d/a/o/n/a0;->c:I

    iget-object v4, p0, Lf/d/a/o/n/a0;->a:Lf/d/a/o/n/h;

    invoke-virtual {v4}, Lf/d/a/o/n/h;->c()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_6

    .line 23
    iget-object v3, p0, Lf/d/a/o/n/a0;->a:Lf/d/a/o/n/h;

    invoke-virtual {v3}, Lf/d/a/o/n/h;->c()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lf/d/a/o/n/a0;->c:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lf/d/a/o/n/a0;->c:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf/d/a/o/o/n$a;

    iput-object v3, p0, Lf/d/a/o/n/a0;->f:Lf/d/a/o/o/n$a;

    .line 24
    iget-object v3, p0, Lf/d/a/o/n/a0;->f:Lf/d/a/o/o/n$a;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lf/d/a/o/n/a0;->a:Lf/d/a/o/n/h;

    .line 25
    iget-object v3, v3, Lf/d/a/o/n/h;->p:Lf/d/a/o/n/k;

    .line 26
    iget-object v4, p0, Lf/d/a/o/n/a0;->f:Lf/d/a/o/o/n$a;

    iget-object v4, v4, Lf/d/a/o/o/n$a;->c:Lf/d/a/o/m/d;

    invoke-interface {v4}, Lf/d/a/o/m/d;->e()Lf/d/a/o/a;

    move-result-object v4

    invoke-virtual {v3, v4}, Lf/d/a/o/n/k;->c(Lf/d/a/o/a;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lf/d/a/o/n/a0;->a:Lf/d/a/o/n/h;

    iget-object v4, p0, Lf/d/a/o/n/a0;->f:Lf/d/a/o/o/n$a;

    iget-object v4, v4, Lf/d/a/o/o/n$a;->c:Lf/d/a/o/m/d;

    .line 27
    invoke-interface {v4}, Lf/d/a/o/m/d;->a()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Lf/d/a/o/n/h;->g(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 28
    :cond_5
    iget-object v1, p0, Lf/d/a/o/n/a0;->f:Lf/d/a/o/o/n$a;

    iget-object v1, v1, Lf/d/a/o/o/n$a;->c:Lf/d/a/o/m/d;

    iget-object v3, p0, Lf/d/a/o/n/a0;->a:Lf/d/a/o/n/h;

    .line 29
    iget-object v3, v3, Lf/d/a/o/n/h;->o:Lf/d/a/f;

    .line 30
    invoke-interface {v1, v3, p0}, Lf/d/a/o/m/d;->f(Lf/d/a/f;Lf/d/a/o/m/d$a;)V

    const/4 v1, 0x1

    goto :goto_1

    :cond_6
    return v1
.end method

.method public f(Lf/d/a/o/f;Ljava/lang/Object;Lf/d/a/o/m/d;Lf/d/a/o/a;Lf/d/a/o/f;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/o/f;",
            "Ljava/lang/Object;",
            "Lf/d/a/o/m/d<",
            "*>;",
            "Lf/d/a/o/a;",
            "Lf/d/a/o/f;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/d/a/o/n/a0;->b:Lf/d/a/o/n/g$a;

    iget-object p4, p0, Lf/d/a/o/n/a0;->f:Lf/d/a/o/o/n$a;

    iget-object p4, p4, Lf/d/a/o/o/n$a;->c:Lf/d/a/o/m/d;

    invoke-interface {p4}, Lf/d/a/o/m/d;->e()Lf/d/a/o/a;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lf/d/a/o/n/g$a;->f(Lf/d/a/o/f;Ljava/lang/Object;Lf/d/a/o/m/d;Lf/d/a/o/a;Lf/d/a/o/f;)V

    return-void
.end method
