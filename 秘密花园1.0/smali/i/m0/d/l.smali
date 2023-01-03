.class public final Li/m0/d/l;
.super Ljava/lang/Object;
.source "RouteSelector.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/m0/d/l$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li/k0;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Li/a;

.field public final f:Li/m0/d/j;

.field public final g:Li/f;

.field public final h:Li/t;


# direct methods
.method public constructor <init>(Li/a;Li/m0/d/j;Li/f;Li/t;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_7

    const-string v1, "call"

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li/m0/d/l;->e:Li/a;

    iput-object p2, p0, Li/m0/d/l;->f:Li/m0/d/j;

    iput-object p3, p0, Li/m0/d/l;->g:Li/f;

    iput-object p4, p0, Li/m0/d/l;->h:Li/t;

    .line 2
    sget-object p1, Lh/k/i;->a:Lh/k/i;

    .line 3
    iput-object p1, p0, Li/m0/d/l;->a:Ljava/util/List;

    .line 4
    iput-object p1, p0, Li/m0/d/l;->c:Ljava/util/List;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Li/m0/d/l;->d:Ljava/util/List;

    .line 6
    iget-object p1, p0, Li/m0/d/l;->e:Li/a;

    .line 7
    iget-object p2, p1, Li/a;->a:Li/x;

    .line 8
    iget-object p3, p1, Li/a;->j:Ljava/net/Proxy;

    .line 9
    iget-object p4, p0, Li/m0/d/l;->h:Li/t;

    iget-object v2, p0, Li/m0/d/l;->g:Li/f;

    if-eqz p4, :cond_6

    if-eqz v2, :cond_5

    if-eqz p2, :cond_4

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    .line 10
    invoke-static {p3}, Lc/a/a/b/g/h;->s0(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p1, Li/a;->k:Ljava/net/ProxySelector;

    .line 12
    invoke-virtual {p2}, Li/x;->m()Ljava/net/URI;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    .line 13
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    xor-int/2addr p3, p2

    if-eqz p3, :cond_1

    .line 14
    invoke-static {p1}, Li/m0/b;->D(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-array p1, p2, [Ljava/net/Proxy;

    .line 15
    sget-object p2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    aput-object p2, p1, p4

    invoke-static {p1}, Li/m0/b;->o([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 16
    :goto_0
    iput-object p1, p0, Li/m0/d/l;->a:Ljava/util/List;

    .line 17
    iput p4, p0, Li/m0/d/l;->b:I

    .line 18
    iget-object p1, p0, Li/m0/d/l;->h:Li/t;

    iget-object p2, p0, Li/m0/d/l;->g:Li/f;

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    return-void

    .line 19
    :cond_2
    invoke-static {v1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_3
    throw v0

    :cond_4
    const-string p1, "url"

    .line 21
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-static {v1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_6
    throw v0

    :cond_7
    const-string p1, "routeDatabase"

    .line 23
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Li/m0/d/l;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Li/m0/d/l;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final b()Z
    .locals 2

    .line 1
    iget v0, p0, Li/m0/d/l;->b:I

    iget-object v1, p0, Li/m0/d/l;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
