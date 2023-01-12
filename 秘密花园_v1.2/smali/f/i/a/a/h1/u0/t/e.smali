.class public final Lf/i/a/a/h1/u0/t/e;
.super Lf/i/a/a/h1/u0/t/g;
.source "HlsMasterPlaylist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/h1/u0/t/e$a;,
        Lf/i/a/a/h1/u0/t/e$b;
    }
.end annotation


# static fields
.field public static final l:Lf/i/a/a/h1/u0/t/e;


# instance fields
.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/i/a/a/h1/u0/t/e$b;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/i/a/a/h1/u0/t/e$a;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/i/a/a/h1/u0/t/e$a;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lf/i/a/a/b0;

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/i/a/a/b0;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/i/a/a/z0/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v13, Lf/i/a/a/h1/u0/t/e;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v11

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    const-string v1, ""

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lf/i/a/a/h1/u0/t/e;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lf/i/a/a/b0;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V

    sput-object v13, Lf/i/a/a/h1/u0/t/e;->l:Lf/i/a/a/h1/u0/t/e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lf/i/a/a/b0;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lf/i/a/a/h1/u0/t/e$b;",
            ">;",
            "Ljava/util/List<",
            "Lf/i/a/a/h1/u0/t/e$a;",
            ">;",
            "Ljava/util/List<",
            "Lf/i/a/a/h1/u0/t/e$a;",
            ">;",
            "Ljava/util/List<",
            "Lf/i/a/a/h1/u0/t/e$a;",
            ">;",
            "Ljava/util/List<",
            "Lf/i/a/a/h1/u0/t/e$a;",
            ">;",
            "Lf/i/a/a/b0;",
            "Ljava/util/List<",
            "Lf/i/a/a/b0;",
            ">;Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lf/i/a/a/z0/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p10}, Lf/i/a/a/h1/u0/t/g;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    .line 3
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p10

    if-ge p2, p10, :cond_1

    .line 4
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p10

    check-cast p10, Lf/i/a/a/h1/u0/t/e$b;

    iget-object p10, p10, Lf/i/a/a/h1/u0/t/e$b;->a:Landroid/net/Uri;

    .line 5
    invoke-virtual {p1, p10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p1, p10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {p4, p1}, Lf/i/a/a/h1/u0/t/e;->b(Ljava/util/List;Ljava/util/List;)V

    .line 8
    invoke-static {p5, p1}, Lf/i/a/a/h1/u0/t/e;->b(Ljava/util/List;Ljava/util/List;)V

    .line 9
    invoke-static {p6, p1}, Lf/i/a/a/h1/u0/t/e;->b(Ljava/util/List;Ljava/util/List;)V

    .line 10
    invoke-static {p7, p1}, Lf/i/a/a/h1/u0/t/e;->b(Ljava/util/List;Ljava/util/List;)V

    .line 11
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lf/i/a/a/h1/u0/t/e;->d:Ljava/util/List;

    .line 12
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lf/i/a/a/h1/u0/t/e;->e:Ljava/util/List;

    .line 13
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 14
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lf/i/a/a/h1/u0/t/e;->f:Ljava/util/List;

    .line 15
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lf/i/a/a/h1/u0/t/e;->g:Ljava/util/List;

    .line 16
    invoke-static {p7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 17
    iput-object p8, p0, Lf/i/a/a/h1/u0/t/e;->h:Lf/i/a/a/b0;

    if-eqz p9, :cond_2

    .line 18
    invoke-static {p9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Lf/i/a/a/h1/u0/t/e;->i:Ljava/util/List;

    .line 19
    invoke-static {p11}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lf/i/a/a/h1/u0/t/e;->j:Ljava/util/Map;

    .line 20
    invoke-static {p12}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lf/i/a/a/h1/u0/t/e;->k:Ljava/util/List;

    return-void
.end method

.method public static b(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lf/i/a/a/h1/u0/t/e$a;",
            ">;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/h1/u0/t/e$a;

    iget-object v1, v1, Lf/i/a/a/h1/u0/t/e$a;->a:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static c(Ljava/util/List;ILjava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;I",
            "Ljava/util/List<",
            "Lf/i/a/a/e1/c0;",
            ">;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 3
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    .line 4
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 5
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf/i/a/a/e1/c0;

    .line 6
    iget v6, v5, Lf/i/a/a/e1/c0;->b:I

    if-ne v6, p1, :cond_0

    iget v5, v5, Lf/i/a/a/e1/c0;->c:I

    if-ne v5, v2, :cond_0

    .line 7
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static d(Ljava/lang/String;)Lf/i/a/a/h1/u0/t/e;
    .locals 21

    .line 1
    invoke-static/range {p0 .. p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v2, "0"

    const-string v4, "application/x-mpegURL"

    .line 2
    invoke-static/range {v2 .. v10}, Lf/i/a/a/b0;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)Lf/i/a/a/b0;

    move-result-object v2

    .line 3
    new-instance v7, Lf/i/a/a/h1/u0/t/e$b;

    const/4 v4, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lf/i/a/a/h1/u0/t/e$b;-><init>(Landroid/net/Uri;Lf/i/a/a/b0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    .line 5
    new-instance v0, Lf/i/a/a/h1/u0/t/e;

    const/4 v9, 0x0

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v13

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v14

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v19

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v20

    move-object v8, v0

    invoke-direct/range {v8 .. v20}, Lf/i/a/a/h1/u0/t/e;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lf/i/a/a/b0;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/List;)Ljava/lang/Object;
    .locals 14

    .line 1
    new-instance v13, Lf/i/a/a/h1/u0/t/e;

    iget-object v1, p0, Lf/i/a/a/h1/u0/t/g;->a:Ljava/lang/String;

    iget-object v2, p0, Lf/i/a/a/h1/u0/t/g;->b:Ljava/util/List;

    iget-object v0, p0, Lf/i/a/a/h1/u0/t/e;->e:Ljava/util/List;

    const/4 v3, 0x0

    .line 2
    invoke-static {v0, v3, p1}, Lf/i/a/a/h1/u0/t/e;->c(Ljava/util/List;ILjava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    iget-object v0, p0, Lf/i/a/a/h1/u0/t/e;->f:Ljava/util/List;

    const/4 v5, 0x1

    .line 4
    invoke-static {v0, v5, p1}, Lf/i/a/a/h1/u0/t/e;->c(Ljava/util/List;ILjava/util/List;)Ljava/util/List;

    move-result-object v5

    iget-object v0, p0, Lf/i/a/a/h1/u0/t/e;->g:Ljava/util/List;

    const/4 v6, 0x2

    .line 5
    invoke-static {v0, v6, p1}, Lf/i/a/a/h1/u0/t/e;->c(Ljava/util/List;ILjava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lf/i/a/a/h1/u0/t/e;->h:Lf/i/a/a/b0;

    iget-object v9, p0, Lf/i/a/a/h1/u0/t/e;->i:Ljava/util/List;

    iget-boolean v10, p0, Lf/i/a/a/h1/u0/t/g;->c:Z

    iget-object v11, p0, Lf/i/a/a/h1/u0/t/e;->j:Ljava/util/Map;

    iget-object v12, p0, Lf/i/a/a/h1/u0/t/e;->k:Ljava/util/List;

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lf/i/a/a/h1/u0/t/e;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lf/i/a/a/b0;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V

    return-object v13
.end method
