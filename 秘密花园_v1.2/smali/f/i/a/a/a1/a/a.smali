.class public Lf/i/a/a/a1/a/a;
.super Lf/i/a/a/l1/h;
.source "OkHttpDataSource.java"

# interfaces
.implements Lf/i/a/a/l1/a0;


# static fields
.field public static final s:[B


# instance fields
.field public final e:Li/f$a;

.field public final f:Lf/i/a/a/l1/a0$f;

.field public final g:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final h:Lf/i/a/a/m1/w;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i/a/a/m1/w<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Li/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final j:Lf/i/a/a/l1/a0$f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public k:Lf/i/a/a/l1/p;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public l:Li/h0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public m:Ljava/io/InputStream;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public n:Z

.field public o:J

.field public p:J

.field public q:J

.field public r:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.okhttp"

    .line 1
    invoke-static {v0}, Lf/i/a/a/a0;->a(Ljava/lang/String;)V

    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 2
    sput-object v0, Lf/i/a/a/a1/a/a;->s:[B

    return-void
.end method

.method public constructor <init>(Li/f$a;Ljava/lang/String;Lf/i/a/a/m1/w;Li/e;Lf/i/a/a/l1/a0$f;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lf/i/a/a/m1/w;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Li/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lf/i/a/a/l1/a0$f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/f$a;",
            "Ljava/lang/String;",
            "Lf/i/a/a/m1/w<",
            "Ljava/lang/String;",
            ">;",
            "Li/e;",
            "Lf/i/a/a/l1/a0$f;",
            ")V"
        }
    .end annotation

    const/4 p3, 0x1

    .line 1
    invoke-direct {p0, p3}, Lf/i/a/a/l1/h;-><init>(Z)V

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lf/i/a/a/a1/a/a;->e:Li/f$a;

    .line 3
    iput-object p2, p0, Lf/i/a/a/a1/a/a;->g:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lf/i/a/a/a1/a/a;->h:Lf/i/a/a/m1/w;

    .line 5
    iput-object p4, p0, Lf/i/a/a/a1/a/a;->i:Li/e;

    .line 6
    iput-object p5, p0, Lf/i/a/a/a1/a/a;->j:Lf/i/a/a/l1/a0$f;

    .line 7
    new-instance p1, Lf/i/a/a/l1/a0$f;

    invoke-direct {p1}, Lf/i/a/a/l1/a0$f;-><init>()V

    iput-object p1, p0, Lf/i/a/a/a1/a/a;->f:Lf/i/a/a/l1/a0$f;

    return-void

    .line 8
    :cond_0
    throw p3
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/a1/a/a;->l:Li/h0;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Li/h0;->g:Li/w;

    .line 3
    invoke-virtual {v0}, Li/w;->e()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public b(Lf/i/a/a/l1/p;)J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/l1/a0$c;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lf/i/a/a/a1/a/a;->k:Lf/i/a/a/l1/p;

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lf/i/a/a/a1/a/a;->r:J

    .line 3
    iput-wide v0, p0, Lf/i/a/a/a1/a/a;->q:J

    .line 4
    invoke-virtual {p0, p1}, Lf/i/a/a/l1/h;->g(Lf/i/a/a/l1/p;)V

    .line 5
    iget-wide v2, p1, Lf/i/a/a/l1/p;->e:J

    .line 6
    iget-wide v4, p1, Lf/i/a/a/l1/p;->f:J

    const/4 v6, 0x1

    .line 7
    invoke-virtual {p1, v6}, Lf/i/a/a/l1/p;->b(I)Z

    move-result v6

    .line 8
    iget-object v7, p1, Lf/i/a/a/l1/p;->a:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_15

    .line 9
    :try_start_0
    new-instance v9, Li/x$a;

    invoke-direct {v9}, Li/x$a;-><init>()V

    invoke-virtual {v9, v8, v7}, Li/x$a;->f(Li/x;Ljava/lang/String;)Li/x$a;

    invoke-virtual {v9}, Li/x$a;->b()Li/x;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v7, v8

    :goto_0
    if-eqz v7, :cond_14

    .line 10
    new-instance v9, Li/e0$a;

    invoke-direct {v9}, Li/e0$a;-><init>()V

    .line 11
    iput-object v7, v9, Li/e0$a;->a:Li/x;

    .line 12
    iget-object v7, p0, Lf/i/a/a/a1/a/a;->i:Li/e;

    const/4 v10, 0x0

    if-eqz v7, :cond_2

    .line 13
    invoke-virtual {v7}, Li/e;->toString()Ljava/lang/String;

    move-result-object v7

    .line 14
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-nez v11, :cond_0

    const/4 v11, 0x1

    goto :goto_1

    :cond_0
    const/4 v11, 0x0

    :goto_1
    const-string v12, "Cache-Control"

    if-eqz v11, :cond_1

    invoke-virtual {v9, v12}, Li/e0$a;->g(Ljava/lang/String;)Li/e0$a;

    goto :goto_2

    .line 15
    :cond_1
    invoke-virtual {v9, v12, v7}, Li/e0$a;->c(Ljava/lang/String;Ljava/lang/String;)Li/e0$a;

    .line 16
    :cond_2
    :goto_2
    iget-object v7, p0, Lf/i/a/a/a1/a/a;->j:Lf/i/a/a/l1/a0$f;

    if-eqz v7, :cond_3

    .line 17
    invoke-virtual {v7}, Lf/i/a/a/l1/a0$f;->a()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 18
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v9, v12, v11}, Li/e0$a;->c(Ljava/lang/String;Ljava/lang/String;)Li/e0$a;

    goto :goto_3

    .line 19
    :cond_3
    iget-object v7, p0, Lf/i/a/a/a1/a/a;->f:Lf/i/a/a/l1/a0$f;

    invoke-virtual {v7}, Lf/i/a/a/l1/a0$f;->a()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 20
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v9, v12, v11}, Li/e0$a;->c(Ljava/lang/String;Ljava/lang/String;)Li/e0$a;

    goto :goto_4

    :cond_4
    const-wide/16 v11, -0x1

    cmp-long v7, v2, v0

    if-nez v7, :cond_5

    cmp-long v7, v4, v11

    if-eqz v7, :cond_7

    .line 21
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "bytes="

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, "-"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    cmp-long v13, v4, v11

    if-eqz v13, :cond_6

    .line 22
    invoke-static {v7}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_6
    const-string v2, "Range"

    .line 23
    invoke-virtual {v9, v2, v7}, Li/e0$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/e0$a;

    .line 24
    :cond_7
    iget-object v2, p0, Lf/i/a/a/a1/a/a;->g:Ljava/lang/String;

    if-eqz v2, :cond_8

    const-string v3, "User-Agent"

    .line 25
    invoke-virtual {v9, v3, v2}, Li/e0$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/e0$a;

    :cond_8
    if-nez v6, :cond_9

    const-string v2, "Accept-Encoding"

    const-string v3, "identity"

    .line 26
    invoke-virtual {v9, v2, v3}, Li/e0$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/e0$a;

    .line 27
    :cond_9
    iget-object v2, p1, Lf/i/a/a/l1/p;->c:[B

    if-eqz v2, :cond_a

    .line 28
    invoke-static {v8, v2}, Li/g0;->d(Li/z;[B)Li/g0;

    move-result-object v8

    goto :goto_5

    .line 29
    :cond_a
    iget v2, p1, Lf/i/a/a/l1/p;->b:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b

    .line 30
    sget-object v2, Lf/i/a/a/m1/h0;->f:[B

    invoke-static {v8, v2}, Li/g0;->d(Li/z;[B)Li/g0;

    move-result-object v8

    .line 31
    :cond_b
    :goto_5
    iget v2, p1, Lf/i/a/a/l1/p;->b:I

    invoke-static {v2}, Lf/i/a/a/l1/p;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 32
    invoke-virtual {v9, v2, v8}, Li/e0$a;->e(Ljava/lang/String;Li/g0;)Li/e0$a;

    .line 33
    invoke-virtual {v9}, Li/e0$a;->b()Li/e0;

    move-result-object v2

    .line 34
    :try_start_1
    iget-object v3, p0, Lf/i/a/a/a1/a/a;->e:Li/f$a;

    invoke-interface {v3, v2}, Li/f$a;->a(Li/e0;)Li/f;

    move-result-object v2

    invoke-interface {v2}, Li/f;->T()Li/h0;

    move-result-object v2

    iput-object v2, p0, Lf/i/a/a/a1/a/a;->l:Li/h0;

    .line 35
    iget-object v3, v2, Li/h0;->h:Li/i0;

    .line 36
    invoke-static {v3}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-virtual {v3}, Li/i0;->d()Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, p0, Lf/i/a/a/a1/a/a;->m:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 38
    iget v4, v2, Li/h0;->e:I

    .line 39
    invoke-virtual {v2}, Li/h0;->g()Z

    move-result v5

    if-nez v5, :cond_d

    .line 40
    iget-object v0, v2, Li/h0;->g:Li/w;

    .line 41
    invoke-virtual {v0}, Li/w;->e()Ljava/util/Map;

    move-result-object v0

    .line 42
    invoke-virtual {p0}, Lf/i/a/a/a1/a/a;->i()V

    .line 43
    new-instance v1, Lf/i/a/a/l1/a0$e;

    .line 44
    iget-object v2, v2, Li/h0;->d:Ljava/lang/String;

    .line 45
    invoke-direct {v1, v4, v2, v0, p1}, Lf/i/a/a/l1/a0$e;-><init>(ILjava/lang/String;Ljava/util/Map;Lf/i/a/a/l1/p;)V

    const/16 p1, 0x1a0

    if-ne v4, p1, :cond_c

    .line 46
    new-instance p1, Lf/i/a/a/l1/n;

    invoke-direct {p1, v10}, Lf/i/a/a/l1/n;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 47
    :cond_c
    throw v1

    .line 48
    :cond_d
    invoke-virtual {v3}, Li/i0;->E()Li/z;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 49
    iget-object v2, v2, Li/z;->a:Ljava/lang/String;

    goto :goto_6

    :cond_e
    const-string v2, ""

    .line 50
    :goto_6
    iget-object v5, p0, Lf/i/a/a/a1/a/a;->h:Lf/i/a/a/m1/w;

    if-eqz v5, :cond_10

    invoke-interface {v5, v2}, Lf/i/a/a/m1/w;->a(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    goto :goto_7

    .line 51
    :cond_f
    invoke-virtual {p0}, Lf/i/a/a/a1/a/a;->i()V

    .line 52
    new-instance v0, Lf/i/a/a/l1/a0$d;

    invoke-direct {v0, v2, p1}, Lf/i/a/a/l1/a0$d;-><init>(Ljava/lang/String;Lf/i/a/a/l1/p;)V

    throw v0

    :cond_10
    :goto_7
    const/16 v2, 0xc8

    if-ne v4, v2, :cond_11

    .line 53
    iget-wide v4, p1, Lf/i/a/a/l1/p;->e:J

    cmp-long v2, v4, v0

    if-eqz v2, :cond_11

    move-wide v0, v4

    :cond_11
    iput-wide v0, p0, Lf/i/a/a/a1/a/a;->o:J

    .line 54
    iget-wide v0, p1, Lf/i/a/a/l1/p;->f:J

    cmp-long v2, v0, v11

    if-eqz v2, :cond_12

    .line 55
    iput-wide v0, p0, Lf/i/a/a/a1/a/a;->p:J

    goto :goto_8

    .line 56
    :cond_12
    invoke-virtual {v3}, Li/i0;->g()J

    move-result-wide v0

    cmp-long v2, v0, v11

    if-eqz v2, :cond_13

    .line 57
    iget-wide v2, p0, Lf/i/a/a/a1/a/a;->o:J

    sub-long v11, v0, v2

    :cond_13
    iput-wide v11, p0, Lf/i/a/a/a1/a/a;->p:J

    :goto_8
    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lf/i/a/a/a1/a/a;->n:Z

    .line 59
    invoke-virtual {p0, p1}, Lf/i/a/a/l1/h;->h(Lf/i/a/a/l1/p;)V

    .line 60
    iget-wide v0, p0, Lf/i/a/a/a1/a/a;->p:J

    return-wide v0

    :catch_1
    move-exception v0

    .line 61
    new-instance v1, Lf/i/a/a/l1/a0$c;

    const-string v2, "Unable to connect to "

    invoke-static {v2}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lf/i/a/a/l1/p;->a:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, p1, v3}, Lf/i/a/a/l1/a0$c;-><init>(Ljava/lang/String;Ljava/io/IOException;Lf/i/a/a/l1/p;I)V

    throw v1

    :cond_14
    const/4 v0, 0x1

    .line 62
    new-instance v1, Lf/i/a/a/l1/a0$c;

    const-string v2, "Malformed URL"

    invoke-direct {v1, v2, p1, v0}, Lf/i/a/a/l1/a0$c;-><init>(Ljava/lang/String;Lf/i/a/a/l1/p;I)V

    throw v1

    :cond_15
    const-string p1, "$this$toHttpUrlOrNull"

    .line 63
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v8
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/l1/a0$c;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lf/i/a/a/a1/a/a;->n:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lf/i/a/a/a1/a/a;->n:Z

    .line 3
    invoke-virtual {p0}, Lf/i/a/a/l1/h;->f()V

    .line 4
    invoke-virtual {p0}, Lf/i/a/a/a1/a/a;->i()V

    :cond_0
    return-void
.end method

.method public d()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/a1/a/a;->l:Li/h0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Li/h0;->b:Li/e0;

    .line 3
    iget-object v0, v0, Li/e0;->b:Li/x;

    .line 4
    iget-object v0, v0, Li/x;->j:Ljava/lang/String;

    .line 5
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/a1/a/a;->l:Li/h0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Li/h0;->h:Li/i0;

    .line 3
    invoke-static {v0}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Li/i0;

    invoke-virtual {v0}, Li/i0;->close()V

    .line 4
    iput-object v1, p0, Lf/i/a/a/a1/a/a;->l:Li/h0;

    .line 5
    :cond_0
    iput-object v1, p0, Lf/i/a/a/a1/a/a;->m:Ljava/io/InputStream;

    return-void
.end method

.method public final j()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lf/i/a/a/a1/a/a;->q:J

    iget-wide v2, p0, Lf/i/a/a/a1/a/a;->o:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 2
    :cond_0
    :goto_0
    iget-wide v0, p0, Lf/i/a/a/a1/a/a;->q:J

    iget-wide v2, p0, Lf/i/a/a/a1/a/a;->o:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    sub-long/2addr v2, v0

    .line 3
    sget-object v0, Lf/i/a/a/a1/a/a;->s:[B

    array-length v0, v0

    int-to-long v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 4
    iget-object v0, p0, Lf/i/a/a/a1/a/a;->m:Ljava/io/InputStream;

    invoke-static {v0}, Lf/i/a/a/m1/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/io/InputStream;

    sget-object v2, Lf/i/a/a/a1/a/a;->s:[B

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 6
    iget-wide v1, p0, Lf/i/a/a/a1/a/a;->q:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lf/i/a/a/a1/a/a;->q:J

    .line 7
    invoke-virtual {p0, v0}, Lf/i/a/a/l1/h;->e(I)V

    goto :goto_0

    .line 8
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 9
    :cond_2
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    :cond_3
    return-void
.end method

.method public read([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/l1/a0$c;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lf/i/a/a/a1/a/a;->j()V

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 2
    :cond_0
    iget-wide v0, p0, Lf/i/a/a/a1/a/a;->p:J

    const-wide/16 v2, -0x1

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-eqz v5, :cond_2

    .line 3
    iget-wide v5, p0, Lf/i/a/a/a1/a/a;->r:J

    sub-long/2addr v0, v5

    const-wide/16 v5, 0x0

    cmp-long v7, v0, v5

    if-nez v7, :cond_1

    :goto_0
    const/4 p1, -0x1

    goto :goto_1

    :cond_1
    int-to-long v5, p3

    .line 4
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 5
    :cond_2
    iget-object v0, p0, Lf/i/a/a/a1/a/a;->m:Ljava/io/InputStream;

    invoke-static {v0}, Lf/i/a/a/m1/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ne p1, v4, :cond_4

    .line 6
    iget-wide p1, p0, Lf/i/a/a/a1/a/a;->p:J

    cmp-long p3, p1, v2

    if-nez p3, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 8
    :cond_4
    iget-wide p2, p0, Lf/i/a/a/a1/a/a;->r:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lf/i/a/a/a1/a/a;->r:J

    .line 9
    invoke-virtual {p0, p1}, Lf/i/a/a/l1/h;->e(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return p1

    :catch_0
    move-exception p1

    .line 10
    new-instance p2, Lf/i/a/a/l1/a0$c;

    iget-object p3, p0, Lf/i/a/a/a1/a/a;->k:Lf/i/a/a/l1/p;

    .line 11
    invoke-static {p3}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Lf/i/a/a/l1/p;

    const/4 v0, 0x2

    invoke-direct {p2, p1, p3, v0}, Lf/i/a/a/l1/a0$c;-><init>(Ljava/io/IOException;Lf/i/a/a/l1/p;I)V

    throw p2
.end method
