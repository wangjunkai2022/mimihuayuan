.class public Lf/d/a/o/n/c0/h;
.super Lf/d/a/u/f;
.source "LruResourceCache.java"

# interfaces
.implements Lf/d/a/o/n/c0/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/d/a/u/f<",
        "Lf/d/a/o/f;",
        "Lf/d/a/o/n/w<",
        "*>;>;",
        "Lf/d/a/o/n/c0/i;"
    }
.end annotation


# instance fields
.field public d:Lf/d/a/o/n/c0/i$a;


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lf/d/a/u/f;-><init>(J)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lf/d/a/o/n/w;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Lf/d/a/o/n/w;->getSize()I

    move-result p1

    :goto_0
    return p1
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lf/d/a/o/f;

    check-cast p2, Lf/d/a/o/n/w;

    .line 2
    iget-object p1, p0, Lf/d/a/o/n/c0/h;->d:Lf/d/a/o/n/c0/i$a;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 3
    check-cast p1, Lf/d/a/o/n/l;

    .line 4
    iget-object p1, p1, Lf/d/a/o/n/l;->e:Lf/d/a/o/n/z;

    invoke-virtual {p1, p2}, Lf/d/a/o/n/z;->a(Lf/d/a/o/n/w;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic f(Lf/d/a/o/f;Lf/d/a/o/n/w;)Lf/d/a/o/n/w;
    .locals 0
    .param p1    # Lf/d/a/o/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lf/d/a/o/n/w;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lf/d/a/u/f;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/d/a/o/n/w;

    return-object p1
.end method
