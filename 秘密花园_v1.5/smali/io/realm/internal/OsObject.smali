.class public Lio/realm/internal/OsObject;
.super Ljava/lang/Object;
.source "OsObject.java"

# interfaces
.implements Lg/a/f1/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/internal/OsObject$a;,
        Lio/realm/internal/OsObject$b;,
        Lio/realm/internal/OsObject$c;
    }
.end annotation

.annotation build Lio/realm/internal/Keep;
.end annotation


# static fields
.field public static final OBJECT_ID_COLUMN_NAME:Ljava/lang/String;

.field public static final nativeFinalizerPtr:J


# instance fields
.field public final nativePtr:J

.field public observerPairs:Lg/a/f1/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/f1/k<",
            "Lio/realm/internal/OsObject$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lio/realm/internal/OsObject;->nativeGetObjectIdColumName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/realm/internal/OsObject;->OBJECT_ID_COLUMN_NAME:Ljava/lang/String;

    .line 2
    invoke-static {}, Lio/realm/internal/OsObject;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/OsObject;->nativeFinalizerPtr:J

    return-void
.end method

.method public constructor <init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/UncheckedRow;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lg/a/f1/k;

    invoke-direct {v0}, Lg/a/f1/k;-><init>()V

    iput-object v0, p0, Lio/realm/internal/OsObject;->observerPairs:Lg/a/f1/k;

    .line 3
    invoke-virtual {p1}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v0

    .line 4
    iget-wide v2, p2, Lio/realm/internal/UncheckedRow;->c:J

    .line 5
    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/OsObject;->nativeCreate(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/internal/OsObject;->nativePtr:J

    .line 6
    iget-object p1, p1, Lio/realm/internal/OsSharedRealm;->context:Lg/a/f1/h;

    invoke-virtual {p1, p0}, Lg/a/f1/h;->a(Lg/a/f1/i;)V

    return-void
.end method

.method public static create(Lio/realm/internal/Table;)Lio/realm/internal/UncheckedRow;
    .locals 7

    .line 1
    iget-object v0, p0, Lio/realm/internal/Table;->c:Lio/realm/internal/OsSharedRealm;

    .line 2
    new-instance v1, Lio/realm/internal/UncheckedRow;

    iget-object v2, v0, Lio/realm/internal/OsSharedRealm;->context:Lg/a/f1/h;

    .line 3
    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v3

    .line 4
    iget-wide v5, p0, Lio/realm/internal/Table;->a:J

    .line 5
    invoke-static {v3, v4, v5, v6}, Lio/realm/internal/OsObject;->nativeCreateNewObject(JJ)J

    move-result-wide v3

    invoke-direct {v1, v2, p0, v3, v4}, Lio/realm/internal/UncheckedRow;-><init>(Lg/a/f1/h;Lio/realm/internal/Table;J)V

    return-object v1
.end method

.method public static createRow(Lio/realm/internal/Table;)J
    .locals 4

    .line 1
    iget-object v0, p0, Lio/realm/internal/Table;->c:Lio/realm/internal/OsSharedRealm;

    .line 2
    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v0

    .line 3
    iget-wide v2, p0, Lio/realm/internal/Table;->a:J

    .line 4
    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/OsObject;->nativeCreateRow(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J
    .locals 13

    move-object v0, p0

    move-object/from16 v1, p3

    .line 1
    iget-wide v2, v0, Lio/realm/internal/Table;->a:J

    move-wide v8, p1

    invoke-virtual {p0, v2, v3, p1, p2}, Lio/realm/internal/Table;->nativeGetColumnType(JJ)I

    move-result v2

    invoke-static {v2}, Lio/realm/RealmFieldType;->fromNativeValue(I)Lio/realm/RealmFieldType;

    move-result-object v2

    .line 2
    iget-object v3, v0, Lio/realm/internal/Table;->c:Lio/realm/internal/OsSharedRealm;

    .line 3
    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-ne v2, v4, :cond_2

    if-eqz v1, :cond_1

    .line 4
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Primary key value is not a String: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {v3}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v4

    .line 7
    iget-wide v6, v0, Lio/realm/internal/Table;->a:J

    .line 8
    move-object v10, v1

    check-cast v10, Ljava/lang/String;

    move-wide v8, p1

    invoke-static/range {v4 .. v10}, Lio/realm/internal/OsObject;->nativeCreateRowWithStringPrimaryKey(JJJLjava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 9
    :cond_2
    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-ne v2, v4, :cond_5

    if-nez v1, :cond_3

    const-wide/16 v4, 0x0

    goto :goto_1

    .line 10
    :cond_3
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    :goto_1
    move-wide v10, v4

    .line 11
    invoke-virtual {v3}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v4

    .line 12
    iget-wide v6, v0, Lio/realm/internal/Table;->a:J

    if-nez v1, :cond_4

    const/4 v0, 0x1

    const/4 v12, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    const/4 v12, 0x0

    :goto_2
    move-wide v8, p1

    .line 13
    invoke-static/range {v4 .. v12}, Lio/realm/internal/OsObject;->nativeCreateRowWithLongPrimaryKey(JJJJZ)J

    move-result-wide v0

    return-wide v0

    .line 14
    :cond_5
    new-instance v0, Lio/realm/exceptions/RealmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot check for duplicate rows for unsupported primary key type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createWithPrimaryKey(Lio/realm/internal/Table;Ljava/lang/Object;)Lio/realm/internal/UncheckedRow;
    .locals 11

    .line 1
    invoke-static {p0}, Lio/realm/internal/OsObject;->getAndVerifyPrimaryKeyColumnIndex(Lio/realm/internal/Table;)J

    move-result-wide v4

    .line 2
    invoke-virtual {p0, v4, v5}, Lio/realm/internal/Table;->h(J)Lio/realm/RealmFieldType;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lio/realm/internal/Table;->c:Lio/realm/internal/OsSharedRealm;

    .line 4
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-ne v0, v2, :cond_2

    if-eqz p1, :cond_1

    .line 5
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Primary key value is not a String: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_1
    :goto_0
    new-instance v7, Lio/realm/internal/UncheckedRow;

    iget-object v8, v1, Lio/realm/internal/OsSharedRealm;->context:Lg/a/f1/h;

    .line 8
    invoke-virtual {v1}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v0

    .line 9
    iget-wide v2, p0, Lio/realm/internal/Table;->a:J

    .line 10
    move-object v6, p1

    check-cast v6, Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lio/realm/internal/OsObject;->nativeCreateNewObjectWithStringPrimaryKey(JJJLjava/lang/String;)J

    move-result-wide v0

    invoke-direct {v7, v8, p0, v0, v1}, Lio/realm/internal/UncheckedRow;-><init>(Lg/a/f1/h;Lio/realm/internal/Table;J)V

    return-object v7

    .line 11
    :cond_2
    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-ne v0, v2, :cond_5

    if-nez p1, :cond_3

    const-wide/16 v2, 0x0

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    :goto_1
    move-wide v6, v2

    .line 13
    new-instance v9, Lio/realm/internal/UncheckedRow;

    iget-object v10, v1, Lio/realm/internal/OsSharedRealm;->context:Lg/a/f1/h;

    .line 14
    invoke-virtual {v1}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v0

    .line 15
    iget-wide v2, p0, Lio/realm/internal/Table;->a:J

    if-nez p1, :cond_4

    const/4 p1, 0x1

    const/4 v8, 0x1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    const/4 v8, 0x0

    .line 16
    :goto_2
    invoke-static/range {v0 .. v8}, Lio/realm/internal/OsObject;->nativeCreateNewObjectWithLongPrimaryKey(JJJJZ)J

    move-result-wide v0

    invoke-direct {v9, v10, p0, v0, v1}, Lio/realm/internal/UncheckedRow;-><init>(Lg/a/f1/h;Lio/realm/internal/Table;J)V

    return-object v9

    .line 17
    :cond_5
    new-instance p0, Lio/realm/exceptions/RealmException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot check for duplicate rows for unsupported primary key type: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getAndVerifyPrimaryKeyColumnIndex(Lio/realm/internal/Table;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/internal/Table;->c:Lio/realm/internal/OsSharedRealm;

    .line 2
    invoke-virtual {p0}, Lio/realm/internal/Table;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/realm/internal/OsObjectStore;->a(Lio/realm/internal/OsSharedRealm;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lio/realm/internal/Table;->f(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/realm/internal/Table;->j()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " has no primary key defined."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isObjectIdColumn(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lio/realm/internal/OsObject;->OBJECT_ID_COLUMN_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static native nativeCreate(JJ)J
.end method

.method public static native nativeCreateNewObject(JJ)J
.end method

.method public static native nativeCreateNewObjectWithLongPrimaryKey(JJJJZ)J
.end method

.method public static native nativeCreateNewObjectWithStringPrimaryKey(JJJLjava/lang/String;)J
.end method

.method public static native nativeCreateRow(JJ)J
.end method

.method public static native nativeCreateRowWithLongPrimaryKey(JJJJZ)J
.end method

.method public static native nativeCreateRowWithStringPrimaryKey(JJJLjava/lang/String;)J
.end method

.method public static native nativeGetFinalizerPtr()J
.end method

.method public static native nativeGetObjectIdColumName()Ljava/lang/String;
.end method

.method private native nativeStartListening(J)V
.end method

.method private native nativeStopListening(J)V
.end method

.method private notifyChangeListeners([Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/internal/OsObject;->observerPairs:Lg/a/f1/k;

    new-instance v1, Lio/realm/internal/OsObject$a;

    invoke-direct {v1, p1}, Lio/realm/internal/OsObject$a;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lg/a/f1/k;->b(Lg/a/f1/k$a;)V

    return-void
.end method


# virtual methods
.method public addListener(Lg/a/e0;Lg/a/h0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lg/a/e0;",
            ">(TT;",
            "Lg/a/h0<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/internal/OsObject;->observerPairs:Lg/a/f1/k;

    invoke-virtual {v0}, Lg/a/f1/k;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, p0, Lio/realm/internal/OsObject;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/OsObject;->nativeStartListening(J)V

    .line 3
    :cond_0
    new-instance v0, Lio/realm/internal/OsObject$b;

    invoke-direct {v0, p1, p2}, Lio/realm/internal/OsObject$b;-><init>(Lg/a/e0;Lg/a/h0;)V

    .line 4
    iget-object p1, p0, Lio/realm/internal/OsObject;->observerPairs:Lg/a/f1/k;

    invoke-virtual {p1, v0}, Lg/a/f1/k;->a(Lg/a/f1/k$b;)V

    return-void
.end method

.method public getNativeFinalizerPtr()J
    .locals 2

    .line 1
    sget-wide v0, Lio/realm/internal/OsObject;->nativeFinalizerPtr:J

    return-wide v0
.end method

.method public getNativePtr()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/OsObject;->nativePtr:J

    return-wide v0
.end method

.method public removeListener(Lg/a/e0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lg/a/e0;",
            ">(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/internal/OsObject;->observerPairs:Lg/a/f1/k;

    invoke-virtual {v0, p1}, Lg/a/f1/k;->e(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lio/realm/internal/OsObject;->observerPairs:Lg/a/f1/k;

    invoke-virtual {p1}, Lg/a/f1/k;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-wide v0, p0, Lio/realm/internal/OsObject;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/OsObject;->nativeStopListening(J)V

    :cond_0
    return-void
.end method

.method public removeListener(Lg/a/e0;Lg/a/h0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lg/a/e0;",
            ">(TT;",
            "Lg/a/h0<",
            "TT;>;)V"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lio/realm/internal/OsObject;->observerPairs:Lg/a/f1/k;

    invoke-virtual {v0, p1, p2}, Lg/a/f1/k;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lio/realm/internal/OsObject;->observerPairs:Lg/a/f1/k;

    invoke-virtual {p1}, Lg/a/f1/k;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-wide p1, p0, Lio/realm/internal/OsObject;->nativePtr:J

    invoke-direct {p0, p1, p2}, Lio/realm/internal/OsObject;->nativeStopListening(J)V

    :cond_0
    return-void
.end method

.method public setObserverPairs(Lg/a/f1/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/f1/k<",
            "Lio/realm/internal/OsObject$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/internal/OsObject;->observerPairs:Lg/a/f1/k;

    invoke-virtual {v0}, Lg/a/f1/k;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iput-object p1, p0, Lio/realm/internal/OsObject;->observerPairs:Lg/a/f1/k;

    .line 3
    invoke-virtual {p1}, Lg/a/f1/k;->c()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-wide v0, p0, Lio/realm/internal/OsObject;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/OsObject;->nativeStartListening(J)V

    :cond_0
    return-void

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "\'observerPairs\' is not empty. Listeners have been added before."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
