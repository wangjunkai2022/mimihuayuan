.class public Lf/i/a/a/v0/a;
.super Ljava/lang/Object;
.source "AnalyticsCollector.java"

# interfaces
.implements Lf/i/a/a/l0$b;
.implements Lf/i/a/a/d1/e;
.implements Lf/i/a/a/w0/o;
.implements Lf/i/a/a/n1/s;
.implements Lf/i/a/a/h1/f0;
.implements Lf/i/a/a/l1/g$a;
.implements Lf/i/a/a/z0/c;
.implements Lf/i/a/a/n1/q;
.implements Lf/i/a/a/w0/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/v0/a$b;,
        Lf/i/a/a/v0/a$c;,
        Lf/i/a/a/v0/a$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lf/i/a/a/v0/b;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lf/i/a/a/m1/h;

.field public final c:Lf/i/a/a/u0$c;

.field public final d:Lf/i/a/a/v0/a$c;

.field public e:Lf/i/a/a/l0;


# direct methods
.method public constructor <init>(Lf/i/a/a/l0;Lf/i/a/a/m1/h;)V
    .locals 0
    .param p1    # Lf/i/a/a/l0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lf/i/a/a/v0/a;->e:Lf/i/a/a/l0;

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    iput-object p2, p0, Lf/i/a/a/v0/a;->b:Lf/i/a/a/m1/h;

    .line 4
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lf/i/a/a/v0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    new-instance p1, Lf/i/a/a/v0/a$c;

    invoke-direct {p1}, Lf/i/a/a/v0/a$c;-><init>()V

    iput-object p1, p0, Lf/i/a/a/v0/a;->d:Lf/i/a/a/v0/a$c;

    .line 6
    new-instance p1, Lf/i/a/a/u0$c;

    invoke-direct {p1}, Lf/i/a/a/u0$c;-><init>()V

    iput-object p1, p0, Lf/i/a/a/v0/a;->c:Lf/i/a/a/u0$c;

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 7
    throw p1
.end method


# virtual methods
.method public final A(Lf/i/a/a/v0/a$b;)Lf/i/a/a/v0/b$a;
    .locals 9
    .param p1    # Lf/i/a/a/v0/a$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lf/i/a/a/v0/a;->e:Lf/i/a/a/l0;

    invoke-static {v0}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_6

    .line 2
    iget-object p1, p0, Lf/i/a/a/v0/a;->e:Lf/i/a/a/l0;

    invoke-interface {p1}, Lf/i/a/a/l0;->z()I

    move-result p1

    .line 3
    iget-object v0, p0, Lf/i/a/a/v0/a;->d:Lf/i/a/a/v0/a$c;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v2

    const/4 v3, 0x0

    .line 4
    :goto_0
    iget-object v5, v0, Lf/i/a/a/v0/a$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 5
    iget-object v5, v0, Lf/i/a/a/v0/a$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf/i/a/a/v0/a$b;

    .line 6
    iget-object v6, v0, Lf/i/a/a/v0/a$c;->f:Lf/i/a/a/u0;

    iget-object v7, v5, Lf/i/a/a/v0/a$b;->a:Lf/i/a/a/h1/e0$a;

    iget-object v7, v7, Lf/i/a/a/h1/e0$a;->a:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Lf/i/a/a/u0;->b(Ljava/lang/Object;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 7
    iget-object v7, v0, Lf/i/a/a/v0/a$c;->f:Lf/i/a/a/u0;

    iget-object v8, v0, Lf/i/a/a/v0/a$c;->c:Lf/i/a/a/u0$b;

    .line 8
    invoke-virtual {v7, v6, v8}, Lf/i/a/a/u0;->f(ILf/i/a/a/u0$b;)Lf/i/a/a/u0$b;

    move-result-object v6

    iget v6, v6, Lf/i/a/a/u0$b;->c:I

    if-ne v6, p1, :cond_1

    if-eqz v4, :cond_0

    move-object v4, v2

    goto :goto_1

    :cond_0
    move-object v4, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v4, :cond_5

    .line 9
    iget-object v0, p0, Lf/i/a/a/v0/a;->e:Lf/i/a/a/l0;

    invoke-interface {v0}, Lf/i/a/a/l0;->w()Lf/i/a/a/u0;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lf/i/a/a/u0;->p()I

    move-result v3

    if-ge p1, v3, :cond_3

    const/4 v1, 0x1

    :cond_3
    if-eqz v1, :cond_4

    goto :goto_2

    .line 11
    :cond_4
    sget-object v0, Lf/i/a/a/u0;->a:Lf/i/a/a/u0;

    :goto_2
    invoke-virtual {p0, v0, p1, v2}, Lf/i/a/a/v0/a;->z(Lf/i/a/a/u0;ILf/i/a/a/h1/e0$a;)Lf/i/a/a/v0/b$a;

    move-result-object p1

    return-object p1

    :cond_5
    move-object p1, v4

    .line 12
    :cond_6
    iget-object v0, p1, Lf/i/a/a/v0/a$b;->b:Lf/i/a/a/u0;

    iget v1, p1, Lf/i/a/a/v0/a$b;->c:I

    iget-object p1, p1, Lf/i/a/a/v0/a$b;->a:Lf/i/a/a/h1/e0$a;

    invoke-virtual {p0, v0, v1, p1}, Lf/i/a/a/v0/a;->z(Lf/i/a/a/u0;ILf/i/a/a/h1/e0$a;)Lf/i/a/a/v0/b$a;

    move-result-object p1

    return-object p1
.end method

.method public final B()Lf/i/a/a/v0/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/v0/a;->d:Lf/i/a/a/v0/a$c;

    .line 2
    iget-object v0, v0, Lf/i/a/a/v0/a$c;->d:Lf/i/a/a/v0/a$b;

    .line 3
    invoke-virtual {p0, v0}, Lf/i/a/a/v0/a;->A(Lf/i/a/a/v0/a$b;)Lf/i/a/a/v0/b$a;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lf/i/a/a/v0/b$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/v0/a;->d:Lf/i/a/a/v0/a$c;

    .line 2
    iget-object v1, v0, Lf/i/a/a/v0/a$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lf/i/a/a/v0/a$c;->a:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/v0/a$b;

    .line 4
    :goto_0
    invoke-virtual {p0, v0}, Lf/i/a/a/v0/a;->A(Lf/i/a/a/v0/a$b;)Lf/i/a/a/v0/b$a;

    move-result-object v0

    return-object v0
.end method

.method public final D(ILf/i/a/a/h1/e0$a;)Lf/i/a/a/v0/b$a;
    .locals 1
    .param p2    # Lf/i/a/a/h1/e0$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lf/i/a/a/v0/a;->e:Lf/i/a/a/l0;

    invoke-static {v0}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    .line 2
    iget-object v0, p0, Lf/i/a/a/v0/a;->d:Lf/i/a/a/v0/a$c;

    .line 3
    iget-object v0, v0, Lf/i/a/a/v0/a$c;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/v0/a$b;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lf/i/a/a/v0/a;->A(Lf/i/a/a/v0/a$b;)Lf/i/a/a/v0/b$a;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object v0, Lf/i/a/a/u0;->a:Lf/i/a/a/u0;

    .line 5
    invoke-virtual {p0, v0, p1, p2}, Lf/i/a/a/v0/a;->z(Lf/i/a/a/u0;ILf/i/a/a/h1/e0$a;)Lf/i/a/a/v0/b$a;

    move-result-object p1

    :goto_0
    return-object p1

    .line 6
    :cond_1
    iget-object p2, p0, Lf/i/a/a/v0/a;->e:Lf/i/a/a/l0;

    invoke-interface {p2}, Lf/i/a/a/l0;->w()Lf/i/a/a/u0;

    move-result-object p2

    .line 7
    invoke-virtual {p2}, Lf/i/a/a/u0;->p()I

    move-result v0

    if-ge p1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    goto :goto_2

    .line 8
    :cond_3
    sget-object p2, Lf/i/a/a/u0;->a:Lf/i/a/a/u0;

    :goto_2
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lf/i/a/a/v0/a;->z(Lf/i/a/a/u0;ILf/i/a/a/h1/e0$a;)Lf/i/a/a/v0/b$a;

    move-result-object p1

    return-object p1
.end method

.method public final E()Lf/i/a/a/v0/b$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/v0/a;->d:Lf/i/a/a/v0/a$c;

    .line 2
    iget-object v1, v0, Lf/i/a/a/v0/a$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lf/i/a/a/v0/a$c;->f:Lf/i/a/a/u0;

    invoke-virtual {v1}, Lf/i/a/a/u0;->q()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lf/i/a/a/v0/a$c;->g:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lf/i/a/a/v0/a$c;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/v0/a$b;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 4
    :goto_1
    invoke-virtual {p0, v0}, Lf/i/a/a/v0/a;->A(Lf/i/a/a/v0/a$b;)Lf/i/a/a/v0/b$a;

    move-result-object v0

    return-object v0
.end method

.method public final F()Lf/i/a/a/v0/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/v0/a;->d:Lf/i/a/a/v0/a$c;

    .line 2
    iget-object v0, v0, Lf/i/a/a/v0/a$c;->e:Lf/i/a/a/v0/a$b;

    .line 3
    invoke-virtual {p0, v0}, Lf/i/a/a/v0/a;->A(Lf/i/a/a/v0/a$b;)Lf/i/a/a/v0/b$a;

    move-result-object v0

    return-object v0
.end method

.method public final G()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/v0/a;->B()Lf/i/a/a/v0/b$a;

    .line 2
    iget-object v0, p0, Lf/i/a/a/v0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/v0/b;

    .line 3
    invoke-interface {v1}, Lf/i/a/a/v0/b;->x()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final H()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lf/i/a/a/v0/a;->d:Lf/i/a/a/v0/a$c;

    .line 2
    iget-object v1, v1, Lf/i/a/a/v0/a$c;->a:Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/v0/a$b;

    .line 5
    iget v2, v1, Lf/i/a/a/v0/a$b;->c:I

    iget-object v1, v1, Lf/i/a/a/v0/a$b;->a:Lf/i/a/a/h1/e0$a;

    invoke-virtual {p0, v2, v1}, Lf/i/a/a/v0/a;->l(ILf/i/a/a/h1/e0$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(IIIF)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/v0/a;->F()Lf/i/a/a/v0/b$a;

    .line 2
    iget-object p1, p0, Lf/i/a/a/v0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lf/i/a/a/v0/b;

    .line 3
    invoke-interface {p2}, Lf/i/a/a/v0/b;->C()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/v0/a;->F()Lf/i/a/a/v0/b$a;

    .line 2
    iget-object p1, p0, Lf/i/a/a/v0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/v0/b;

    .line 3
    invoke-interface {v0}, Lf/i/a/a/v0/b;->l()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d(Lf/i/a/a/y0/d;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/v0/a;->B()Lf/i/a/a/v0/b$a;

    .line 2
    iget-object p1, p0, Lf/i/a/a/v0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/v0/b;

    .line 3
    invoke-interface {v0}, Lf/i/a/a/v0/b;->i()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e(ILf/i/a/a/h1/e0$a;Lf/i/a/a/h1/f0$b;Lf/i/a/a/h1/f0$c;)V
    .locals 0
    .param p2    # Lf/i/a/a/h1/e0$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1, p2}, Lf/i/a/a/v0/a;->D(ILf/i/a/a/h1/e0$a;)Lf/i/a/a/v0/b$a;

    .line 2
    iget-object p1, p0, Lf/i/a/a/v0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lf/i/a/a/v0/b;

    .line 3
    invoke-interface {p2}, Lf/i/a/a/v0/b;->o()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f(ILf/i/a/a/h1/e0$a;Lf/i/a/a/h1/f0$b;Lf/i/a/a/h1/f0$c;Ljava/io/IOException;Z)V
    .locals 0
    .param p2    # Lf/i/a/a/h1/e0$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1, p2}, Lf/i/a/a/v0/a;->D(ILf/i/a/a/h1/e0$a;)Lf/i/a/a/v0/b$a;

    .line 2
    iget-object p1, p0, Lf/i/a/a/v0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lf/i/a/a/v0/b;

    .line 3
    invoke-interface {p2}, Lf/i/a/a/v0/b;->r()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final g(Lf/i/a/a/y0/d;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/v0/a;->E()Lf/i/a/a/v0/b$a;

    .line 2
    iget-object p1, p0, Lf/i/a/a/v0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/v0/b;

    .line 3
    invoke-interface {v0}, Lf/i/a/a/v0/b;->E()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final h(Ljava/lang/String;JJ)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/v0/a;->F()Lf/i/a/a/v0/b$a;

    .line 2
    iget-object p1, p0, Lf/i/a/a/v0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lf/i/a/a/v0/b;

    .line 3
    invoke-interface {p2}, Lf/i/a/a/v0/b;->s()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final i(ILf/i/a/a/h1/e0$a;Lf/i/a/a/h1/f0$b;Lf/i/a/a/h1/f0$c;)V
    .locals 0
    .param p2    # Lf/i/a/a/h1/e0$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1, p2}, Lf/i/a/a/v0/a;->D(ILf/i/a/a/h1/e0$a;)Lf/i/a/a/v0/b$a;

    .line 2
    iget-object p1, p0, Lf/i/a/a/v0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lf/i/a/a/v0/b;

    .line 3
    invoke-interface {p2}, Lf/i/a/a/v0/b;->n()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final j(Lf/i/a/a/b0;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/v0/a;->F()Lf/i/a/a/v0/b$a;

    .line 2
    iget-object p1, p0, Lf/i/a/a/v0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/v0/b;

    .line 3
    invoke-interface {v0}, Lf/i/a/a/v0/b;->t()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final k(Lf/i/a/a/y0/d;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/v0/a;->E()Lf/i/a/a/v0/b$a;

    .line 2
    iget-object p1, p0, Lf/i/a/a/v0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/v0/b;

    .line 3
    invoke-interface {v0}, Lf/i/a/a/v0/b;->E()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final l(ILf/i/a/a/h1/e0$a;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lf/i/a/a/v0/a;->D(ILf/i/a/a/h1/e0$a;)Lf/i/a/a/v0/b$a;

    .line 2
    iget-object p1, p0, Lf/i/a/a/v0/a;->d:Lf/i/a/a/v0/a$c;

    .line 3
    iget-object v0, p1, Lf/i/a/a/v0/a$c;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/v0/a$b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v2, p1, Lf/i/a/a/v0/a$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p1, Lf/i/a/a/v0/a$c;->e:Lf/i/a/a/v0/a$b;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lf/i/a/a/v0/a$b;->a:Lf/i/a/a/h1/e0$a;

    invoke-virtual {p2, v0}, Lf/i/a/a/h1/e0$a;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 6
    iget-object p2, p1, Lf/i/a/a/v0/a$c;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    iget-object p2, p1, Lf/i/a/a/v0/a$c;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lf/i/a/a/v0/a$b;

    :goto_0
    iput-object p2, p1, Lf/i/a/a/v0/a$c;->e:Lf/i/a/a/v0/a$b;

    :cond_2
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_3

    .line 7
    iget-object p1, p0, Lf/i/a/a/v0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lf/i/a/a/v0/b;

    .line 8
    invoke-interface {p2}, Lf/i/a/a/v0/b;->D()V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final m(Lf/i/a/a/b0;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/v0/a;->F()Lf/i/a/a/v0/b$a;

    .line 2
    iget-object p1, p0, Lf/i/a/a/v0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/v0/b;

    .line 3
    invoke-interface {v0}, Lf/i/a/a/v0/b;->t()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final n(ILf/i/a/a/h1/e0$a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/v0/a;->d:Lf/i/a/a/v0/a$c;

    .line 2
    iget-object v1, v0, Lf/i/a/a/v0/a$c;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/v0/a$b;

    iput-object v1, v0, Lf/i/a/a/v0/a$c;->e:Lf/i/a/a/v0/a$b;

    .line 3
    invoke-virtual {p0, p1, p2}, Lf/i/a/a/v0/a;->D(ILf/i/a/a/h1/e0$a;)Lf/i/a/a/v0/b$a;

    .line 4
    iget-object p1, p0, Lf/i/a/a/v0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lf/i/a/a/v0/b;

    .line 5
    invoke-interface {p2}, Lf/i/a/a/v0/b;->v()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final o(ILf/i/a/a/h1/e0$a;Lf/i/a/a/h1/f0$b;Lf/i/a/a/h1/f0$c;)V
    .locals 0
    .param p2    # Lf/i/a/a/h1/e0$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1, p2}, Lf/i/a/a/v0/a;->D(ILf/i/a/a/h1/e0$a;)Lf/i/a/a/v0/b$a;

    .line 2
    iget-object p1, p0, Lf/i/a/a/v0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lf/i/a/a/v0/b;

    .line 3
    invoke-interface {p2}, Lf/i/a/a/v0/b;->j()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onLoadingChanged(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/v0/a;->E()Lf/i/a/a/v0/b$a;

    .line 2
    iget-object p1, p0, Lf/i/a/a/v0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/v0/b;

    .line 3
    invoke-interface {v0}, Lf/i/a/a/v0/b;->onLoadingChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onPlaybackParametersChanged(Lf/i/a/a/j0;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/v0/a;->E()Lf/i/a/a/v0/b$a;

    .line 2
    iget-object p1, p0, Lf/i/a/a/v0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/v0/b;

    .line 3
    invoke-interface {v0}, Lf/i/a/a/v0/b;->f()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onPlayerError(Lf/i/a/a/w;)V
    .locals 1

    .line 1
    iget p1, p1, Lf/i/a/a/w;->a:I

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lf/i/a/a/v0/a;->C()Lf/i/a/a/v0/b$a;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lf/i/a/a/v0/a;->E()Lf/i/a/a/v0/b$a;

    .line 4
    :goto_0
    iget-object p1, p0, Lf/i/a/a/v0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/v0/b;

    .line 5
    invoke-interface {v0}, Lf/i/a/a/v0/b;->h()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final onPlayerStateChanged(ZI)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/v0/a;->E()Lf/i/a/a/v0/b$a;

    .line 2
    iget-object p1, p0, Lf/i/a/a/v0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lf/i/a/a/v0/b;

    .line 3
    invoke-interface {p2}, Lf/i/a/a/v0/b;->F()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onPositionDiscontinuity(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lf/i/a/a/v0/a;->d:Lf/i/a/a/v0/a$c;

    .line 2
    invoke-virtual {p1}, Lf/i/a/a/v0/a$c;->a()V

    .line 3
    invoke-virtual {p0}, Lf/i/a/a/v0/a;->E()Lf/i/a/a/v0/b$a;

    .line 4
    iget-object p1, p0, Lf/i/a/a/v0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/v0/b;

    .line 5
    invoke-interface {v0}, Lf/i/a/a/v0/b;->q()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onRepeatModeChanged(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/v0/a;->E()Lf/i/a/a/v0/b$a;

    .line 2
    iget-object p1, p0, Lf/i/a/a/v0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/v0/b;

    .line 3
    invoke-interface {v0}, Lf/i/a/a/v0/b;->c()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onSeekProcessed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/v0/a;->d:Lf/i/a/a/v0/a$c;

    .line 2
    iget-boolean v1, v0, Lf/i/a/a/v0/a$c;->g:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lf/i/a/a/v0/a$c;->g:Z

    .line 4
    invoke-virtual {v0}, Lf/i/a/a/v0/a$c;->a()V

    .line 5
    invoke-virtual {p0}, Lf/i/a/a/v0/a;->E()Lf/i/a/a/v0/b$a;

    .line 6
    iget-object v0, p0, Lf/i/a/a/v0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/v0/b;

    .line 7
    invoke-interface {v1}, Lf/i/a/a/v0/b;->onSeekProcessed()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onShuffleModeEnabledChanged(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/v0/a;->E()Lf/i/a/a/v0/b$a;

    .line 2
    iget-object p1, p0, Lf/i/a/a/v0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/v0/b;

    .line 3
    invoke-interface {v0}, Lf/i/a/a/v0/b;->m()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onTimelineChanged(Lf/i/a/a/u0;Ljava/lang/Object;I)V
    .locals 3
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p2, p0, Lf/i/a/a/v0/a;->d:Lf/i/a/a/v0/a$c;

    const/4 p3, 0x0

    .line 2
    :goto_0
    iget-object v0, p2, Lf/i/a/a/v0/a$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_0

    .line 3
    iget-object v0, p2, Lf/i/a/a/v0/a$c;->a:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/v0/a$b;

    invoke-virtual {p2, v0, p1}, Lf/i/a/a/v0/a$c;->b(Lf/i/a/a/v0/a$b;Lf/i/a/a/u0;)Lf/i/a/a/v0/a$b;

    move-result-object v0

    .line 5
    iget-object v1, p2, Lf/i/a/a/v0/a$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, p2, Lf/i/a/a/v0/a$c;->b:Ljava/util/HashMap;

    iget-object v2, v0, Lf/i/a/a/v0/a$b;->a:Lf/i/a/a/h1/e0$a;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-object p3, p2, Lf/i/a/a/v0/a$c;->e:Lf/i/a/a/v0/a$b;

    if-eqz p3, :cond_1

    .line 8
    invoke-virtual {p2, p3, p1}, Lf/i/a/a/v0/a$c;->b(Lf/i/a/a/v0/a$b;Lf/i/a/a/u0;)Lf/i/a/a/v0/a$b;

    move-result-object p3

    iput-object p3, p2, Lf/i/a/a/v0/a$c;->e:Lf/i/a/a/v0/a$b;

    .line 9
    :cond_1
    iput-object p1, p2, Lf/i/a/a/v0/a$c;->f:Lf/i/a/a/u0;

    .line 10
    invoke-virtual {p2}, Lf/i/a/a/v0/a$c;->a()V

    .line 11
    invoke-virtual {p0}, Lf/i/a/a/v0/a;->E()Lf/i/a/a/v0/b$a;

    .line 12
    iget-object p1, p0, Lf/i/a/a/v0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lf/i/a/a/v0/b;

    .line 13
    invoke-interface {p2}, Lf/i/a/a/v0/b;->u()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final onTracksChanged(Lf/i/a/a/h1/p0;Lf/i/a/a/j1/k;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/v0/a;->E()Lf/i/a/a/v0/b$a;

    .line 2
    iget-object p1, p0, Lf/i/a/a/v0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lf/i/a/a/v0/b;

    .line 3
    invoke-interface {p2}, Lf/i/a/a/v0/b;->B()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final p(ILf/i/a/a/h1/e0$a;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lf/i/a/a/v0/a;->d:Lf/i/a/a/v0/a$c;

    .line 2
    iget-object v1, v0, Lf/i/a/a/v0/a$c;->f:Lf/i/a/a/u0;

    iget-object v2, p2, Lf/i/a/a/h1/e0$a;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lf/i/a/a/u0;->b(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    new-instance v2, Lf/i/a/a/v0/a$b;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lf/i/a/a/v0/a$c;->f:Lf/i/a/a/u0;

    goto :goto_1

    :cond_1
    sget-object v1, Lf/i/a/a/u0;->a:Lf/i/a/a/u0;

    :goto_1
    invoke-direct {v2, p2, v1, p1}, Lf/i/a/a/v0/a$b;-><init>(Lf/i/a/a/h1/e0$a;Lf/i/a/a/u0;I)V

    .line 4
    iget-object v1, v0, Lf/i/a/a/v0/a$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v1, v0, Lf/i/a/a/v0/a$c;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, v0, Lf/i/a/a/v0/a$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v3, :cond_2

    iget-object v1, v0, Lf/i/a/a/v0/a$c;->f:Lf/i/a/a/u0;

    invoke-virtual {v1}, Lf/i/a/a/u0;->q()Z

    move-result v1

    if-nez v1, :cond_2

    .line 7
    invoke-virtual {v0}, Lf/i/a/a/v0/a$c;->a()V

    .line 8
    :cond_2
    invoke-virtual {p0, p1, p2}, Lf/i/a/a/v0/a;->D(ILf/i/a/a/h1/e0$a;)Lf/i/a/a/v0/b$a;

    .line 9
    iget-object p1, p0, Lf/i/a/a/v0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lf/i/a/a/v0/b;

    .line 10
    invoke-interface {p2}, Lf/i/a/a/v0/b;->p()V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final q(IJJ)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/v0/a;->F()Lf/i/a/a/v0/b$a;

    .line 2
    iget-object p1, p0, Lf/i/a/a/v0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lf/i/a/a/v0/b;

    .line 3
    invoke-interface {p2}, Lf/i/a/a/v0/b;->z()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final r(Landroid/view/Surface;)V
    .locals 1
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/v0/a;->F()Lf/i/a/a/v0/b$a;

    .line 2
    iget-object p1, p0, Lf/i/a/a/v0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/v0/b;

    .line 3
    invoke-interface {v0}, Lf/i/a/a/v0/b;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final s(Lf/i/a/a/y0/d;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/v0/a;->B()Lf/i/a/a/v0/b$a;

    .line 2
    iget-object p1, p0, Lf/i/a/a/v0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/v0/b;

    .line 3
    invoke-interface {v0}, Lf/i/a/a/v0/b;->i()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final t(Ljava/lang/String;JJ)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/v0/a;->F()Lf/i/a/a/v0/b$a;

    .line 2
    iget-object p1, p0, Lf/i/a/a/v0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lf/i/a/a/v0/b;

    .line 3
    invoke-interface {p2}, Lf/i/a/a/v0/b;->s()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public u(II)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/v0/a;->F()Lf/i/a/a/v0/b$a;

    .line 2
    iget-object p1, p0, Lf/i/a/a/v0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lf/i/a/a/v0/b;

    .line 3
    invoke-interface {p2}, Lf/i/a/a/v0/b;->k()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final v(Lf/i/a/a/d1/a;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/v0/a;->E()Lf/i/a/a/v0/b$a;

    .line 2
    iget-object p1, p0, Lf/i/a/a/v0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/v0/b;

    .line 3
    invoke-interface {v0}, Lf/i/a/a/v0/b;->w()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final w(IJ)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/v0/a;->B()Lf/i/a/a/v0/b$a;

    .line 2
    iget-object p1, p0, Lf/i/a/a/v0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lf/i/a/a/v0/b;

    .line 3
    invoke-interface {p2}, Lf/i/a/a/v0/b;->g()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final x(ILf/i/a/a/h1/e0$a;Lf/i/a/a/h1/f0$c;)V
    .locals 0
    .param p2    # Lf/i/a/a/h1/e0$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1, p2}, Lf/i/a/a/v0/a;->D(ILf/i/a/a/h1/e0$a;)Lf/i/a/a/v0/b$a;

    .line 2
    iget-object p1, p0, Lf/i/a/a/v0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lf/i/a/a/v0/b;

    .line 3
    invoke-interface {p2}, Lf/i/a/a/v0/b;->d()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final y(ILf/i/a/a/h1/e0$a;Lf/i/a/a/h1/f0$c;)V
    .locals 0
    .param p2    # Lf/i/a/a/h1/e0$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1, p2}, Lf/i/a/a/v0/a;->D(ILf/i/a/a/h1/e0$a;)Lf/i/a/a/v0/b$a;

    .line 2
    iget-object p1, p0, Lf/i/a/a/v0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lf/i/a/a/v0/b;

    .line 3
    invoke-interface {p2}, Lf/i/a/a/v0/b;->e()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public z(Lf/i/a/a/u0;ILf/i/a/a/h1/e0$a;)Lf/i/a/a/v0/b$a;
    .locals 12
    .param p3    # Lf/i/a/a/h1/e0$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "player"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lf/i/a/a/u0;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p3, 0x0

    :cond_0
    move-object v5, p3

    .line 2
    iget-object p3, p0, Lf/i/a/a/v0/a;->b:Lf/i/a/a/m1/h;

    invoke-interface {p3}, Lf/i/a/a/m1/h;->c()J

    move-result-wide v1

    .line 3
    iget-object p3, p0, Lf/i/a/a/v0/a;->e:Lf/i/a/a/l0;

    .line 4
    invoke-interface {p3}, Lf/i/a/a/l0;->w()Lf/i/a/a/u0;

    move-result-object p3

    const/4 v0, 0x0

    const/4 v3, 0x1

    if-ne p1, p3, :cond_1

    iget-object p3, p0, Lf/i/a/a/v0/a;->e:Lf/i/a/a/l0;

    invoke-interface {p3}, Lf/i/a/a/l0;->z()I

    move-result p3

    if-ne p2, p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    const-wide/16 v6, 0x0

    if-eqz v5, :cond_3

    .line 5
    invoke-virtual {v5}, Lf/i/a/a/h1/e0$a;->b()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz p3, :cond_2

    .line 6
    iget-object p3, p0, Lf/i/a/a/v0/a;->e:Lf/i/a/a/l0;

    .line 7
    invoke-interface {p3}, Lf/i/a/a/l0;->p()I

    move-result p3

    iget v4, v5, Lf/i/a/a/h1/e0$a;->b:I

    if-ne p3, v4, :cond_2

    iget-object p3, p0, Lf/i/a/a/v0/a;->e:Lf/i/a/a/l0;

    .line 8
    invoke-interface {p3}, Lf/i/a/a/l0;->s()I

    move-result p3

    iget v4, v5, Lf/i/a/a/h1/e0$a;->c:I

    if-ne p3, v4, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_6

    .line 9
    iget-object p3, p0, Lf/i/a/a/v0/a;->e:Lf/i/a/a/l0;

    invoke-interface {p3}, Lf/i/a/a/l0;->C()J

    move-result-wide v3

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_4

    .line 10
    iget-object p3, p0, Lf/i/a/a/v0/a;->e:Lf/i/a/a/l0;

    invoke-interface {p3}, Lf/i/a/a/l0;->i()J

    move-result-wide v3

    :goto_1
    move-wide v6, v3

    goto :goto_2

    .line 11
    :cond_4
    invoke-virtual {p1}, Lf/i/a/a/u0;->q()Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_2

    :cond_5
    iget-object p3, p0, Lf/i/a/a/v0/a;->c:Lf/i/a/a/u0$c;

    invoke-virtual {p1, p2, p3}, Lf/i/a/a/u0;->n(ILf/i/a/a/u0$c;)Lf/i/a/a/u0$c;

    move-result-object p3

    .line 12
    iget-wide v3, p3, Lf/i/a/a/u0$c;->h:J

    invoke-static {v3, v4}, Lf/i/a/a/q;->b(J)J

    move-result-wide v3

    goto :goto_1

    .line 13
    :cond_6
    :goto_2
    new-instance p3, Lf/i/a/a/v0/b$a;

    iget-object v0, p0, Lf/i/a/a/v0/a;->e:Lf/i/a/a/l0;

    .line 14
    invoke-interface {v0}, Lf/i/a/a/l0;->C()J

    move-result-wide v8

    iget-object v0, p0, Lf/i/a/a/v0/a;->e:Lf/i/a/a/l0;

    .line 15
    invoke-interface {v0}, Lf/i/a/a/l0;->j()J

    move-result-wide v10

    move-object v0, p3

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v11}, Lf/i/a/a/v0/b$a;-><init>(JLf/i/a/a/u0;ILf/i/a/a/h1/e0$a;JJJ)V

    return-object p3
.end method
