.class public Lg/a/v$b;
.super Ljava/lang/Object;
.source "ProxyState.java"

# interfaces
.implements Lg/a/f1/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/a/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lg/a/f1/k$a<",
        "Lio/realm/internal/OsObject$b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lg/a/v$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lg/a/f1/k$b;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lio/realm/internal/OsObject$b;

    .line 2
    check-cast p2, Lg/a/e0;

    .line 3
    iget-object p1, p1, Lg/a/f1/k$b;->b:Ljava/lang/Object;

    check-cast p1, Lg/a/h0;

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lg/a/h0;->a(Lg/a/e0;Lg/a/r;)V

    return-void
.end method
