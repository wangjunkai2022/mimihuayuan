.class public final Lf/i/a/a/h1/u0/s/a;
.super Lf/i/a/a/e1/b0;
.source "HlsDownloader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/i/a/a/e1/b0<",
        "Lf/i/a/a/h1/u0/t/g;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/util/List;Lf/i/a/a/e1/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Lf/i/a/a/e1/c0;",
            ">;",
            "Lf/i/a/a/e1/w;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lf/i/a/a/e1/b0;-><init>(Landroid/net/Uri;Ljava/util/List;Lf/i/a/a/e1/w;)V

    return-void
.end method


# virtual methods
.method public c(Lf/i/a/a/l1/m;Lf/i/a/a/l1/p;)Lf/i/a/a/e1/y;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lf/i/a/a/h1/u0/t/h;

    invoke-direct {v0}, Lf/i/a/a/h1/u0/t/h;-><init>()V

    const/4 v1, 0x4

    invoke-static {p1, v0, p2, v1}, Lf/i/a/a/l1/e0;->c(Lf/i/a/a/l1/m;Lf/i/a/a/l1/e0$a;Lf/i/a/a/l1/p;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/i/a/a/h1/u0/t/g;

    return-object p1
.end method

.method public d(Lf/i/a/a/l1/m;Lf/i/a/a/e1/y;Z)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Lf/i/a/a/h1/u0/t/g;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    instance-of v1, p2, Lf/i/a/a/h1/u0/t/e;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    check-cast p2, Lf/i/a/a/h1/u0/t/e;

    .line 5
    iget-object p2, p2, Lf/i/a/a/h1/u0/t/e;->d:Ljava/util/List;

    const/4 v1, 0x0

    .line 6
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 7
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-static {v3}, Lf/i/a/a/e1/b0;->b(Landroid/net/Uri;)Lf/i/a/a/l1/p;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_0
    iget-object p2, p2, Lf/i/a/a/h1/u0/t/g;->a:Ljava/lang/String;

    .line 9
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p2}, Lf/i/a/a/e1/b0;->b(Landroid/net/Uri;)Lf/i/a/a/l1/p;

    move-result-object p2

    .line 10
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 12
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf/i/a/a/l1/p;

    .line 14
    new-instance v4, Lf/i/a/a/e1/b0$b;

    const-wide/16 v5, 0x0

    invoke-direct {v4, v5, v6, v3}, Lf/i/a/a/e1/b0$b;-><init>(JLf/i/a/a/l1/p;)V

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    :try_start_0
    new-instance v4, Lf/i/a/a/h1/u0/t/h;

    invoke-direct {v4}, Lf/i/a/a/h1/u0/t/h;-><init>()V

    const/4 v5, 0x4

    invoke-static {p1, v4, v3, v5}, Lf/i/a/a/l1/e0;->c(Lf/i/a/a/l1/m;Lf/i/a/a/l1/e0$a;Lf/i/a/a/l1/p;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf/i/a/a/h1/u0/t/g;

    .line 16
    check-cast v3, Lf/i/a/a/h1/u0/t/f;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    .line 17
    iget-object v5, v3, Lf/i/a/a/h1/u0/t/f;->o:Ljava/util/List;

    const/4 v6, 0x0

    .line 18
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 19
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lf/i/a/a/h1/u0/t/f$a;

    .line 20
    iget-object v8, v7, Lf/i/a/a/h1/u0/t/f$a;->b:Lf/i/a/a/h1/u0/t/f$a;

    if-eqz v8, :cond_3

    if-eq v8, v4, :cond_3

    .line 21
    invoke-virtual {p0, v3, v8, v1, p2}, Lf/i/a/a/h1/u0/s/a;->f(Lf/i/a/a/h1/u0/t/f;Lf/i/a/a/h1/u0/t/f$a;Ljava/util/HashSet;Ljava/util/ArrayList;)V

    move-object v4, v8

    .line 22
    :cond_3
    invoke-virtual {p0, v3, v7, v1, p2}, Lf/i/a/a/h1/u0/s/a;->f(Lf/i/a/a/h1/u0/t/f;Lf/i/a/a/h1/u0/t/f$a;Ljava/util/HashSet;Ljava/util/ArrayList;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :catch_0
    move-exception v3

    if-eqz p3, :cond_4

    goto :goto_1

    .line 23
    :cond_4
    throw v3

    :cond_5
    return-object p2
.end method

.method public final f(Lf/i/a/a/h1/u0/t/f;Lf/i/a/a/h1/u0/t/f$a;Ljava/util/HashSet;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i/a/a/h1/u0/t/f;",
            "Lf/i/a/a/h1/u0/t/f$a;",
            "Ljava/util/HashSet<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lf/i/a/a/e1/b0$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lf/i/a/a/h1/u0/t/g;->a:Ljava/lang/String;

    .line 2
    iget-wide v1, p1, Lf/i/a/a/h1/u0/t/f;->f:J

    iget-wide v3, p2, Lf/i/a/a/h1/u0/t/f$a;->e:J

    add-long/2addr v1, v3

    .line 3
    iget-object p1, p2, Lf/i/a/a/h1/u0/t/f$a;->g:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 4
    invoke-static {v0, p1}, Lc/a/a/b/g/h;->g1(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 5
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 6
    new-instance p3, Lf/i/a/a/e1/b0$b;

    invoke-static {p1}, Lf/i/a/a/e1/b0;->b(Landroid/net/Uri;)Lf/i/a/a/l1/p;

    move-result-object p1

    invoke-direct {p3, v1, v2, p1}, Lf/i/a/a/e1/b0$b;-><init>(JLf/i/a/a/l1/p;)V

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_0
    iget-object p1, p2, Lf/i/a/a/h1/u0/t/f$a;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lc/a/a/b/g/h;->g1(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 8
    new-instance p1, Lf/i/a/a/l1/p;

    iget-wide v5, p2, Lf/i/a/a/h1/u0/t/f$a;->i:J

    iget-wide v7, p2, Lf/i/a/a/h1/u0/t/f$a;->j:J

    const/4 v9, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lf/i/a/a/l1/p;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 9
    new-instance p2, Lf/i/a/a/e1/b0$b;

    invoke-direct {p2, v1, v2, p1}, Lf/i/a/a/e1/b0$b;-><init>(JLf/i/a/a/l1/p;)V

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
