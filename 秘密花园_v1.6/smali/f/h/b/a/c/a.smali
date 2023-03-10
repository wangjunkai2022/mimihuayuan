.class public final Lf/h/b/a/c/a;
.super Ljava/lang/Object;
.source "StringFogImpl.java"


# direct methods
.method public static a([BLjava/lang/String;)[B
    .locals 7

    .line 1
    array-length v0, p0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    if-lt v4, v1, :cond_0

    const/4 v4, 0x0

    .line 3
    :cond_0
    aget-byte v5, p0, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p0, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method
