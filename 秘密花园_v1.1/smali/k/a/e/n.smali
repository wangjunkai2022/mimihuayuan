.class public Lk/a/e/n;
.super Lk/a/e/k;
.source "TextNode.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lk/a/e/k;-><init>()V

    .line 2
    iput-object p1, p0, Lk/a/e/k;->c:Ljava/lang/Object;

    return-void
.end method

.method public static C(Ljava/lang/StringBuilder;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p0

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public B()Lk/a/e/n;
    .locals 1

    .line 1
    invoke-super {p0}, Lk/a/e/l;->h()Lk/a/e/l;

    move-result-object v0

    check-cast v0, Lk/a/e/n;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lk/a/e/n;->B()Lk/a/e/n;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h()Lk/a/e/l;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/a/e/n;->B()Lk/a/e/n;

    move-result-object v0

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    const-string v0, "#text"

    return-object v0
.end method

.method public s(Ljava/lang/Appendable;ILk/a/e/f$a;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p3, Lk/a/e/f$a;->e:Z

    if-eqz v0, :cond_5

    .line 2
    iget v1, p0, Lk/a/e/l;->b:I

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lk/a/e/l;->a:Lk/a/e/l;

    instance-of v2, v1, Lk/a/e/h;

    if-eqz v2, :cond_0

    check-cast v1, Lk/a/e/h;

    .line 4
    iget-object v1, v1, Lk/a/e/h;->c:Lk/a/f/h;

    .line 5
    iget-boolean v1, v1, Lk/a/f/h;->d:Z

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p0}, Lk/a/e/k;->z()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lk/a/d/a;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7
    :cond_0
    iget-boolean v1, p3, Lk/a/e/f$a;->f:Z

    if-eqz v1, :cond_5

    .line 8
    iget-object v1, p0, Lk/a/e/l;->a:Lk/a/e/l;

    if-nez v1, :cond_1

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v1}, Lk/a/e/l;->l()Ljava/util/List;

    move-result-object v1

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk/a/e/l;

    if-eq v3, p0, :cond_2

    .line 13
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    move-object v1, v2

    .line 14
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 15
    invoke-virtual {p0}, Lk/a/e/k;->z()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lk/a/d/a;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 16
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lk/a/e/l;->o(Ljava/lang/Appendable;ILk/a/e/f$a;)V

    :cond_5
    const/4 p2, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 17
    iget-object v2, p0, Lk/a/e/l;->a:Lk/a/e/l;

    invoke-static {v2}, Lk/a/e/h;->M(Lk/a/e/l;)Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v7, 0x1

    goto :goto_2

    :cond_6
    const/4 v7, 0x0

    :goto_2
    if-eqz v0, :cond_7

    .line 18
    iget-object v0, p0, Lk/a/e/l;->a:Lk/a/e/l;

    instance-of v0, v0, Lk/a/e/f;

    if-eqz v0, :cond_7

    const/4 v8, 0x1

    goto :goto_3

    :cond_7
    const/4 v8, 0x0

    .line 19
    :goto_3
    invoke-virtual {p0}, Lk/a/e/k;->z()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object v3, p1

    move-object v5, p3

    invoke-static/range {v3 .. v8}, Lk/a/e/i;->c(Ljava/lang/Appendable;Ljava/lang/String;Lk/a/e/f$a;ZZZ)V

    return-void
.end method

.method public t(Ljava/lang/Appendable;ILk/a/e/f$a;)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/a/e/l;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
