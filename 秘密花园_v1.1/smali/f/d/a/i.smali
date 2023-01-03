.class public Lf/d/a/i;
.super Lf/d/a/s/a;
.source "RequestBuilder.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lf/d/a/s/a<",
        "Lf/d/a/i<",
        "TTranscodeType;>;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Object<",
        "Lf/d/a/i<",
        "TTranscodeType;>;>;"
    }
.end annotation


# instance fields
.field public final A:Landroid/content/Context;

.field public final B:Lf/d/a/j;

.field public final C:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field public final D:Lf/d/a/e;

.field public E:Lf/d/a/k;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/k<",
            "*-TTranscodeType;>;"
        }
    .end annotation
.end field

.field public F:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public G:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/d/a/s/d<",
            "TTranscodeType;>;>;"
        }
    .end annotation
.end field

.field public H:Z

.field public I:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lf/d/a/s/e;

    invoke-direct {v0}, Lf/d/a/s/e;-><init>()V

    sget-object v1, Lf/d/a/o/n/k;->c:Lf/d/a/o/n/k;

    .line 2
    invoke-virtual {v0, v1}, Lf/d/a/s/a;->f(Lf/d/a/o/n/k;)Lf/d/a/s/a;

    move-result-object v0

    check-cast v0, Lf/d/a/s/e;

    sget-object v1, Lf/d/a/f;->d:Lf/d/a/f;

    .line 3
    invoke-virtual {v0, v1}, Lf/d/a/s/a;->r(Lf/d/a/f;)Lf/d/a/s/a;

    move-result-object v0

    check-cast v0, Lf/d/a/s/e;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lf/d/a/s/a;->v(Z)Lf/d/a/s/a;

    move-result-object v0

    check-cast v0, Lf/d/a/s/e;

    return-void
.end method

.method public constructor <init>(Lf/d/a/c;Lf/d/a/j;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 3
    .param p1    # Lf/d/a/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/c;",
            "Lf/d/a/j;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lf/d/a/s/a;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lf/d/a/i;->H:Z

    .line 3
    iput-object p2, p0, Lf/d/a/i;->B:Lf/d/a/j;

    .line 4
    iput-object p3, p0, Lf/d/a/i;->C:Ljava/lang/Class;

    .line 5
    iput-object p4, p0, Lf/d/a/i;->A:Landroid/content/Context;

    .line 6
    iget-object p4, p2, Lf/d/a/j;->a:Lf/d/a/c;

    .line 7
    iget-object p4, p4, Lf/d/a/c;->c:Lf/d/a/e;

    .line 8
    iget-object v0, p4, Lf/d/a/e;->f:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/d/a/k;

    if-nez v0, :cond_1

    .line 9
    iget-object p4, p4, Lf/d/a/e;->f:Ljava/util/Map;

    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 11
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/d/a/k;

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 12
    sget-object v0, Lf/d/a/e;->k:Lf/d/a/k;

    .line 13
    :cond_2
    iput-object v0, p0, Lf/d/a/i;->E:Lf/d/a/k;

    .line 14
    iget-object p1, p1, Lf/d/a/c;->c:Lf/d/a/e;

    .line 15
    iput-object p1, p0, Lf/d/a/i;->D:Lf/d/a/e;

    .line 16
    iget-object p1, p2, Lf/d/a/j;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 17
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lf/d/a/s/d;

    .line 18
    invoke-virtual {p0, p3}, Lf/d/a/i;->B(Lf/d/a/s/d;)Lf/d/a/i;

    goto :goto_1

    .line 19
    :cond_3
    monitor-enter p2

    .line 20
    :try_start_0
    iget-object p1, p2, Lf/d/a/j;->k:Lf/d/a/s/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    .line 21
    invoke-virtual {p0, p1}, Lf/d/a/i;->C(Lf/d/a/s/a;)Lf/d/a/i;

    return-void

    :catchall_0
    move-exception p1

    .line 22
    monitor-exit p2

    throw p1
.end method


# virtual methods
.method public B(Lf/d/a/s/d;)Lf/d/a/i;
    .locals 1
    .param p1    # Lf/d/a/s/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/s/d<",
            "TTranscodeType;>;)",
            "Lf/d/a/i<",
            "TTranscodeType;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lf/d/a/i;->G:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf/d/a/i;->G:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lf/d/a/i;->G:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0
.end method

.method public C(Lf/d/a/s/a;)Lf/d/a/i;
    .locals 1
    .param p1    # Lf/d/a/s/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/s/a<",
            "*>;)",
            "Lf/d/a/i<",
            "TTranscodeType;>;"
        }
    .end annotation

    const-string v0, "Argument must not be null"

    .line 1
    invoke-static {p1, v0}, Lc/a/a/b/g/h;->s(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-super {p0, p1}, Lf/d/a/s/a;->a(Lf/d/a/s/a;)Lf/d/a/s/a;

    move-result-object p1

    check-cast p1, Lf/d/a/i;

    return-object p1
.end method

.method public final D(Ljava/lang/Object;Lf/d/a/s/h/h;Lf/d/a/s/d;Lf/d/a/s/c;Lf/d/a/k;Lf/d/a/f;IILf/d/a/s/a;Ljava/util/concurrent/Executor;)Lf/d/a/s/b;
    .locals 11
    .param p3    # Lf/d/a/s/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lf/d/a/s/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lf/d/a/s/h/h<",
            "TTranscodeType;>;",
            "Lf/d/a/s/d<",
            "TTranscodeType;>;",
            "Lf/d/a/s/c;",
            "Lf/d/a/k<",
            "*-TTranscodeType;>;",
            "Lf/d/a/f;",
            "II",
            "Lf/d/a/s/a<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lf/d/a/s/b;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p9

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p10

    .line 1
    invoke-virtual/range {v0 .. v10}, Lf/d/a/i;->K(Ljava/lang/Object;Lf/d/a/s/h/h;Lf/d/a/s/d;Lf/d/a/s/a;Lf/d/a/s/c;Lf/d/a/k;Lf/d/a/f;IILjava/util/concurrent/Executor;)Lf/d/a/s/b;

    move-result-object v0

    return-object v0
.end method

.method public E()Lf/d/a/i;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf/d/a/i<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lf/d/a/s/a;->d()Lf/d/a/s/a;

    move-result-object v0

    check-cast v0, Lf/d/a/i;

    .line 2
    iget-object v1, v0, Lf/d/a/i;->E:Lf/d/a/k;

    invoke-virtual {v1}, Lf/d/a/k;->a()Lf/d/a/k;

    move-result-object v1

    iput-object v1, v0, Lf/d/a/i;->E:Lf/d/a/k;

    return-object v0
.end method

.method public final F(Lf/d/a/s/h/h;Lf/d/a/s/d;Lf/d/a/s/a;Ljava/util/concurrent/Executor;)Lf/d/a/s/h/h;
    .locals 14
    .param p1    # Lf/d/a/s/h/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lf/d/a/s/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lf/d/a/s/h/h<",
            "TTranscodeType;>;>(TY;",
            "Lf/d/a/s/d<",
            "TTranscodeType;>;",
            "Lf/d/a/s/a<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")TY;"
        }
    .end annotation

    move-object v12, p0

    move-object v0, p1

    move-object/from16 v13, p3

    const-string v1, "Argument must not be null"

    .line 1
    invoke-static {p1, v1}, Lc/a/a/b/g/h;->s(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-boolean v1, v12, Lf/d/a/i;->I:Z

    if-eqz v1, :cond_4

    .line 3
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iget-object v6, v12, Lf/d/a/i;->E:Lf/d/a/k;

    .line 4
    iget-object v7, v13, Lf/d/a/s/a;->d:Lf/d/a/f;

    .line 5
    iget v8, v13, Lf/d/a/s/a;->k:I

    .line 6
    iget v9, v13, Lf/d/a/s/a;->j:I

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    .line 7
    invoke-virtual/range {v1 .. v11}, Lf/d/a/i;->D(Ljava/lang/Object;Lf/d/a/s/h/h;Lf/d/a/s/d;Lf/d/a/s/c;Lf/d/a/k;Lf/d/a/f;IILf/d/a/s/a;Ljava/util/concurrent/Executor;)Lf/d/a/s/b;

    move-result-object v1

    .line 8
    invoke-interface {p1}, Lf/d/a/s/h/h;->f()Lf/d/a/s/b;

    move-result-object v2

    .line 9
    move-object v3, v1

    check-cast v3, Lf/d/a/s/g;

    invoke-virtual {v3, v2}, Lf/d/a/s/g;->j(Lf/d/a/s/b;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 10
    iget-boolean v4, v13, Lf/d/a/s/a;->i:Z

    if-nez v4, :cond_0

    .line 11
    invoke-interface {v2}, Lf/d/a/s/b;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_2

    const-string v1, "Argument must not be null"

    .line 12
    invoke-static {v2, v1}, Lc/a/a/b/g/h;->s(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    invoke-interface {v2}, Lf/d/a/s/b;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 14
    invoke-interface {v2}, Lf/d/a/s/b;->c()V

    :cond_1
    return-object v0

    .line 15
    :cond_2
    iget-object v2, v12, Lf/d/a/i;->B:Lf/d/a/j;

    invoke-virtual {v2, p1}, Lf/d/a/j;->m(Lf/d/a/s/h/h;)V

    .line 16
    invoke-interface {p1, v1}, Lf/d/a/s/h/h;->i(Lf/d/a/s/b;)V

    .line 17
    iget-object v2, v12, Lf/d/a/i;->B:Lf/d/a/j;

    .line 18
    monitor-enter v2

    .line 19
    :try_start_0
    iget-object v4, v2, Lf/d/a/j;->f:Lf/d/a/p/o;

    .line 20
    iget-object v4, v4, Lf/d/a/p/o;->a:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v4, v2, Lf/d/a/j;->d:Lf/d/a/p/n;

    .line 22
    iget-object v5, v4, Lf/d/a/p/n;->a:Ljava/util/Set;

    invoke-interface {v5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 23
    iget-boolean v5, v4, Lf/d/a/p/n;->c:Z

    if-nez v5, :cond_3

    .line 24
    invoke-virtual {v3}, Lf/d/a/s/g;->c()V

    goto :goto_1

    .line 25
    :cond_3
    invoke-virtual {v3}, Lf/d/a/s/g;->clear()V

    const/4 v3, 0x2

    const-string v5, "RequestTracker"

    .line 26
    invoke-static {v5, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 27
    iget-object v3, v4, Lf/d/a/p/n;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :goto_1
    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 29
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must call #load() before calling #into()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public G(Landroid/widget/ImageView;)Lf/d/a/s/h/i;
    .locals 4
    .param p1    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lf/d/a/s/h/i<",
            "Landroid/widget/ImageView;",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lf/d/a/u/i;->a()V

    const-string v0, "Argument must not be null"

    .line 2
    invoke-static {p1, v0}, Lc/a/a/b/g/h;->s(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Lf/d/a/s/a;->a:I

    const/16 v1, 0x800

    invoke-static {v0, v1}, Lf/d/a/s/a;->j(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-boolean v0, p0, Lf/d/a/s/a;->n:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    sget-object v0, Lf/d/a/i$a;->a:[I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 7
    :pswitch_0
    invoke-virtual {p0}, Lf/d/a/i;->d()Lf/d/a/s/a;

    move-result-object v0

    invoke-virtual {v0}, Lf/d/a/s/a;->m()Lf/d/a/s/a;

    move-result-object v0

    goto :goto_1

    .line 8
    :pswitch_1
    invoke-virtual {p0}, Lf/d/a/i;->d()Lf/d/a/s/a;

    move-result-object v0

    invoke-virtual {v0}, Lf/d/a/s/a;->n()Lf/d/a/s/a;

    move-result-object v0

    goto :goto_1

    .line 9
    :pswitch_2
    invoke-virtual {p0}, Lf/d/a/i;->d()Lf/d/a/s/a;

    move-result-object v0

    invoke-virtual {v0}, Lf/d/a/s/a;->m()Lf/d/a/s/a;

    move-result-object v0

    goto :goto_1

    .line 10
    :pswitch_3
    invoke-virtual {p0}, Lf/d/a/i;->d()Lf/d/a/s/a;

    move-result-object v0

    invoke-virtual {v0}, Lf/d/a/s/a;->l()Lf/d/a/s/a;

    move-result-object v0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v0, p0

    .line 11
    :goto_1
    iget-object v1, p0, Lf/d/a/i;->D:Lf/d/a/e;

    iget-object v2, p0, Lf/d/a/i;->C:Ljava/lang/Class;

    .line 12
    iget-object v1, v1, Lf/d/a/e;->c:Lf/d/a/s/h/f;

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 13
    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 14
    new-instance v1, Lf/d/a/s/h/b;

    invoke-direct {v1, p1}, Lf/d/a/s/h/b;-><init>(Landroid/widget/ImageView;)V

    goto :goto_2

    .line 15
    :cond_1
    const-class v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 16
    new-instance v1, Lf/d/a/s/h/d;

    invoke-direct {v1, p1}, Lf/d/a/s/h/d;-><init>(Landroid/widget/ImageView;)V

    .line 17
    :goto_2
    sget-object p1, Lf/d/a/u/d;->a:Ljava/util/concurrent/Executor;

    .line 18
    invoke-virtual {p0, v1, v3, v0, p1}, Lf/d/a/i;->F(Lf/d/a/s/h/h;Lf/d/a/s/d;Lf/d/a/s/a;Ljava/util/concurrent/Executor;)Lf/d/a/s/h/h;

    return-object v1

    .line 19
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", try .as*(Class).transcode(ResourceTranscoder)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_3
    throw v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public H(Ljava/lang/Integer;)Lf/d/a/i;
    .locals 1
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lf/d/a/i<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lf/d/a/i;->F:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lf/d/a/i;->I:Z

    .line 3
    iget-object p1, p0, Lf/d/a/i;->A:Landroid/content/Context;

    invoke-static {p1}, Lf/d/a/t/a;->c(Landroid/content/Context;)Lf/d/a/o/f;

    move-result-object p1

    .line 4
    new-instance v0, Lf/d/a/s/e;

    invoke-direct {v0}, Lf/d/a/s/e;-><init>()V

    invoke-virtual {v0, p1}, Lf/d/a/s/a;->u(Lf/d/a/o/f;)Lf/d/a/s/a;

    move-result-object p1

    check-cast p1, Lf/d/a/s/e;

    .line 5
    invoke-virtual {p0, p1}, Lf/d/a/i;->C(Lf/d/a/s/a;)Lf/d/a/i;

    move-result-object p1

    return-object p1
.end method

.method public I(Ljava/lang/Object;)Lf/d/a/i;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lf/d/a/i<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lf/d/a/i;->F:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lf/d/a/i;->I:Z

    return-object p0
.end method

.method public J(Ljava/lang/String;)Lf/d/a/i;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lf/d/a/i<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lf/d/a/i;->F:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lf/d/a/i;->I:Z

    return-object p0
.end method

.method public final K(Ljava/lang/Object;Lf/d/a/s/h/h;Lf/d/a/s/d;Lf/d/a/s/a;Lf/d/a/s/c;Lf/d/a/k;Lf/d/a/f;IILjava/util/concurrent/Executor;)Lf/d/a/s/b;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lf/d/a/s/h/h<",
            "TTranscodeType;>;",
            "Lf/d/a/s/d<",
            "TTranscodeType;>;",
            "Lf/d/a/s/a<",
            "*>;",
            "Lf/d/a/s/c;",
            "Lf/d/a/k<",
            "*-TTranscodeType;>;",
            "Lf/d/a/f;",
            "II",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lf/d/a/s/b;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v2, v0, Lf/d/a/i;->A:Landroid/content/Context;

    iget-object v3, v0, Lf/d/a/i;->D:Lf/d/a/e;

    iget-object v5, v0, Lf/d/a/i;->F:Ljava/lang/Object;

    iget-object v6, v0, Lf/d/a/i;->C:Ljava/lang/Class;

    iget-object v13, v0, Lf/d/a/i;->G:Ljava/util/List;

    .line 2
    iget-object v15, v3, Lf/d/a/e;->g:Lf/d/a/o/n/l;

    move-object/from16 v1, p6

    .line 3
    iget-object v14, v1, Lf/d/a/k;->a:Lf/d/a/s/i/c;

    .line 4
    new-instance v18, Lf/d/a/s/g;

    move-object/from16 v1, v18

    move-object/from16 v4, p1

    move-object/from16 v7, p4

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p7

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v16, v14

    move-object/from16 v14, p5

    move-object/from16 v17, p10

    invoke-direct/range {v1 .. v17}, Lf/d/a/s/g;-><init>(Landroid/content/Context;Lf/d/a/e;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lf/d/a/s/a;IILf/d/a/f;Lf/d/a/s/h/h;Lf/d/a/s/d;Ljava/util/List;Lf/d/a/s/c;Lf/d/a/o/n/l;Lf/d/a/s/i/c;Ljava/util/concurrent/Executor;)V

    return-object v18
.end method

.method public bridge synthetic a(Lf/d/a/s/a;)Lf/d/a/s/a;
    .locals 0
    .param p1    # Lf/d/a/s/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lf/d/a/i;->C(Lf/d/a/s/a;)Lf/d/a/i;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lf/d/a/i;->E()Lf/d/a/i;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Lf/d/a/s/a;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lf/d/a/i;->E()Lf/d/a/i;

    move-result-object v0

    return-object v0
.end method
