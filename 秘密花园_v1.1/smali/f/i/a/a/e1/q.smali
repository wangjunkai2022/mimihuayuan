.class public final Lf/i/a/a/e1/q;
.super Ljava/lang/Object;
.source "DownloadHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/e1/q$d;,
        Lf/i/a/a/e1/q$c;,
        Lf/i/a/a/e1/q$e;,
        Lf/i/a/a/e1/q$f;,
        Lf/i/a/a/e1/q$b;
    }
.end annotation


# static fields
.field public static final p:Lf/i/a/a/j1/d$c;

.field public static final q:Lf/i/a/a/e1/q$f;

.field public static final r:Lf/i/a/a/e1/q$f;

.field public static final s:Lf/i/a/a/e1/q$f;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/net/Uri;

.field public final c:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:Lf/i/a/a/h1/e0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:Lf/i/a/a/j1/d;

.field public final f:[Lf/i/a/a/p;

.field public final g:Landroid/util/SparseIntArray;

.field public final h:Landroid/os/Handler;

.field public i:Z

.field public j:Lf/i/a/a/e1/q$b;

.field public k:Lf/i/a/a/e1/q$e;

.field public l:[Lf/i/a/a/h1/p0;

.field public m:[Lf/i/a/a/j1/f$a;

.field public n:[[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[",
            "Ljava/util/List<",
            "Lf/i/a/a/j1/j;",
            ">;"
        }
    .end annotation
.end field

.field public o:[[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[",
            "Ljava/util/List<",
            "Lf/i/a/a/j1/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 30

    .line 1
    sget-object v0, Lf/i/a/a/j1/d$c;->A:Lf/i/a/a/j1/d$c;

    .line 2
    iget-object v12, v0, Lf/i/a/a/j1/l;->a:Ljava/lang/String;

    .line 3
    iget-object v15, v0, Lf/i/a/a/j1/l;->b:Ljava/lang/String;

    .line 4
    iget-boolean v14, v0, Lf/i/a/a/j1/l;->c:Z

    .line 5
    iget v13, v0, Lf/i/a/a/j1/l;->d:I

    .line 6
    iget v2, v0, Lf/i/a/a/j1/d$c;->f:I

    .line 7
    iget v3, v0, Lf/i/a/a/j1/d$c;->g:I

    .line 8
    iget v4, v0, Lf/i/a/a/j1/d$c;->h:I

    .line 9
    iget v5, v0, Lf/i/a/a/j1/d$c;->i:I

    .line 10
    iget-boolean v6, v0, Lf/i/a/a/j1/d$c;->j:Z

    .line 11
    iget-boolean v7, v0, Lf/i/a/a/j1/d$c;->k:Z

    .line 12
    iget-boolean v8, v0, Lf/i/a/a/j1/d$c;->l:Z

    .line 13
    iget v9, v0, Lf/i/a/a/j1/d$c;->m:I

    .line 14
    iget v10, v0, Lf/i/a/a/j1/d$c;->n:I

    .line 15
    iget-boolean v11, v0, Lf/i/a/a/j1/d$c;->o:Z

    .line 16
    iget v1, v0, Lf/i/a/a/j1/d$c;->p:I

    move/from16 v16, v14

    .line 17
    iget v14, v0, Lf/i/a/a/j1/d$c;->q:I

    move-object/from16 v17, v15

    .line 18
    iget-boolean v15, v0, Lf/i/a/a/j1/d$c;->r:Z

    move/from16 v18, v15

    .line 19
    iget-boolean v15, v0, Lf/i/a/a/j1/d$c;->s:Z

    move/from16 v19, v15

    .line 20
    iget-boolean v15, v0, Lf/i/a/a/j1/d$c;->t:Z

    move/from16 v20, v15

    .line 21
    iget-boolean v15, v0, Lf/i/a/a/j1/d$c;->u:Z

    move/from16 v21, v1

    .line 22
    iget-boolean v1, v0, Lf/i/a/a/j1/d$c;->v:Z

    .line 23
    iget-boolean v1, v0, Lf/i/a/a/j1/d$c;->w:Z

    move/from16 v22, v15

    .line 24
    iget v15, v0, Lf/i/a/a/j1/d$c;->x:I

    move/from16 v23, v1

    .line 25
    iget-object v1, v0, Lf/i/a/a/j1/d$c;->y:Landroid/util/SparseArray;

    move/from16 v24, v15

    .line 26
    new-instance v15, Landroid/util/SparseArray;

    invoke-direct {v15}, Landroid/util/SparseArray;-><init>()V

    const/16 v25, 0x0

    move/from16 v26, v13

    move/from16 v25, v14

    const/4 v13, 0x0

    .line 27
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v14

    if-ge v13, v14, :cond_0

    .line 28
    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    move-object/from16 v27, v12

    new-instance v12, Ljava/util/HashMap;

    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v29, v1

    move-object/from16 v1, v28

    check-cast v1, Ljava/util/Map;

    invoke-direct {v12, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v15, v14, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v12, v27

    move-object/from16 v1, v29

    goto :goto_0

    :cond_0
    move-object/from16 v27, v12

    .line 29
    iget-object v0, v0, Lf/i/a/a/j1/d$c;->z:Landroid/util/SparseBooleanArray;

    .line 30
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v0

    const/16 v28, 0x1

    .line 31
    new-instance v29, Lf/i/a/a/j1/d$c;

    move/from16 v13, v21

    move-object/from16 v1, v29

    move-object/from16 v12, v27

    move/from16 v21, v26

    move/from16 v26, v16

    move/from16 v14, v25

    move-object/from16 v25, v15

    move/from16 v16, v19

    move-object/from16 v19, v17

    move/from16 v17, v20

    move/from16 v15, v18

    move-object/from16 v18, v19

    move/from16 v19, v26

    move/from16 v20, v21

    move/from16 v21, v22

    move/from16 v22, v28

    move-object/from16 v26, v0

    invoke-direct/range {v1 .. v26}, Lf/i/a/a/j1/d$c;-><init>(IIIIZZZIIZLjava/lang/String;IIZZZLjava/lang/String;ZIZZZILandroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V

    .line 32
    sput-object v29, Lf/i/a/a/e1/q;->p:Lf/i/a/a/j1/d$c;

    const-string v0, "com.google.android.exoplayer2.source.dash.DashMediaSource$Factory"

    .line 33
    invoke-static {v0}, Lf/i/a/a/e1/q;->a(Ljava/lang/String;)Lf/i/a/a/e1/q$f;

    move-result-object v0

    sput-object v0, Lf/i/a/a/e1/q;->q:Lf/i/a/a/e1/q$f;

    const-string v0, "com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource$Factory"

    .line 34
    invoke-static {v0}, Lf/i/a/a/e1/q;->a(Ljava/lang/String;)Lf/i/a/a/e1/q$f;

    move-result-object v0

    sput-object v0, Lf/i/a/a/e1/q;->r:Lf/i/a/a/e1/q$f;

    const-string v0, "com.google.android.exoplayer2.source.hls.HlsMediaSource$Factory"

    .line 35
    invoke-static {v0}, Lf/i/a/a/e1/q;->a(Ljava/lang/String;)Lf/i/a/a/e1/q$f;

    move-result-object v0

    sput-object v0, Lf/i/a/a/e1/q;->s:Lf/i/a/a/e1/q$f;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Lf/i/a/a/h1/e0;Lf/i/a/a/j1/d$c;[Lf/i/a/a/p;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lf/i/a/a/h1/e0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/e1/q;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lf/i/a/a/e1/q;->b:Landroid/net/Uri;

    .line 4
    iput-object p3, p0, Lf/i/a/a/e1/q;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lf/i/a/a/e1/q;->d:Lf/i/a/a/h1/e0;

    .line 6
    new-instance p1, Lf/i/a/a/j1/d;

    new-instance p2, Lf/i/a/a/e1/q$c$a;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lf/i/a/a/e1/q$c$a;-><init>(Lf/i/a/a/e1/q$a;)V

    invoke-direct {p1, p2}, Lf/i/a/a/j1/d;-><init>(Lf/i/a/a/j1/j$b;)V

    iput-object p1, p0, Lf/i/a/a/e1/q;->e:Lf/i/a/a/j1/d;

    .line 7
    iput-object p6, p0, Lf/i/a/a/e1/q;->f:[Lf/i/a/a/p;

    .line 8
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lf/i/a/a/e1/q;->g:Landroid/util/SparseIntArray;

    .line 9
    iget-object p1, p0, Lf/i/a/a/e1/q;->e:Lf/i/a/a/j1/d;

    invoke-virtual {p1, p5}, Lf/i/a/a/j1/d;->i(Lf/i/a/a/j1/d$c;)V

    .line 10
    iget-object p1, p0, Lf/i/a/a/e1/q;->e:Lf/i/a/a/j1/d;

    sget-object p2, Lf/i/a/a/e1/b;->a:Lf/i/a/a/e1/b;

    new-instance p4, Lf/i/a/a/e1/q$d;

    invoke-direct {p4, p3}, Lf/i/a/a/e1/q$d;-><init>(Lf/i/a/a/e1/q$a;)V

    .line 11
    iput-object p2, p1, Lf/i/a/a/j1/m;->a:Lf/i/a/a/j1/m$a;

    .line 12
    iput-object p4, p1, Lf/i/a/a/j1/m;->b:Lf/i/a/a/l1/g;

    .line 13
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Lf/i/a/a/m1/h0;->D()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lf/i/a/a/e1/q;->h:Landroid/os/Handler;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lf/i/a/a/e1/q$f;
    .locals 7

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 2
    const-class v3, Lf/i/a/a/l1/m$a;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v3, "setStreamKeys"

    new-array v5, v1, [Ljava/lang/Class;

    .line 3
    const-class v6, Ljava/util/List;

    aput-object v6, v5, v4

    invoke-virtual {p0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    const-string v5, "createMediaSource"

    new-array v1, v1, [Ljava/lang/Class;

    .line 4
    const-class v6, Landroid/net/Uri;

    aput-object v6, v1, v4

    invoke-virtual {p0, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_0
    move-object p0, v0

    goto :goto_0

    :catch_1
    move-object p0, v0

    move-object v3, p0

    :goto_0
    move-object v0, v2

    goto :goto_2

    :catch_2
    move-exception p0

    goto :goto_1

    :catch_3
    move-exception p0

    .line 5
    :goto_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_4
    move-object p0, v0

    move-object v3, p0

    .line 6
    :goto_2
    new-instance v1, Lf/i/a/a/e1/q$f;

    invoke-direct {v1, v0, v3, p0}, Lf/i/a/a/e1/q$f;-><init>(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    return-object v1
.end method

.method public static synthetic b()V
    .locals 0

    return-void
.end method


# virtual methods
.method public synthetic c(Ljava/io/IOException;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/e1/q;->j:Lf/i/a/a/e1/q$b;

    invoke-static {v0}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lf/i/a/a/e1/q$b;

    invoke-interface {v0, p0, p1}, Lf/i/a/a/e1/q$b;->onPrepareError(Lf/i/a/a/e1/q;Ljava/io/IOException;)V

    return-void
.end method

.method public synthetic d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/e1/q;->j:Lf/i/a/a/e1/q$b;

    invoke-static {v0}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lf/i/a/a/e1/q$b;

    invoke-interface {v0, p0}, Lf/i/a/a/e1/q$b;->onPrepared(Lf/i/a/a/e1/q;)V

    return-void
.end method

.method public synthetic e(Lf/i/a/a/e1/q$b;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lf/i/a/a/e1/q$b;->onPrepared(Lf/i/a/a/e1/q;)V

    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/e1/q;->k:Lf/i/a/a/e1/q$e;

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v1, v0, Lf/i/a/a/e1/q$e;->k:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lf/i/a/a/e1/q$e;->k:Z

    .line 4
    iget-object v0, v0, Lf/i/a/a/e1/q$e;->g:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final g(I)Lf/i/a/a/j1/n;
    .locals 10
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "trackGroupArrays",
            "trackSelectionsByPeriodAndRenderer",
            "mediaPreparer",
            "mediaPreparer.timeline"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lf/i/a/a/e1/q;->e:Lf/i/a/a/j1/d;

    iget-object v1, p0, Lf/i/a/a/e1/q;->f:[Lf/i/a/a/p;

    iget-object v2, p0, Lf/i/a/a/e1/q;->l:[Lf/i/a/a/h1/p0;

    aget-object v2, v2, p1

    new-instance v3, Lf/i/a/a/h1/e0$a;

    iget-object v4, p0, Lf/i/a/a/e1/q;->k:Lf/i/a/a/e1/q$e;

    iget-object v4, v4, Lf/i/a/a/e1/q$e;->i:Lf/i/a/a/u0;

    .line 2
    invoke-virtual {v4, p1}, Lf/i/a/a/u0;->m(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v4}, Lf/i/a/a/h1/e0$a;-><init>(Ljava/lang/Object;)V

    iget-object v4, p0, Lf/i/a/a/e1/q;->k:Lf/i/a/a/e1/q$e;

    iget-object v4, v4, Lf/i/a/a/e1/q$e;->i:Lf/i/a/a/u0;

    .line 3
    invoke-virtual {v0, v1, v2, v3, v4}, Lf/i/a/a/j1/f;->a([Lf/i/a/a/p;Lf/i/a/a/h1/p0;Lf/i/a/a/h1/e0$a;Lf/i/a/a/u0;)Lf/i/a/a/j1/n;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4
    :goto_0
    iget v3, v0, Lf/i/a/a/j1/n;->a:I

    if-ge v2, v3, :cond_7

    .line 5
    iget-object v3, v0, Lf/i/a/a/j1/n;->c:Lf/i/a/a/j1/k;

    .line 6
    iget-object v3, v3, Lf/i/a/a/j1/k;->b:[Lf/i/a/a/j1/j;

    aget-object v3, v3, v2

    if-nez v3, :cond_0

    goto/16 :goto_6

    .line 7
    :cond_0
    iget-object v4, p0, Lf/i/a/a/e1/q;->n:[[Ljava/util/List;

    aget-object v4, v4, p1

    aget-object v4, v4, v2

    const/4 v5, 0x0

    .line 8
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 9
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lf/i/a/a/j1/j;

    .line 10
    invoke-interface {v6}, Lf/i/a/a/j1/j;->j()Lf/i/a/a/h1/o0;

    move-result-object v7

    invoke-interface {v3}, Lf/i/a/a/j1/j;->j()Lf/i/a/a/h1/o0;

    move-result-object v8

    if-ne v7, v8, :cond_4

    .line 11
    iget-object v7, p0, Lf/i/a/a/e1/q;->g:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->clear()V

    const/4 v7, 0x0

    .line 12
    :goto_2
    invoke-interface {v6}, Lf/i/a/a/j1/j;->length()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 13
    iget-object v8, p0, Lf/i/a/a/e1/q;->g:Landroid/util/SparseIntArray;

    invoke-interface {v6, v7}, Lf/i/a/a/j1/j;->e(I)I

    move-result v9

    invoke-virtual {v8, v9, v1}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    .line 14
    :goto_3
    invoke-interface {v3}, Lf/i/a/a/j1/j;->length()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 15
    iget-object v8, p0, Lf/i/a/a/e1/q;->g:Landroid/util/SparseIntArray;

    invoke-interface {v3, v7}, Lf/i/a/a/j1/j;->e(I)I

    move-result v9

    invoke-virtual {v8, v9, v1}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 16
    :cond_2
    iget-object v7, p0, Lf/i/a/a/e1/q;->g:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    new-array v7, v7, [I

    const/4 v8, 0x0

    .line 17
    :goto_4
    iget-object v9, p0, Lf/i/a/a/e1/q;->g:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 18
    iget-object v9, p0, Lf/i/a/a/e1/q;->g:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v9

    aput v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 19
    :cond_3
    new-instance v8, Lf/i/a/a/e1/q$c;

    .line 20
    invoke-interface {v6}, Lf/i/a/a/j1/j;->j()Lf/i/a/a/h1/o0;

    move-result-object v6

    invoke-direct {v8, v6, v7}, Lf/i/a/a/e1/q$c;-><init>(Lf/i/a/a/h1/o0;[I)V

    .line 21
    invoke-interface {v4, v5, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    :goto_5
    if-nez v5, :cond_6

    .line 22
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lf/i/a/a/w; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    return-object v0

    :catch_0
    move-exception p1

    .line 23
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
