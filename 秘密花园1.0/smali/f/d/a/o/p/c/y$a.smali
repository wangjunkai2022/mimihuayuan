.class public Lf/d/a/o/p/c/y$a;
.super Ljava/lang/Object;
.source "StreamBitmapDecoder.java"

# interfaces
.implements Lf/d/a/o/p/c/n$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/o/p/c/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lf/d/a/o/p/c/v;

.field public final b:Lf/d/a/u/c;


# direct methods
.method public constructor <init>(Lf/d/a/o/p/c/v;Lf/d/a/u/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/d/a/o/p/c/y$a;->a:Lf/d/a/o/p/c/v;

    .line 3
    iput-object p2, p0, Lf/d/a/o/p/c/y$a;->b:Lf/d/a/u/c;

    return-void
.end method


# virtual methods
.method public a(Lf/d/a/o/n/b0/d;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/d/a/o/p/c/y$a;->b:Lf/d/a/u/c;

    .line 2
    iget-object v0, v0, Lf/d/a/u/c;->b:Ljava/io/IOException;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 3
    invoke-interface {p1, p2}, Lf/d/a/o/n/b0/d;->b(Landroid/graphics/Bitmap;)V

    .line 4
    :cond_0
    throw v0

    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/d/a/o/p/c/y$a;->a:Lf/d/a/o/p/c/v;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, v0, Lf/d/a/o/p/c/v;->a:[B

    array-length v1, v1

    iput v1, v0, Lf/d/a/o/p/c/v;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
