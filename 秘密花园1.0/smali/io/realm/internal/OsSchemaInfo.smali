.class public Lio/realm/internal/OsSchemaInfo;
.super Ljava/lang/Object;
.source "OsSchemaInfo.java"

# interfaces
.implements Lg/a/f1/i;


# static fields
.field public static final c:J


# instance fields
.field public a:J

.field public final b:Lio/realm/internal/OsSharedRealm;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lio/realm/internal/OsSchemaInfo;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/OsSchemaInfo;->c:J

    return-void
.end method

.method public constructor <init>(JLio/realm/internal/OsSharedRealm;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-wide p1, p0, Lio/realm/internal/OsSchemaInfo;->a:J

    .line 10
    iput-object p3, p0, Lio/realm/internal/OsSchemaInfo;->b:Lio/realm/internal/OsSharedRealm;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lio/realm/internal/OsObjectSchemaInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/internal/OsObjectSchemaInfo;

    .line 4
    iget-wide v2, v2, Lio/realm/internal/OsObjectSchemaInfo;->a:J

    .line 5
    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v0}, Lio/realm/internal/OsSchemaInfo;->nativeCreateFromList([J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/internal/OsSchemaInfo;->a:J

    .line 7
    sget-object p1, Lg/a/f1/h;->c:Lg/a/f1/h;

    invoke-virtual {p1, p0}, Lg/a/f1/h;->a(Lg/a/f1/i;)V

    return-void
.end method

.method public static native nativeCreateFromList([J)J
.end method

.method public static native nativeGetFinalizerPtr()J
.end method

.method public static native nativeGetObjectSchemaInfo(JLjava/lang/String;)J
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;
    .locals 3

    .line 1
    new-instance v0, Lio/realm/internal/OsObjectSchemaInfo;

    iget-wide v1, p0, Lio/realm/internal/OsSchemaInfo;->a:J

    invoke-static {v1, v2, p1}, Lio/realm/internal/OsSchemaInfo;->nativeGetObjectSchemaInfo(JLjava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lio/realm/internal/OsObjectSchemaInfo;-><init>(J)V

    return-object v0
.end method

.method public getNativeFinalizerPtr()J
    .locals 2

    .line 1
    sget-wide v0, Lio/realm/internal/OsSchemaInfo;->c:J

    return-wide v0
.end method

.method public getNativePtr()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/OsSchemaInfo;->a:J

    return-wide v0
.end method
