.class public Lio/realm/internal/OsCollectionChangeSet;
.super Ljava/lang/Object;
.source "OsCollectionChangeSet.java"

# interfaces
.implements Lg/a/s;
.implements Lg/a/f1/i;


# static fields
.field public static e:J


# instance fields
.field public final a:J

.field public final b:Z

.field public final c:Lio/realm/internal/sync/OsSubscription;

.field public final d:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lio/realm/internal/OsCollectionChangeSet;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/OsCollectionChangeSet;->e:J

    return-void
.end method

.method public constructor <init>(JZLio/realm/internal/sync/OsSubscription;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lio/realm/internal/OsCollectionChangeSet;->a:J

    .line 3
    iput-boolean p3, p0, Lio/realm/internal/OsCollectionChangeSet;->b:Z

    .line 4
    iput-object p4, p0, Lio/realm/internal/OsCollectionChangeSet;->c:Lio/realm/internal/sync/OsSubscription;

    .line 5
    iput-boolean p5, p0, Lio/realm/internal/OsCollectionChangeSet;->d:Z

    .line 6
    sget-object p1, Lg/a/f1/h;->c:Lg/a/f1/h;

    invoke-virtual {p1, p0}, Lg/a/f1/h;->a(Lg/a/f1/i;)V

    return-void
.end method

.method public static native nativeGetFinalizerPtr()J
.end method

.method public static native nativeGetRanges(JI)[I
.end method


# virtual methods
.method public a()[Lg/a/s$a;
    .locals 3

    .line 1
    iget-wide v0, p0, Lio/realm/internal/OsCollectionChangeSet;->a:J

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lio/realm/internal/OsCollectionChangeSet;->nativeGetRanges(JI)[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/realm/internal/OsCollectionChangeSet;->h([I)[Lg/a/s$a;

    move-result-object v0

    return-object v0
.end method

.method public b()[Lg/a/s$a;
    .locals 3

    .line 1
    iget-wide v0, p0, Lio/realm/internal/OsCollectionChangeSet;->a:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lio/realm/internal/OsCollectionChangeSet;->nativeGetRanges(JI)[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/realm/internal/OsCollectionChangeSet;->h([I)[Lg/a/s$a;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/Throwable;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/internal/OsCollectionChangeSet;->c:Lio/realm/internal/sync/OsSubscription;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/realm/internal/sync/OsSubscription;->a()Lio/realm/internal/sync/OsSubscription$d;

    move-result-object v0

    sget-object v1, Lio/realm/internal/sync/OsSubscription$d;->b:Lio/realm/internal/sync/OsSubscription$d;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/realm/internal/OsCollectionChangeSet;->c:Lio/realm/internal/sync/OsSubscription;

    .line 3
    iget-wide v0, v0, Lio/realm/internal/sync/OsSubscription;->a:J

    invoke-static {v0, v1}, Lio/realm/internal/sync/OsSubscription;->nativeGetError(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()[Lg/a/s$a;
    .locals 3

    .line 1
    iget-wide v0, p0, Lio/realm/internal/OsCollectionChangeSet;->a:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lio/realm/internal/OsCollectionChangeSet;->nativeGetRanges(JI)[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/realm/internal/OsCollectionChangeSet;->h([I)[Lg/a/s$a;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lio/realm/internal/OsCollectionChangeSet;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/realm/internal/OsCollectionChangeSet;->b:Z

    return v0
.end method

.method public g()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lio/realm/internal/OsCollectionChangeSet;->d:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lio/realm/internal/OsCollectionChangeSet;->c:Lio/realm/internal/sync/OsSubscription;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 3
    :cond_1
    invoke-virtual {v0}, Lio/realm/internal/sync/OsSubscription;->a()Lio/realm/internal/sync/OsSubscription$d;

    move-result-object v0

    sget-object v3, Lio/realm/internal/sync/OsSubscription$d;->e:Lio/realm/internal/sync/OsSubscription$d;

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getNativeFinalizerPtr()J
    .locals 2

    .line 1
    sget-wide v0, Lio/realm/internal/OsCollectionChangeSet;->e:J

    return-wide v0
.end method

.method public getNativePtr()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/OsCollectionChangeSet;->a:J

    return-wide v0
.end method

.method public final h([I)[Lg/a/s$a;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [Lg/a/s$a;

    return-object p1

    .line 1
    :cond_0
    array-length v1, p1

    div-int/lit8 v1, v1, 0x2

    new-array v2, v1, [Lg/a/s$a;

    :goto_0
    if-ge v0, v1, :cond_1

    .line 2
    new-instance v3, Lg/a/s$a;

    mul-int/lit8 v4, v0, 0x2

    aget v5, p1, v4

    add-int/lit8 v4, v4, 0x1

    aget v4, p1, v4

    invoke-direct {v3, v5, v4}, Lg/a/s$a;-><init>(II)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-wide v0, p0, Lio/realm/internal/OsCollectionChangeSet;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-string v0, "Change set is empty."

    return-object v0

    :cond_0
    const-string v0, "Deletion Ranges: "

    .line 2
    invoke-static {v0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lio/realm/internal/OsCollectionChangeSet;->b()[Lg/a/s$a;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nInsertion Ranges: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lio/realm/internal/OsCollectionChangeSet;->d()[Lg/a/s$a;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nChange Ranges: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p0}, Lio/realm/internal/OsCollectionChangeSet;->a()[Lg/a/s$a;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
