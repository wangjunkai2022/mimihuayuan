.class public final Lf/i/b/r;
.super Lf/i/b/o;
.source "JsonObject.java"


# instance fields
.field public final a:Lf/i/b/c0/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i/b/c0/s<",
            "Ljava/lang/String;",
            "Lf/i/b/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf/i/b/o;-><init>()V

    .line 2
    new-instance v0, Lf/i/b/c0/s;

    invoke-direct {v0}, Lf/i/b/c0/s;-><init>()V

    iput-object v0, p0, Lf/i/b/r;->a:Lf/i/b/c0/s;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;Lf/i/b/o;)V
    .locals 1

    if-nez p2, :cond_0

    .line 1
    sget-object p2, Lf/i/b/q;->a:Lf/i/b/q;

    .line 2
    :cond_0
    iget-object v0, p0, Lf/i/b/r;->a:Lf/i/b/c0/s;

    invoke-virtual {v0, p1, p2}, Lf/i/b/c0/s;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1

    if-nez p2, :cond_0

    .line 1
    sget-object p2, Lf/i/b/q;->a:Lf/i/b/q;

    goto :goto_0

    :cond_0
    new-instance v0, Lf/i/b/t;

    invoke-direct {v0, p2}, Lf/i/b/t;-><init>(Ljava/lang/Object;)V

    move-object p2, v0

    .line 2
    :goto_0
    iget-object v0, p0, Lf/i/b/r;->a:Lf/i/b/c0/s;

    invoke-virtual {v0, p1, p2}, Lf/i/b/c0/s;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    .line 1
    sget-object p2, Lf/i/b/q;->a:Lf/i/b/q;

    goto :goto_0

    :cond_0
    new-instance v0, Lf/i/b/t;

    invoke-direct {v0, p2}, Lf/i/b/t;-><init>(Ljava/lang/Object;)V

    move-object p2, v0

    .line 2
    :goto_0
    iget-object v0, p0, Lf/i/b/r;->a:Lf/i/b/c0/s;

    invoke-virtual {v0, p1, p2}, Lf/i/b/c0/s;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    .line 1
    instance-of v0, p1, Lf/i/b/r;

    if-eqz v0, :cond_0

    check-cast p1, Lf/i/b/r;

    iget-object p1, p1, Lf/i/b/r;->a:Lf/i/b/c0/s;

    iget-object v0, p0, Lf/i/b/r;->a:Lf/i/b/c0/s;

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/b/r;->a:Lf/i/b/c0/s;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->hashCode()I

    move-result v0

    return v0
.end method
