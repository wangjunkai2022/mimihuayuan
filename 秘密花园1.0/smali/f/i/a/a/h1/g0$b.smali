.class public final Lf/i/a/a/h1/g0$b;
.super Ljava/lang/Object;
.source "ProgressiveMediaPeriod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/h1/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:[Lf/i/a/a/b1/g;

.field public b:Lf/i/a/a/b1/g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lf/i/a/a/b1/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/h1/g0$b;->a:[Lf/i/a/a/b1/g;

    return-void
.end method


# virtual methods
.method public a(Lf/i/a/a/b1/d;Lf/i/a/a/b1/h;Landroid/net/Uri;)Lf/i/a/a/b1/g;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/g0$b;->b:Lf/i/a/a/b1/g;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lf/i/a/a/h1/g0$b;->a:[Lf/i/a/a/b1/g;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 3
    :try_start_0
    invoke-interface {v4, p1}, Lf/i/a/a/b1/g;->i(Lf/i/a/a/b1/d;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4
    iput-object v4, p0, Lf/i/a/a/h1/g0$b;->b:Lf/i/a/a/b1/g;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iput v2, p1, Lf/i/a/a/b1/d;->f:I

    goto :goto_1

    :catchall_0
    move-exception p2

    iput v2, p1, Lf/i/a/a/b1/d;->f:I

    .line 6
    throw p2

    .line 7
    :catch_0
    :cond_1
    iput v2, p1, Lf/i/a/a/b1/d;->f:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_2
    :goto_1
    iget-object p1, p0, Lf/i/a/a/h1/g0$b;->b:Lf/i/a/a/b1/g;

    if-eqz p1, :cond_3

    .line 9
    invoke-interface {p1, p2}, Lf/i/a/a/b1/g;->d(Lf/i/a/a/b1/h;)V

    .line 10
    iget-object p1, p0, Lf/i/a/a/h1/g0$b;->b:Lf/i/a/a/b1/g;

    return-object p1

    .line 11
    :cond_3
    new-instance p1, Lf/i/a/a/h1/q0;

    const-string p2, "None of the available extractors ("

    invoke-static {p2}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lf/i/a/a/h1/g0$b;->a:[Lf/i/a/a/b1/g;

    .line 12
    invoke-static {v0}, Lf/i/a/a/m1/h0;->z([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ") could read the stream."

    invoke-static {p2, v0, v1}, Lf/b/a/a/a;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p3}, Lf/i/a/a/h1/q0;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    throw p1
.end method
