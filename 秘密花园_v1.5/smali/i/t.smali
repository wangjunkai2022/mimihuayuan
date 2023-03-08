.class public abstract Li/t;
.super Ljava/lang/Object;
.source "EventListener.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/t$b;
    }
.end annotation


# static fields
.field public static final a:Li/t;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Li/t$a;

    invoke-direct {v0}, Li/t$a;-><init>()V

    sput-object v0, Li/t;->a:Li/t;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Li/f;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V
    .locals 0

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    return-void

    :cond_0
    const-string p2, "proxy"

    .line 1
    invoke-static {p2}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string p2, "inetSocketAddress"

    invoke-static {p2}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Li/f;Li/k;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const-string p1, "connection"

    .line 1
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "call"

    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Li/f;Ljava/io/IOException;)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "call"

    .line 1
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public d(Li/f;Ljava/io/IOException;)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "call"

    .line 1
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
