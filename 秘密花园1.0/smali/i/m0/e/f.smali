.class public final Li/m0/e/f;
.super Ljava/lang/Object;
.source "HttpMethod.kt"


# direct methods
.method public static final a(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "GET"

    .line 1
    invoke-static {p0, v0}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HEAD"

    invoke-static {p0, v0}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    const-string p0, "method"

    .line 2
    invoke-static {p0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
