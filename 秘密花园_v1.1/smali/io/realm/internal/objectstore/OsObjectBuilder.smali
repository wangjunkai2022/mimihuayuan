.class public Lio/realm/internal/objectstore/OsObjectBuilder;
.super Ljava/lang/Object;
.source "OsObjectBuilder.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final a:Lio/realm/internal/Table;

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:Lg/a/f1/h;

.field public final f:Z


# direct methods
.method public constructor <init>(Lio/realm/internal/Table;JLjava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/internal/Table;",
            "J",
            "Ljava/util/Set<",
            "Lg/a/m;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lio/realm/internal/Table;->c:Lio/realm/internal/OsSharedRealm;

    .line 3
    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->b:J

    .line 4
    iput-object p1, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->a:Lio/realm/internal/Table;

    .line 5
    iget-wide v1, p1, Lio/realm/internal/Table;->a:J

    .line 6
    iput-wide v1, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->d:J

    const-wide/16 v1, 0x1

    add-long/2addr p2, v1

    .line 7
    invoke-static {p2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeCreateBuilder(J)J

    move-result-wide p1

    iput-wide p1, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->c:J

    .line 8
    iget-object p1, v0, Lio/realm/internal/OsSharedRealm;->context:Lg/a/f1/h;

    iput-object p1, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->e:Lg/a/f1/h;

    .line 9
    sget-object p1, Lg/a/m;->a:Lg/a/m;

    invoke-interface {p4, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->f:Z

    return-void
.end method

.method public static native nativeAddBoolean(JJZ)V
.end method

.method public static native nativeAddDouble(JJD)V
.end method

.method public static native nativeAddFloat(JJF)V
.end method

.method public static native nativeAddInteger(JJJ)V
.end method

.method public static native nativeAddNull(JJ)V
.end method

.method public static native nativeAddString(JJLjava/lang/String;)V
.end method

.method public static native nativeCreateBuilder(J)J
.end method

.method public static native nativeCreateOrUpdate(JJJZZ)J
.end method

.method public static native nativeDestroyBuilder(J)V
.end method


# virtual methods
.method public E()Lio/realm/internal/UncheckedRow;
    .locals 8

    .line 1
    :try_start_0
    iget-wide v0, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->b:J

    iget-wide v2, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->d:J

    iget-wide v4, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->c:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeCreateOrUpdate(JJJZZ)J

    move-result-wide v0

    .line 2
    new-instance v2, Lio/realm/internal/UncheckedRow;

    iget-object v3, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->e:Lg/a/f1/h;

    iget-object v4, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->a:Lio/realm/internal/Table;

    invoke-direct {v2, v3, v4, v0, v1}, Lio/realm/internal/UncheckedRow;-><init>(Lg/a/f1/h;Lio/realm/internal/Table;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-wide v0, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->c:J

    invoke-static {v0, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeDestroyBuilder(J)V

    return-object v2

    :catchall_0
    move-exception v0

    iget-wide v1, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->c:J

    invoke-static {v1, v2}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeDestroyBuilder(J)V

    .line 4
    throw v0
.end method

.method public F()V
    .locals 8

    .line 1
    :try_start_0
    iget-wide v0, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->b:J

    iget-wide v2, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->d:J

    iget-wide v4, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->c:J

    const/4 v6, 0x1

    iget-boolean v7, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->f:Z

    invoke-static/range {v0 .. v7}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeCreateOrUpdate(JJJZZ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-wide v0, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->c:J

    invoke-static {v0, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeDestroyBuilder(J)V

    return-void

    :catchall_0
    move-exception v0

    iget-wide v1, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->c:J

    invoke-static {v1, v2}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeDestroyBuilder(J)V

    .line 3
    throw v0
.end method

.method public close()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->c:J

    invoke-static {v0, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeDestroyBuilder(J)V

    return-void
.end method

.method public d(JLjava/lang/Boolean;)V
    .locals 2

    if-nez p3, :cond_0

    .line 1
    iget-wide v0, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->c:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddNull(JJ)V

    goto :goto_0

    .line 2
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->c:J

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-static {v0, v1, p1, p2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddBoolean(JJZ)V

    :goto_0
    return-void
.end method

.method public e(JLjava/lang/Integer;)V
    .locals 8

    if-nez p3, :cond_0

    .line 1
    iget-wide v0, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->c:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddNull(JJ)V

    goto :goto_0

    .line 2
    :cond_0
    iget-wide v2, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->c:J

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-long v6, p3

    move-wide v4, p1

    invoke-static/range {v2 .. v7}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddInteger(JJJ)V

    :goto_0
    return-void
.end method

.method public f(JLjava/lang/Long;)V
    .locals 8

    if-nez p3, :cond_0

    .line 1
    iget-wide v0, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->c:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddNull(JJ)V

    goto :goto_0

    .line 2
    :cond_0
    iget-wide v2, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->c:J

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-wide v4, p1

    invoke-static/range {v2 .. v7}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddInteger(JJJ)V

    :goto_0
    return-void
.end method

.method public g(JLjava/lang/String;)V
    .locals 2

    if-nez p3, :cond_0

    .line 1
    iget-wide v0, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->c:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddNull(JJ)V

    goto :goto_0

    .line 2
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->c:J

    invoke-static {v0, v1, p1, p2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddString(JJLjava/lang/String;)V

    :goto_0
    return-void
.end method
