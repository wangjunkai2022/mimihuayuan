.class public Lf/d/a/o/n/k$a;
.super Lf/d/a/o/n/k;
.source "DiskCacheStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/o/n/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/d/a/o/n/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c(Lf/d/a/o/a;)Z
    .locals 1

    .line 1
    sget-object v0, Lf/d/a/o/a;->b:Lf/d/a/o/a;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d(ZLf/d/a/o/a;Lf/d/a/o/c;)Z
    .locals 0

    .line 1
    sget-object p1, Lf/d/a/o/a;->d:Lf/d/a/o/a;

    if-eq p2, p1, :cond_0

    sget-object p1, Lf/d/a/o/a;->e:Lf/d/a/o/a;

    if-eq p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
