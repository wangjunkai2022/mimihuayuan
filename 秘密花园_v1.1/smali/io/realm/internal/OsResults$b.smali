.class public abstract Lio/realm/internal/OsResults$b;
.super Lio/realm/internal/OsResults$a;
.source "OsResults.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/OsResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/realm/internal/OsResults$a<",
        "TT;>;",
        "Ljava/util/ListIterator<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lio/realm/internal/OsResults;I)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lio/realm/internal/OsResults$a;-><init>(Lio/realm/internal/OsResults;)V

    if-ltz p2, :cond_0

    int-to-long v0, p2

    .line 2
    iget-object p1, p0, Lio/realm/internal/OsResults$a;->a:Lio/realm/internal/OsResults;

    invoke-virtual {p1}, Lio/realm/internal/OsResults;->d()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    add-int/lit8 p2, p2, -0x1

    .line 3
    iput p2, p0, Lio/realm/internal/OsResults$a;->b:I

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Starting location must be a valid index: [0, "

    invoke-static {v0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/realm/internal/OsResults$a;->a:Lio/realm/internal/OsResults;

    .line 5
    invoke-virtual {v1}, Lio/realm/internal/OsResults;->d()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]. Yours was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Adding an element is not supported. Use Realm.createObject() instead."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hasPrevious()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/OsResults$a;->a()V

    .line 2
    iget v0, p0, Lio/realm/internal/OsResults$a;->b:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextIndex()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/OsResults$a;->a()V

    .line 2
    iget v0, p0, Lio/realm/internal/OsResults$a;->b:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/OsResults$a;->a()V

    .line 2
    :try_start_0
    iget v0, p0, Lio/realm/internal/OsResults$a;->b:I

    .line 3
    iget-object v1, p0, Lio/realm/internal/OsResults$a;->a:Lio/realm/internal/OsResults;

    .line 4
    iget-object v2, v1, Lio/realm/internal/OsResults;->d:Lio/realm/internal/Table;

    iget-wide v3, v1, Lio/realm/internal/OsResults;->a:J

    invoke-static {v3, v4, v0}, Lio/realm/internal/OsResults;->nativeGetRow(JI)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->m(J)Lio/realm/internal/UncheckedRow;

    move-result-object v0

    .line 5
    move-object v1, p0

    check-cast v1, Lg/a/u$b;

    .line 6
    iget-object v1, v1, Lg/a/u$b;->c:Lg/a/u;

    iget-object v2, v1, Lg/a/u;->a:Lg/a/a;

    iget-object v3, v1, Lg/a/u;->b:Ljava/lang/Class;

    iget-object v1, v1, Lg/a/u;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v0}, Lg/a/a;->F(Ljava/lang/Class;Ljava/lang/String;Lio/realm/internal/UncheckedRow;)Lg/a/e0;

    move-result-object v0

    .line 7
    iget v1, p0, Lio/realm/internal/OsResults$a;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/realm/internal/OsResults$a;->b:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 8
    :catch_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Cannot access index less than zero. This was "

    invoke-static {v1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/realm/internal/OsResults$a;->b:I

    const-string v3, ". Remember to check hasPrevious() before using previous()."

    invoke-static {v1, v2, v3}, Lf/b/a/a/a;->k(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public previousIndex()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/OsResults$a;->a()V

    .line 2
    iget v0, p0, Lio/realm/internal/OsResults$a;->b:I

    return v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Replacing an element is not supported."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
