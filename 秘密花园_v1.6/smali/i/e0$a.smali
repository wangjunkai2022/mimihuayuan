.class public Li/e0$a;
.super Ljava/lang/Object;
.source "Request.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Li/x;

.field public b:Ljava/lang/String;

.field public c:Li/w$a;

.field public d:Li/g0;

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Li/e0$a;->e:Ljava/util/Map;

    const-string v0, "GET"

    .line 3
    iput-object v0, p0, Li/e0$a;->b:Ljava/lang/String;

    .line 4
    new-instance v0, Li/w$a;

    invoke-direct {v0}, Li/w$a;-><init>()V

    iput-object v0, p0, Li/e0$a;->c:Li/w$a;

    return-void
.end method

.method public constructor <init>(Li/e0;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Li/e0$a;->e:Ljava/util/Map;

    .line 7
    iget-object v0, p1, Li/e0;->b:Li/x;

    .line 8
    iput-object v0, p0, Li/e0$a;->a:Li/x;

    .line 9
    iget-object v0, p1, Li/e0;->c:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Li/e0$a;->b:Ljava/lang/String;

    .line 11
    iget-object v0, p1, Li/e0;->e:Li/g0;

    .line 12
    iput-object v0, p0, Li/e0$a;->d:Li/g0;

    .line 13
    iget-object v0, p1, Li/e0;->f:Ljava/util/Map;

    .line 14
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p1, Li/e0;->f:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 17
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    move-object v0, v1

    .line 18
    :goto_0
    iput-object v0, p0, Li/e0$a;->e:Ljava/util/Map;

    .line 19
    iget-object p1, p1, Li/e0;->d:Li/w;

    .line 20
    invoke-virtual {p1}, Li/w;->d()Li/w$a;

    move-result-object p1

    iput-object p1, p0, Li/e0$a;->c:Li/w$a;

    return-void

    :cond_1
    const-string p1, "$this$toMutableMap"

    .line 21
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Li/e0$a;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Li/e0$a;->c:Li/w$a;

    invoke-virtual {v0, p1, p2}, Li/w$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/w$a;

    return-object p0

    :cond_0
    const-string p1, "value"

    .line 2
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "name"

    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Li/e0;
    .locals 7

    .line 1
    iget-object v1, p0, Li/e0$a;->a:Li/x;

    if-eqz v1, :cond_0

    .line 2
    iget-object v2, p0, Li/e0$a;->b:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Li/e0$a;->c:Li/w$a;

    invoke-virtual {v0}, Li/w$a;->d()Li/w;

    move-result-object v3

    .line 4
    iget-object v4, p0, Li/e0$a;->d:Li/g0;

    .line 5
    iget-object v0, p0, Li/e0$a;->e:Ljava/util/Map;

    invoke-static {v0}, Li/m0/b;->E(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    .line 6
    new-instance v6, Li/e0;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Li/e0;-><init>(Li/x;Ljava/lang/String;Li/w;Li/g0;Ljava/util/Map;)V

    return-object v6

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Li/e0$a;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Li/e0$a;->c:Li/w$a;

    invoke-virtual {v0, p1, p2}, Li/w$a;->g(Ljava/lang/String;Ljava/lang/String;)Li/w$a;

    return-object p0

    :cond_0
    const-string p1, "value"

    .line 2
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "name"

    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0
.end method

.method public d(Li/w;)Li/e0$a;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Li/w;->d()Li/w$a;

    move-result-object p1

    iput-object p1, p0, Li/e0$a;->c:Li/w$a;

    return-object p0

    :cond_0
    const-string p1, "headers"

    .line 2
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public e(Ljava/lang/String;Li/g0;)Li/e0$a;
    .locals 3

    if-eqz p1, :cond_7

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_6

    const-string v0, "method "

    if-nez p2, :cond_4

    const-string v2, "POST"

    .line 2
    invoke-static {p1, v2}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "PUT"

    invoke-static {p1, v2}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "PATCH"

    invoke-static {p1, v2}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "PROPPATCH"

    invoke-static {p1, v2}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "REPORT"

    invoke-static {p1, v2}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const-string p2, " must have a request body."

    .line 3
    invoke-static {v0, p1, p2}, Lf/b/a/a/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 5
    :cond_4
    invoke-static {p1}, Li/m0/e/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6
    :goto_1
    iput-object p1, p0, Li/e0$a;->b:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Li/e0$a;->d:Li/g0;

    return-object p0

    :cond_5
    const-string p2, " must not have a request body."

    .line 8
    invoke-static {v0, p1, p2}, Lf/b/a/a/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 10
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "method.isEmpty() == true"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    const-string p1, "method"

    .line 11
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public f(Li/g0;)Li/e0$a;
    .locals 1

    const-string v0, "POST"

    .line 1
    invoke-virtual {p0, v0, p1}, Li/e0$a;->e(Ljava/lang/String;Li/g0;)Li/e0$a;

    return-object p0
.end method

.method public g(Ljava/lang/String;)Li/e0$a;
    .locals 1

    .line 1
    iget-object v0, p0, Li/e0$a;->c:Li/w$a;

    invoke-virtual {v0, p1}, Li/w$a;->f(Ljava/lang/String;)Li/w$a;

    return-object p0
.end method

.method public h(Ljava/lang/Class;Ljava/lang/Object;)Li/e0$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "-TT;>;TT;)",
            "Li/e0$a;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Li/e0$a;->e:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Li/e0$a;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Li/e0$a;->e:Ljava/util/Map;

    .line 4
    :cond_1
    iget-object v1, p0, Li/e0$a;->e:Ljava/util/Map;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object p0

    :cond_2
    invoke-static {}, Lh/o/c/g;->e()V

    throw v0

    :cond_3
    const-string p1, "type"

    .line 5
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0
.end method

.method public i(Ljava/lang/String;)Li/e0$a;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const-string v1, "ws:"

    const/4 v2, 0x1

    .line 1
    invoke-static {p1, v1, v2}, Lh/s/d;->u(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "(this as java.lang.String).substring(startIndex)"

    if-eqz v1, :cond_0

    const-string v1, "http:"

    .line 2
    invoke-static {v1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v1, "wss:"

    .line 3
    invoke-static {p1, v1, v2}, Lh/s/d;->u(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "https:"

    .line 4
    invoke-static {v1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 5
    new-instance v1, Li/x$a;

    invoke-direct {v1}, Li/x$a;-><init>()V

    invoke-virtual {v1, v0, p1}, Li/x$a;->f(Li/x;Ljava/lang/String;)Li/x$a;

    invoke-virtual {v1}, Li/x$a;->b()Li/x;

    move-result-object p1

    .line 6
    iput-object p1, p0, Li/e0$a;->a:Li/x;

    return-object p0

    :cond_2
    const-string p1, "$this$toHttpUrl"

    .line 7
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string p1, "url"

    .line 8
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0
.end method

.method public j(Li/x;)Li/e0$a;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Li/e0$a;->a:Li/x;

    return-object p0

    :cond_0
    const-string p1, "url"

    .line 2
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
