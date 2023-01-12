.class public final Lj/k$a;
.super Ljava/lang/Object;
.source "ByteString.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lh/o/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Lj/k$a;[BIII)Lj/k;
    .locals 7

    and-int/lit8 p0, p4, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p0, p4, 0x2

    if-eqz p0, :cond_1

    .line 1
    array-length p3, p1

    .line 2
    :cond_1
    array-length p0, p1

    int-to-long v1, p0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lj/b;->i(JJJ)V

    .line 3
    new-array p0, p3, [B

    .line 4
    invoke-static {p1, p2, p0, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    new-instance p1, Lj/k;

    invoke-direct {p1, p0}, Lj/k;-><init>([B)V

    return-object p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lj/k;
    .locals 0

    .line 1
    invoke-static {p1}, Lj/c0/a;->d(Ljava/lang/String;)Lj/k;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;)Lj/k;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1}, Lj/c0/a;->e(Ljava/lang/String;)Lj/k;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "$receiver"

    .line 2
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
