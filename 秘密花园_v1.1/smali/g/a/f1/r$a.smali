.class public Lg/a/f1/r$a;
.super Ljava/lang/Object;
.source "SubscriptionAwareOsResults.java"

# interfaces
.implements Lg/a/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/a/f1/r;-><init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/Table;JLg/a/f1/w/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lg/a/a0<",
        "Lio/realm/internal/sync/OsSubscription;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lg/a/f1/r;


# direct methods
.method public constructor <init>(Lg/a/f1/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/a/f1/r$a;->a:Lg/a/f1/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lio/realm/internal/sync/OsSubscription;

    .line 2
    iget-object p1, p0, Lg/a/f1/r$a;->a:Lg/a/f1/r;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p1, Lg/a/f1/r;->j:Z

    return-void
.end method
