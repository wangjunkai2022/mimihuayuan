.class public final Lf/i/a/a/h1/b0;
.super Lf/i/a/a/h1/s;
.source "LoopingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/h1/b0$a;,
        Lf/i/a/a/h1/b0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/i/a/a/h1/s<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final i:Lf/i/a/a/h1/e0;

.field public final j:I

.field public final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lf/i/a/a/h1/e0$a;",
            "Lf/i/a/a/h1/e0$a;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lf/i/a/a/h1/d0;",
            "Lf/i/a/a/h1/e0$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf/i/a/a/h1/e0;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf/i/a/a/h1/s;-><init>()V

    if-lez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-static {v0}, Lc/a/a/b/g/h;->m(Z)V

    .line 3
    iput-object p1, p0, Lf/i/a/a/h1/b0;->i:Lf/i/a/a/h1/e0;

    .line 4
    iput p2, p0, Lf/i/a/a/h1/b0;->j:I

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lf/i/a/a/h1/b0;->k:Ljava/util/Map;

    .line 6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lf/i/a/a/h1/b0;->l:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/b0;->i:Lf/i/a/a/h1/e0;

    invoke-interface {v0}, Lf/i/a/a/h1/e0;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public c(Lf/i/a/a/h1/e0$a;Lf/i/a/a/l1/e;J)Lf/i/a/a/h1/d0;
    .locals 2

    .line 1
    iget v0, p0, Lf/i/a/a/h1/b0;->j:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lf/i/a/a/h1/b0;->i:Lf/i/a/a/h1/e0;

    invoke-interface {v0, p1, p2, p3, p4}, Lf/i/a/a/h1/e0;->c(Lf/i/a/a/h1/e0$a;Lf/i/a/a/l1/e;J)Lf/i/a/a/h1/d0;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p1, Lf/i/a/a/h1/e0$a;->a:Ljava/lang/Object;

    .line 4
    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 5
    invoke-virtual {p1, v0}, Lf/i/a/a/h1/e0$a;->a(Ljava/lang/Object;)Lf/i/a/a/h1/e0$a;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lf/i/a/a/h1/b0;->k:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Lf/i/a/a/h1/b0;->i:Lf/i/a/a/h1/e0;

    .line 8
    invoke-interface {p1, v0, p2, p3, p4}, Lf/i/a/a/h1/e0;->c(Lf/i/a/a/h1/e0$a;Lf/i/a/a/l1/e;J)Lf/i/a/a/h1/d0;

    move-result-object p1

    .line 9
    iget-object p2, p0, Lf/i/a/a/h1/b0;->l:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public d(Lf/i/a/a/h1/d0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/b0;->i:Lf/i/a/a/h1/e0;

    invoke-interface {v0, p1}, Lf/i/a/a/h1/e0;->d(Lf/i/a/a/h1/d0;)V

    .line 2
    iget-object v0, p0, Lf/i/a/a/h1/b0;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/i/a/a/h1/e0$a;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lf/i/a/a/h1/b0;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public l(Lf/i/a/a/l1/i0;)V
    .locals 1
    .param p1    # Lf/i/a/a/l1/i0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lf/i/a/a/h1/s;->h:Lf/i/a/a/l1/i0;

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lf/i/a/a/h1/s;->g:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 3
    iget-object v0, p0, Lf/i/a/a/h1/b0;->i:Lf/i/a/a/h1/e0;

    invoke-virtual {p0, p1, v0}, Lf/i/a/a/h1/s;->v(Ljava/lang/Object;Lf/i/a/a/h1/e0;)V

    return-void
.end method

.method public o(Ljava/lang/Object;Lf/i/a/a/h1/e0$a;)Lf/i/a/a/h1/e0$a;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget p1, p0, Lf/i/a/a/h1/b0;->j:I

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lf/i/a/a/h1/b0;->k:Ljava/util/Map;

    .line 3
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lf/i/a/a/h1/e0$a;

    :cond_0
    return-object p2
.end method

.method public u(Ljava/lang/Object;Lf/i/a/a/h1/e0;Lf/i/a/a/u0;Ljava/lang/Object;)V
    .locals 0
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget p1, p0, Lf/i/a/a/h1/b0;->j:I

    const p2, 0x7fffffff

    if-eq p1, p2, :cond_0

    new-instance p2, Lf/i/a/a/h1/b0$b;

    invoke-direct {p2, p3, p1}, Lf/i/a/a/h1/b0$b;-><init>(Lf/i/a/a/u0;I)V

    goto :goto_0

    :cond_0
    new-instance p2, Lf/i/a/a/h1/b0$a;

    invoke-direct {p2, p3}, Lf/i/a/a/h1/b0$a;-><init>(Lf/i/a/a/u0;)V

    .line 3
    :goto_0
    invoke-virtual {p0, p2, p4}, Lf/i/a/a/h1/o;->m(Lf/i/a/a/u0;Ljava/lang/Object;)V

    return-void
.end method
