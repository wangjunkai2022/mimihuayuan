.class public Lio/realm/internal/OsObject$a;
.super Ljava/lang/Object;
.source "OsObject.java"

# interfaces
.implements Lg/a/f1/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/OsObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lg/a/f1/k$a<",
        "Lio/realm/internal/OsObject$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/realm/internal/OsObject$a;->a:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lg/a/f1/k$b;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lio/realm/internal/OsObject$b;

    .line 2
    check-cast p2, Lg/a/e0;

    .line 3
    iget-object v0, p0, Lio/realm/internal/OsObject$a;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    new-instance v2, Lio/realm/internal/OsObject$c;

    if-eqz v0, :cond_1

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lio/realm/internal/OsObject$a;->a:[Ljava/lang/String;

    :goto_1
    invoke-direct {v2, v1, v0}, Lio/realm/internal/OsObject$c;-><init>([Ljava/lang/String;Z)V

    .line 5
    iget-object p1, p1, Lg/a/f1/k$b;->b:Ljava/lang/Object;

    check-cast p1, Lg/a/h0;

    invoke-interface {p1, p2, v2}, Lg/a/h0;->a(Lg/a/e0;Lg/a/r;)V

    return-void
.end method
