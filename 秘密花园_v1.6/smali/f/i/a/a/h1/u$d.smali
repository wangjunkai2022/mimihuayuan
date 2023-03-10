.class public final Lf/i/a/a/h1/u$d;
.super Lf/i/a/a/h1/o;
.source "ConcatenatingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/h1/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# direct methods
.method public constructor <init>(Lf/i/a/a/h1/u$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/i/a/a/h1/o;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public c(Lf/i/a/a/h1/e0$a;Lf/i/a/a/l1/e;J)Lf/i/a/a/h1/d0;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public d(Lf/i/a/a/h1/d0;)V
    .locals 0

    return-void
.end method

.method public l(Lf/i/a/a/l1/i0;)V
    .locals 0
    .param p1    # Lf/i/a/a/l1/i0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public n()V
    .locals 0

    return-void
.end method
