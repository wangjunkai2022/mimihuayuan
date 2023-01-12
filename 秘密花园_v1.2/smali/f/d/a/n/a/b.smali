.class public Lf/d/a/n/a/b;
.super Ljava/lang/Object;
.source "OkHttpStreamFetcher.java"

# interfaces
.implements Lf/d/a/o/m/d;
.implements Li/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/d/a/o/m/d<",
        "Ljava/io/InputStream;",
        ">;",
        "Li/g;"
    }
.end annotation


# instance fields
.field public final a:Li/f$a;

.field public final b:Lf/d/a/o/o/g;

.field public c:Ljava/io/InputStream;

.field public d:Li/i0;

.field public e:Lf/d/a/o/m/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/o/m/d$a<",
            "-",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field public volatile f:Li/f;


# direct methods
.method public constructor <init>(Li/f$a;Lf/d/a/o/o/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/d/a/n/a/b;->a:Li/f$a;

    .line 3
    iput-object p2, p0, Lf/d/a/n/a/b;->b:Lf/d/a/o/o/g;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public b()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lf/d/a/n/a/b;->c:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/d/a/n/a/b;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 3
    :cond_0
    :goto_0
    iget-object v0, p0, Lf/d/a/n/a/b;->d:Li/i0;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Li/i0;->close()V

    :cond_1
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lf/d/a/n/a/b;->e:Lf/d/a/o/m/d$a;

    return-void
.end method

.method public c(Li/f;Li/h0;)V
    .locals 2
    .param p1    # Li/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Li/h0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p2, Li/h0;->h:Li/i0;

    .line 2
    iput-object p1, p0, Lf/d/a/n/a/b;->d:Li/i0;

    .line 3
    invoke-virtual {p2}, Li/h0;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lf/d/a/n/a/b;->d:Li/i0;

    const-string p2, "Argument must not be null"

    .line 5
    invoke-static {p1, p2}, Lc/a/a/b/g/h;->s(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p1}, Li/i0;->g()J

    move-result-wide p1

    .line 7
    iget-object v0, p0, Lf/d/a/n/a/b;->d:Li/i0;

    invoke-virtual {v0}, Li/i0;->d()Ljava/io/InputStream;

    move-result-object v0

    .line 8
    new-instance v1, Lf/d/a/u/b;

    invoke-direct {v1, v0, p1, p2}, Lf/d/a/u/b;-><init>(Ljava/io/InputStream;J)V

    .line 9
    iput-object v1, p0, Lf/d/a/n/a/b;->c:Ljava/io/InputStream;

    .line 10
    iget-object p1, p0, Lf/d/a/n/a/b;->e:Lf/d/a/o/m/d$a;

    invoke-interface {p1, v1}, Lf/d/a/o/m/d$a;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lf/d/a/n/a/b;->e:Lf/d/a/o/m/d$a;

    new-instance v0, Lf/d/a/o/e;

    .line 12
    iget-object v1, p2, Li/h0;->d:Ljava/lang/String;

    .line 13
    iget p2, p2, Li/h0;->e:I

    .line 14
    invoke-direct {v0, v1, p2}, Lf/d/a/o/e;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v0}, Lf/d/a/o/m/d$a;->c(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/d/a/n/a/b;->f:Li/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Li/f;->cancel()V

    :cond_0
    return-void
.end method

.method public d(Li/f;Ljava/io/IOException;)V
    .locals 1
    .param p1    # Li/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/IOException;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p1, "OkHttpFetcher"

    const/4 v0, 0x3

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 2
    iget-object p1, p0, Lf/d/a/n/a/b;->e:Lf/d/a/o/m/d$a;

    invoke-interface {p1, p2}, Lf/d/a/o/m/d$a;->c(Ljava/lang/Exception;)V

    return-void
.end method

.method public e()Lf/d/a/o/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lf/d/a/o/a;->b:Lf/d/a/o/a;

    return-object v0
.end method

.method public f(Lf/d/a/f;Lf/d/a/o/m/d$a;)V
    .locals 3
    .param p1    # Lf/d/a/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lf/d/a/o/m/d$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/f;",
            "Lf/d/a/o/m/d$a<",
            "-",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance p1, Li/e0$a;

    invoke-direct {p1}, Li/e0$a;-><init>()V

    iget-object v0, p0, Lf/d/a/n/a/b;->b:Lf/d/a/o/o/g;

    .line 2
    invoke-virtual {v0}, Lf/d/a/o/o/g;->e()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1, v0}, Li/e0$a;->i(Ljava/lang/String;)Li/e0$a;

    .line 4
    iget-object v0, p0, Lf/d/a/n/a/b;->b:Lf/d/a/o/o/g;

    invoke-virtual {v0}, Lf/d/a/o/o/g;->d()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Li/e0$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/e0$a;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Li/e0$a;->b()Li/e0;

    move-result-object p1

    .line 8
    iput-object p2, p0, Lf/d/a/n/a/b;->e:Lf/d/a/o/m/d$a;

    .line 9
    iget-object p2, p0, Lf/d/a/n/a/b;->a:Li/f$a;

    invoke-interface {p2, p1}, Li/f$a;->a(Li/e0;)Li/f;

    move-result-object p1

    iput-object p1, p0, Lf/d/a/n/a/b;->f:Li/f;

    .line 10
    iget-object p1, p0, Lf/d/a/n/a/b;->f:Li/f;

    invoke-interface {p1, p0}, Li/f;->W(Li/g;)V

    return-void
.end method
