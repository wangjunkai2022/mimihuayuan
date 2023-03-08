.class public Lf/i/a/a/h1/t0/k/b;
.super Ljava/lang/Object;
.source "DashManifest.java"

# interfaces
.implements Lf/i/a/a/e1/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/i/a/a/e1/y<",
        "Lf/i/a/a/h1/t0/k/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J

.field public final d:Z

.field public final e:J

.field public final f:J

.field public final g:J

.field public final h:J

.field public final i:Lf/i/a/a/h1/t0/k/m;

.field public final j:Landroid/net/Uri;

.field public final k:Lf/i/a/a/h1/t0/k/g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/i/a/a/h1/t0/k/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JJJZJJJJLf/i/a/a/h1/t0/k/g;Lf/i/a/a/h1/t0/k/m;Landroid/net/Uri;Ljava/util/List;)V
    .locals 3
    .param p16    # Lf/i/a/a/h1/t0/k/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJZJJJJ",
            "Lf/i/a/a/h1/t0/k/g;",
            "Lf/i/a/a/h1/t0/k/m;",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Lf/i/a/a/h1/t0/k/f;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    .line 2
    iput-wide v1, v0, Lf/i/a/a/h1/t0/k/b;->a:J

    move-wide v1, p3

    .line 3
    iput-wide v1, v0, Lf/i/a/a/h1/t0/k/b;->b:J

    move-wide v1, p5

    .line 4
    iput-wide v1, v0, Lf/i/a/a/h1/t0/k/b;->c:J

    move v1, p7

    .line 5
    iput-boolean v1, v0, Lf/i/a/a/h1/t0/k/b;->d:Z

    move-wide v1, p8

    .line 6
    iput-wide v1, v0, Lf/i/a/a/h1/t0/k/b;->e:J

    move-wide v1, p10

    .line 7
    iput-wide v1, v0, Lf/i/a/a/h1/t0/k/b;->f:J

    move-wide v1, p12

    .line 8
    iput-wide v1, v0, Lf/i/a/a/h1/t0/k/b;->g:J

    move-wide/from16 v1, p14

    .line 9
    iput-wide v1, v0, Lf/i/a/a/h1/t0/k/b;->h:J

    move-object/from16 v1, p16

    .line 10
    iput-object v1, v0, Lf/i/a/a/h1/t0/k/b;->k:Lf/i/a/a/h1/t0/k/g;

    move-object/from16 v1, p17

    .line 11
    iput-object v1, v0, Lf/i/a/a/h1/t0/k/b;->i:Lf/i/a/a/h1/t0/k/m;

    move-object/from16 v1, p18

    .line 12
    iput-object v1, v0, Lf/i/a/a/h1/t0/k/b;->j:Landroid/net/Uri;

    if-nez p19, :cond_0

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object/from16 v1, p19

    :goto_0
    iput-object v1, v0, Lf/i/a/a/h1/t0/k/b;->l:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ljava/util/LinkedList;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 3
    new-instance v2, Lf/i/a/a/e1/c0;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3, v3}, Lf/i/a/a/e1/c0;-><init>(III)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    .line 5
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/h1/t0/k/b;->c()I

    move-result v6

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v5, v6, :cond_5

    .line 6
    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lf/i/a/a/e1/c0;

    iget v6, v6, Lf/i/a/a/e1/c0;->a:I

    if-eq v6, v5, :cond_0

    .line 7
    invoke-virtual {v0, v5}, Lf/i/a/a/h1/t0/k/b;->d(I)J

    move-result-wide v9

    cmp-long v6, v9, v7

    if-eqz v6, :cond_3

    add-long/2addr v3, v9

    goto/16 :goto_2

    .line 8
    :cond_0
    invoke-virtual {v0, v5}, Lf/i/a/a/h1/t0/k/b;->b(I)Lf/i/a/a/h1/t0/k/f;

    move-result-object v6

    .line 9
    iget-object v9, v6, Lf/i/a/a/h1/t0/k/f;->c:Ljava/util/List;

    .line 10
    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lf/i/a/a/e1/c0;

    .line 11
    iget v10, v7, Lf/i/a/a/e1/c0;->a:I

    .line 12
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 13
    :goto_1
    iget v8, v7, Lf/i/a/a/e1/c0;->b:I

    .line 14
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lf/i/a/a/h1/t0/k/a;

    .line 15
    iget-object v12, v11, Lf/i/a/a/h1/t0/k/a;->c:Ljava/util/List;

    .line 16
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 17
    :cond_1
    iget v7, v7, Lf/i/a/a/e1/c0;->c:I

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lf/i/a/a/h1/t0/k/i;

    .line 18
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lf/i/a/a/e1/c0;

    .line 20
    iget v14, v7, Lf/i/a/a/e1/c0;->a:I

    if-ne v14, v10, :cond_2

    iget v14, v7, Lf/i/a/a/e1/c0;->b:I

    if-eq v14, v8, :cond_1

    .line 21
    :cond_2
    new-instance v8, Lf/i/a/a/h1/t0/k/a;

    iget v12, v11, Lf/i/a/a/h1/t0/k/a;->a:I

    iget v14, v11, Lf/i/a/a/h1/t0/k/a;->b:I

    move-object/from16 v22, v9

    iget-object v9, v11, Lf/i/a/a/h1/t0/k/a;->d:Ljava/util/List;

    iget-object v11, v11, Lf/i/a/a/h1/t0/k/a;->e:Ljava/util/List;

    move-object/from16 v16, v8

    move/from16 v17, v12

    move/from16 v18, v14

    move-object/from16 v19, v13

    move-object/from16 v20, v9

    move-object/from16 v21, v11

    invoke-direct/range {v16 .. v21}, Lf/i/a/a/h1/t0/k/a;-><init>(IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    iget v8, v7, Lf/i/a/a/e1/c0;->a:I

    if-eq v8, v10, :cond_4

    .line 23
    invoke-virtual {v1, v7}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 24
    new-instance v7, Lf/i/a/a/h1/t0/k/f;

    iget-object v12, v6, Lf/i/a/a/h1/t0/k/f;->a:Ljava/lang/String;

    iget-wide v8, v6, Lf/i/a/a/h1/t0/k/f;->b:J

    sub-long v13, v8, v3

    iget-object v6, v6, Lf/i/a/a/h1/t0/k/f;->d:Ljava/util/List;

    move-object v11, v7

    move-object/from16 v16, v6

    invoke-direct/range {v11 .. v16}, Lf/i/a/a/h1/t0/k/f;-><init>(Ljava/lang/String;JLjava/util/List;Ljava/util/List;)V

    .line 25
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_4
    move-object/from16 v9, v22

    goto :goto_1

    .line 26
    :cond_5
    iget-wide v5, v0, Lf/i/a/a/h1/t0/k/b;->b:J

    cmp-long v1, v5, v7

    if-eqz v1, :cond_6

    sub-long/2addr v5, v3

    move-wide v7, v5

    .line 27
    :cond_6
    new-instance v1, Lf/i/a/a/h1/t0/k/b;

    move-object v4, v1

    iget-wide v5, v0, Lf/i/a/a/h1/t0/k/b;->a:J

    iget-wide v9, v0, Lf/i/a/a/h1/t0/k/b;->c:J

    iget-boolean v11, v0, Lf/i/a/a/h1/t0/k/b;->d:Z

    iget-wide v12, v0, Lf/i/a/a/h1/t0/k/b;->e:J

    iget-wide v14, v0, Lf/i/a/a/h1/t0/k/b;->f:J

    move-object/from16 p1, v4

    iget-wide v3, v0, Lf/i/a/a/h1/t0/k/b;->g:J

    move-wide/from16 v16, v3

    iget-wide v3, v0, Lf/i/a/a/h1/t0/k/b;->h:J

    move-wide/from16 v18, v3

    iget-object v3, v0, Lf/i/a/a/h1/t0/k/b;->k:Lf/i/a/a/h1/t0/k/g;

    move-object/from16 v20, v3

    iget-object v3, v0, Lf/i/a/a/h1/t0/k/b;->i:Lf/i/a/a/h1/t0/k/m;

    move-object/from16 v21, v3

    iget-object v3, v0, Lf/i/a/a/h1/t0/k/b;->j:Landroid/net/Uri;

    move-object/from16 v22, v3

    move-object/from16 v23, v2

    move-object/from16 v4, p1

    invoke-direct/range {v4 .. v23}, Lf/i/a/a/h1/t0/k/b;-><init>(JJJZJJJJLf/i/a/a/h1/t0/k/g;Lf/i/a/a/h1/t0/k/m;Landroid/net/Uri;Ljava/util/List;)V

    return-object v1
.end method

.method public final b(I)Lf/i/a/a/h1/t0/k/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/t0/k/b;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/i/a/a/h1/t0/k/f;

    return-object p1
.end method

.method public final c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/t0/k/b;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final d(I)J
    .locals 5

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/t0/k/b;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-ne p1, v0, :cond_1

    iget-wide v3, p0, Lf/i/a/a/h1/t0/k/b;->b:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lf/i/a/a/h1/t0/k/b;->l:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/i/a/a/h1/t0/k/f;

    iget-wide v0, p1, Lf/i/a/a/h1/t0/k/f;->b:J

    sub-long v1, v3, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lf/i/a/a/h1/t0/k/b;->l:Ljava/util/List;

    add-int/lit8 v1, p1, 0x1

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/h1/t0/k/f;

    iget-wide v0, v0, Lf/i/a/a/h1/t0/k/f;->b:J

    iget-object v2, p0, Lf/i/a/a/h1/t0/k/b;->l:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/i/a/a/h1/t0/k/f;

    iget-wide v2, p1, Lf/i/a/a/h1/t0/k/f;->b:J

    sub-long v1, v0, v2

    :goto_0
    return-wide v1
.end method

.method public final e(I)J
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lf/i/a/a/h1/t0/k/b;->d(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lf/i/a/a/q;->a(J)J

    move-result-wide v0

    return-wide v0
.end method
