.class public final Li/m0/b;
.super Ljava/lang/Object;
.source "Util.kt"


# static fields
.field public static final a:[B

.field public static final b:Li/w;

.field public static final c:Li/i0;

.field public static final d:Lj/r;

.field public static final e:Ljava/util/TimeZone;

.field public static final f:Lh/s/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 1
    sput-object v1, Li/m0/b;->a:[B

    .line 2
    sget-object v1, Li/w;->b:Li/w$b;

    new-array v2, v0, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Li/w$b;->c([Ljava/lang/String;)Li/w;

    move-result-object v1

    sput-object v1, Li/m0/b;->b:Li/w;

    .line 3
    sget-object v1, Li/m0/b;->a:[B

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 4
    new-instance v3, Lj/g;

    invoke-direct {v3}, Lj/g;-><init>()V

    .line 5
    invoke-virtual {v3, v1}, Lj/g;->N([B)Lj/g;

    .line 6
    array-length v1, v1

    int-to-long v4, v1

    .line 7
    new-instance v1, Li/j0;

    invoke-direct {v1, v3, v2, v4, v5}, Li/j0;-><init>(Lj/j;Li/z;J)V

    .line 8
    sput-object v1, Li/m0/b;->c:Li/i0;

    .line 9
    sget-object v1, Li/m0/b;->a:[B

    .line 10
    array-length v3, v1

    if-eqz v1, :cond_1

    .line 11
    array-length v1, v1

    int-to-long v4, v1

    int-to-long v6, v0

    int-to-long v8, v3

    invoke-static/range {v4 .. v9}, Li/m0/b;->e(JJJ)V

    .line 12
    sget-object v1, Lj/r;->c:Lj/r$a;

    const/4 v3, 0x5

    new-array v3, v3, [Lj/k;

    .line 13
    sget-object v4, Lj/k;->e:Lj/k$a;

    const-string v5, "efbbbf"

    invoke-virtual {v4, v5}, Lj/k$a;->a(Ljava/lang/String;)Lj/k;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x1

    .line 14
    sget-object v4, Lj/k;->e:Lj/k$a;

    const-string v5, "feff"

    invoke-virtual {v4, v5}, Lj/k$a;->a(Ljava/lang/String;)Lj/k;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    .line 15
    sget-object v4, Lj/k;->e:Lj/k$a;

    const-string v5, "fffe"

    invoke-virtual {v4, v5}, Lj/k$a;->a(Ljava/lang/String;)Lj/k;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x3

    .line 16
    sget-object v4, Lj/k;->e:Lj/k$a;

    const-string v5, "0000ffff"

    invoke-virtual {v4, v5}, Lj/k$a;->a(Ljava/lang/String;)Lj/k;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x4

    .line 17
    sget-object v4, Lj/k;->e:Lj/k$a;

    const-string v5, "ffff0000"

    invoke-virtual {v4, v5}, Lj/k$a;->a(Ljava/lang/String;)Lj/k;

    move-result-object v4

    aput-object v4, v3, v0

    .line 18
    invoke-virtual {v1, v3}, Lj/r$a;->c([Lj/k;)Lj/r;

    move-result-object v0

    sput-object v0, Li/m0/b;->d:Lj/r;

    const-string v0, "GMT"

    .line 19
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    if-eqz v0, :cond_0

    sput-object v0, Li/m0/b;->e:Ljava/util/TimeZone;

    .line 20
    new-instance v0, Lh/s/c;

    const-string v1, "([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)"

    invoke-direct {v0, v1}, Lh/s/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Li/m0/b;->f:Lh/s/c;

    return-void

    .line 21
    :cond_0
    invoke-static {}, Lh/o/c/g;->e()V

    throw v2

    :cond_1
    const-string v0, "$this$toRequestBody"

    .line 22
    invoke-static {v0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v2

    :cond_2
    const-string v0, "$this$toResponseBody"

    .line 23
    invoke-static {v0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v2
.end method

.method public static final A(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .line 1
    new-instance v0, Li/m0/b$a;

    invoke-direct {v0, p0, p1}, Li/m0/b$a;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static final B(Ljava/util/List;)Li/w;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Li/m0/g/c;",
            ">;)",
            "Li/w;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li/m0/g/c;

    .line 3
    iget-object v3, v1, Li/m0/g/c;->b:Lj/k;

    .line 4
    iget-object v1, v1, Li/m0/g/c;->c:Lj/k;

    if-eqz v3, :cond_1

    .line 5
    invoke-static {v3}, Lj/c0/a;->r(Lj/k;)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_0

    invoke-static {v1}, Lj/c0/a;->r(Lj/k;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-static {v1}, Lh/s/d;->y(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    throw v2

    :cond_1
    throw v2

    :cond_2
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    .line 9
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    check-cast p0, [Ljava/lang/String;

    .line 10
    new-instance v0, Li/w;

    invoke-direct {v0, p0, v2}, Li/w;-><init>([Ljava/lang/String;Lh/o/c/f;)V

    return-object v0

    .line 11
    :cond_3
    new-instance p0, Lh/f;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p0, v0}, Lh/f;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final C(Li/x;Z)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    .line 1
    iget-object v1, p0, Li/x;->e:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, ":"

    .line 2
    invoke-static {v1, v4, v2, v3}, Lh/s/d;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    iget-object v2, p0, Li/x;->e:Ljava/lang/String;

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Li/x;->e:Ljava/lang/String;

    :goto_0
    if-nez p1, :cond_5

    .line 7
    iget p1, p0, Li/x;->f:I

    .line 8
    iget-object v2, p0, Li/x;->b:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 9
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v3, 0x310888    # 4.503E-39f

    if-eq v0, v3, :cond_2

    const v3, 0x5f008eb

    if-eq v0, v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "https"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x1bb

    goto :goto_2

    :cond_2
    const-string v0, "http"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x50

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, -0x1

    :goto_2
    if-eq p1, v0, :cond_6

    goto :goto_3

    :cond_4
    const-string p0, "scheme"

    .line 10
    invoke-static {p0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_5
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    iget p0, p0, Li/x;->f:I

    .line 13
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_6
    return-object v1

    :cond_7
    const-string p0, "$this$toHostHeader"

    .line 14
    invoke-static {p0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0
.end method

.method public static final D(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-static {p0}, Lh/k/g;->c(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    const-string v0, "Collections.unmodifiableList(toMutableList())"

    invoke-static {p0, v0}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    const-string p0, "$this$toImmutableList"

    .line 2
    invoke-static {p0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final E(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;+TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lh/k/j;->a:Lh/k/j;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    const-string v0, "Collections.unmodifiableMap(LinkedHashMap(this))"

    invoke-static {p0, v0}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0

    :cond_1
    const-string p0, "$this$toImmutableMap"

    .line 4
    invoke-static {p0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final F(Ljava/lang/String;J)J
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-wide p1
.end method

.method public static final G(Ljava/lang/String;I)I
    .locals 4

    if-eqz p0, :cond_2

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const v0, 0x7fffffff

    int-to-long v1, v0

    cmp-long v3, p0, v1

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    long-to-int v0, p0

    :goto_0
    return v0

    :catch_0
    :cond_2
    return p1
.end method

.method public static final H(Ljava/lang/String;II)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-static {p0, p1, p2}, Li/m0/b;->r(Ljava/lang/String;II)I

    move-result p1

    .line 2
    invoke-static {p0, p1, p2}, Li/m0/b;->t(Ljava/lang/String;II)I

    move-result p2

    .line 3
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p0, p1}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    const-string p0, "$this$trimSubstring"

    .line 4
    invoke-static {p0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final I(Lj/i;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 1
    invoke-interface {p0, v0}, Lj/i;->q(I)Lj/i;

    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 2
    invoke-interface {p0, v0}, Lj/i;->q(I)Lj/i;

    and-int/lit16 p1, p1, 0xff

    .line 3
    invoke-interface {p0, p1}, Lj/i;->q(I)Lj/i;

    return-void

    :cond_0
    const-string p0, "$this$writeMedium"

    .line 4
    invoke-static {p0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final a(BI)I
    .locals 0

    and-int/2addr p0, p1

    return p0
.end method

.method public static final b(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Li/m0/b;->f:Lh/s/c;

    invoke-virtual {v0, p0}, Lh/s/c;->a(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static final c(Li/x;Li/x;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Li/x;->e:Ljava/lang/String;

    iget-object v1, p1, Li/x;->e:Ljava/lang/String;

    .line 2
    invoke-static {v0, v1}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget v0, p0, Li/x;->f:I

    iget v1, p1, Li/x;->f:I

    if-ne v0, v1, :cond_0

    .line 4
    iget-object p0, p0, Li/x;->b:Ljava/lang/String;

    iget-object p1, p1, Li/x;->b:Ljava/lang/String;

    .line 5
    invoke-static {p0, p1}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    const-string p0, "other"

    .line 6
    invoke-static {p0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string p0, "$this$canReuseConnectionFor"

    invoke-static {p0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0
.end method

.method public static final d(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I
    .locals 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmp-long v4, p1, v0

    if-ltz v4, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_7

    if-eqz v3, :cond_6

    .line 1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    const p3, 0x7fffffff

    int-to-long v5, p3

    cmp-long p3, p1, v5

    if-gtz p3, :cond_1

    const/4 p3, 0x1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_1
    if-eqz p3, :cond_5

    cmp-long p3, p1, v0

    if-nez p3, :cond_2

    if-gtz v4, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    if-eqz v2, :cond_4

    long-to-int p0, p1

    return p0

    :cond_4
    const-string p1, " too small."

    .line 2
    invoke-static {p0, p1}, Lf/b/a/a/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const-string p1, " too large."

    .line 3
    invoke-static {p0, p1}, Lf/b/a/a/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unit == null"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    const-string p1, " < 0"

    .line 5
    invoke-static {p0, p1}, Lf/b/a/a/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final e(JJJ)V
    .locals 5

    or-long v0, p2, p4

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    cmp-long v0, p2, p0

    if-gtz v0, :cond_0

    sub-long/2addr p0, p2

    cmp-long p2, p0, p4

    if-ltz p2, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public static final f(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :catch_1
    move-exception p0

    .line 2
    throw p0

    :cond_0
    const-string p0, "$this$closeQuietly"

    .line 3
    invoke-static {p0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final g(Ljava/net/Socket;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :catch_1
    move-exception p0

    .line 2
    throw p0

    :catch_2
    move-exception p0

    .line 3
    throw p0

    :cond_0
    const-string p0, "$this$closeQuietly"

    .line 4
    invoke-static {p0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final h(Ljava/lang/String;CII)I
    .locals 1

    if-eqz p0, :cond_2

    :goto_0
    if-ge p2, p3, :cond_1

    .line 1
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return p3

    :cond_2
    const-string p0, "$this$delimiterOffset"

    .line 2
    invoke-static {p0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final i(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 3

    if-eqz p0, :cond_2

    :goto_0
    if-ge p2, p3, :cond_1

    .line 1
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2}, Lh/s/d;->a(Ljava/lang/CharSequence;CZI)Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return p3

    :cond_2
    const-string p0, "$this$delimiterOffset"

    .line 2
    invoke-static {p0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic j(Ljava/lang/String;CIII)I
    .locals 1

    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p3

    :cond_1
    invoke-static {p0, p1, p2, p3}, Li/m0/b;->h(Ljava/lang/String;CII)I

    move-result p0

    return p0
.end method

.method public static final k(Lj/a0;ILjava/util/concurrent/TimeUnit;)Z
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2}, Li/m0/b;->z(Lj/a0;ILjava/util/concurrent/TimeUnit;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_0
    const-string p0, "timeUnit"

    .line 2
    invoke-static {p0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final varargs l(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Locale.US"

    invoke-static {v0, v1}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "java.lang.String.format(locale, format, *args)"

    invoke-static {p0, p1}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    const-string p0, "format"

    .line 2
    invoke-static {p0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final m([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p0, :cond_6

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_5

    if-eqz p1, :cond_5

    array-length v0, p1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_4

    .line 2
    :cond_2
    array-length v0, p0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_5

    aget-object v4, p0, v3

    .line 3
    array-length v5, p1

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_4

    aget-object v7, p1, v6

    .line 4
    invoke-interface {p2, v4, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-nez v7, :cond_3

    return v2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    :goto_4
    return v1

    :cond_6
    const-string p0, "$this$hasIntersection"

    .line 5
    invoke-static {p0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final n(Li/h0;)J
    .locals 2

    .line 1
    iget-object p0, p0, Li/h0;->g:Li/w;

    const-string v0, "Content-Length"

    .line 2
    invoke-virtual {p0, v0}, Li/w;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v0, -0x1

    if-eqz p0, :cond_0

    .line 3
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-wide v0
.end method

.method public static final varargs o([Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    const-string v0, "Collections.unmodifiable\u2026sList(*elements.clone()))"

    invoke-static {p0, v0}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    const-string p0, "elements"

    .line 2
    invoke-static {p0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final p([Ljava/lang/String;Ljava/lang/String;Ljava/util/Comparator;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 2
    aget-object v3, p0, v2

    .line 3
    invoke-interface {p2, v3, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    :goto_2
    return v2
.end method

.method public static final q(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x1f

    if-le v2, v3, :cond_1

    const/16 v3, 0x7f

    if-lt v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public static final r(Ljava/lang/String;II)I
    .locals 2

    if-eqz p0, :cond_2

    :goto_0
    if-ge p1, p2, :cond_1

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return p2

    :cond_2
    const-string p0, "$this$indexOfFirstNonAsciiWhitespace"

    .line 2
    invoke-static {p0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic s(Ljava/lang/String;III)I
    .locals 1

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    :cond_1
    invoke-static {p0, p1, p2}, Li/m0/b;->r(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static final t(Ljava/lang/String;II)I
    .locals 2

    if-eqz p0, :cond_2

    add-int/lit8 p2, p2, -0x1

    if-lt p2, p1, :cond_1

    .line 1
    :goto_0
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    add-int/lit8 p2, p2, 0x1

    return p2

    :cond_0
    if-eq p2, p1, :cond_1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    return p1

    :cond_2
    const-string p0, "$this$indexOfLastNonAsciiWhitespace"

    .line 2
    invoke-static {p0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final u(Ljava/lang/String;I)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    if-ge p1, v0, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method public static final v([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)[Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    .line 3
    array-length v5, p1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, p1, v6

    .line 4
    invoke-interface {p2, v4, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-nez v7, :cond_0

    .line 5
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-array p0, v2, [Ljava/lang/String;

    .line 6
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_3
    new-instance p0, Lh/f;

    const-string p1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p0, p1}, Lh/f;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const-string p0, "other"

    .line 7
    invoke-static {p0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final w(C)I
    .locals 2

    const/16 v0, 0x30

    if-le v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x39

    if-lt v1, p0, :cond_1

    sub-int/2addr p0, v0

    goto :goto_4

    :cond_1
    :goto_0
    const/16 v0, 0x66

    const/16 v1, 0x61

    if-le v1, p0, :cond_2

    goto :goto_2

    :cond_2
    if-lt v0, p0, :cond_3

    :goto_1
    sub-int/2addr p0, v1

    add-int/lit8 p0, p0, 0xa

    goto :goto_4

    :cond_3
    :goto_2
    const/16 v0, 0x46

    const/16 v1, 0x41

    if-le v1, p0, :cond_4

    goto :goto_3

    :cond_4
    if-lt v0, p0, :cond_5

    goto :goto_1

    :cond_5
    :goto_3
    const/4 p0, -0x1

    :goto_4
    return p0
.end method

.method public static final x(Lj/j;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    if-eqz p1, :cond_8

    .line 1
    sget-object v0, Li/m0/b;->d:Lj/r;

    invoke-interface {p0, v0}, Lj/j;->D(Lj/r;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_7

    if-eqz p0, :cond_6

    const/4 p1, 0x1

    if-eq p0, p1, :cond_5

    const/4 p1, 0x2

    if-eq p0, p1, :cond_4

    const/4 p1, 0x3

    if-eq p0, p1, :cond_2

    const/4 p1, 0x4

    if-ne p0, p1, :cond_1

    .line 2
    sget-object p0, Lh/s/a;->d:Lh/s/a;

    .line 3
    sget-object p0, Lh/s/a;->b:Ljava/nio/charset/Charset;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "UTF-32LE"

    .line 4
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0

    const-string p1, "Charset.forName(\"UTF-32LE\")"

    invoke-static {p0, p1}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sput-object p0, Lh/s/a;->b:Ljava/nio/charset/Charset;

    goto :goto_1

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 7
    :cond_2
    sget-object p0, Lh/s/a;->d:Lh/s/a;

    .line 8
    sget-object p0, Lh/s/a;->c:Ljava/nio/charset/Charset;

    if-eqz p0, :cond_3

    :goto_0
    goto :goto_1

    :cond_3
    const-string p0, "UTF-32BE"

    .line 9
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0

    const-string p1, "Charset.forName(\"UTF-32BE\")"

    invoke-static {p0, p1}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sput-object p0, Lh/s/a;->c:Ljava/nio/charset/Charset;

    :goto_1
    move-object p1, p0

    goto :goto_2

    .line 11
    :cond_4
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    const-string p0, "UTF_16LE"

    invoke-static {p1, p0}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 12
    :cond_5
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    const-string p0, "UTF_16BE"

    invoke-static {p1, p0}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 13
    :cond_6
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string p0, "UTF_8"

    invoke-static {p1, p0}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-object p1

    :cond_8
    const-string p0, "default"

    .line 14
    invoke-static {p0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0

    :cond_9
    const-string p0, "$this$readBomAsCharset"

    invoke-static {p0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0
.end method

.method public static final y(Lj/j;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p0}, Lj/j;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    .line 2
    invoke-interface {p0}, Lj/j;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 3
    invoke-interface {p0}, Lj/j;->readByte()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0

    :cond_0
    const-string p0, "$this$readMedium"

    .line 4
    invoke-static {p0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final z(Lj/a0;ILjava/util/concurrent/TimeUnit;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_4

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 2
    invoke-interface {p0}, Lj/a0;->i()Lj/b0;

    move-result-object v2

    invoke-virtual {v2}, Lj/b0;->e()Z

    move-result v2

    const-wide v3, 0x7fffffffffffffffL

    if-eqz v2, :cond_0

    .line 3
    invoke-interface {p0}, Lj/a0;->i()Lj/b0;

    move-result-object v2

    invoke-virtual {v2}, Lj/b0;->c()J

    move-result-wide v5

    sub-long/2addr v5, v0

    goto :goto_0

    :cond_0
    move-wide v5, v3

    .line 4
    :goto_0
    invoke-interface {p0}, Lj/a0;->i()Lj/b0;

    move-result-object v2

    int-to-long v7, p1

    invoke-virtual {p2, v7, v8}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    invoke-static {v5, v6, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    add-long/2addr p1, v0

    invoke-virtual {v2, p1, p2}, Lj/b0;->d(J)Lj/b0;

    .line 5
    :try_start_0
    new-instance p1, Lj/g;

    invoke-direct {p1}, Lj/g;-><init>()V

    :goto_1
    const-wide/16 v7, 0x2000

    .line 6
    invoke-interface {p0, p1, v7, v8}, Lj/a0;->c(Lj/g;J)J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long p2, v7, v9

    if-eqz p2, :cond_1

    .line 7
    iget-wide v7, p1, Lj/g;->b:J

    invoke-virtual {p1, v7, v8}, Lj/g;->skip(J)V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    cmp-long p2, v5, v3

    if-nez p2, :cond_3

    goto :goto_3

    :catchall_0
    move-exception p1

    cmp-long p2, v5, v3

    if-nez p2, :cond_2

    .line 8
    invoke-interface {p0}, Lj/a0;->i()Lj/b0;

    move-result-object p0

    invoke-virtual {p0}, Lj/b0;->a()Lj/b0;

    goto :goto_2

    .line 9
    :cond_2
    invoke-interface {p0}, Lj/a0;->i()Lj/b0;

    move-result-object p0

    add-long/2addr v0, v5

    invoke-virtual {p0, v0, v1}, Lj/b0;->d(J)Lj/b0;

    .line 10
    :goto_2
    throw p1

    :catch_0
    nop

    const/4 p1, 0x0

    cmp-long p2, v5, v3

    if-nez p2, :cond_3

    .line 11
    :goto_3
    invoke-interface {p0}, Lj/a0;->i()Lj/b0;

    move-result-object p0

    invoke-virtual {p0}, Lj/b0;->a()Lj/b0;

    goto :goto_4

    .line 12
    :cond_3
    invoke-interface {p0}, Lj/a0;->i()Lj/b0;

    move-result-object p0

    add-long/2addr v0, v5

    invoke-virtual {p0, v0, v1}, Lj/b0;->d(J)Lj/b0;

    :goto_4
    return p1

    :cond_4
    const-string p0, "timeUnit"

    .line 13
    invoke-static {p0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
