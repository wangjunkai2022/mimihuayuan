.class public final Lf/i/a/a/e1/q$e;
.super Ljava/lang/Object;
.source "DownloadHelper.java"

# interfaces
.implements Lf/i/a/a/h1/e0$b;
.implements Lf/i/a/a/h1/d0$a;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/e1/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final a:Lf/i/a/a/h1/e0;

.field public final b:Lf/i/a/a/e1/q;

.field public final c:Lf/i/a/a/l1/e;

.field public final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lf/i/a/a/h1/d0;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Landroid/os/Handler;

.field public final f:Landroid/os/HandlerThread;

.field public final g:Landroid/os/Handler;

.field public h:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public i:Lf/i/a/a/u0;

.field public j:[Lf/i/a/a/h1/d0;

.field public k:Z


# direct methods
.method public constructor <init>(Lf/i/a/a/h1/e0;Lf/i/a/a/e1/q;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/e1/q$e;->a:Lf/i/a/a/h1/e0;

    .line 3
    iput-object p2, p0, Lf/i/a/a/e1/q$e;->b:Lf/i/a/a/e1/q;

    .line 4
    new-instance p1, Lf/i/a/a/l1/q;

    const/4 p2, 0x1

    const/high16 v0, 0x10000

    invoke-direct {p1, p2, v0}, Lf/i/a/a/l1/q;-><init>(ZI)V

    iput-object p1, p0, Lf/i/a/a/e1/q$e;->c:Lf/i/a/a/l1/e;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lf/i/a/a/e1/q$e;->d:Ljava/util/ArrayList;

    .line 6
    new-instance p1, Lf/i/a/a/e1/h;

    invoke-direct {p1, p0}, Lf/i/a/a/e1/h;-><init>(Lf/i/a/a/e1/q$e;)V

    invoke-static {p1}, Lf/i/a/a/m1/h0;->s(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    .line 7
    iput-object p1, p0, Lf/i/a/a/e1/q$e;->e:Landroid/os/Handler;

    .line 8
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "DownloadHelper"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lf/i/a/a/e1/q$e;->f:Landroid/os/HandlerThread;

    .line 9
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 10
    iget-object p1, p0, Lf/i/a/a/e1/q$e;->f:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    .line 11
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 12
    iput-object p2, p0, Lf/i/a/a/e1/q$e;->g:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 13
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Message;)Z
    .locals 8

    .line 1
    iget-boolean v0, p0, Lf/i/a/a/e1/q$e;->k:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_0

    .line 3
    :cond_2
    iput-boolean v3, p0, Lf/i/a/a/e1/q$e;->k:Z

    .line 4
    iget-object v0, p0, Lf/i/a/a/e1/q$e;->g:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5
    :goto_0
    iget-object v0, p0, Lf/i/a/a/e1/q$e;->b:Lf/i/a/a/e1/q;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Lf/i/a/a/m1/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/io/IOException;

    .line 6
    iget-object v1, v0, Lf/i/a/a/e1/q;->h:Landroid/os/Handler;

    invoke-static {v1}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lf/i/a/a/e1/e;

    invoke-direct {v2, v0, p1}, Lf/i/a/a/e1/e;-><init>(Lf/i/a/a/e1/q;Ljava/io/IOException;)V

    .line 7
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v3

    .line 8
    :cond_3
    iget-object p1, p0, Lf/i/a/a/e1/q$e;->b:Lf/i/a/a/e1/q;

    .line 9
    iget-object v0, p1, Lf/i/a/a/e1/q;->k:Lf/i/a/a/e1/q$e;

    invoke-static {v0}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p1, Lf/i/a/a/e1/q;->k:Lf/i/a/a/e1/q$e;

    iget-object v0, v0, Lf/i/a/a/e1/q$e;->j:[Lf/i/a/a/h1/d0;

    invoke-static {v0}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p1, Lf/i/a/a/e1/q;->k:Lf/i/a/a/e1/q$e;

    iget-object v0, v0, Lf/i/a/a/e1/q$e;->i:Lf/i/a/a/u0;

    invoke-static {v0}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p1, Lf/i/a/a/e1/q;->k:Lf/i/a/a/e1/q$e;

    iget-object v0, v0, Lf/i/a/a/e1/q$e;->j:[Lf/i/a/a/h1/d0;

    array-length v0, v0

    .line 13
    iget-object v2, p1, Lf/i/a/a/e1/q;->f:[Lf/i/a/a/p;

    array-length v2, v2

    const/4 v4, 0x2

    new-array v5, v4, [I

    aput v2, v5, v3

    aput v0, v5, v1

    .line 14
    const-class v6, Ljava/util/List;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Ljava/util/List;

    iput-object v5, p1, Lf/i/a/a/e1/q;->n:[[Ljava/util/List;

    new-array v4, v4, [I

    aput v2, v4, v3

    aput v0, v4, v1

    .line 15
    const-class v5, Ljava/util/List;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Ljava/util/List;

    iput-object v4, p1, Lf/i/a/a/e1/q;->o:[[Ljava/util/List;

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_5

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v2, :cond_4

    .line 16
    iget-object v6, p1, Lf/i/a/a/e1/q;->n:[[Ljava/util/List;

    aget-object v6, v6, v4

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    aput-object v7, v6, v5

    .line 17
    iget-object v6, p1, Lf/i/a/a/e1/q;->o:[[Ljava/util/List;

    aget-object v6, v6, v4

    iget-object v7, p1, Lf/i/a/a/e1/q;->n:[[Ljava/util/List;

    aget-object v7, v7, v4

    aget-object v7, v7, v5

    .line 18
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    aput-object v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 19
    :cond_5
    new-array v2, v0, [Lf/i/a/a/h1/p0;

    iput-object v2, p1, Lf/i/a/a/e1/q;->l:[Lf/i/a/a/h1/p0;

    .line 20
    new-array v2, v0, [Lf/i/a/a/j1/f$a;

    iput-object v2, p1, Lf/i/a/a/e1/q;->m:[Lf/i/a/a/j1/f$a;

    :goto_3
    if-ge v1, v0, :cond_7

    .line 21
    iget-object v2, p1, Lf/i/a/a/e1/q;->l:[Lf/i/a/a/h1/p0;

    iget-object v4, p1, Lf/i/a/a/e1/q;->k:Lf/i/a/a/e1/q$e;

    iget-object v4, v4, Lf/i/a/a/e1/q$e;->j:[Lf/i/a/a/h1/d0;

    aget-object v4, v4, v1

    invoke-interface {v4}, Lf/i/a/a/h1/d0;->o()Lf/i/a/a/h1/p0;

    move-result-object v4

    aput-object v4, v2, v1

    .line 22
    invoke-virtual {p1, v1}, Lf/i/a/a/e1/q;->g(I)Lf/i/a/a/j1/n;

    move-result-object v2

    .line 23
    iget-object v4, p1, Lf/i/a/a/e1/q;->e:Lf/i/a/a/j1/d;

    iget-object v2, v2, Lf/i/a/a/j1/n;->d:Ljava/lang/Object;

    if-eqz v4, :cond_6

    .line 24
    check-cast v2, Lf/i/a/a/j1/f$a;

    iput-object v2, v4, Lf/i/a/a/j1/f;->c:Lf/i/a/a/j1/f$a;

    .line 25
    iget-object v4, p1, Lf/i/a/a/e1/q;->m:[Lf/i/a/a/j1/f$a;

    invoke-static {v2}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    aput-object v2, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    const/4 p1, 0x0

    .line 26
    throw p1

    .line 27
    :cond_7
    iput-boolean v3, p1, Lf/i/a/a/e1/q;->i:Z

    .line 28
    iget-object v0, p1, Lf/i/a/a/e1/q;->h:Landroid/os/Handler;

    invoke-static {v0}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lf/i/a/a/e1/d;

    invoke-direct {v1, p1}, Lf/i/a/a/e1/d;-><init>(Lf/i/a/a/e1/q;)V

    .line 29
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v3
.end method

.method public f(Lf/i/a/a/h1/e0;Lf/i/a/a/u0;Ljava/lang/Object;)V
    .locals 5
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lf/i/a/a/e1/q$e;->i:Lf/i/a/a/u0;

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p2, p0, Lf/i/a/a/e1/q$e;->i:Lf/i/a/a/u0;

    .line 3
    iput-object p3, p0, Lf/i/a/a/e1/q$e;->h:Ljava/lang/Object;

    .line 4
    invoke-virtual {p2}, Lf/i/a/a/u0;->i()I

    move-result p1

    new-array p1, p1, [Lf/i/a/a/h1/d0;

    iput-object p1, p0, Lf/i/a/a/e1/q$e;->j:[Lf/i/a/a/h1/d0;

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 5
    :goto_0
    iget-object v0, p0, Lf/i/a/a/e1/q$e;->j:[Lf/i/a/a/h1/d0;

    array-length v1, v0

    const-wide/16 v2, 0x0

    if-ge p3, v1, :cond_1

    .line 6
    iget-object v0, p0, Lf/i/a/a/e1/q$e;->a:Lf/i/a/a/h1/e0;

    new-instance v1, Lf/i/a/a/h1/e0$a;

    .line 7
    invoke-virtual {p2, p3}, Lf/i/a/a/u0;->m(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v1, v4}, Lf/i/a/a/h1/e0$a;-><init>(Ljava/lang/Object;)V

    iget-object v4, p0, Lf/i/a/a/e1/q$e;->c:Lf/i/a/a/l1/e;

    .line 8
    invoke-interface {v0, v1, v4, v2, v3}, Lf/i/a/a/h1/e0;->c(Lf/i/a/a/h1/e0$a;Lf/i/a/a/l1/e;J)Lf/i/a/a/h1/d0;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lf/i/a/a/e1/q$e;->j:[Lf/i/a/a/h1/d0;

    aput-object v0, v1, p3

    .line 10
    iget-object v1, p0, Lf/i/a/a/e1/q$e;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 11
    :cond_1
    array-length p2, v0

    :goto_1
    if-ge p1, p2, :cond_2

    aget-object p3, v0, p1

    .line 12
    invoke-interface {p3, p0, v2, v3}, Lf/i/a/a/h1/d0;->m(Lf/i/a/a/h1/d0$a;J)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public h(Lf/i/a/a/h1/d0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/e1/q$e;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Lf/i/a/a/e1/q$e;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lf/i/a/a/e1/q$e;->g:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    iget-object p1, p0, Lf/i/a/a/e1/q$e;->e:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    const/4 v3, 0x0

    if-eq v0, v2, :cond_4

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    return v3

    .line 2
    :cond_0
    iget-object p1, p0, Lf/i/a/a/e1/q$e;->j:[Lf/i/a/a/h1/d0;

    if-eqz p1, :cond_1

    .line 3
    array-length v0, p1

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v4, p1, v3

    .line 4
    iget-object v5, p0, Lf/i/a/a/e1/q$e;->a:Lf/i/a/a/h1/e0;

    invoke-interface {v5, v4}, Lf/i/a/a/h1/e0;->d(Lf/i/a/a/h1/d0;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lf/i/a/a/e1/q$e;->a:Lf/i/a/a/h1/e0;

    invoke-interface {p1, p0}, Lf/i/a/a/h1/e0;->i(Lf/i/a/a/h1/e0$b;)V

    .line 6
    iget-object p1, p0, Lf/i/a/a/e1/q$e;->g:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lf/i/a/a/e1/q$e;->f:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    return v2

    .line 8
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lf/i/a/a/h1/d0;

    .line 9
    iget-object v0, p0, Lf/i/a/a/e1/q$e;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x0

    .line 10
    invoke-interface {p1, v0, v1}, Lf/i/a/a/h1/d0;->f(J)Z

    :cond_3
    return v2

    .line 11
    :cond_4
    :try_start_0
    iget-object p1, p0, Lf/i/a/a/e1/q$e;->j:[Lf/i/a/a/h1/d0;

    if-nez p1, :cond_5

    .line 12
    iget-object p1, p0, Lf/i/a/a/e1/q$e;->a:Lf/i/a/a/h1/e0;

    invoke-interface {p1}, Lf/i/a/a/h1/e0;->b()V

    goto :goto_2

    .line 13
    :cond_5
    :goto_1
    iget-object p1, p0, Lf/i/a/a/e1/q$e;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v3, p1, :cond_6

    .line 14
    iget-object p1, p0, Lf/i/a/a/e1/q$e;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/i/a/a/h1/d0;

    invoke-interface {p1}, Lf/i/a/a/h1/d0;->s()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 15
    :cond_6
    :goto_2
    iget-object p1, p0, Lf/i/a/a/e1/q$e;->g:Landroid/os/Handler;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 16
    iget-object v0, p0, Lf/i/a/a/e1/q$e;->e:Landroid/os/Handler;

    .line 17
    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_3
    return v2

    .line 19
    :cond_7
    iget-object p1, p0, Lf/i/a/a/e1/q$e;->a:Lf/i/a/a/h1/e0;

    invoke-interface {p1, p0, v1}, Lf/i/a/a/h1/e0;->e(Lf/i/a/a/h1/e0$b;Lf/i/a/a/l1/i0;)V

    .line 20
    iget-object p1, p0, Lf/i/a/a/e1/q$e;->g:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return v2
.end method

.method public i(Lf/i/a/a/h1/l0;)V
    .locals 2

    .line 1
    check-cast p1, Lf/i/a/a/h1/d0;

    .line 2
    iget-object v0, p0, Lf/i/a/a/e1/q$e;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lf/i/a/a/e1/q$e;->g:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method
