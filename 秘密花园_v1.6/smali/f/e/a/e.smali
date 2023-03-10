.class public final Lf/e/a/e;
.super Ljava/lang/Object;
.source "StringFog.java"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "7bcdks93sf4gxjck"

    const/4 v1, 0x2

    .line 1
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-static {p0, v1}, Lc/a/a/b/g/h;->E(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-static {v3, v0}, Lf/h/b/a/c/a;->a([BLjava/lang/String;)[B

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    new-instance v2, Ljava/lang/String;

    invoke-static {p0, v1}, Lc/a/a/b/g/h;->E(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-static {p0, v0}, Lf/h/b/a/c/a;->a([BLjava/lang/String;)[B

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([B)V

    :goto_0
    return-object v2
.end method
