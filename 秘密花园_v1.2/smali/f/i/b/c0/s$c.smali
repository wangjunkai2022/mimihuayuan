.class public final Lf/i/b/c0/s$c;
.super Ljava/util/AbstractSet;
.source "LinkedTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/b/c0/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lf/i/b/c0/s;


# direct methods
.method public constructor <init>(Lf/i/b/c0/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/i/b/c0/s$c;->a:Lf/i/b/c0/s;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/b/c0/s$c;->a:Lf/i/b/c0/s;

    invoke-virtual {v0}, Lf/i/b/c0/s;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/b/c0/s$c;->a:Lf/i/b/c0/s;

    .line 2
    invoke-virtual {v0, p1}, Lf/i/b/c0/s;->c(Ljava/lang/Object;)Lf/i/b/c0/s$e;

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
            "TK;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lf/i/b/c0/s$c$a;

    invoke-direct {v0, p0}, Lf/i/b/c0/s$c$a;-><init>(Lf/i/b/c0/s$c;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/b/c0/s$c;->a:Lf/i/b/c0/s;

    .line 2
    invoke-virtual {v0, p1}, Lf/i/b/c0/s;->c(Ljava/lang/Object;)Lf/i/b/c0/s$e;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v0, p1, v1}, Lf/i/b/c0/s;->e(Lf/i/b/c0/s$e;Z)V

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/b/c0/s$c;->a:Lf/i/b/c0/s;

    iget v0, v0, Lf/i/b/c0/s;->c:I

    return v0
.end method
