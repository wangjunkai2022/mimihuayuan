.class public abstract Lf/i/a/a/e1/b0;
.super Ljava/lang/Object;
.source "SegmentDownloader.java"

# interfaces
.implements Lf/i/a/a/e1/v;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/e1/b0$a;,
        Lf/i/a/a/e1/b0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Lf/i/a/a/e1/y<",
        "TM;>;>",
        "Ljava/lang/Object;",
        "Lf/i/a/a/e1/v;"
    }
.end annotation


# instance fields
.field public final a:Lf/i/a/a/l1/p;

.field public final b:Lf/i/a/a/l1/k0/b;

.field public final c:Lf/i/a/a/l1/k0/e;

.field public final d:Lf/i/a/a/l1/k0/e;

.field public final e:Lf/i/a/a/l1/k0/j;

.field public final f:Lf/i/a/a/m1/x;

.field public final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lf/i/a/a/e1/c0;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/concurrent/atomic/AtomicBoolean;


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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lf/i/a/a/e1/b0;->b(Landroid/net/Uri;)Lf/i/a/a/l1/p;

    move-result-object p1

    iput-object p1, p0, Lf/i/a/a/e1/b0;->a:Lf/i/a/a/l1/p;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lf/i/a/a/e1/b0;->g:Ljava/util/ArrayList;

    .line 4
    iget-object p1, p3, Lf/i/a/a/e1/w;->a:Lf/i/a/a/l1/k0/b;

    .line 5
    iput-object p1, p0, Lf/i/a/a/e1/b0;->b:Lf/i/a/a/l1/k0/b;

    .line 6
    iget-object p1, p3, Lf/i/a/a/e1/w;->d:Lf/i/a/a/l1/k0/f;

    invoke-virtual {p1}, Lf/i/a/a/l1/k0/f;->a()Lf/i/a/a/l1/k0/e;

    move-result-object p1

    .line 7
    iput-object p1, p0, Lf/i/a/a/e1/b0;->c:Lf/i/a/a/l1/k0/e;

    .line 8
    iget-object p1, p3, Lf/i/a/a/e1/w;->e:Lf/i/a/a/l1/k0/f;

    invoke-virtual {p1}, Lf/i/a/a/l1/k0/f;->a()Lf/i/a/a/l1/k0/e;

    move-result-object p1

    .line 9
    iput-object p1, p0, Lf/i/a/a/e1/b0;->d:Lf/i/a/a/l1/k0/e;

    .line 10
    iget-object p1, p3, Lf/i/a/a/e1/w;->b:Lf/i/a/a/l1/k0/j;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lf/i/a/a/l1/k0/l;->a:Lf/i/a/a/l1/k0/j;

    .line 11
    :goto_0
    iput-object p1, p0, Lf/i/a/a/e1/b0;->e:Lf/i/a/a/l1/k0/j;

    .line 12
    iget-object p1, p3, Lf/i/a/a/e1/w;->c:Lf/i/a/a/m1/x;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Lf/i/a/a/m1/x;

    invoke-direct {p1}, Lf/i/a/a/m1/x;-><init>()V

    .line 13
    :goto_1
    iput-object p1, p0, Lf/i/a/a/e1/b0;->f:Lf/i/a/a/m1/x;

    .line 14
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lf/i/a/a/e1/b0;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static b(Landroid/net/Uri;)Lf/i/a/a/l1/p;
    .locals 9

    .line 1
    new-instance v8, Lf/i/a/a/l1/p;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lf/i/a/a/l1/p;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    return-object v8
.end method


# virtual methods
.method public final a(Lf/i/a/a/e1/v$a;)V
    .locals 23
    .param p1    # Lf/i/a/a/e1/v$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lf/i/a/a/e1/b0;->f:Lf/i/a/a/m1/x;

    const/16 v2, -0x3e8

    invoke-virtual {v0, v2}, Lf/i/a/a/m1/x;->a(I)V

    .line 2
    :try_start_0
    iget-object v0, v1, Lf/i/a/a/e1/b0;->c:Lf/i/a/a/l1/k0/e;

    iget-object v3, v1, Lf/i/a/a/e1/b0;->a:Lf/i/a/a/l1/p;

    invoke-virtual {v1, v0, v3}, Lf/i/a/a/e1/b0;->c(Lf/i/a/a/l1/m;Lf/i/a/a/l1/p;)Lf/i/a/a/e1/y;

    move-result-object v0

    .line 3
    iget-object v3, v1, Lf/i/a/a/e1/b0;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4
    iget-object v3, v1, Lf/i/a/a/e1/b0;->g:Ljava/util/ArrayList;

    invoke-interface {v0, v3}, Lf/i/a/a/e1/y;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/e1/y;

    .line 5
    :cond_0
    iget-object v3, v1, Lf/i/a/a/e1/b0;->c:Lf/i/a/a/l1/k0/e;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v0, v4}, Lf/i/a/a/e1/b0;->d(Lf/i/a/a/l1/m;Lf/i/a/a/e1/y;Z)Ljava/util/List;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const-wide/16 v5, 0x0

    move-wide v7, v5

    move-wide v10, v7

    const/4 v12, 0x0

    :goto_0
    if-ltz v3, :cond_4

    .line 8
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf/i/a/a/e1/b0$b;

    .line 9
    iget-object v5, v5, Lf/i/a/a/e1/b0$b;->b:Lf/i/a/a/l1/p;

    iget-object v6, v1, Lf/i/a/a/e1/b0;->b:Lf/i/a/a/l1/k0/b;

    iget-object v13, v1, Lf/i/a/a/e1/b0;->e:Lf/i/a/a/l1/k0/j;

    .line 10
    invoke-static {v5, v6, v13}, Lf/i/a/a/l1/k0/l;->c(Lf/i/a/a/l1/p;Lf/i/a/a/l1/k0/b;Lf/i/a/a/l1/k0/j;)Landroid/util/Pair;

    move-result-object v5

    .line 11
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 12
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long/2addr v10, v5

    const-wide/16 v15, -0x1

    cmp-long v17, v13, v15

    if-eqz v17, :cond_2

    cmp-long v17, v13, v5

    if-nez v17, :cond_1

    add-int/lit8 v12, v12, 0x1

    .line 13
    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    cmp-long v5, v7, v15

    if-eqz v5, :cond_3

    add-long/2addr v7, v13

    goto :goto_1

    :cond_2
    move-wide v7, v15

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 14
    :cond_4
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 15
    new-instance v3, Lf/i/a/a/e1/b0$a;

    move-object v5, v3

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v12}, Lf/i/a/a/e1/b0$a;-><init>(Lf/i/a/a/e1/v$a;JIJI)V

    const/high16 v5, 0x20000

    new-array v5, v5, [B

    .line 16
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_6

    .line 17
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lf/i/a/a/e1/b0$b;

    iget-object v13, v6, Lf/i/a/a/e1/b0$b;->b:Lf/i/a/a/l1/p;

    iget-object v14, v1, Lf/i/a/a/e1/b0;->b:Lf/i/a/a/l1/k0/b;

    iget-object v15, v1, Lf/i/a/a/e1/b0;->e:Lf/i/a/a/l1/k0/j;

    iget-object v6, v1, Lf/i/a/a/e1/b0;->c:Lf/i/a/a/l1/k0/e;

    iget-object v7, v1, Lf/i/a/a/e1/b0;->f:Lf/i/a/a/m1/x;

    const/16 v19, -0x3e8

    iget-object v8, v1, Lf/i/a/a/e1/b0;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v22, 0x1

    move-object/from16 v16, v6

    move-object/from16 v17, v5

    move-object/from16 v18, v7

    move-object/from16 v20, v3

    move-object/from16 v21, v8

    .line 18
    invoke-static/range {v13 .. v22}, Lf/i/a/a/l1/k0/l;->b(Lf/i/a/a/l1/p;Lf/i/a/a/l1/k0/b;Lf/i/a/a/l1/k0/j;Lf/i/a/a/l1/k0/e;[BLf/i/a/a/m1/x;ILf/i/a/a/l1/k0/l$a;Ljava/util/concurrent/atomic/AtomicBoolean;Z)V

    if-eqz v3, :cond_5

    .line 19
    iget v6, v3, Lf/i/a/a/e1/b0$a;->e:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v3, Lf/i/a/a/e1/b0$a;->e:I

    .line 20
    iget-object v6, v3, Lf/i/a/a/e1/b0$a;->a:Lf/i/a/a/e1/v$a;

    iget-wide v8, v3, Lf/i/a/a/e1/b0$a;->b:J

    iget-wide v10, v3, Lf/i/a/a/e1/b0$a;->d:J

    invoke-virtual {v3}, Lf/i/a/a/e1/b0$a;->b()F

    move-result v12

    move-object v7, v6

    check-cast v7, Lf/i/a/a/e1/s$e;

    invoke-virtual/range {v7 .. v12}, Lf/i/a/a/e1/s$e;->b(JJF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 21
    :cond_6
    iget-object v0, v1, Lf/i/a/a/e1/b0;->f:Lf/i/a/a/m1/x;

    invoke-virtual {v0, v2}, Lf/i/a/a/m1/x;->b(I)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v3, v1, Lf/i/a/a/e1/b0;->f:Lf/i/a/a/m1/x;

    invoke-virtual {v3, v2}, Lf/i/a/a/m1/x;->b(I)V

    .line 22
    throw v0
.end method

.method public abstract c(Lf/i/a/a/l1/m;Lf/i/a/a/l1/p;)Lf/i/a/a/e1/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i/a/a/l1/m;",
            "Lf/i/a/a/l1/p;",
            ")TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public cancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/e1/b0;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public abstract d(Lf/i/a/a/l1/m;Lf/i/a/a/e1/y;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i/a/a/l1/m;",
            "TM;Z)",
            "Ljava/util/List<",
            "Lf/i/a/a/e1/b0$b;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final e(Lf/i/a/a/l1/p;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/e1/b0;->b:Lf/i/a/a/l1/k0/b;

    iget-object v1, p0, Lf/i/a/a/e1/b0;->e:Lf/i/a/a/l1/k0/j;

    invoke-static {p1, v0, v1}, Lf/i/a/a/l1/k0/l;->g(Lf/i/a/a/l1/p;Lf/i/a/a/l1/k0/b;Lf/i/a/a/l1/k0/j;)V

    return-void
.end method

.method public final remove()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lf/i/a/a/e1/b0;->d:Lf/i/a/a/l1/k0/e;

    iget-object v1, p0, Lf/i/a/a/e1/b0;->a:Lf/i/a/a/l1/p;

    invoke-virtual {p0, v0, v1}, Lf/i/a/a/e1/b0;->c(Lf/i/a/a/l1/m;Lf/i/a/a/l1/p;)Lf/i/a/a/e1/y;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lf/i/a/a/e1/b0;->d:Lf/i/a/a/l1/k0/e;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lf/i/a/a/e1/b0;->d(Lf/i/a/a/l1/m;Lf/i/a/a/e1/y;Z)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/i/a/a/e1/b0$b;

    iget-object v2, v2, Lf/i/a/a/e1/b0$b;->b:Lf/i/a/a/l1/p;

    invoke-virtual {p0, v2}, Lf/i/a/a/e1/b0;->e(Lf/i/a/a/l1/p;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    iget-object v1, p0, Lf/i/a/a/e1/b0;->a:Lf/i/a/a/l1/p;

    invoke-virtual {p0, v1}, Lf/i/a/a/e1/b0;->e(Lf/i/a/a/l1/p;)V

    .line 6
    throw v0

    .line 7
    :catch_0
    :cond_0
    iget-object v0, p0, Lf/i/a/a/e1/b0;->a:Lf/i/a/a/l1/p;

    invoke-virtual {p0, v0}, Lf/i/a/a/e1/b0;->e(Lf/i/a/a/l1/p;)V

    return-void
.end method
