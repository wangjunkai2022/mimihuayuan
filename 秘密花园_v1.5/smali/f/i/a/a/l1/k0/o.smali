.class public final synthetic Lf/i/a/a/l1/k0/o;
.super Ljava/lang/Object;
.source "ContentMetadata.java"


# direct methods
.method public static a(Lf/i/a/a/l1/k0/p;)J
    .locals 2

    .line 1
    check-cast p0, Lf/i/a/a/l1/k0/r;

    .line 2
    iget-object v0, p0, Lf/i/a/a/l1/k0/r;->b:Ljava/util/Map;

    const-string v1, "exo_len"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lf/i/a/a/l1/k0/r;->b:Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    .line 4
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method
