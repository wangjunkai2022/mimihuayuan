.class public Lg/a/f1/r$c;
.super Ljava/lang/Object;
.source "SubscriptionAwareOsResults.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/a/f1/r;-><init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/Table;JLg/a/f1/w/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lg/a/f1/r;


# direct methods
.method public constructor <init>(Lg/a/f1/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/a/f1/r$c;->a:Lg/a/f1/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lg/a/f1/r$c;->a:Lg/a/f1/r;

    .line 2
    iget-boolean v1, v0, Lg/a/f1/r;->l:Z

    if-nez v1, :cond_0

    .line 3
    iget-boolean v0, v0, Lg/a/f1/r;->j:Z

    if-eqz v0, :cond_5

    .line 4
    :cond_0
    iget-object v0, p0, Lg/a/f1/r$c;->a:Lg/a/f1/r;

    .line 5
    iget-boolean v1, v0, Lg/a/f1/r;->j:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lg/a/f1/r;->k:Lio/realm/internal/sync/OsSubscription;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move-object v6, v1

    .line 6
    iget-wide v1, v0, Lg/a/f1/r;->i:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    if-eqz v6, :cond_2

    iget-boolean v1, v0, Lg/a/f1/r;->m:Z

    if-nez v1, :cond_2

    .line 7
    invoke-virtual {v6}, Lio/realm/internal/sync/OsSubscription;->a()Lio/realm/internal/sync/OsSubscription$d;

    move-result-object v1

    sget-object v2, Lio/realm/internal/sync/OsSubscription$d;->b:Lio/realm/internal/sync/OsSubscription$d;

    if-eq v1, v2, :cond_2

    .line 8
    invoke-virtual {v6}, Lio/realm/internal/sync/OsSubscription;->a()Lio/realm/internal/sync/OsSubscription$d;

    move-result-object v1

    sget-object v2, Lio/realm/internal/sync/OsSubscription$d;->e:Lio/realm/internal/sync/OsSubscription$d;

    if-eq v1, v2, :cond_2

    goto :goto_2

    .line 9
    :cond_2
    iget-wide v1, v0, Lg/a/f1/r;->i:J

    const/4 v8, 0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_3

    .line 10
    new-instance v1, Lg/a/f1/d;

    iget-boolean v2, v0, Lg/a/f1/r;->m:Z

    invoke-direct {v1, v6, v2, v8}, Lg/a/f1/d;-><init>(Lio/realm/internal/sync/OsSubscription;ZZ)V

    goto :goto_1

    .line 11
    :cond_3
    new-instance v1, Lio/realm/internal/OsCollectionChangeSet;

    iget-wide v3, v0, Lg/a/f1/r;->i:J

    iget-boolean v5, v0, Lg/a/f1/r;->m:Z

    const/4 v7, 0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lio/realm/internal/OsCollectionChangeSet;-><init>(JZLio/realm/internal/sync/OsSubscription;Z)V

    .line 12
    :goto_1
    invoke-virtual {v1}, Lio/realm/internal/OsCollectionChangeSet;->e()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 13
    iget-boolean v2, v0, Lio/realm/internal/OsResults;->e:Z

    if-eqz v2, :cond_4

    goto :goto_2

    .line 14
    :cond_4
    iput-boolean v8, v0, Lio/realm/internal/OsResults;->e:Z

    const/4 v2, 0x0

    .line 15
    iput-boolean v2, v0, Lg/a/f1/r;->m:Z

    .line 16
    iget-object v0, v0, Lio/realm/internal/OsResults;->g:Lg/a/f1/k;

    new-instance v2, Lio/realm/internal/ObservableCollection$a;

    invoke-direct {v2, v1}, Lio/realm/internal/ObservableCollection$a;-><init>(Lio/realm/internal/OsCollectionChangeSet;)V

    invoke-virtual {v0, v2}, Lg/a/f1/k;->b(Lg/a/f1/k$a;)V

    :cond_5
    :goto_2
    return-void
.end method
