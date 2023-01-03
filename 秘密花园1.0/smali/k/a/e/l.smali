.class public abstract Lk/a/e/l;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/a/e/l$a;
    }
.end annotation


# instance fields
.field public a:Lk/a/e/l;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p1}, Lj/b;->q(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Lk/a/e/l;->m(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lk/a/e/l;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lk/a/e/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lk/a/d/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p1}, Lj/b;->s(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lk/a/e/l;->n()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lk/a/e/l;->d()Lk/a/e/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lk/a/e/b;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    return-object v0

    :cond_1
    const-string v0, "abs:"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lk/a/e/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Lk/a/e/l;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lk/a/e/l;->y()Lk/a/e/l;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lk/a/e/f;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lk/a/e/f;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    iget-object v0, v0, Lk/a/e/f;->j:Lk/a/f/g;

    if-eqz v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    new-instance v0, Lk/a/f/g;

    new-instance v1, Lk/a/f/b;

    invoke-direct {v1}, Lk/a/f/b;-><init>()V

    invoke-direct {v0, v1}, Lk/a/f/g;-><init>(Lk/a/f/m;)V

    .line 5
    :goto_1
    iget-object v0, v0, Lk/a/f/g;->b:Lk/a/f/f;

    if-eqz v0, :cond_5

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-boolean v0, v0, Lk/a/f/f;->b:Z

    if-nez v0, :cond_2

    .line 8
    invoke-static {p1}, Lj/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    :cond_2
    invoke-virtual {p0}, Lk/a/e/l;->d()Lk/a/e/b;

    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lk/a/e/b;->l(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 11
    iget-object v2, v0, Lk/a/e/b;->c:[Ljava/lang/String;

    aput-object p2, v2, v1

    .line 12
    iget-object p2, v0, Lk/a/e/b;->b:[Ljava/lang/String;

    aget-object p2, p2, v1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 13
    iget-object p2, v0, Lk/a/e/b;->b:[Ljava/lang/String;

    aput-object p1, p2, v1

    goto :goto_2

    .line 14
    :cond_3
    invoke-virtual {v0, p1, p2}, Lk/a/e/b;->b(Ljava/lang/String;Ljava/lang/String;)Lk/a/e/b;

    :cond_4
    :goto_2
    return-object p0

    .line 15
    :cond_5
    throw v2
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lk/a/e/l;->h()Lk/a/e/l;

    move-result-object v0

    return-object v0
.end method

.method public abstract d()Lk/a/e/b;
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract f()I
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lk/a/e/l;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lk/a/e/l;->l()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public h()Lk/a/e/l;
    .locals 7

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lk/a/e/l;->i(Lk/a/e/l;)Lk/a/e/l;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 3
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk/a/e/l;

    .line 6
    invoke-virtual {v2}, Lk/a/e/l;->f()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 7
    invoke-virtual {v2}, Lk/a/e/l;->l()Ljava/util/List;

    move-result-object v5

    .line 8
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lk/a/e/l;

    invoke-virtual {v6, v2}, Lk/a/e/l;->i(Lk/a/e/l;)Lk/a/e/l;

    move-result-object v6

    .line 9
    invoke-interface {v5, v4, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {v1, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public i(Lk/a/e/l;)Lk/a/e/l;
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/a/e/l;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iput-object p1, v0, Lk/a/e/l;->a:Lk/a/e/l;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iget p1, p0, Lk/a/e/l;->b:I

    :goto_0
    iput p1, v0, Lk/a/e/l;->b:I

    return-object v0

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public abstract j(Ljava/lang/String;)V
.end method

.method public abstract k()Lk/a/e/l;
.end method

.method public abstract l()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lk/a/e/l;",
            ">;"
        }
    .end annotation
.end method

.method public m(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-static {p1}, Lj/b;->s(Ljava/lang/Object;)V

    const-string v0, "abs:"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lk/a/e/l;->d()Lk/a/e/b;

    move-result-object v4

    .line 5
    invoke-virtual {v4, v0}, Lk/a/e/b;->l(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    .line 6
    invoke-virtual {p0, v0}, Lk/a/e/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 7
    :cond_1
    invoke-virtual {p0}, Lk/a/e/l;->d()Lk/a/e/b;

    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Lk/a/e/b;->l(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public abstract n()Z
.end method

.method public o(Ljava/lang/Appendable;ILk/a/e/f$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 1
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object p1

    .line 2
    iget p3, p3, Lk/a/e/f$a;->g:I

    mul-int p2, p2, p3

    .line 3
    invoke-static {p2}, Lk/a/d/a;->i(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public p()Lk/a/e/l;
    .locals 4

    .line 1
    iget-object v0, p0, Lk/a/e/l;->a:Lk/a/e/l;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lk/a/e/l;->l()Ljava/util/List;

    move-result-object v0

    .line 3
    iget v2, p0, Lk/a/e/l;->b:I

    add-int/lit8 v2, v2, 0x1

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_1

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/a/e/l;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public abstract q()Ljava/lang/String;
.end method

.method public r()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lk/a/d/a;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    new-instance v1, Lk/a/e/l$a;

    invoke-static {p0}, Lj/b;->t(Lk/a/e/l;)Lk/a/e/f$a;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lk/a/e/l$a;-><init>(Ljava/lang/Appendable;Lk/a/e/f$a;)V

    invoke-static {v1, p0}, Lj/b;->D(Lk/a/g/f;Lk/a/e/l;)V

    .line 3
    invoke-static {v0}, Lk/a/d/a;->j(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract s(Ljava/lang/Appendable;ILk/a/e/f$a;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract t(Ljava/lang/Appendable;ILk/a/e/f$a;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/a/e/l;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Lk/a/e/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/e/l;->a:Lk/a/e/l;

    return-object v0
.end method

.method public final v(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lk/a/e/l;->l()Ljava/util/List;

    move-result-object v0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/e/l;

    .line 4
    iput p1, v1, Lk/a/e/l;->b:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public w()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/e/l;->a:Lk/a/e/l;

    invoke-static {v0}, Lj/b;->s(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lk/a/e/l;->a:Lk/a/e/l;

    invoke-virtual {v0, p0}, Lk/a/e/l;->x(Lk/a/e/l;)V

    return-void
.end method

.method public x(Lk/a/e/l;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lk/a/e/l;->a:Lk/a/e/l;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lj/b;->n(Z)V

    .line 2
    iget v0, p1, Lk/a/e/l;->b:I

    .line 3
    invoke-virtual {p0}, Lk/a/e/l;->l()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, v0}, Lk/a/e/l;->v(I)V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p1, Lk/a/e/l;->a:Lk/a/e/l;

    return-void
.end method

.method public y()Lk/a/e/l;
    .locals 2

    move-object v0, p0

    .line 1
    :goto_0
    iget-object v1, v0, Lk/a/e/l;->a:Lk/a/e/l;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method
