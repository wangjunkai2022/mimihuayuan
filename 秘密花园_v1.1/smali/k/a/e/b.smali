.class public Lk/a/e/b;
.super Ljava/lang/Object;
.source "Attributes.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lk/a/e/a;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final d:[Ljava/lang/String;


# instance fields
.field public a:I

.field public b:[Ljava/lang/String;

.field public c:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    sput-object v0, Lk/a/e/b;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk/a/e/b;->a:I

    .line 3
    sget-object v0, Lk/a/e/b;->d:[Ljava/lang/String;

    iput-object v0, p0, Lk/a/e/b;->b:[Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lk/a/e/b;->c:[Ljava/lang/String;

    return-void
.end method

.method public static f([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 2

    .line 1
    new-array v0, p1, [Ljava/lang/String;

    .line 2
    array-length v1, p0

    .line 3
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    .line 4
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/String;Ljava/lang/String;)Lk/a/e/b;
    .locals 2

    .line 1
    iget v0, p0, Lk/a/e/b;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lk/a/e/b;->d(I)V

    .line 2
    iget-object v0, p0, Lk/a/e/b;->b:[Ljava/lang/String;

    iget v1, p0, Lk/a/e/b;->a:I

    aput-object p1, v0, v1

    .line 3
    iget-object p1, p0, Lk/a/e/b;->c:[Ljava/lang/String;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    .line 4
    iput v1, p0, Lk/a/e/b;->a:I

    return-object p0
.end method

.method public c(Lk/a/e/b;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lk/a/e/b;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lk/a/e/b;->a:I

    iget v1, p1, Lk/a/e/b;->a:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lk/a/e/b;->d(I)V

    .line 3
    new-instance v0, Lk/a/e/b$a;

    invoke-direct {v0, p1}, Lk/a/e/b$a;-><init>(Lk/a/e/b;)V

    .line 4
    :goto_0
    invoke-virtual {v0}, Lk/a/e/b$a;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lk/a/e/b$a;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk/a/e/a;

    .line 5
    invoke-virtual {p0, p1}, Lk/a/e/b;->o(Lk/a/e/a;)Lk/a/e/b;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lk/a/e/b;->e()Lk/a/e/b;

    move-result-object v0

    return-object v0
.end method

.method public final d(I)V
    .locals 2

    .line 1
    iget v0, p0, Lk/a/e/b;->a:I

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lj/b;->n(Z)V

    .line 2
    iget-object v0, p0, Lk/a/e/b;->b:[Ljava/lang/String;

    array-length v0, v0

    if-lt v0, p1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    .line 3
    iget v0, p0, Lk/a/e/b;->a:I

    mul-int/lit8 v1, v0, 0x2

    :cond_2
    if-le p1, v1, :cond_3

    goto :goto_1

    :cond_3
    move p1, v1

    .line 4
    :goto_1
    iget-object v0, p0, Lk/a/e/b;->b:[Ljava/lang/String;

    invoke-static {v0, p1}, Lk/a/e/b;->f([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lk/a/e/b;->b:[Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lk/a/e/b;->c:[Ljava/lang/String;

    invoke-static {v0, p1}, Lk/a/e/b;->f([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lk/a/e/b;->c:[Ljava/lang/String;

    return-void
.end method

.method public e()Lk/a/e/b;
    .locals 3

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/a/e/b;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget v1, p0, Lk/a/e/b;->a:I

    iput v1, v0, Lk/a/e/b;->a:I

    .line 3
    iget-object v1, p0, Lk/a/e/b;->b:[Ljava/lang/String;

    iget v2, p0, Lk/a/e/b;->a:I

    invoke-static {v1, v2}, Lk/a/e/b;->f([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lk/a/e/b;->b:[Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lk/a/e/b;->c:[Ljava/lang/String;

    iget v2, p0, Lk/a/e/b;->a:I

    invoke-static {v1, v2}, Lk/a/e/b;->f([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lk/a/e/b;->c:[Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 1
    const-class v1, Lk/a/e/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lk/a/e/b;

    .line 3
    iget v1, p0, Lk/a/e/b;->a:I

    iget v2, p1, Lk/a/e/b;->a:I

    if-eq v1, v2, :cond_2

    return v0

    .line 4
    :cond_2
    iget-object v1, p0, Lk/a/e/b;->b:[Ljava/lang/String;

    iget-object v2, p1, Lk/a/e/b;->b:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 5
    :cond_3
    iget-object v0, p0, Lk/a/e/b;->c:[Ljava/lang/String;

    iget-object p1, p1, Lk/a/e/b;->c:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method public g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lk/a/e/b;->k(Ljava/lang/String;)I

    move-result p1

    const-string v0, ""

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lk/a/e/b;->c:[Ljava/lang/String;

    aget-object p1, v1, p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method public h(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lk/a/e/b;->l(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lk/a/e/b;->c:[Ljava/lang/String;

    aget-object p1, v0, p1

    if-nez p1, :cond_1

    :goto_0
    const-string p1, ""

    :cond_1
    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lk/a/e/b;->a:I

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lk/a/e/b;->b:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lk/a/e/b;->c:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public i(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lk/a/e/b;->k(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lk/a/e/a;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lk/a/e/b$a;

    invoke-direct {v0, p0}, Lk/a/e/b$a;-><init>(Lk/a/e/b;)V

    return-object v0
.end method

.method public final j(Ljava/lang/Appendable;Lk/a/e/f$a;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lk/a/e/b;->a:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 2
    iget-object v2, p0, Lk/a/e/b;->b:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lk/a/e/b;->m(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v2, p0, Lk/a/e/b;->b:[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 4
    iget-object v3, p0, Lk/a/e/b;->c:[Ljava/lang/String;

    aget-object v3, v3, v1

    const/16 v4, 0x20

    .line 5
    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 6
    invoke-static {v2, v3, p2}, Lk/a/e/a;->a(Ljava/lang/String;Ljava/lang/String;Lk/a/e/f$a;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "=\""

    .line 7
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    if-nez v3, :cond_1

    const-string v3, ""

    :cond_1
    move-object v5, v3

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    move-object v6, p2

    .line 8
    invoke-static/range {v4 .. v9}, Lk/a/e/i;->c(Ljava/lang/Appendable;Ljava/lang/String;Lk/a/e/f$a;ZZZ)V

    const/16 v2, 0x22

    .line 9
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public k(Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-static {p1}, Lj/b;->s(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lk/a/e/b;->a:I

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lk/a/e/b;->b:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final l(Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-static {p1}, Lj/b;->s(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lk/a/e/b;->a:I

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lk/a/e/b;->b:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final m(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v2, 0x2f

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n(Ljava/lang/String;Ljava/lang/String;)Lk/a/e/b;
    .locals 2

    .line 1
    invoke-static {p1}, Lj/b;->s(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0, p1}, Lk/a/e/b;->k(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object p1, p0, Lk/a/e/b;->c:[Ljava/lang/String;

    aput-object p2, p1, v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2}, Lk/a/e/b;->b(Ljava/lang/String;Ljava/lang/String;)Lk/a/e/b;

    :goto_0
    return-object p0
.end method

.method public o(Lk/a/e/a;)Lk/a/e/b;
    .locals 2

    .line 1
    invoke-static {p1}, Lj/b;->s(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p1, Lk/a/e/a;->a:Ljava/lang/String;

    .line 3
    iget-object v1, p1, Lk/a/e/a;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    .line 4
    :cond_0
    invoke-virtual {p0, v0, v1}, Lk/a/e/b;->n(Ljava/lang/String;Ljava/lang/String;)Lk/a/e/b;

    .line 5
    iput-object p0, p1, Lk/a/e/a;->c:Lk/a/e/b;

    return-object p0
.end method

.method public final p(I)V
    .locals 4

    .line 1
    iget v0, p0, Lk/a/e/b;->a:I

    const/4 v1, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lj/b;->m(Z)V

    .line 2
    iget v0, p0, Lk/a/e/b;->a:I

    sub-int/2addr v0, p1

    sub-int/2addr v0, v1

    if-lez v0, :cond_1

    .line 3
    iget-object v2, p0, Lk/a/e/b;->b:[Ljava/lang/String;

    add-int/lit8 v3, p1, 0x1

    invoke-static {v2, v3, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget-object v2, p0, Lk/a/e/b;->c:[Ljava/lang/String;

    invoke-static {v2, v3, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    :cond_1
    iget p1, p0, Lk/a/e/b;->a:I

    sub-int/2addr p1, v1

    iput p1, p0, Lk/a/e/b;->a:I

    .line 6
    iget-object v0, p0, Lk/a/e/b;->b:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 7
    iget-object v0, p0, Lk/a/e/b;->c:[Ljava/lang/String;

    aput-object v1, v0, p1

    return-void
.end method

.method public size()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget v2, p0, Lk/a/e/b;->a:I

    if-ge v0, v2, :cond_1

    .line 2
    iget-object v2, p0, Lk/a/e/b;->b:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lk/a/e/b;->m(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lk/a/d/a;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    :try_start_0
    new-instance v1, Lk/a/e/f;

    const-string v2, ""

    invoke-direct {v1, v2}, Lk/a/e/f;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v1, v1, Lk/a/e/f;->i:Lk/a/e/f$a;

    .line 4
    invoke-virtual {p0, v0, v1}, Lk/a/e/b;->j(Ljava/lang/Appendable;Lk/a/e/f$a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    invoke-static {v0}, Lk/a/d/a;->j(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 6
    new-instance v1, Lk/a/a;

    invoke-direct {v1, v0}, Lk/a/a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
