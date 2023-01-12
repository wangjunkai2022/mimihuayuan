.class public Lf/d/a/o/p/c/y;
.super Ljava/lang/Object;
.source "StreamBitmapDecoder.java"

# interfaces
.implements Lf/d/a/o/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/d/a/o/p/c/y$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/d/a/o/j<",
        "Ljava/io/InputStream;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lf/d/a/o/p/c/n;

.field public final b:Lf/d/a/o/n/b0/b;


# direct methods
.method public constructor <init>(Lf/d/a/o/p/c/n;Lf/d/a/o/n/b0/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/d/a/o/p/c/y;->a:Lf/d/a/o/p/c/n;

    .line 3
    iput-object p2, p0, Lf/d/a/o/p/c/y;->b:Lf/d/a/o/n/b0/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;IILf/d/a/o/h;)Lf/d/a/o/n/w;
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lf/d/a/o/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/io/InputStream;

    .line 2
    instance-of v0, p1, Lf/d/a/o/p/c/v;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lf/d/a/o/p/c/v;

    const/4 v0, 0x0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lf/d/a/o/p/c/v;

    iget-object v1, p0, Lf/d/a/o/p/c/y;->b:Lf/d/a/o/n/b0/b;

    invoke-direct {v0, p1, v1}, Lf/d/a/o/p/c/v;-><init>(Ljava/io/InputStream;Lf/d/a/o/n/b0/b;)V

    const/4 p1, 0x1

    move-object p1, v0

    const/4 v0, 0x1

    .line 5
    :goto_0
    sget-object v1, Lf/d/a/u/c;->c:Ljava/util/Queue;

    monitor-enter v1

    .line 6
    :try_start_0
    sget-object v2, Lf/d/a/u/c;->c:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/d/a/u/c;

    .line 7
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_1

    .line 8
    new-instance v2, Lf/d/a/u/c;

    invoke-direct {v2}, Lf/d/a/u/c;-><init>()V

    .line 9
    :cond_1
    iput-object p1, v2, Lf/d/a/u/c;->a:Ljava/io/InputStream;

    .line 10
    new-instance v4, Lf/d/a/u/g;

    invoke-direct {v4, v2}, Lf/d/a/u/g;-><init>(Ljava/io/InputStream;)V

    .line 11
    new-instance v8, Lf/d/a/o/p/c/y$a;

    invoke-direct {v8, p1, v2}, Lf/d/a/o/p/c/y$a;-><init>(Lf/d/a/o/p/c/v;Lf/d/a/u/c;)V

    .line 12
    :try_start_1
    iget-object v3, p0, Lf/d/a/o/p/c/y;->a:Lf/d/a/o/p/c/n;

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v3 .. v8}, Lf/d/a/o/p/c/n;->a(Ljava/io/InputStream;IILf/d/a/o/h;Lf/d/a/o/p/c/n$b;)Lf/d/a/o/n/w;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    invoke-virtual {v2}, Lf/d/a/u/c;->d()V

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {p1}, Lf/d/a/o/p/c/v;->e()V

    :cond_2
    return-object p2

    :catchall_0
    move-exception p2

    .line 15
    invoke-virtual {v2}, Lf/d/a/u/c;->d()V

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {p1}, Lf/d/a/o/p/c/v;->e()V

    :cond_3
    throw p2

    :catchall_1
    move-exception p1

    .line 17
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public b(Ljava/lang/Object;Lf/d/a/o/h;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lf/d/a/o/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/io/InputStream;

    .line 2
    iget-object p1, p0, Lf/d/a/o/p/c/y;->a:Lf/d/a/o/p/c/n;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method
