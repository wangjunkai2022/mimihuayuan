.class public abstract Lio/realm/internal/OsResults$a;
.super Ljava/lang/Object;
.source "OsResults.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/OsResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Lio/realm/internal/OsResults;

.field public b:I


# direct methods
.method public constructor <init>(Lio/realm/internal/OsResults;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lio/realm/internal/OsResults$a;->b:I

    .line 3
    iget-object v0, p1, Lio/realm/internal/OsResults;->b:Lio/realm/internal/OsSharedRealm;

    .line 4
    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    iput-object p1, p0, Lio/realm/internal/OsResults$a;->a:Lio/realm/internal/OsResults;

    .line 6
    iget-boolean v0, p1, Lio/realm/internal/OsResults;->f:Z

    if-eqz v0, :cond_0

    return-void

    .line 7
    :cond_0
    iget-object p1, p1, Lio/realm/internal/OsResults;->b:Lio/realm/internal/OsSharedRealm;

    .line 8
    invoke-virtual {p1}, Lio/realm/internal/OsSharedRealm;->isInTransaction()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p0}, Lio/realm/internal/OsResults$a;->c()V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lio/realm/internal/OsResults$a;->a:Lio/realm/internal/OsResults;

    .line 11
    iget-object p1, p1, Lio/realm/internal/OsResults;->b:Lio/realm/internal/OsSharedRealm;

    .line 12
    invoke-virtual {p1, p0}, Lio/realm/internal/OsSharedRealm;->addIterator(Lio/realm/internal/OsResults$a;)V

    :goto_0
    return-void

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This Realm instance has already been closed, making it unusable."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/internal/OsResults$a;->a:Lio/realm/internal/OsResults;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    const-string v1, "No outside changes to a Realm is allowed while iterating a living Realm collection."

    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract b(Lio/realm/internal/UncheckedRow;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/internal/UncheckedRow;",
            ")TT;"
        }
    .end annotation
.end method

.method public c()V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/realm/internal/OsResults$a;->a:Lio/realm/internal/OsResults;

    .line 2
    iget-boolean v1, v0, Lio/realm/internal/OsResults;->f:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Lio/realm/internal/OsResults;

    iget-object v2, v0, Lio/realm/internal/OsResults;->b:Lio/realm/internal/OsSharedRealm;

    iget-object v3, v0, Lio/realm/internal/OsResults;->d:Lio/realm/internal/Table;

    iget-wide v4, v0, Lio/realm/internal/OsResults;->a:J

    invoke-static {v4, v5}, Lio/realm/internal/OsResults;->nativeCreateSnapshot(J)J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lio/realm/internal/OsResults;-><init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/Table;J)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, v1, Lio/realm/internal/OsResults;->f:Z

    move-object v0, v1

    .line 5
    :goto_0
    iput-object v0, p0, Lio/realm/internal/OsResults$a;->a:Lio/realm/internal/OsResults;

    return-void
.end method

.method public hasNext()Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/OsResults$a;->a()V

    .line 2
    iget v0, p0, Lio/realm/internal/OsResults$a;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    int-to-long v2, v0

    iget-object v0, p0, Lio/realm/internal/OsResults$a;->a:Lio/realm/internal/OsResults;

    invoke-virtual {v0}, Lio/realm/internal/OsResults;->d()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public next()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/OsResults$a;->a()V

    .line 2
    iget v0, p0, Lio/realm/internal/OsResults$a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/realm/internal/OsResults$a;->b:I

    int-to-long v0, v0

    .line 3
    iget-object v2, p0, Lio/realm/internal/OsResults$a;->a:Lio/realm/internal/OsResults;

    invoke-virtual {v2}, Lio/realm/internal/OsResults;->d()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 4
    iget v0, p0, Lio/realm/internal/OsResults$a;->b:I

    .line 5
    iget-object v1, p0, Lio/realm/internal/OsResults$a;->a:Lio/realm/internal/OsResults;

    .line 6
    iget-object v2, v1, Lio/realm/internal/OsResults;->d:Lio/realm/internal/Table;

    iget-wide v3, v1, Lio/realm/internal/OsResults;->a:J

    invoke-static {v3, v4, v0}, Lio/realm/internal/OsResults;->nativeGetRow(JI)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->m(J)Lio/realm/internal/UncheckedRow;

    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lio/realm/internal/OsResults$a;->b(Lio/realm/internal/UncheckedRow;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 8
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Cannot access index "

    invoke-static {v1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/realm/internal/OsResults$a;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " when size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/realm/internal/OsResults$a;->a:Lio/realm/internal/OsResults;

    invoke-virtual {v2}, Lio/realm/internal/OsResults;->d()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ". Remember to check hasNext() before using next()."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() is not supported by RealmResults iterators."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
