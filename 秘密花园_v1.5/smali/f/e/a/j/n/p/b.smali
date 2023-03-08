.class public Lf/e/a/j/n/p/b;
.super Ljava/lang/Object;
.source "AESUtils.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "B1NRVy4dWkEKFkAOFwQIDg=="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lf/e/a/j/n/p/b;->a:Ljava/lang/String;

    const-string v0, "dicwSy4wexwjLXc0TzoCD1MLDQM="

    .line 2
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lf/e/a/j/n/p/b;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    sget-object v0, Lf/e/a/j/n/p/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sget-object v1, Lf/e/a/j/n/p/b;->b:Ljava/lang/String;

    const/4 v2, 0x2

    .line 2
    invoke-static {p0, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p0

    const/4 v2, 0x0

    .line 3
    invoke-static {p0, v0, v1, v2}, Lf/e/a/k/c;->a([B[BLjava/lang/String;[B)[B

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method
