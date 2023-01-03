.class public final Lf/i/a/a/l1/s;
.super Ljava/lang/Object;
.source "DefaultDataSource.java"

# interfaces
.implements Lf/i/a/a/l1/m;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/i/a/a/l1/i0;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lf/i/a/a/l1/m;

.field public d:Lf/i/a/a/l1/m;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public e:Lf/i/a/a/l1/m;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public f:Lf/i/a/a/l1/m;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public g:Lf/i/a/a/l1/m;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public h:Lf/i/a/a/l1/m;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public i:Lf/i/a/a/l1/m;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public j:Lf/i/a/a/l1/m;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public k:Lf/i/a/a/l1/m;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lf/i/a/a/l1/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lf/i/a/a/l1/s;->a:Landroid/content/Context;

    if-eqz p2, :cond_0

    .line 3
    iput-object p2, p0, Lf/i/a/a/l1/s;->c:Lf/i/a/a/l1/m;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lf/i/a/a/l1/s;->b:Ljava/util/List;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1
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
    iget-object v0, p0, Lf/i/a/a/l1/s;->k:Lf/i/a/a/l1/m;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lf/i/a/a/l1/m;->a()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public b(Lf/i/a/a/l1/p;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/l1/s;->k:Lf/i/a/a/l1/m;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lc/a/a/b/g/h;->v(Z)V

    .line 2
    iget-object v0, p1, Lf/i/a/a/l1/p;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v2, p1, Lf/i/a/a/l1/p;->a:Landroid/net/Uri;

    invoke-static {v2}, Lf/i/a/a/m1/h0;->V(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4
    iget-object v0, p1, Lf/i/a/a/l1/p;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "/android_asset/"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lf/i/a/a/l1/s;->e:Lf/i/a/a/l1/m;

    if-nez v0, :cond_1

    .line 7
    new-instance v0, Lf/i/a/a/l1/f;

    iget-object v1, p0, Lf/i/a/a/l1/s;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lf/i/a/a/l1/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lf/i/a/a/l1/s;->e:Lf/i/a/a/l1/m;

    .line 8
    invoke-virtual {p0, v0}, Lf/i/a/a/l1/s;->e(Lf/i/a/a/l1/m;)V

    .line 9
    :cond_1
    iget-object v0, p0, Lf/i/a/a/l1/s;->e:Lf/i/a/a/l1/m;

    .line 10
    iput-object v0, p0, Lf/i/a/a/l1/s;->k:Lf/i/a/a/l1/m;

    goto/16 :goto_2

    .line 11
    :cond_2
    iget-object v0, p0, Lf/i/a/a/l1/s;->d:Lf/i/a/a/l1/m;

    if-nez v0, :cond_3

    .line 12
    new-instance v0, Lf/i/a/a/l1/y;

    invoke-direct {v0}, Lf/i/a/a/l1/y;-><init>()V

    iput-object v0, p0, Lf/i/a/a/l1/s;->d:Lf/i/a/a/l1/m;

    .line 13
    invoke-virtual {p0, v0}, Lf/i/a/a/l1/s;->e(Lf/i/a/a/l1/m;)V

    .line 14
    :cond_3
    iget-object v0, p0, Lf/i/a/a/l1/s;->d:Lf/i/a/a/l1/m;

    .line 15
    iput-object v0, p0, Lf/i/a/a/l1/s;->k:Lf/i/a/a/l1/m;

    goto/16 :goto_2

    :cond_4
    const-string v2, "asset"

    .line 16
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 17
    iget-object v0, p0, Lf/i/a/a/l1/s;->e:Lf/i/a/a/l1/m;

    if-nez v0, :cond_5

    .line 18
    new-instance v0, Lf/i/a/a/l1/f;

    iget-object v1, p0, Lf/i/a/a/l1/s;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lf/i/a/a/l1/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lf/i/a/a/l1/s;->e:Lf/i/a/a/l1/m;

    .line 19
    invoke-virtual {p0, v0}, Lf/i/a/a/l1/s;->e(Lf/i/a/a/l1/m;)V

    .line 20
    :cond_5
    iget-object v0, p0, Lf/i/a/a/l1/s;->e:Lf/i/a/a/l1/m;

    .line 21
    iput-object v0, p0, Lf/i/a/a/l1/s;->k:Lf/i/a/a/l1/m;

    goto/16 :goto_2

    :cond_6
    const-string v2, "content"

    .line 22
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 23
    iget-object v0, p0, Lf/i/a/a/l1/s;->f:Lf/i/a/a/l1/m;

    if-nez v0, :cond_7

    .line 24
    new-instance v0, Lf/i/a/a/l1/i;

    iget-object v1, p0, Lf/i/a/a/l1/s;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lf/i/a/a/l1/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lf/i/a/a/l1/s;->f:Lf/i/a/a/l1/m;

    .line 25
    invoke-virtual {p0, v0}, Lf/i/a/a/l1/s;->e(Lf/i/a/a/l1/m;)V

    .line 26
    :cond_7
    iget-object v0, p0, Lf/i/a/a/l1/s;->f:Lf/i/a/a/l1/m;

    .line 27
    iput-object v0, p0, Lf/i/a/a/l1/s;->k:Lf/i/a/a/l1/m;

    goto/16 :goto_2

    :cond_8
    const-string v2, "rtmp"

    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 29
    iget-object v0, p0, Lf/i/a/a/l1/s;->g:Lf/i/a/a/l1/m;

    if-nez v0, :cond_9

    :try_start_0
    const-string v0, "f.i.a.a.a1.b.a"

    .line 30
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Class;

    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/l1/m;

    iput-object v0, p0, Lf/i/a/a/l1/s;->g:Lf/i/a/a/l1/m;

    .line 32
    invoke-virtual {p0, v0}, Lf/i/a/a/l1/s;->e(Lf/i/a/a/l1/m;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 33
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error instantiating RTMP extension"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    nop

    .line 34
    :goto_1
    iget-object v0, p0, Lf/i/a/a/l1/s;->g:Lf/i/a/a/l1/m;

    if-nez v0, :cond_9

    .line 35
    iget-object v0, p0, Lf/i/a/a/l1/s;->c:Lf/i/a/a/l1/m;

    iput-object v0, p0, Lf/i/a/a/l1/s;->g:Lf/i/a/a/l1/m;

    .line 36
    :cond_9
    iget-object v0, p0, Lf/i/a/a/l1/s;->g:Lf/i/a/a/l1/m;

    .line 37
    iput-object v0, p0, Lf/i/a/a/l1/s;->k:Lf/i/a/a/l1/m;

    goto :goto_2

    :cond_a
    const-string v1, "udp"

    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 39
    iget-object v0, p0, Lf/i/a/a/l1/s;->h:Lf/i/a/a/l1/m;

    if-nez v0, :cond_b

    .line 40
    new-instance v0, Lf/i/a/a/l1/j0;

    invoke-direct {v0}, Lf/i/a/a/l1/j0;-><init>()V

    iput-object v0, p0, Lf/i/a/a/l1/s;->h:Lf/i/a/a/l1/m;

    .line 41
    invoke-virtual {p0, v0}, Lf/i/a/a/l1/s;->e(Lf/i/a/a/l1/m;)V

    .line 42
    :cond_b
    iget-object v0, p0, Lf/i/a/a/l1/s;->h:Lf/i/a/a/l1/m;

    .line 43
    iput-object v0, p0, Lf/i/a/a/l1/s;->k:Lf/i/a/a/l1/m;

    goto :goto_2

    :cond_c
    const-string v1, "data"

    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 45
    iget-object v0, p0, Lf/i/a/a/l1/s;->i:Lf/i/a/a/l1/m;

    if-nez v0, :cond_d

    .line 46
    new-instance v0, Lf/i/a/a/l1/j;

    invoke-direct {v0}, Lf/i/a/a/l1/j;-><init>()V

    iput-object v0, p0, Lf/i/a/a/l1/s;->i:Lf/i/a/a/l1/m;

    .line 47
    invoke-virtual {p0, v0}, Lf/i/a/a/l1/s;->e(Lf/i/a/a/l1/m;)V

    .line 48
    :cond_d
    iget-object v0, p0, Lf/i/a/a/l1/s;->i:Lf/i/a/a/l1/m;

    .line 49
    iput-object v0, p0, Lf/i/a/a/l1/s;->k:Lf/i/a/a/l1/m;

    goto :goto_2

    :cond_e
    const-string v1, "rawresource"

    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 51
    iget-object v0, p0, Lf/i/a/a/l1/s;->j:Lf/i/a/a/l1/m;

    if-nez v0, :cond_f

    .line 52
    new-instance v0, Lf/i/a/a/l1/f0;

    iget-object v1, p0, Lf/i/a/a/l1/s;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lf/i/a/a/l1/f0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lf/i/a/a/l1/s;->j:Lf/i/a/a/l1/m;

    .line 53
    invoke-virtual {p0, v0}, Lf/i/a/a/l1/s;->e(Lf/i/a/a/l1/m;)V

    .line 54
    :cond_f
    iget-object v0, p0, Lf/i/a/a/l1/s;->j:Lf/i/a/a/l1/m;

    .line 55
    iput-object v0, p0, Lf/i/a/a/l1/s;->k:Lf/i/a/a/l1/m;

    goto :goto_2

    .line 56
    :cond_10
    iget-object v0, p0, Lf/i/a/a/l1/s;->c:Lf/i/a/a/l1/m;

    iput-object v0, p0, Lf/i/a/a/l1/s;->k:Lf/i/a/a/l1/m;

    .line 57
    :goto_2
    iget-object v0, p0, Lf/i/a/a/l1/s;->k:Lf/i/a/a/l1/m;

    invoke-interface {v0, p1}, Lf/i/a/a/l1/m;->b(Lf/i/a/a/l1/p;)J

    move-result-wide v0

    return-wide v0
.end method

.method public c(Lf/i/a/a/l1/i0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/l1/s;->c:Lf/i/a/a/l1/m;

    invoke-interface {v0, p1}, Lf/i/a/a/l1/m;->c(Lf/i/a/a/l1/i0;)V

    .line 2
    iget-object v0, p0, Lf/i/a/a/l1/s;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lf/i/a/a/l1/s;->d:Lf/i/a/a/l1/m;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lf/i/a/a/l1/m;->c(Lf/i/a/a/l1/i0;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lf/i/a/a/l1/s;->e:Lf/i/a/a/l1/m;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0, p1}, Lf/i/a/a/l1/m;->c(Lf/i/a/a/l1/i0;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lf/i/a/a/l1/s;->f:Lf/i/a/a/l1/m;

    if-eqz v0, :cond_2

    .line 8
    invoke-interface {v0, p1}, Lf/i/a/a/l1/m;->c(Lf/i/a/a/l1/i0;)V

    .line 9
    :cond_2
    iget-object v0, p0, Lf/i/a/a/l1/s;->g:Lf/i/a/a/l1/m;

    if-eqz v0, :cond_3

    .line 10
    invoke-interface {v0, p1}, Lf/i/a/a/l1/m;->c(Lf/i/a/a/l1/i0;)V

    .line 11
    :cond_3
    iget-object v0, p0, Lf/i/a/a/l1/s;->h:Lf/i/a/a/l1/m;

    if-eqz v0, :cond_4

    .line 12
    invoke-interface {v0, p1}, Lf/i/a/a/l1/m;->c(Lf/i/a/a/l1/i0;)V

    .line 13
    :cond_4
    iget-object v0, p0, Lf/i/a/a/l1/s;->i:Lf/i/a/a/l1/m;

    if-eqz v0, :cond_5

    .line 14
    invoke-interface {v0, p1}, Lf/i/a/a/l1/m;->c(Lf/i/a/a/l1/i0;)V

    .line 15
    :cond_5
    iget-object v0, p0, Lf/i/a/a/l1/s;->j:Lf/i/a/a/l1/m;

    if-eqz v0, :cond_6

    .line 16
    invoke-interface {v0, p1}, Lf/i/a/a/l1/m;->c(Lf/i/a/a/l1/i0;)V

    :cond_6
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/l1/s;->k:Lf/i/a/a/l1/m;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-interface {v0}, Lf/i/a/a/l1/m;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iput-object v1, p0, Lf/i/a/a/l1/s;->k:Lf/i/a/a/l1/m;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lf/i/a/a/l1/s;->k:Lf/i/a/a/l1/m;

    .line 4
    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public d()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/l1/s;->k:Lf/i/a/a/l1/m;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lf/i/a/a/l1/m;->d()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final e(Lf/i/a/a/l1/m;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lf/i/a/a/l1/s;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lf/i/a/a/l1/s;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/l1/i0;

    invoke-interface {p1, v1}, Lf/i/a/a/l1/m;->c(Lf/i/a/a/l1/i0;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/l1/s;->k:Lf/i/a/a/l1/m;

    invoke-static {v0}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lf/i/a/a/l1/m;

    invoke-interface {v0, p1, p2, p3}, Lf/i/a/a/l1/m;->read([BII)I

    move-result p1

    return p1
.end method
