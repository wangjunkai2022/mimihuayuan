.class public final Li/m0/g/p$a;
.super Ljava/lang/Object;
.source "PushObserver.kt"

# interfaces
.implements Li/m0/g/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/m0/g/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Li/m0/g/c;",
            ">;)Z"
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string p1, "requestHeaders"

    .line 1
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public b(ILjava/util/List;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Li/m0/g/c;",
            ">;Z)Z"
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string p1, "responseHeaders"

    .line 1
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public c(ILi/m0/g/b;)V
    .locals 0

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const-string p1, "errorCode"

    .line 1
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public d(ILj/j;IZ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    int-to-long p3, p3

    .line 1
    invoke-interface {p2, p3, p4}, Lj/j;->skip(J)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string p1, "source"

    .line 2
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
