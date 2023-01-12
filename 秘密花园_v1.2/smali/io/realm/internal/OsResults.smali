.class public Lio/realm/internal/OsResults;
.super Ljava/lang/Object;
.source "OsResults.java"

# interfaces
.implements Lg/a/f1/i;
.implements Lio/realm/internal/ObservableCollection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/internal/OsResults$c;,
        Lio/realm/internal/OsResults$b;,
        Lio/realm/internal/OsResults$a;
    }
.end annotation


# static fields
.field public static final h:J


# instance fields
.field public final a:J

.field public final b:Lio/realm/internal/OsSharedRealm;

.field public final c:Lg/a/f1/h;

.field public final d:Lio/realm/internal/Table;

.field public e:Z

.field public f:Z

.field public final g:Lg/a/f1/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/f1/k<",
            "Lio/realm/internal/ObservableCollection$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lio/realm/internal/OsResults;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/OsResults;->h:J

    return-void
.end method

.method public constructor <init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/Table;J)V
    .locals 3

    .line 1
    sget-object v0, Lio/realm/internal/OsResults$c;->c:Lio/realm/internal/OsResults$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Lio/realm/internal/OsResults;->f:Z

    .line 3
    new-instance v2, Lg/a/f1/k;

    invoke-direct {v2}, Lg/a/f1/k;-><init>()V

    iput-object v2, p0, Lio/realm/internal/OsResults;->g:Lg/a/f1/k;

    .line 4
    iput-object p1, p0, Lio/realm/internal/OsResults;->b:Lio/realm/internal/OsSharedRealm;

    .line 5
    iget-object p1, p1, Lio/realm/internal/OsSharedRealm;->context:Lg/a/f1/h;

    iput-object p1, p0, Lio/realm/internal/OsResults;->c:Lg/a/f1/h;

    .line 6
    iput-object p2, p0, Lio/realm/internal/OsResults;->d:Lio/realm/internal/Table;

    .line 7
    iput-wide p3, p0, Lio/realm/internal/OsResults;->a:J

    .line 8
    invoke-virtual {p1, p0}, Lg/a/f1/h;->a(Lg/a/f1/i;)V

    .line 9
    iget-wide p1, p0, Lio/realm/internal/OsResults;->a:J

    invoke-static {p1, p2}, Lio/realm/internal/OsResults;->nativeGetMode(J)B

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    if-eq p1, p2, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    .line 10
    sget-object p1, Lio/realm/internal/OsResults$c;->e:Lio/realm/internal/OsResults$c;

    goto :goto_0

    .line 11
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Invalid value: "

    invoke-static {p3, p1}, Lf/b/a/a/a;->J(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 12
    :cond_1
    sget-object p1, Lio/realm/internal/OsResults$c;->d:Lio/realm/internal/OsResults$c;

    goto :goto_0

    :cond_2
    move-object p1, v0

    goto :goto_0

    .line 13
    :cond_3
    sget-object p1, Lio/realm/internal/OsResults$c;->b:Lio/realm/internal/OsResults$c;

    goto :goto_0

    .line 14
    :cond_4
    sget-object p1, Lio/realm/internal/OsResults$c;->a:Lio/realm/internal/OsResults$c;

    :goto_0
    if-eq p1, v0, :cond_5

    const/4 v1, 0x1

    .line 15
    :cond_5
    iput-boolean v1, p0, Lio/realm/internal/OsResults;->e:Z

    return-void
.end method

.method public static a(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/UncheckedRow;Lio/realm/internal/Table;Ljava/lang/String;)Lio/realm/internal/OsResults;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v0

    .line 2
    iget-wide v2, p1, Lio/realm/internal/UncheckedRow;->c:J

    .line 3
    iget-wide v4, p2, Lio/realm/internal/Table;->a:J

    .line 4
    invoke-virtual {p2, p3}, Lio/realm/internal/Table;->f(Ljava/lang/String;)J

    move-result-wide v6

    .line 5
    invoke-static/range {v0 .. v7}, Lio/realm/internal/OsResults;->nativeCreateResultsFromBacklinks(JJJJ)J

    move-result-wide v0

    .line 6
    new-instance p1, Lio/realm/internal/OsResults;

    invoke-direct {p1, p0, p2, v0, v1}, Lio/realm/internal/OsResults;-><init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/Table;J)V

    return-object p1
.end method

.method public static b(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/TableQuery;Lio/realm/internal/core/DescriptorOrdering;)Lio/realm/internal/OsResults;
    .locals 6

    .line 1
    invoke-virtual {p1}, Lio/realm/internal/TableQuery;->a()V

    .line 2
    invoke-virtual {p0}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v0

    .line 3
    iget-wide v2, p1, Lio/realm/internal/TableQuery;->b:J

    .line 4
    iget-wide v4, p2, Lio/realm/internal/core/DescriptorOrdering;->a:J

    .line 5
    invoke-static/range {v0 .. v5}, Lio/realm/internal/OsResults;->nativeCreateResults(JJJ)J

    move-result-wide v0

    .line 6
    new-instance p2, Lio/realm/internal/OsResults;

    .line 7
    iget-object p1, p1, Lio/realm/internal/TableQuery;->a:Lio/realm/internal/Table;

    .line 8
    invoke-direct {p2, p0, p1, v0, v1}, Lio/realm/internal/OsResults;-><init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/Table;J)V

    return-object p2
.end method

.method public static native nativeCreateResults(JJJ)J
.end method

.method public static native nativeCreateResultsFromBacklinks(JJJJ)J
.end method

.method public static native nativeCreateSnapshot(J)J
.end method

.method public static native nativeDelete(JJ)V
.end method

.method public static native nativeEvaluateQueryIfNeeded(JZ)V
.end method

.method public static native nativeFirstRow(J)J
.end method

.method public static native nativeGetFinalizerPtr()J
.end method

.method public static native nativeGetMode(J)B
.end method

.method public static native nativeGetRow(JI)J
.end method

.method public static native nativeSize(J)J
.end method


# virtual methods
.method public c()Lio/realm/internal/UncheckedRow;
    .locals 5

    .line 1
    iget-wide v0, p0, Lio/realm/internal/OsResults;->a:J

    invoke-static {v0, v1}, Lio/realm/internal/OsResults;->nativeFirstRow(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    iget-object v2, p0, Lio/realm/internal/OsResults;->d:Lio/realm/internal/Table;

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->m(J)Lio/realm/internal/UncheckedRow;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/OsResults;->a:J

    invoke-static {v0, v1}, Lio/realm/internal/OsResults;->nativeSize(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNativeFinalizerPtr()J
    .locals 2

    .line 1
    sget-wide v0, Lio/realm/internal/OsResults;->h:J

    return-wide v0
.end method

.method public getNativePtr()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/OsResults;->a:J

    return-wide v0
.end method

.method public notifyChangeListeners(J)V
    .locals 8

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    .line 1
    new-instance p1, Lg/a/f1/d;

    const/4 p2, 0x0

    iget-object v1, p0, Lio/realm/internal/OsResults;->b:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v1}, Lio/realm/internal/OsSharedRealm;->isPartial()Z

    move-result v1

    invoke-direct {p1, p2, v1}, Lg/a/f1/d;-><init>(Lio/realm/internal/sync/OsSubscription;Z)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Lio/realm/internal/OsCollectionChangeSet;

    .line 3
    iget-boolean v2, p0, Lio/realm/internal/OsResults;->e:Z

    xor-int/lit8 v5, v2, 0x1

    const/4 v6, 0x0

    .line 4
    iget-object v2, p0, Lio/realm/internal/OsResults;->b:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v2}, Lio/realm/internal/OsSharedRealm;->isPartial()Z

    move-result v7

    move-object v2, v1

    move-wide v3, p1

    invoke-direct/range {v2 .. v7}, Lio/realm/internal/OsCollectionChangeSet;-><init>(JZLio/realm/internal/sync/OsSubscription;Z)V

    move-object p1, v1

    .line 5
    :goto_0
    invoke-virtual {p1}, Lio/realm/internal/OsCollectionChangeSet;->e()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    iget-boolean p2, p0, Lio/realm/internal/OsResults;->e:Z

    if-eqz p2, :cond_1

    return-void

    .line 7
    :cond_1
    iput-boolean v0, p0, Lio/realm/internal/OsResults;->e:Z

    .line 8
    iget-object p2, p0, Lio/realm/internal/OsResults;->g:Lg/a/f1/k;

    new-instance v0, Lio/realm/internal/ObservableCollection$a;

    invoke-direct {v0, p1}, Lio/realm/internal/ObservableCollection$a;-><init>(Lio/realm/internal/OsCollectionChangeSet;)V

    invoke-virtual {p2, v0}, Lg/a/f1/k;->b(Lg/a/f1/k$a;)V

    return-void
.end method
