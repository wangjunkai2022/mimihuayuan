.class public Lg/a/v$c;
.super Ljava/lang/Object;
.source "ProxyState.java"

# interfaces
.implements Lg/a/h0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/a/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lg/a/e0;",
        ">",
        "Ljava/lang/Object;",
        "Lg/a/h0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lg/a/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a0<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg/a/a0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a0<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lg/a/v$c;->a:Lg/a/a0;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Listener should not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Lg/a/e0;Lg/a/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lg/a/r;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lg/a/v$c;->a:Lg/a/a0;

    invoke-interface {p2, p1}, Lg/a/a0;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lg/a/v$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/a/v$c;->a:Lg/a/a0;

    check-cast p1, Lg/a/v$c;

    iget-object p1, p1, Lg/a/v$c;->a:Lg/a/a0;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lg/a/v$c;->a:Lg/a/a0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
