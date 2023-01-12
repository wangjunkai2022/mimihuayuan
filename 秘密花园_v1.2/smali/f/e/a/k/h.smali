.class public Lf/e/a/k/h;
.super Ljava/lang/Object;
.source "RealmHelper.java"

# interfaces
.implements Lg/a/x$a;


# instance fields
.field public final synthetic a:Ljava/util/List;


# direct methods
.method public constructor <init>(Lf/e/a/k/g;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lf/e/a/k/h;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lg/a/x;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lf/e/a/k/h;->a:Ljava/util/List;

    const/4 v1, 0x0

    new-array v2, v1, [Lg/a/m;

    if-nez v0, :cond_0

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    .line 3
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/a/e0;

    .line 6
    invoke-virtual {p1, v5}, Lg/a/x;->J(Lg/a/e0;)V

    .line 7
    invoke-static {v2}, Lio/realm/internal/Util;->b([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    invoke-virtual {p1, v5, v1, v4, v6}, Lg/a/x;->K(Lg/a/e0;ZLjava/util/Map;Ljava/util/Set;)Lg/a/e0;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
