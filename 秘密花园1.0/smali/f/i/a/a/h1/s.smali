.class public abstract Lf/i/a/a/h1/s;
.super Lf/i/a/a/h1/o;
.source "CompositeMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/h1/s$a;,
        Lf/i/a/a/h1/s$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lf/i/a/a/h1/o;"
    }
.end annotation


# instance fields
.field public final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TT;",
            "Lf/i/a/a/h1/s$b;",
            ">;"
        }
    .end annotation
.end field

.field public g:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public h:Lf/i/a/a/l1/i0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf/i/a/a/h1/o;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lf/i/a/a/h1/s;->f:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/s;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/h1/s$b;

    .line 2
    iget-object v1, v1, Lf/i/a/a/h1/s$b;->a:Lf/i/a/a/h1/e0;

    invoke-interface {v1}, Lf/i/a/a/h1/e0;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public n()V
    .locals 4
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/s;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/h1/s$b;

    .line 2
    iget-object v2, v1, Lf/i/a/a/h1/s$b;->a:Lf/i/a/a/h1/e0;

    iget-object v3, v1, Lf/i/a/a/h1/s$b;->b:Lf/i/a/a/h1/e0$b;

    invoke-interface {v2, v3}, Lf/i/a/a/h1/e0;->i(Lf/i/a/a/h1/e0$b;)V

    .line 3
    iget-object v2, v1, Lf/i/a/a/h1/s$b;->a:Lf/i/a/a/h1/e0;

    iget-object v1, v1, Lf/i/a/a/h1/s$b;->c:Lf/i/a/a/h1/f0;

    invoke-interface {v2, v1}, Lf/i/a/a/h1/e0;->h(Lf/i/a/a/h1/f0;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lf/i/a/a/h1/s;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public o(Ljava/lang/Object;Lf/i/a/a/h1/e0$a;)Lf/i/a/a/h1/e0$a;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lf/i/a/a/h1/e0$a;",
            ")",
            "Lf/i/a/a/h1/e0$a;"
        }
    .end annotation

    return-object p2
.end method

.method public q(Ljava/lang/Object;J)J
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)J"
        }
    .end annotation

    return-wide p2
.end method

.method public s(Ljava/lang/Object;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    return p2
.end method

.method public synthetic t(Ljava/lang/Object;Lf/i/a/a/h1/e0;Lf/i/a/a/u0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lf/i/a/a/h1/s;->u(Ljava/lang/Object;Lf/i/a/a/h1/e0;Lf/i/a/a/u0;Ljava/lang/Object;)V

    return-void
.end method

.method public abstract u(Ljava/lang/Object;Lf/i/a/a/h1/e0;Lf/i/a/a/u0;Ljava/lang/Object;)V
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lf/i/a/a/h1/e0;",
            "Lf/i/a/a/u0;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method public final v(Ljava/lang/Object;Lf/i/a/a/h1/e0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lf/i/a/a/h1/e0;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/s;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lc/a/a/b/g/h;->m(Z)V

    .line 2
    new-instance v0, Lf/i/a/a/h1/a;

    invoke-direct {v0, p0, p1}, Lf/i/a/a/h1/a;-><init>(Lf/i/a/a/h1/s;Ljava/lang/Object;)V

    .line 3
    new-instance v1, Lf/i/a/a/h1/s$a;

    invoke-direct {v1, p0, p1}, Lf/i/a/a/h1/s$a;-><init>(Lf/i/a/a/h1/s;Ljava/lang/Object;)V

    .line 4
    iget-object v2, p0, Lf/i/a/a/h1/s;->f:Ljava/util/HashMap;

    new-instance v3, Lf/i/a/a/h1/s$b;

    invoke-direct {v3, p2, v0, v1}, Lf/i/a/a/h1/s$b;-><init>(Lf/i/a/a/h1/e0;Lf/i/a/a/h1/e0$b;Lf/i/a/a/h1/f0;)V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lf/i/a/a/h1/s;->g:Landroid/os/Handler;

    invoke-static {p1}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, p1, v1}, Lf/i/a/a/h1/e0;->g(Landroid/os/Handler;Lf/i/a/a/h1/f0;)V

    .line 6
    iget-object p1, p0, Lf/i/a/a/h1/s;->h:Lf/i/a/a/l1/i0;

    invoke-interface {p2, v0, p1}, Lf/i/a/a/h1/e0;->e(Lf/i/a/a/h1/e0$b;Lf/i/a/a/l1/i0;)V

    return-void
.end method
