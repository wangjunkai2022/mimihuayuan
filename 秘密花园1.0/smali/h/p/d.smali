.class public final Lh/p/d;
.super Lh/p/e;


# direct methods
.method public static final a(II)Lh/p/a;
    .locals 2

    .line 1
    new-instance v0, Lh/p/a;

    const/4 v1, -0x1

    invoke-direct {v0, p0, p1, v1}, Lh/p/a;-><init>(III)V

    return-object v0
.end method

.method public static final b(Lh/p/a;I)Lh/p/a;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-lez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_2

    .line 2
    iget v0, p0, Lh/p/a;->a:I

    .line 3
    iget v1, p0, Lh/p/a;->b:I

    .line 4
    iget p0, p0, Lh/p/a;->c:I

    if-lez p0, :cond_1

    goto :goto_1

    :cond_1
    neg-int p1, p1

    .line 5
    :goto_1
    new-instance p0, Lh/p/a;

    invoke-direct {p0, v0, v1, p1}, Lh/p/a;-><init>(III)V

    return-object p0

    .line 6
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Step must be positive, was: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const-string p0, "step"

    .line 7
    invoke-static {p0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string p0, "$this$step"

    .line 8
    invoke-static {p0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0
.end method

.method public static final c(II)Lh/p/c;
    .locals 1

    const/high16 v0, -0x80000000

    if-gt p1, v0, :cond_0

    .line 1
    sget-object p0, Lh/p/c;->e:Lh/p/c;

    .line 2
    sget-object p0, Lh/p/c;->d:Lh/p/c;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lh/p/c;

    add-int/lit8 p1, p1, -0x1

    invoke-direct {v0, p0, p1}, Lh/p/c;-><init>(II)V

    return-object v0
.end method
