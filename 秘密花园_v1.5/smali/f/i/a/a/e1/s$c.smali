.class public final Lf/i/a/a/e1/s$c;
.super Landroid/os/Handler;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/e1/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Landroid/os/HandlerThread;

.field public final b:Lf/i/a/a/e1/d0;

.field public final c:Lf/i/a/a/e1/x;

.field public final d:Landroid/os/Handler;

.field public final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lf/i/a/a/e1/m;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lf/i/a/a/e1/s$e;",
            ">;"
        }
    .end annotation
.end field

.field public g:I

.field public h:Z

.field public i:I

.field public j:I

.field public k:I


# direct methods
.method public constructor <init>(Landroid/os/HandlerThread;Lf/i/a/a/e1/d0;Lf/i/a/a/e1/x;Landroid/os/Handler;IIZ)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    iput-object p1, p0, Lf/i/a/a/e1/s$c;->a:Landroid/os/HandlerThread;

    .line 3
    iput-object p2, p0, Lf/i/a/a/e1/s$c;->b:Lf/i/a/a/e1/d0;

    .line 4
    iput-object p3, p0, Lf/i/a/a/e1/s$c;->c:Lf/i/a/a/e1/x;

    .line 5
    iput-object p4, p0, Lf/i/a/a/e1/s$c;->d:Landroid/os/Handler;

    .line 6
    iput p5, p0, Lf/i/a/a/e1/s$c;->i:I

    .line 7
    iput p6, p0, Lf/i/a/a/e1/s$c;->j:I

    .line 8
    iput-boolean p7, p0, Lf/i/a/a/e1/s$c;->h:Z

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lf/i/a/a/e1/s$c;->e:Ljava/util/ArrayList;

    .line 10
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lf/i/a/a/e1/s$c;->f:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Lf/i/a/a/e1/m;Lf/i/a/a/e1/m;)I
    .locals 2

    .line 1
    iget-wide v0, p0, Lf/i/a/a/e1/m;->c:J

    iget-wide p0, p1, Lf/i/a/a/e1/m;->c:J

    invoke-static {v0, v1, p0, p1}, Lf/i/a/a/m1/h0;->m(JJ)I

    move-result p0

    return p0
.end method

.method public static b(Lf/i/a/a/e1/m;I)Lf/i/a/a/e1/m;
    .locals 13

    .line 1
    new-instance v12, Lf/i/a/a/e1/m;

    iget-object v1, p0, Lf/i/a/a/e1/m;->a:Lf/i/a/a/e1/u;

    iget-wide v3, p0, Lf/i/a/a/e1/m;->c:J

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lf/i/a/a/e1/m;->e:J

    iget-object v11, p0, Lf/i/a/a/e1/m;->h:Lf/i/a/a/e1/t;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v12

    move v2, p1

    invoke-direct/range {v0 .. v11}, Lf/i/a/a/e1/m;-><init>(Lf/i/a/a/e1/u;IJJJIILf/i/a/a/e1/t;)V

    return-object v12
.end method


# virtual methods
.method public final c(Ljava/lang/String;Z)Lf/i/a/a/e1/m;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lf/i/a/a/e1/s$c;->d(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object p1, p0, Lf/i/a/a/e1/s$c;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/i/a/a/e1/m;

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    :try_start_0
    iget-object p2, p0, Lf/i/a/a/e1/s$c;->b:Lf/i/a/a/e1/d0;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    check-cast p2, Lf/i/a/a/e1/k;

    :try_start_1
    invoke-virtual {p2, p1}, Lf/i/a/a/e1/k;->c(Ljava/lang/String;)Lf/i/a/a/e1/m;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final d(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lf/i/a/a/e1/s$c;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lf/i/a/a/e1/s$c;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/e1/m;

    .line 3
    iget-object v1, v1, Lf/i/a/a/e1/m;->a:Lf/i/a/a/e1/u;

    iget-object v1, v1, Lf/i/a/a/e1/u;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final e(Lf/i/a/a/e1/m;)Lf/i/a/a/e1/m;
    .locals 8

    .line 1
    iget v0, p1, Lf/i/a/a/e1/m;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lc/a/a/b/g/h;->v(Z)V

    .line 2
    iget-object v0, p1, Lf/i/a/a/e1/m;->a:Lf/i/a/a/e1/u;

    iget-object v0, v0, Lf/i/a/a/e1/u;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lf/i/a/a/e1/s$c;->d(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 3
    iget-object v0, p0, Lf/i/a/a/e1/s$c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lf/i/a/a/e1/s$c;->e:Ljava/util/ArrayList;

    sget-object v1, Lf/i/a/a/e1/f;->a:Lf/i/a/a/e1/f;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_2

    .line 5
    :cond_1
    iget-wide v3, p1, Lf/i/a/a/e1/m;->c:J

    iget-object v5, p0, Lf/i/a/a/e1/s$c;->e:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf/i/a/a/e1/m;

    iget-wide v5, v5, Lf/i/a/a/e1/m;->c:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 6
    :goto_1
    iget-object v3, p0, Lf/i/a/a/e1/s$c;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 7
    iget-object v0, p0, Lf/i/a/a/e1/s$c;->e:Ljava/util/ArrayList;

    sget-object v1, Lf/i/a/a/e1/f;->a:Lf/i/a/a/e1/f;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 8
    :cond_3
    :goto_2
    :try_start_0
    iget-object v0, p0, Lf/i/a/a/e1/s$c;->b:Lf/i/a/a/e1/d0;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    check-cast v0, Lf/i/a/a/e1/k;

    :try_start_1
    invoke-virtual {v0, p1}, Lf/i/a/a/e1/k;->g(Lf/i/a/a/e1/m;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 9
    :catch_0
    new-instance v0, Lf/i/a/a/e1/s$b;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lf/i/a/a/e1/s$c;->e:Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, p1, v2, v1}, Lf/i/a/a/e1/s$b;-><init>(Lf/i/a/a/e1/m;ZLjava/util/List;)V

    .line 10
    iget-object v1, p0, Lf/i/a/a/e1/s$c;->d:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-object p1
.end method

.method public final f(Lf/i/a/a/e1/m;I)Lf/i/a/a/e1/m;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    const/4 v1, 0x4

    if-eq p2, v1, :cond_0

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {v0}, Lc/a/a/b/g/h;->v(Z)V

    .line 2
    invoke-static {p1, p2}, Lf/i/a/a/e1/s$c;->b(Lf/i/a/a/e1/m;I)Lf/i/a/a/e1/m;

    move-result-object p1

    invoke-virtual {p0, p1}, Lf/i/a/a/e1/s$c;->e(Lf/i/a/a/e1/m;)Lf/i/a/a/e1/m;

    return-object p1
.end method

.method public final g(Lf/i/a/a/e1/m;I)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move/from16 v10, p2

    const/4 v2, 0x1

    if-nez v10, :cond_0

    .line 1
    iget v3, v1, Lf/i/a/a/e1/m;->b:I

    if-ne v3, v2, :cond_3

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p0, p1, v2}, Lf/i/a/a/e1/s$c;->f(Lf/i/a/a/e1/m;I)Lf/i/a/a/e1/m;

    goto :goto_0

    .line 3
    :cond_0
    iget v3, v1, Lf/i/a/a/e1/m;->f:I

    if-eq v10, v3, :cond_3

    .line 4
    iget v3, v1, Lf/i/a/a/e1/m;->b:I

    if-eqz v3, :cond_1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    :cond_1
    const/4 v3, 0x1

    .line 5
    :cond_2
    new-instance v13, Lf/i/a/a/e1/m;

    iget-object v2, v1, Lf/i/a/a/e1/m;->a:Lf/i/a/a/e1/u;

    iget-wide v4, v1, Lf/i/a/a/e1/m;->c:J

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, v1, Lf/i/a/a/e1/m;->e:J

    const/4 v11, 0x0

    iget-object v12, v1, Lf/i/a/a/e1/m;->h:Lf/i/a/a/e1/t;

    move-object v1, v13

    move/from16 v10, p2

    invoke-direct/range {v1 .. v12}, Lf/i/a/a/e1/m;-><init>(Lf/i/a/a/e1/u;IJJJIILf/i/a/a/e1/t;)V

    .line 7
    invoke-virtual {p0, v13}, Lf/i/a/a/e1/s$c;->e(Lf/i/a/a/e1/m;)Lf/i/a/a/e1/m;

    :cond_3
    :goto_0
    return-void
.end method

.method public final h()V
    .locals 15

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :goto_0
    iget-object v3, p0, Lf/i/a/a/e1/s$c;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_f

    .line 2
    iget-object v3, p0, Lf/i/a/a/e1/s$c;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf/i/a/a/e1/m;

    .line 3
    iget-object v4, p0, Lf/i/a/a/e1/s$c;->f:Ljava/util/HashMap;

    iget-object v5, v3, Lf/i/a/a/e1/m;->a:Lf/i/a/a/e1/u;

    iget-object v5, v5, Lf/i/a/a/e1/u;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf/i/a/a/e1/s$e;

    .line 4
    iget v5, v3, Lf/i/a/a/e1/m;->b:I

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v5, :cond_7

    if-eq v5, v7, :cond_6

    if-eq v5, v6, :cond_3

    const/4 v6, 0x5

    if-eq v5, v6, :cond_1

    const/4 v6, 0x7

    if-ne v5, v6, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    .line 6
    iget-boolean v3, v4, Lf/i/a/a/e1/s$e;->d:Z

    if-nez v3, :cond_d

    .line 7
    invoke-virtual {v4, v0}, Lf/i/a/a/e1/s$e;->a(Z)V

    goto/16 :goto_5

    .line 8
    :cond_2
    iget-object v5, p0, Lf/i/a/a/e1/s$c;->c:Lf/i/a/a/e1/x;

    iget-object v6, v3, Lf/i/a/a/e1/m;->a:Lf/i/a/a/e1/u;

    check-cast v5, Lf/i/a/a/e1/l;

    invoke-virtual {v5, v6}, Lf/i/a/a/e1/l;->a(Lf/i/a/a/e1/u;)Lf/i/a/a/e1/v;

    move-result-object v9

    .line 9
    new-instance v5, Lf/i/a/a/e1/s$e;

    iget-object v8, v3, Lf/i/a/a/e1/m;->a:Lf/i/a/a/e1/u;

    iget-object v10, v3, Lf/i/a/a/e1/m;->h:Lf/i/a/a/e1/t;

    const/4 v11, 0x1

    iget v12, p0, Lf/i/a/a/e1/s$c;->j:I

    const/4 v14, 0x0

    move-object v7, v5

    move-object v13, p0

    invoke-direct/range {v7 .. v14}, Lf/i/a/a/e1/s$e;-><init>(Lf/i/a/a/e1/u;Lf/i/a/a/e1/v;Lf/i/a/a/e1/t;ZILf/i/a/a/e1/s$c;Lf/i/a/a/e1/s$a;)V

    .line 10
    iget-object v6, p0, Lf/i/a/a/e1/s$c;->f:Ljava/util/HashMap;

    iget-object v3, v3, Lf/i/a/a/e1/m;->a:Lf/i/a/a/e1/u;

    iget-object v3, v3, Lf/i/a/a/e1/u;->a:Ljava/lang/String;

    invoke-virtual {v6, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto/16 :goto_5

    .line 12
    :cond_3
    invoke-static {v4}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-boolean v5, v4, Lf/i/a/a/e1/s$e;->d:Z

    xor-int/2addr v5, v7

    .line 14
    invoke-static {v5}, Lc/a/a/b/g/h;->v(Z)V

    .line 15
    iget-boolean v5, p0, Lf/i/a/a/e1/s$c;->h:Z

    if-nez v5, :cond_4

    iget v5, p0, Lf/i/a/a/e1/s$c;->g:I

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_5

    .line 16
    iget v5, p0, Lf/i/a/a/e1/s$c;->i:I

    if-lt v2, v5, :cond_d

    .line 17
    :cond_5
    invoke-virtual {p0, v3, v0}, Lf/i/a/a/e1/s$c;->f(Lf/i/a/a/e1/m;I)Lf/i/a/a/e1/m;

    .line 18
    invoke-virtual {v4, v0}, Lf/i/a/a/e1/s$e;->a(Z)V

    goto/16 :goto_5

    :cond_6
    if-eqz v4, :cond_d

    .line 19
    iget-boolean v3, v4, Lf/i/a/a/e1/s$e;->d:Z

    xor-int/2addr v3, v7

    .line 20
    invoke-static {v3}, Lc/a/a/b/g/h;->v(Z)V

    .line 21
    invoke-virtual {v4, v0}, Lf/i/a/a/e1/s$e;->a(Z)V

    goto :goto_5

    :cond_7
    if-eqz v4, :cond_8

    .line 22
    iget-boolean v3, v4, Lf/i/a/a/e1/s$e;->d:Z

    xor-int/2addr v3, v7

    .line 23
    invoke-static {v3}, Lc/a/a/b/g/h;->v(Z)V

    .line 24
    invoke-virtual {v4, v0}, Lf/i/a/a/e1/s$e;->a(Z)V

    goto :goto_5

    .line 25
    :cond_8
    iget-boolean v4, p0, Lf/i/a/a/e1/s$c;->h:Z

    if-nez v4, :cond_9

    iget v4, p0, Lf/i/a/a/e1/s$c;->g:I

    if-nez v4, :cond_9

    goto :goto_3

    :cond_9
    const/4 v7, 0x0

    :goto_3
    if-eqz v7, :cond_c

    .line 26
    iget v4, p0, Lf/i/a/a/e1/s$c;->k:I

    iget v5, p0, Lf/i/a/a/e1/s$c;->i:I

    if-lt v4, v5, :cond_a

    goto :goto_4

    .line 27
    :cond_a
    invoke-virtual {p0, v3, v6}, Lf/i/a/a/e1/s$c;->f(Lf/i/a/a/e1/m;I)Lf/i/a/a/e1/m;

    move-result-object v3

    .line 28
    iget-object v4, p0, Lf/i/a/a/e1/s$c;->c:Lf/i/a/a/e1/x;

    iget-object v5, v3, Lf/i/a/a/e1/m;->a:Lf/i/a/a/e1/u;

    check-cast v4, Lf/i/a/a/e1/l;

    invoke-virtual {v4, v5}, Lf/i/a/a/e1/l;->a(Lf/i/a/a/e1/u;)Lf/i/a/a/e1/v;

    move-result-object v8

    .line 29
    new-instance v4, Lf/i/a/a/e1/s$e;

    iget-object v7, v3, Lf/i/a/a/e1/m;->a:Lf/i/a/a/e1/u;

    iget-object v9, v3, Lf/i/a/a/e1/m;->h:Lf/i/a/a/e1/t;

    const/4 v10, 0x0

    iget v11, p0, Lf/i/a/a/e1/s$c;->j:I

    const/4 v13, 0x0

    move-object v6, v4

    move-object v12, p0

    invoke-direct/range {v6 .. v13}, Lf/i/a/a/e1/s$e;-><init>(Lf/i/a/a/e1/u;Lf/i/a/a/e1/v;Lf/i/a/a/e1/t;ZILf/i/a/a/e1/s$c;Lf/i/a/a/e1/s$a;)V

    .line 30
    iget-object v5, p0, Lf/i/a/a/e1/s$c;->f:Ljava/util/HashMap;

    iget-object v3, v3, Lf/i/a/a/e1/m;->a:Lf/i/a/a/e1/u;

    iget-object v3, v3, Lf/i/a/a/e1/u;->a:Ljava/lang/String;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget v3, p0, Lf/i/a/a/e1/s$c;->k:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lf/i/a/a/e1/s$c;->k:I

    if-nez v3, :cond_b

    const/16 v3, 0xb

    const-wide/16 v5, 0x1388

    .line 32
    invoke-virtual {p0, v3, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 33
    :cond_b
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_5

    :cond_c
    :goto_4
    const/4 v3, 0x0

    move-object v4, v3

    :cond_d
    :goto_5
    if-eqz v4, :cond_e

    .line 34
    iget-boolean v3, v4, Lf/i/a/a/e1/s$e;->d:Z

    if-nez v3, :cond_e

    add-int/lit8 v2, v2, 0x1

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_f
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0xb

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x5

    const/4 v10, 0x0

    const/4 v11, 0x1

    packed-switch v2, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 3
    :pswitch_0
    iget-object v0, v1, Lf/i/a/a/e1/s$c;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/i/a/a/e1/s$e;

    .line 4
    invoke-virtual {v2, v11}, Lf/i/a/a/e1/s$e;->a(Z)V

    goto :goto_0

    .line 5
    :cond_0
    :try_start_0
    iget-object v0, v1, Lf/i/a/a/e1/s$c;->b:Lf/i/a/a/e1/d0;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    check-cast v0, Lf/i/a/a/e1/k;

    :try_start_1
    invoke-virtual {v0}, Lf/i/a/a/e1/k;->h()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 6
    :catch_0
    iget-object v0, v1, Lf/i/a/a/e1/s$c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7
    iget-object v0, v1, Lf/i/a/a/e1/s$c;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 8
    monitor-enter p0

    .line 9
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    .line 10
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 11
    :goto_1
    :pswitch_1
    iget-object v0, v1, Lf/i/a/a/e1/s$c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_2

    .line 12
    iget-object v0, v1, Lf/i/a/a/e1/s$c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/e1/m;

    .line 13
    iget v2, v0, Lf/i/a/a/e1/m;->b:I

    if-ne v2, v8, :cond_1

    .line 14
    :try_start_3
    iget-object v2, v1, Lf/i/a/a/e1/s$c;->b:Lf/i/a/a/e1/d0;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    check-cast v2, Lf/i/a/a/e1/k;

    :try_start_4
    invoke-virtual {v2, v0}, Lf/i/a/a/e1/k;->g(Lf/i/a/a/e1/m;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    const-wide/16 v4, 0x1388

    .line 15
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 16
    :pswitch_2
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lf/i/a/a/e1/s$e;

    .line 17
    iget-object v2, v0, Lf/i/a/a/e1/s$e;->a:Lf/i/a/a/e1/u;

    .line 18
    iget-object v2, v2, Lf/i/a/a/e1/u;->a:Ljava/lang/String;

    .line 19
    iget-wide v3, v0, Lf/i/a/a/e1/s$e;->i:J

    .line 20
    invoke-virtual {v1, v2, v10}, Lf/i/a/a/e1/s$c;->c(Ljava/lang/String;Z)Lf/i/a/a/e1/m;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-wide v5, v0, Lf/i/a/a/e1/m;->e:J

    cmp-long v2, v3, v5

    if-eqz v2, :cond_4

    const-wide/16 v5, -0x1

    cmp-long v2, v3, v5

    if-nez v2, :cond_3

    goto :goto_2

    .line 22
    :cond_3
    new-instance v2, Lf/i/a/a/e1/m;

    iget-object v12, v0, Lf/i/a/a/e1/m;->a:Lf/i/a/a/e1/u;

    iget v13, v0, Lf/i/a/a/e1/m;->b:I

    iget-wide v14, v0, Lf/i/a/a/e1/m;->c:J

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    iget v5, v0, Lf/i/a/a/e1/m;->f:I

    iget v6, v0, Lf/i/a/a/e1/m;->g:I

    iget-object v0, v0, Lf/i/a/a/e1/m;->h:Lf/i/a/a/e1/t;

    move-object v11, v2

    move-wide/from16 v18, v3

    move/from16 v20, v5

    move/from16 v21, v6

    move-object/from16 v22, v0

    invoke-direct/range {v11 .. v22}, Lf/i/a/a/e1/m;-><init>(Lf/i/a/a/e1/u;IJJJIILf/i/a/a/e1/t;)V

    .line 24
    invoke-virtual {v1, v2}, Lf/i/a/a/e1/s$c;->e(Lf/i/a/a/e1/m;)Lf/i/a/a/e1/m;

    :cond_4
    :goto_2
    return-void

    .line 25
    :pswitch_3
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lf/i/a/a/e1/s$e;

    .line 26
    iget-object v2, v0, Lf/i/a/a/e1/s$e;->a:Lf/i/a/a/e1/u;

    .line 27
    iget-object v2, v2, Lf/i/a/a/e1/u;->a:Ljava/lang/String;

    .line 28
    iget-object v5, v1, Lf/i/a/a/e1/s$c;->f:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-boolean v5, v0, Lf/i/a/a/e1/s$e;->d:Z

    if-nez v5, :cond_5

    .line 30
    iget v6, v1, Lf/i/a/a/e1/s$c;->k:I

    sub-int/2addr v6, v11

    iput v6, v1, Lf/i/a/a/e1/s$c;->k:I

    if-nez v6, :cond_5

    .line 31
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 32
    :cond_5
    iget-boolean v3, v0, Lf/i/a/a/e1/s$e;->g:Z

    if-eqz v3, :cond_6

    .line 33
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/e1/s$c;->h()V

    goto/16 :goto_16

    .line 34
    :cond_6
    iget-object v3, v0, Lf/i/a/a/e1/s$e;->h:Ljava/lang/Throwable;

    if-eqz v3, :cond_7

    const-string v6, "Task failed: "

    .line 35
    invoke-static {v6}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 36
    iget-object v0, v0, Lf/i/a/a/e1/s$e;->a:Lf/i/a/a/e1/u;

    .line 37
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    :cond_7
    invoke-virtual {v1, v2, v10}, Lf/i/a/a/e1/s$c;->c(Ljava/lang/String;Z)Lf/i/a/a/e1/m;

    move-result-object v2

    invoke-static {v2}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget v0, v2, Lf/i/a/a/e1/m;->b:I

    if-eq v0, v8, :cond_c

    if-eq v0, v9, :cond_9

    if-ne v0, v4, :cond_8

    goto :goto_3

    .line 40
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 41
    :cond_9
    :goto_3
    invoke-static {v5}, Lc/a/a/b/g/h;->v(Z)V

    .line 42
    iget v0, v2, Lf/i/a/a/e1/m;->b:I

    if-ne v0, v4, :cond_b

    .line 43
    iget v0, v2, Lf/i/a/a/e1/m;->f:I

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_4

    :cond_a
    const/4 v0, 0x1

    :goto_4
    invoke-virtual {v1, v2, v0}, Lf/i/a/a/e1/s$c;->f(Lf/i/a/a/e1/m;I)Lf/i/a/a/e1/m;

    .line 44
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/e1/s$c;->h()V

    goto/16 :goto_8

    .line 45
    :cond_b
    iget-object v0, v2, Lf/i/a/a/e1/m;->a:Lf/i/a/a/e1/u;

    iget-object v0, v0, Lf/i/a/a/e1/u;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lf/i/a/a/e1/s$c;->d(Ljava/lang/String;)I

    move-result v0

    .line 46
    iget-object v3, v1, Lf/i/a/a/e1/s$c;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 47
    :try_start_5
    iget-object v0, v1, Lf/i/a/a/e1/s$c;->b:Lf/i/a/a/e1/d0;

    iget-object v3, v2, Lf/i/a/a/e1/m;->a:Lf/i/a/a/e1/u;

    iget-object v3, v3, Lf/i/a/a/e1/u;->a:Ljava/lang/String;

    check-cast v0, Lf/i/a/a/e1/k;

    .line 48
    invoke-virtual {v0}, Lf/i/a/a/e1/k;->a()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 49
    :try_start_6
    iget-object v4, v0, Lf/i/a/a/e1/k;->c:Lf/i/a/a/x0/b;
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :try_start_7
    check-cast v4, Landroid/database/sqlite/SQLiteOpenHelper;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :try_start_8
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    iget-object v0, v0, Lf/i/a/a/e1/k;->b:Ljava/lang/String;

    const-string v5, "id = ?"

    new-array v6, v11, [Ljava/lang/String;

    aput-object v3, v6, v10

    invoke-virtual {v4, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_5

    :catch_2
    move-exception v0

    .line 50
    :try_start_9
    new-instance v3, Lf/i/a/a/x0/a;

    invoke-direct {v3, v0}, Lf/i/a/a/x0/a;-><init>(Landroid/database/SQLException;)V

    throw v3
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 51
    :catch_3
    :goto_5
    new-instance v0, Lf/i/a/a/e1/s$b;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v1, Lf/i/a/a/e1/s$c;->e:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v2, v11, v3}, Lf/i/a/a/e1/s$b;-><init>(Lf/i/a/a/e1/m;ZLjava/util/List;)V

    .line 52
    iget-object v2, v1, Lf/i/a/a/e1/s$c;->d:Landroid/os/Handler;

    invoke-virtual {v2, v8, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_8

    :cond_c
    xor-int/lit8 v0, v5, 0x1

    .line 53
    invoke-static {v0}, Lc/a/a/b/g/h;->v(Z)V

    .line 54
    new-instance v0, Lf/i/a/a/e1/m;

    iget-object v13, v2, Lf/i/a/a/e1/m;->a:Lf/i/a/a/e1/u;

    if-nez v3, :cond_d

    const/4 v4, 0x3

    const/4 v14, 0x3

    goto :goto_6

    :cond_d
    const/4 v4, 0x4

    const/4 v14, 0x4

    :goto_6
    iget-wide v4, v2, Lf/i/a/a/e1/m;->c:J

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    iget-wide v6, v2, Lf/i/a/a/e1/m;->e:J

    iget v9, v2, Lf/i/a/a/e1/m;->f:I

    if-nez v3, :cond_e

    const/4 v3, 0x0

    const/16 v22, 0x0

    goto :goto_7

    :cond_e
    const/4 v3, 0x1

    const/16 v22, 0x1

    :goto_7
    iget-object v2, v2, Lf/i/a/a/e1/m;->h:Lf/i/a/a/e1/t;

    move-object v12, v0

    move-wide v15, v4

    move-wide/from16 v19, v6

    move/from16 v21, v9

    move-object/from16 v23, v2

    invoke-direct/range {v12 .. v23}, Lf/i/a/a/e1/m;-><init>(Lf/i/a/a/e1/u;IJJJIILf/i/a/a/e1/t;)V

    .line 56
    iget-object v2, v1, Lf/i/a/a/e1/s$c;->e:Ljava/util/ArrayList;

    iget-object v3, v0, Lf/i/a/a/e1/m;->a:Lf/i/a/a/e1/u;

    iget-object v3, v3, Lf/i/a/a/e1/u;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lf/i/a/a/e1/s$c;->d(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 57
    :try_start_a
    iget-object v2, v1, Lf/i/a/a/e1/s$c;->b:Lf/i/a/a/e1/d0;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    check-cast v2, Lf/i/a/a/e1/k;

    :try_start_b
    invoke-virtual {v2, v0}, Lf/i/a/a/e1/k;->g(Lf/i/a/a/e1/m;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    .line 58
    :catch_4
    new-instance v2, Lf/i/a/a/e1/s$b;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v1, Lf/i/a/a/e1/s$c;->e:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, v0, v10, v3}, Lf/i/a/a/e1/s$b;-><init>(Lf/i/a/a/e1/m;ZLjava/util/List;)V

    .line 59
    iget-object v0, v1, Lf/i/a/a/e1/s$c;->d:Landroid/os/Handler;

    invoke-virtual {v0, v8, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 60
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/e1/s$c;->h()V

    goto/16 :goto_16

    .line 61
    :pswitch_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 62
    :try_start_c
    iget-object v0, v1, Lf/i/a/a/e1/s$c;->b:Lf/i/a/a/e1/d0;

    new-array v3, v8, [I

    aput v7, v3, v10

    aput v6, v3, v11
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    check-cast v0, Lf/i/a/a/e1/k;

    :try_start_d
    invoke-virtual {v0, v3}, Lf/i/a/a/e1/k;->e([I)Lf/i/a/a/e1/o;

    move-result-object v3
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    .line 63
    :goto_9
    :try_start_e
    invoke-interface {v3}, Lf/i/a/a/e1/o;->moveToNext()Z

    move-result v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-eqz v0, :cond_f

    .line 64
    move-object v0, v3

    check-cast v0, Lf/i/a/a/e1/k$b;

    :try_start_f
    invoke-virtual {v0}, Lf/i/a/a/e1/k$b;->d()Lf/i/a/a/e1/m;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_9

    .line 65
    :cond_f
    :try_start_10
    check-cast v3, Lf/i/a/a/e1/k$b;

    .line 66
    iget-object v0, v3, Lf/i/a/a/e1/k$b;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5

    goto :goto_b

    :catchall_1
    move-exception v0

    move-object v4, v0

    .line 67
    :try_start_11
    throw v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    :catchall_2
    move-exception v0

    move-object v6, v0

    .line 68
    :try_start_12
    check-cast v3, Lf/i/a/a/e1/k$b;

    .line 69
    iget-object v0, v3, Lf/i/a/a/e1/k$b;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    goto :goto_a

    :catchall_3
    move-exception v0

    .line 70
    :try_start_13
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a
    throw v6
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_5

    :catch_5
    :goto_b
    const/4 v0, 0x0

    .line 71
    :goto_c
    iget-object v3, v1, Lf/i/a/a/e1/s$c;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_10

    .line 72
    iget-object v3, v1, Lf/i/a/a/e1/s$c;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf/i/a/a/e1/m;

    invoke-static {v4, v9}, Lf/i/a/a/e1/s$c;->b(Lf/i/a/a/e1/m;I)Lf/i/a/a/e1/m;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_10
    const/4 v0, 0x0

    .line 73
    :goto_d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_11

    .line 74
    iget-object v3, v1, Lf/i/a/a/e1/s$c;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf/i/a/a/e1/m;

    invoke-static {v4, v9}, Lf/i/a/a/e1/s$c;->b(Lf/i/a/a/e1/m;I)Lf/i/a/a/e1/m;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 75
    :cond_11
    iget-object v0, v1, Lf/i/a/a/e1/s$c;->e:Ljava/util/ArrayList;

    sget-object v2, Lf/i/a/a/e1/f;->a:Lf/i/a/a/e1/f;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 76
    :try_start_14
    iget-object v0, v1, Lf/i/a/a/e1/s$c;->b:Lf/i/a/a/e1/d0;

    check-cast v0, Lf/i/a/a/e1/k;

    .line 77
    invoke-virtual {v0}, Lf/i/a/a/e1/k;->a()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_7

    .line 78
    :try_start_15
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "state"

    .line 79
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 80
    iget-object v3, v0, Lf/i/a/a/e1/k;->c:Lf/i/a/a/x0/b;
    :try_end_15
    .catch Landroid/database/SQLException; {:try_start_15 .. :try_end_15} :catch_6
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_7

    :try_start_16
    check-cast v3, Landroid/database/sqlite/SQLiteOpenHelper;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_7

    :try_start_17
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 81
    iget-object v0, v0, Lf/i/a/a/e1/k;->b:Ljava/lang/String;

    invoke-virtual {v3, v0, v2, v5, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_17
    .catch Landroid/database/SQLException; {:try_start_17 .. :try_end_17} :catch_6
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_7

    goto :goto_e

    :catch_6
    move-exception v0

    .line 82
    :try_start_18
    new-instance v2, Lf/i/a/a/x0/a;

    invoke-direct {v2, v0}, Lf/i/a/a/x0/a;-><init>(Landroid/database/SQLException;)V

    throw v2
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_7

    .line 83
    :catch_7
    :goto_e
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, v1, Lf/i/a/a/e1/s$c;->e:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    .line 84
    :goto_f
    iget-object v3, v1, Lf/i/a/a/e1/s$c;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_12

    .line 85
    new-instance v3, Lf/i/a/a/e1/s$b;

    iget-object v4, v1, Lf/i/a/a/e1/s$c;->e:Ljava/util/ArrayList;

    .line 86
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf/i/a/a/e1/m;

    invoke-direct {v3, v4, v10, v0}, Lf/i/a/a/e1/s$b;-><init>(Lf/i/a/a/e1/m;ZLjava/util/List;)V

    .line 87
    iget-object v4, v1, Lf/i/a/a/e1/s$c;->d:Landroid/os/Handler;

    invoke-virtual {v4, v8, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 88
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/e1/s$c;->h()V

    goto/16 :goto_15

    .line 89
    :pswitch_5
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 90
    invoke-virtual {v1, v0, v11}, Lf/i/a/a/e1/s$c;->c(Ljava/lang/String;Z)Lf/i/a/a/e1/m;

    move-result-object v0

    if-nez v0, :cond_13

    goto/16 :goto_15

    .line 91
    :cond_13
    invoke-virtual {v1, v0, v9}, Lf/i/a/a/e1/s$c;->f(Lf/i/a/a/e1/m;I)Lf/i/a/a/e1/m;

    .line 92
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/e1/s$c;->h()V

    goto/16 :goto_15

    .line 93
    :pswitch_6
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v13, v2

    check-cast v13, Lf/i/a/a/e1/u;

    .line 94
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 95
    iget-object v2, v13, Lf/i/a/a/e1/u;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v11}, Lf/i/a/a/e1/s$c;->c(Ljava/lang/String;Z)Lf/i/a/a/e1/m;

    move-result-object v2

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    if-eqz v2, :cond_14

    .line 97
    invoke-static {v2, v13, v0, v3, v4}, Lf/i/a/a/e1/s;->b(Lf/i/a/a/e1/m;Lf/i/a/a/e1/u;IJ)Lf/i/a/a/e1/m;

    move-result-object v0

    invoke-virtual {v1, v0}, Lf/i/a/a/e1/s$c;->e(Lf/i/a/a/e1/m;)Lf/i/a/a/e1/m;

    goto :goto_11

    .line 98
    :cond_14
    new-instance v2, Lf/i/a/a/e1/m;

    if-eqz v0, :cond_15

    const/4 v5, 0x1

    const/4 v14, 0x1

    goto :goto_10

    :cond_15
    const/4 v5, 0x0

    const/4 v14, 0x0

    :goto_10
    const-wide/16 v19, -0x1

    const/16 v22, 0x0

    move-object v12, v2

    move-wide v15, v3

    move-wide/from16 v17, v3

    move/from16 v21, v0

    invoke-direct/range {v12 .. v22}, Lf/i/a/a/e1/m;-><init>(Lf/i/a/a/e1/u;IJJJII)V

    invoke-virtual {v1, v2}, Lf/i/a/a/e1/s$c;->e(Lf/i/a/a/e1/m;)Lf/i/a/a/e1/m;

    .line 99
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/e1/s$c;->h()V

    goto/16 :goto_15

    .line 100
    :pswitch_7
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 101
    iput v0, v1, Lf/i/a/a/e1/s$c;->j:I

    goto/16 :goto_15

    .line 102
    :pswitch_8
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 103
    iput v0, v1, Lf/i/a/a/e1/s$c;->i:I

    .line 104
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/e1/s$c;->h()V

    goto/16 :goto_15

    .line 105
    :pswitch_9
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 106
    iget v0, v0, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_17

    .line 107
    :goto_12
    iget-object v2, v1, Lf/i/a/a/e1/s$c;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_16

    .line 108
    iget-object v2, v1, Lf/i/a/a/e1/s$c;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/i/a/a/e1/m;

    invoke-virtual {v1, v2, v0}, Lf/i/a/a/e1/s$c;->g(Lf/i/a/a/e1/m;I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_12

    .line 109
    :cond_16
    :try_start_19
    iget-object v2, v1, Lf/i/a/a/e1/s$c;->b:Lf/i/a/a/e1/d0;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_8

    check-cast v2, Lf/i/a/a/e1/k;

    :try_start_1a
    invoke-virtual {v2, v0}, Lf/i/a/a/e1/k;->i(I)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_8

    goto :goto_13

    .line 110
    :cond_17
    invoke-virtual {v1, v2, v10}, Lf/i/a/a/e1/s$c;->c(Ljava/lang/String;Z)Lf/i/a/a/e1/m;

    move-result-object v3

    if-eqz v3, :cond_18

    .line 111
    invoke-virtual {v1, v3, v0}, Lf/i/a/a/e1/s$c;->g(Lf/i/a/a/e1/m;I)V

    goto :goto_13

    .line 112
    :cond_18
    :try_start_1b
    iget-object v3, v1, Lf/i/a/a/e1/s$c;->b:Lf/i/a/a/e1/d0;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_8

    check-cast v3, Lf/i/a/a/e1/k;

    :try_start_1c
    invoke-virtual {v3, v2, v0}, Lf/i/a/a/e1/k;->j(Ljava/lang/String;I)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_8

    .line 113
    :catch_8
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/e1/s$c;->h()V

    goto :goto_15

    .line 114
    :pswitch_a
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 115
    iput v0, v1, Lf/i/a/a/e1/s$c;->g:I

    .line 116
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/e1/s$c;->h()V

    goto :goto_15

    .line 117
    :pswitch_b
    iget v0, v0, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_19

    const/4 v10, 0x1

    .line 118
    :cond_19
    iput-boolean v10, v1, Lf/i/a/a/e1/s$c;->h:Z

    .line 119
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/e1/s$c;->h()V

    goto :goto_15

    .line 120
    :pswitch_c
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 121
    iput v0, v1, Lf/i/a/a/e1/s$c;->g:I

    .line 122
    :try_start_1d
    iget-object v0, v1, Lf/i/a/a/e1/s$c;->b:Lf/i/a/a/e1/d0;
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_9
    .catchall {:try_start_1d .. :try_end_1d} :catchall_4

    check-cast v0, Lf/i/a/a/e1/k;

    :try_start_1e
    invoke-virtual {v0}, Lf/i/a/a/e1/k;->h()V

    .line 123
    iget-object v0, v1, Lf/i/a/a/e1/s$c;->b:Lf/i/a/a/e1/d0;

    new-array v2, v9, [I

    aput v10, v2, v10

    aput v11, v2, v11

    aput v8, v2, v8

    aput v9, v2, v7

    aput v4, v2, v6
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_9
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4

    .line 124
    check-cast v0, Lf/i/a/a/e1/k;

    :try_start_1f
    invoke-virtual {v0, v2}, Lf/i/a/a/e1/k;->e([I)Lf/i/a/a/e1/o;

    move-result-object v5

    .line 125
    :goto_14
    invoke-interface {v5}, Lf/i/a/a/e1/o;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 126
    iget-object v0, v1, Lf/i/a/a/e1/s$c;->e:Ljava/util/ArrayList;
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_9
    .catchall {:try_start_1f .. :try_end_1f} :catchall_4

    move-object v2, v5

    check-cast v2, Lf/i/a/a/e1/k$b;

    :try_start_20
    invoke-virtual {v2}, Lf/i/a/a/e1/k$b;->d()Lf/i/a/a/e1/m;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_9
    .catchall {:try_start_20 .. :try_end_20} :catchall_4

    goto :goto_14

    :catchall_4
    move-exception v0

    goto :goto_17

    .line 127
    :catch_9
    :try_start_21
    iget-object v0, v1, Lf/i/a/a/e1/s$c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_4

    .line 128
    :cond_1a
    invoke-static {v5}, Lf/i/a/a/m1/h0;->l(Ljava/io/Closeable;)V

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, v1, Lf/i/a/a/e1/s$c;->e:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 130
    iget-object v2, v1, Lf/i/a/a/e1/s$c;->d:Landroid/os/Handler;

    invoke-virtual {v2, v10, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 131
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/e1/s$c;->h()V

    :goto_15
    const/4 v10, 0x1

    .line 132
    :goto_16
    iget-object v0, v1, Lf/i/a/a/e1/s$c;->d:Landroid/os/Handler;

    iget-object v2, v1, Lf/i/a/a/e1/s$c;->f:Ljava/util/HashMap;

    .line 133
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v0, v11, v10, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 135
    :goto_17
    invoke-static {v5}, Lf/i/a/a/m1/h0;->l(Ljava/io/Closeable;)V

    .line 136
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
