.class public Lio/realm/internal/CheckedRow;
.super Lio/realm/internal/UncheckedRow;
.source "CheckedRow.java"


# direct methods
.method public constructor <init>(Lg/a/f1/h;Lio/realm/internal/Table;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lio/realm/internal/UncheckedRow;-><init>(Lg/a/f1/h;Lio/realm/internal/Table;J)V

    return-void
.end method

.method public constructor <init>(Lio/realm/internal/UncheckedRow;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/realm/internal/UncheckedRow;-><init>(Lio/realm/internal/UncheckedRow;)V

    return-void
.end method

.method public static G(Lg/a/f1/h;Lio/realm/internal/Table;J)Lio/realm/internal/CheckedRow;
    .locals 2

    .line 1
    iget-wide v0, p1, Lio/realm/internal/Table;->a:J

    .line 2
    invoke-virtual {p1, v0, v1, p2, p3}, Lio/realm/internal/Table;->nativeGetRowPtr(JJ)J

    move-result-wide p2

    .line 3
    new-instance v0, Lio/realm/internal/CheckedRow;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/realm/internal/CheckedRow;-><init>(Lg/a/f1/h;Lio/realm/internal/Table;J)V

    return-object v0
.end method


# virtual methods
.method public e(J)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->c:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeGetColumnType(JJ)I

    move-result v0

    invoke-static {v0}, Lio/realm/RealmFieldType;->fromNativeValue(I)Lio/realm/RealmFieldType;

    move-result-object v0

    .line 2
    sget-object v1, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 3
    :cond_1
    :goto_0
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->c:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeIsNullLink(JJ)Z

    move-result p1

    return p1
.end method

.method public f(J)V
    .locals 8

    .line 1
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->c:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeGetColumnType(JJ)I

    move-result v0

    invoke-static {v0}, Lio/realm/RealmFieldType;->fromNativeValue(I)Lio/realm/RealmFieldType;

    move-result-object v0

    .line 2
    sget-object v1, Lio/realm/RealmFieldType;->BINARY:Lio/realm/RealmFieldType;

    if-ne v0, v1, :cond_0

    const/4 v7, 0x0

    .line 3
    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->b:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->a()V

    .line 4
    iget-wide v3, p0, Lio/realm/internal/UncheckedRow;->c:J

    move-object v2, p0

    move-wide v5, p1

    invoke-virtual/range {v2 .. v7}, Lio/realm/internal/UncheckedRow;->nativeSetByteArray(JJ[B)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->b:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->a()V

    .line 6
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->c:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeSetNull(JJ)V

    :goto_0
    return-void
.end method

.method public native nativeGetBoolean(JJ)Z
.end method

.method public native nativeGetByteArray(JJ)[B
.end method

.method public native nativeGetColumnCount(J)J
.end method

.method public native nativeGetColumnIndex(JLjava/lang/String;)J
.end method

.method public native nativeGetColumnName(JJ)Ljava/lang/String;
.end method

.method public native nativeGetColumnType(JJ)I
.end method

.method public native nativeGetDouble(JJ)D
.end method

.method public native nativeGetFloat(JJ)F
.end method

.method public native nativeGetLink(JJ)J
.end method

.method public native nativeGetLong(JJ)J
.end method

.method public native nativeGetString(JJ)Ljava/lang/String;
.end method

.method public native nativeGetTimestamp(JJ)J
.end method

.method public native nativeIsNullLink(JJ)Z
.end method

.method public native nativeNullifyLink(JJ)V
.end method

.method public native nativeSetBoolean(JJZ)V
.end method

.method public native nativeSetByteArray(JJ[B)V
.end method

.method public native nativeSetDouble(JJD)V
.end method

.method public native nativeSetFloat(JJF)V
.end method

.method public native nativeSetLink(JJJ)V
.end method

.method public native nativeSetLong(JJJ)V
.end method

.method public native nativeSetString(JJLjava/lang/String;)V
.end method

.method public native nativeSetTimestamp(JJJ)V
.end method

.method public t(J)Lio/realm/internal/OsList;
    .locals 7

    .line 1
    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->b:Lio/realm/internal/Table;

    .line 2
    iget-wide v1, v0, Lio/realm/internal/Table;->a:J

    invoke-virtual {v0, v1, v2, p1, p2}, Lio/realm/internal/Table;->nativeGetColumnType(JJ)I

    move-result v0

    invoke-static {v0}, Lio/realm/RealmFieldType;->fromNativeValue(I)Lio/realm/RealmFieldType;

    move-result-object v0

    .line 3
    sget-object v1, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    if-ne v0, v1, :cond_0

    .line 4
    new-instance v0, Lio/realm/internal/OsList;

    invoke-direct {v0, p0, p1, p2}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 6
    iget-object v4, p0, Lio/realm/internal/UncheckedRow;->b:Lio/realm/internal/Table;

    .line 7
    iget-wide v5, v4, Lio/realm/internal/Table;->a:J

    invoke-virtual {v4, v5, v6, p1, p2}, Lio/realm/internal/Table;->nativeGetColumnName(JJ)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "Field \'%s\' is not a \'RealmList\'."

    .line 8
    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public x(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;
    .locals 7

    .line 1
    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->b:Lio/realm/internal/Table;

    .line 2
    iget-wide v1, v0, Lio/realm/internal/Table;->a:J

    invoke-virtual {v0, v1, v2, p1, p2}, Lio/realm/internal/Table;->nativeGetColumnType(JJ)I

    move-result v0

    invoke-static {v0}, Lio/realm/RealmFieldType;->fromNativeValue(I)Lio/realm/RealmFieldType;

    move-result-object v0

    if-ne p3, v0, :cond_0

    .line 3
    new-instance p3, Lio/realm/internal/OsList;

    invoke-direct {p3, p0, p1, p2}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    return-object p3

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 5
    iget-object v4, p0, Lio/realm/internal/UncheckedRow;->b:Lio/realm/internal/Table;

    .line 6
    iget-wide v5, v4, Lio/realm/internal/Table;->a:J

    invoke-virtual {v4, v5, v6, p1, p2}, Lio/realm/internal/Table;->nativeGetColumnName(JJ)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    .line 7
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, "The type of field \'%1$s\' is not \'RealmFieldType.%2$s\'."

    .line 8
    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public y(J)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->c:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeIsNull(JJ)Z

    move-result p1

    return p1
.end method
