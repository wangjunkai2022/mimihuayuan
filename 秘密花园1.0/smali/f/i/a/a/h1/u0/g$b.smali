.class public final Lf/i/a/a/h1/u0/g$b;
.super Ljava/util/LinkedHashMap;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/h1/u0/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Landroid/net/Uri;",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x8

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 1
    invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)[B
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method public b(Landroid/net/Uri;[B)[B
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lf/i/a/a/h1/u0/g$b;->a(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/net/Uri;

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lf/i/a/a/h1/u0/g$b;->b(Landroid/net/Uri;[B)[B

    move-result-object p1

    return-object p1
.end method

.method public removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Landroid/net/Uri;",
            "[B>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result p1

    const/4 v0, 0x4

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
