.class public final Lf/i/a/a/l1/e0;
.super Ljava/lang/Object;
.source "ParsingLoadable.java"

# interfaces
.implements Lf/i/a/a/l1/c0$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/l1/e0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lf/i/a/a/l1/c0$e;"
    }
.end annotation


# instance fields
.field public final a:Lf/i/a/a/l1/p;

.field public final b:I

.field public final c:Lf/i/a/a/l1/g0;

.field public final d:Lf/i/a/a/l1/e0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i/a/a/l1/e0$a<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public volatile e:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf/i/a/a/l1/m;Landroid/net/Uri;ILf/i/a/a/l1/e0$a;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i/a/a/l1/m;",
            "Landroid/net/Uri;",
            "I",
            "Lf/i/a/a/l1/e0$a<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v8, Lf/i/a/a/l1/p;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, v8

    move-object v1, p2

    .line 2
    invoke-direct/range {v0 .. v7}, Lf/i/a/a/l1/p;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance p2, Lf/i/a/a/l1/g0;

    invoke-direct {p2, p1}, Lf/i/a/a/l1/g0;-><init>(Lf/i/a/a/l1/m;)V

    iput-object p2, p0, Lf/i/a/a/l1/e0;->c:Lf/i/a/a/l1/g0;

    .line 5
    iput-object v8, p0, Lf/i/a/a/l1/e0;->a:Lf/i/a/a/l1/p;

    .line 6
    iput p3, p0, Lf/i/a/a/l1/e0;->b:I

    .line 7
    iput-object p4, p0, Lf/i/a/a/l1/e0;->d:Lf/i/a/a/l1/e0$a;

    return-void
.end method

.method public static c(Lf/i/a/a/l1/m;Lf/i/a/a/l1/e0$a;Lf/i/a/a/l1/p;I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lf/i/a/a/l1/m;",
            "Lf/i/a/a/l1/e0$a<",
            "+TT;>;",
            "Lf/i/a/a/l1/p;",
            "I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p3, Lf/i/a/a/l1/g0;

    invoke-direct {p3, p0}, Lf/i/a/a/l1/g0;-><init>(Lf/i/a/a/l1/m;)V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p3, Lf/i/a/a/l1/g0;->b:J

    .line 3
    new-instance p0, Lf/i/a/a/l1/o;

    invoke-direct {p0, p3, p2}, Lf/i/a/a/l1/o;-><init>(Lf/i/a/a/l1/m;Lf/i/a/a/l1/p;)V

    .line 4
    :try_start_0
    iget-boolean p2, p0, Lf/i/a/a/l1/o;->d:Z

    if-nez p2, :cond_0

    .line 5
    iget-object p2, p0, Lf/i/a/a/l1/o;->a:Lf/i/a/a/l1/m;

    iget-object v0, p0, Lf/i/a/a/l1/o;->b:Lf/i/a/a/l1/p;

    invoke-interface {p2, v0}, Lf/i/a/a/l1/m;->b(Lf/i/a/a/l1/p;)J

    const/4 p2, 0x1

    .line 6
    iput-boolean p2, p0, Lf/i/a/a/l1/o;->d:Z

    .line 7
    :cond_0
    invoke-virtual {p3}, Lf/i/a/a/l1/g0;->d()Landroid/net/Uri;

    move-result-object p2

    invoke-static {p2}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-interface {p1, p2, p0}, Lf/i/a/a/l1/e0$a;->a(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-static {p0}, Lf/i/a/a/m1/h0;->l(Ljava/io/Closeable;)V

    .line 10
    invoke-static {p1}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :catchall_0
    move-exception p1

    .line 11
    invoke-static {p0}, Lf/i/a/a/m1/h0;->l(Ljava/io/Closeable;)V

    .line 12
    throw p1
.end method


# virtual methods
.method public final a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/l1/e0;->c:Lf/i/a/a/l1/g0;

    const-wide/16 v1, 0x0

    .line 2
    iput-wide v1, v0, Lf/i/a/a/l1/g0;->b:J

    .line 3
    new-instance v0, Lf/i/a/a/l1/o;

    iget-object v1, p0, Lf/i/a/a/l1/e0;->c:Lf/i/a/a/l1/g0;

    iget-object v2, p0, Lf/i/a/a/l1/e0;->a:Lf/i/a/a/l1/p;

    invoke-direct {v0, v1, v2}, Lf/i/a/a/l1/o;-><init>(Lf/i/a/a/l1/m;Lf/i/a/a/l1/p;)V

    .line 4
    :try_start_0
    iget-boolean v1, v0, Lf/i/a/a/l1/o;->d:Z

    if-nez v1, :cond_0

    .line 5
    iget-object v1, v0, Lf/i/a/a/l1/o;->a:Lf/i/a/a/l1/m;

    iget-object v2, v0, Lf/i/a/a/l1/o;->b:Lf/i/a/a/l1/p;

    invoke-interface {v1, v2}, Lf/i/a/a/l1/m;->b(Lf/i/a/a/l1/p;)J

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Lf/i/a/a/l1/o;->d:Z

    .line 7
    :cond_0
    iget-object v1, p0, Lf/i/a/a/l1/e0;->c:Lf/i/a/a/l1/g0;

    invoke-virtual {v1}, Lf/i/a/a/l1/g0;->d()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v2, p0, Lf/i/a/a/l1/e0;->d:Lf/i/a/a/l1/e0$a;

    invoke-interface {v2, v1, v0}, Lf/i/a/a/l1/e0$a;->a(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lf/i/a/a/l1/e0;->e:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-static {v0}, Lf/i/a/a/m1/h0;->l(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lf/i/a/a/m1/h0;->l(Ljava/io/Closeable;)V

    .line 10
    throw v1
.end method

.method public final b()V
    .locals 0

    return-void
.end method
