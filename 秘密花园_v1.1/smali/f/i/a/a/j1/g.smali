.class public final synthetic Lf/i/a/a/j1/g;
.super Ljava/lang/Object;
.source "TrackBitrateEstimator.java"


# direct methods
.method public static a([Lf/i/a/a/b0;Ljava/util/List;[Lf/i/a/a/h1/s0/m;[I)[I
    .locals 1

    .line 1
    array-length p1, p0

    if-nez p3, :cond_0

    .line 2
    new-array p3, p1, [I

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    .line 3
    aget-object v0, p0, p2

    iget v0, v0, Lf/i/a/a/b0;->e:I

    aput v0, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-object p3
.end method
