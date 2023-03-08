.class public final Lg/a/g;
.super Lg/a/o;
.source "RealmList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/a/o<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lg/a/a;Lio/realm/internal/OsList;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a;",
            "Lio/realm/internal/OsList;",
            "Ljava/lang/Class<",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lg/a/o;-><init>(Lg/a/a;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lg/a/o;->b:Lio/realm/internal/OsList;

    check-cast p1, Ljava/util/Date;

    .line 2
    iget-wide v0, v0, Lio/realm/internal/OsList;->a:J

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/OsList;->nativeAddDate(JJ)V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_1

    return-void

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "java.util.Date"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "Unacceptable value type. Acceptable: %1$s, actual: %2$s ."

    .line 4
    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(I)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lg/a/o;->b:Lio/realm/internal/OsList;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lio/realm/internal/OsList;->a(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    return-object p1
.end method

.method public e(ILjava/lang/Object;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lg/a/o;->b:Lio/realm/internal/OsList;

    int-to-long v3, p1

    check-cast p2, Ljava/util/Date;

    .line 2
    iget-wide v1, v0, Lio/realm/internal/OsList;->a:J

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static/range {v1 .. v6}, Lio/realm/internal/OsList;->nativeInsertDate(JJJ)V

    return-void
.end method

.method public g(ILjava/lang/Object;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lg/a/o;->b:Lio/realm/internal/OsList;

    int-to-long v3, p1

    check-cast p2, Ljava/util/Date;

    .line 2
    iget-wide v1, v0, Lio/realm/internal/OsList;->a:J

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static/range {v1 .. v6}, Lio/realm/internal/OsList;->nativeSetDate(JJJ)V

    return-void
.end method
