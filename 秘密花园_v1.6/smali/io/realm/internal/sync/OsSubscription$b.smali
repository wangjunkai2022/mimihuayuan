.class public Lio/realm/internal/sync/OsSubscription$b;
.super Ljava/lang/Object;
.source "OsSubscription.java"

# interfaces
.implements Lg/a/f1/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/sync/OsSubscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lg/a/f1/k$a<",
        "Lio/realm/internal/sync/OsSubscription$c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lio/realm/internal/sync/OsSubscription$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lg/a/f1/k$b;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lio/realm/internal/sync/OsSubscription$c;

    .line 2
    check-cast p2, Lio/realm/internal/sync/OsSubscription;

    .line 3
    iget-object p1, p1, Lg/a/f1/k$b;->b:Ljava/lang/Object;

    check-cast p1, Lg/a/a0;

    invoke-interface {p1, p2}, Lg/a/a0;->a(Ljava/lang/Object;)V

    return-void
.end method
