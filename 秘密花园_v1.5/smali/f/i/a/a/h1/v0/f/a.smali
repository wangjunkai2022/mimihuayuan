.class public final Lf/i/a/a/h1/v0/f/a;
.super Lf/i/a/a/e1/b0;
.source "SsDownloader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/i/a/a/e1/b0<",
        "Lf/i/a/a/h1/v0/e/a;",
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
    invoke-static {p1}, Lc/a/a/b/g/h;->Q(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

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
    new-instance v0, Lf/i/a/a/h1/v0/e/b;

    invoke-direct {v0}, Lf/i/a/a/h1/v0/e/b;-><init>()V

    const/4 v1, 0x4

    invoke-static {p1, v0, p2, v1}, Lf/i/a/a/l1/e0;->c(Lf/i/a/a/l1/m;Lf/i/a/a/l1/e0$a;Lf/i/a/a/l1/p;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/i/a/a/h1/v0/e/a;

    return-object p1
.end method

.method public d(Lf/i/a/a/l1/m;Lf/i/a/a/e1/y;Z)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p2

    check-cast v0, Lf/i/a/a/h1/v0/e/a;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v0, v0, Lf/i/a/a/h1/v0/e/a;->f:[Lf/i/a/a/h1/v0/e/a$b;

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    const/4 v6, 0x0

    .line 4
    :goto_1
    iget-object v7, v5, Lf/i/a/a/h1/v0/e/a$b;->j:[Lf/i/a/a/b0;

    array-length v7, v7

    if-ge v6, v7, :cond_1

    const/4 v7, 0x0

    .line 5
    :goto_2
    iget v8, v5, Lf/i/a/a/h1/v0/e/a$b;->k:I

    if-ge v7, v8, :cond_0

    .line 6
    new-instance v8, Lf/i/a/a/e1/b0$b;

    .line 7
    iget-object v9, v5, Lf/i/a/a/h1/v0/e/a$b;->o:[J

    aget-wide v10, v9, v7

    .line 8
    new-instance v9, Lf/i/a/a/l1/p;

    .line 9
    invoke-virtual {v5, v6, v7}, Lf/i/a/a/h1/v0/e/a$b;->a(II)Landroid/net/Uri;

    move-result-object v13

    const-wide/16 v14, 0x0

    const-wide/16 v16, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v12, v9

    .line 10
    invoke-direct/range {v12 .. v19}, Lf/i/a/a/l1/p;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 11
    invoke-direct {v8, v10, v11, v9}, Lf/i/a/a/e1/b0$b;-><init>(JLf/i/a/a/l1/p;)V

    .line 12
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method
