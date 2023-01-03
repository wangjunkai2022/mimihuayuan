.class public Lf/e/a/j/n/d/a;
.super Ljava/lang/Object;
.source "JumpUtils.java"


# static fields
.field public static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lf/e/a/j/n/c/a;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Lf/e/a/j/n/d/b;

.field public static c:I

.field public static d:I

.field public static e:I

.field public static f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lf/e/a/j/n/d/a;->a:Ljava/util/Map;

    const/4 v0, 0x0

    .line 2
    sput v0, Lf/e/a/j/n/d/a;->c:I

    const/4 v0, 0x1

    .line 3
    sput v0, Lf/e/a/j/n/d/a;->d:I

    const/4 v0, 0x2

    .line 4
    sput v0, Lf/e/a/j/n/d/a;->e:I

    const/4 v0, 0x3

    .line 5
    sput v0, Lf/e/a/j/n/d/a;->f:I

    return-void
.end method

.method public static a(Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;)I
    .locals 4

    .line 1
    invoke-interface {p0}, Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lf/e/a/k/f;->a()V

    const-string v1, "GAcQSwYcTxwAD1kOFAsR"

    .line 3
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "cCc3"

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    sget p0, Lf/e/a/j/n/d/a;->e:I

    return p0

    :cond_0
    const-string v1, "GQ9QEQ=="

    .line 5
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    sget p0, Lf/e/a/j/n/d/a;->f:I

    return p0

    :cond_1
    const-string v1, "GA8MEkQRS1wEFVE="

    .line 7
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;->getMethod()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 8
    sget p0, Lf/e/a/j/n/d/a;->d:I

    return p0

    .line 9
    :cond_2
    sget p0, Lf/e/a/j/n/d/a;->c:I

    return p0
.end method

.method public static b(Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;)V
    .locals 5

    .line 1
    new-instance v0, Lf/e/a/j/n/c/a;

    invoke-direct {v0}, Lf/e/a/j/n/c/a;-><init>()V

    .line 2
    invoke-interface {p0}, Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "Wg0VLQ8="

    .line 3
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    iput-object v2, v0, Lf/e/a/j/n/c/a;->c:Ljava/lang/String;

    .line 5
    invoke-interface {p0}, Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object p0

    .line 6
    iput-object p0, v0, Lf/e/a/j/n/c/a;->b:Ljava/util/Map;

    .line 7
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    .line 8
    iput-object p0, v0, Lf/e/a/j/n/c/a;->a:Ljava/lang/String;

    .line 9
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 10
    sget-object p0, Lf/e/a/j/n/d/a;->a:Ljava/util/Map;

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object p0, Lf/e/a/j/n/d/a;->b:Lf/e/a/j/n/d/b;

    if-eqz p0, :cond_2

    .line 12
    check-cast p0, Lcom/comeback/data/ui/hg/HGMovieDetailActivity$a;

    .line 13
    iget-object v0, p0, Lcom/comeback/data/ui/hg/HGMovieDetailActivity$a;->a:Lcom/comeback/data/ui/hg/HGMovieDetailActivity;

    .line 14
    iget-object v0, v0, Lcom/comeback/data/ui/hg/HGMovieDetailActivity;->d:Lf/e/a/j/n/c/a;

    .line 15
    iget-object v0, v0, Lf/e/a/j/n/c/a;->c:Ljava/lang/String;

    .line 16
    sget-object v1, Lf/e/a/j/n/d/a;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/e/a/j/n/c/a;

    if-eqz v0, :cond_2

    .line 17
    iget-object p0, p0, Lcom/comeback/data/ui/hg/HGMovieDetailActivity$a;->a:Lcom/comeback/data/ui/hg/HGMovieDetailActivity;

    if-eqz p0, :cond_1

    .line 18
    new-instance v1, Li/e0$a;

    invoke-direct {v1}, Li/e0$a;-><init>()V

    .line 19
    iget-object v2, v0, Lf/e/a/j/n/c/a;->a:Ljava/lang/String;

    .line 20
    invoke-virtual {v1, v2}, Li/e0$a;->i(Ljava/lang/String;)Li/e0$a;

    .line 21
    iget-object v0, v0, Lf/e/a/j/n/c/a;->b:Ljava/util/Map;

    .line 22
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 23
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Li/e0$a;->c(Ljava/lang/String;Ljava/lang/String;)Li/e0$a;

    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/hg/HGMovieDetailActivity;->e:Li/b0;

    invoke-virtual {v1}, Li/e0$a;->b()Li/e0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/b0;->a(Li/e0;)Li/f;

    move-result-object v0

    new-instance v1, Lf/e/a/j/n/a;

    invoke-direct {v1, p0}, Lf/e/a/j/n/a;-><init>(Lcom/comeback/data/ui/hg/HGMovieDetailActivity;)V

    check-cast v0, Li/d0;

    invoke-virtual {v0, v1}, Li/d0;->W(Li/g;)V

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    .line 25
    throw p0

    :cond_2
    :goto_1
    return-void
.end method

.method public static c(Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;)Lf/e/a/j/n/c/a;
    .locals 3

    .line 1
    new-instance v0, Lf/e/a/j/n/c/a;

    invoke-direct {v0}, Lf/e/a/j/n/c/a;-><init>()V

    .line 2
    invoke-interface {p0}, Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "Wg0VLQ8="

    .line 3
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    iput-object v2, v0, Lf/e/a/j/n/c/a;->c:Ljava/lang/String;

    .line 5
    invoke-interface {p0}, Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object p0

    .line 6
    iput-object p0, v0, Lf/e/a/j/n/c/a;->b:Ljava/util/Map;

    .line 7
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    .line 8
    iput-object p0, v0, Lf/e/a/j/n/c/a;->a:Ljava/lang/String;

    return-object v0
.end method
