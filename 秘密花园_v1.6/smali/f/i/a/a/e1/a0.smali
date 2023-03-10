.class public final Lf/i/a/a/e1/a0;
.super Ljava/lang/Object;
.source "ProgressiveDownloader.java"

# interfaces
.implements Lf/i/a/a/e1/v;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/e1/a0$a;
    }
.end annotation


# instance fields
.field public final a:Lf/i/a/a/l1/p;

.field public final b:Lf/i/a/a/l1/k0/b;

.field public final c:Lf/i/a/a/l1/k0/e;

.field public final d:Lf/i/a/a/l1/k0/j;

.field public final e:Lf/i/a/a/m1/x;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Lf/i/a/a/e1/w;)V
    .locals 9
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v8, Lf/i/a/a/l1/p;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/16 v7, 0x10

    move-object v0, v8

    move-object v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lf/i/a/a/l1/p;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    iput-object v8, p0, Lf/i/a/a/e1/a0;->a:Lf/i/a/a/l1/p;

    .line 3
    iget-object p1, p3, Lf/i/a/a/e1/w;->a:Lf/i/a/a/l1/k0/b;

    .line 4
    iput-object p1, p0, Lf/i/a/a/e1/a0;->b:Lf/i/a/a/l1/k0/b;

    .line 5
    iget-object p1, p3, Lf/i/a/a/e1/w;->d:Lf/i/a/a/l1/k0/f;

    invoke-virtual {p1}, Lf/i/a/a/l1/k0/f;->a()Lf/i/a/a/l1/k0/e;

    move-result-object p1

    .line 6
    iput-object p1, p0, Lf/i/a/a/e1/a0;->c:Lf/i/a/a/l1/k0/e;

    .line 7
    iget-object p1, p3, Lf/i/a/a/e1/w;->b:Lf/i/a/a/l1/k0/j;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lf/i/a/a/l1/k0/l;->a:Lf/i/a/a/l1/k0/j;

    .line 8
    :goto_0
    iput-object p1, p0, Lf/i/a/a/e1/a0;->d:Lf/i/a/a/l1/k0/j;

    .line 9
    iget-object p1, p3, Lf/i/a/a/e1/w;->c:Lf/i/a/a/m1/x;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Lf/i/a/a/m1/x;

    invoke-direct {p1}, Lf/i/a/a/m1/x;-><init>()V

    .line 10
    :goto_1
    iput-object p1, p0, Lf/i/a/a/e1/a0;->e:Lf/i/a/a/m1/x;

    .line 11
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lf/i/a/a/e1/a0;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public a(Lf/i/a/a/e1/v$a;)V
    .locals 12
    .param p1    # Lf/i/a/a/e1/v$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/e1/a0;->e:Lf/i/a/a/m1/x;

    const/16 v1, -0x3e8

    invoke-virtual {v0, v1}, Lf/i/a/a/m1/x;->a(I)V

    .line 2
    :try_start_0
    iget-object v2, p0, Lf/i/a/a/e1/a0;->a:Lf/i/a/a/l1/p;

    iget-object v3, p0, Lf/i/a/a/e1/a0;->b:Lf/i/a/a/l1/k0/b;

    iget-object v4, p0, Lf/i/a/a/e1/a0;->d:Lf/i/a/a/l1/k0/j;

    iget-object v5, p0, Lf/i/a/a/e1/a0;->c:Lf/i/a/a/l1/k0/e;

    const/high16 v0, 0x20000

    new-array v6, v0, [B

    iget-object v7, p0, Lf/i/a/a/e1/a0;->e:Lf/i/a/a/m1/x;

    const/16 v8, -0x3e8

    new-instance v9, Lf/i/a/a/e1/a0$a;

    invoke-direct {v9, p1}, Lf/i/a/a/e1/a0$a;-><init>(Lf/i/a/a/e1/v$a;)V

    iget-object v10, p0, Lf/i/a/a/e1/a0;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v11, 0x1

    invoke-static/range {v2 .. v11}, Lf/i/a/a/l1/k0/l;->b(Lf/i/a/a/l1/p;Lf/i/a/a/l1/k0/b;Lf/i/a/a/l1/k0/j;Lf/i/a/a/l1/k0/e;[BLf/i/a/a/m1/x;ILf/i/a/a/l1/k0/l$a;Ljava/util/concurrent/atomic/AtomicBoolean;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object p1, p0, Lf/i/a/a/e1/a0;->e:Lf/i/a/a/m1/x;

    invoke-virtual {p1, v1}, Lf/i/a/a/m1/x;->b(I)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lf/i/a/a/e1/a0;->e:Lf/i/a/a/m1/x;

    invoke-virtual {v0, v1}, Lf/i/a/a/m1/x;->b(I)V

    .line 4
    throw p1
.end method

.method public cancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/e1/a0;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public remove()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/i/a/a/e1/a0;->a:Lf/i/a/a/l1/p;

    iget-object v1, p0, Lf/i/a/a/e1/a0;->b:Lf/i/a/a/l1/k0/b;

    iget-object v2, p0, Lf/i/a/a/e1/a0;->d:Lf/i/a/a/l1/k0/j;

    invoke-static {v0, v1, v2}, Lf/i/a/a/l1/k0/l;->g(Lf/i/a/a/l1/p;Lf/i/a/a/l1/k0/b;Lf/i/a/a/l1/k0/j;)V

    return-void
.end method
