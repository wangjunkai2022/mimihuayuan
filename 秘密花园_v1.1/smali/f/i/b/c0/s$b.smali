.class public Lf/i/b/c0/s$b;
.super Ljava/util/AbstractSet;
.source "LinkedTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/b/c0/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lf/i/b/c0/s;


# direct methods
.method public constructor <init>(Lf/i/b/c0/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/i/b/c0/s$b;->a:Lf/i/b/c0/s;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/b/c0/s$b;->a:Lf/i/b/c0/s;

    invoke-virtual {v0}, Lf/i/b/c0/s;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/i/b/c0/s$b;->a:Lf/i/b/c0/s;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1}, Lf/i/b/c0/s;->b(Ljava/util/Map$Entry;)Lf/i/b/c0/s$e;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lf/i/b/c0/s$b$a;

    invoke-direct {v0, p0}, Lf/i/b/c0/s$b$a;-><init>(Lf/i/b/c0/s$b;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lf/i/b/c0/s$b;->a:Lf/i/b/c0/s;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1}, Lf/i/b/c0/s;->b(Ljava/util/Map$Entry;)Lf/i/b/c0/s$e;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lf/i/b/c0/s$b;->a:Lf/i/b/c0/s;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lf/i/b/c0/s;->e(Lf/i/b/c0/s$e;Z)V

    return v1
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/b/c0/s$b;->a:Lf/i/b/c0/s;

    iget v0, v0, Lf/i/b/c0/s;->c:I

    return v0
.end method
