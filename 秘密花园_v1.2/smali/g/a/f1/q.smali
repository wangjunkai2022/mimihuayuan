.class public Lg/a/f1/q;
.super Ljava/lang/Object;
.source "StatefulCollectionChangeSet.java"

# interfaces
.implements Lg/a/s;


# instance fields
.field public final a:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lio/realm/internal/OsCollectionChangeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lio/realm/internal/OsCollectionChangeSet;->f()Z

    move-result v0

    .line 3
    invoke-virtual {p1}, Lio/realm/internal/OsCollectionChangeSet;->g()Z

    .line 4
    invoke-virtual {p1}, Lio/realm/internal/OsCollectionChangeSet;->c()Ljava/lang/Throwable;

    move-result-object p1

    iput-object p1, p0, Lg/a/f1/q;->a:Ljava/lang/Throwable;

    return-void
.end method
