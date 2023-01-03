.class public final Lk/a/g/d$g0;
.super Lk/a/g/d;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/g/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g0"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lk/a/g/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lk/a/e/h;Lk/a/e/h;)Z
    .locals 8

    .line 1
    instance-of p1, p2, Lk/a/e/m;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    if-eqz p2, :cond_8

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v2, p2, Lk/a/e/h;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk/a/e/l;

    .line 4
    instance-of v4, v3, Lk/a/e/n;

    if-eqz v4, :cond_1

    .line 5
    check-cast v3, Lk/a/e/n;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk/a/e/n;

    .line 8
    new-instance v4, Lk/a/e/m;

    .line 9
    iget-object v5, p2, Lk/a/e/h;->c:Lk/a/f/h;

    .line 10
    iget-object v5, v5, Lk/a/f/h;->a:Ljava/lang/String;

    .line 11
    sget-object v6, Lk/a/f/f;->d:Lk/a/f/f;

    invoke-static {v5, v6}, Lk/a/f/h;->a(Ljava/lang/String;Lk/a/f/f;)Lk/a/f/h;

    move-result-object v5

    .line 12
    invoke-virtual {p2}, Lk/a/e/h;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lk/a/e/h;->d()Lk/a/e/b;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lk/a/e/m;-><init>(Lk/a/f/h;Ljava/lang/String;Lk/a/e/b;)V

    if-eqz v2, :cond_6

    .line 13
    invoke-static {v4}, Lj/b;->s(Ljava/lang/Object;)V

    .line 14
    iget-object v5, v2, Lk/a/e/l;->a:Lk/a/e/l;

    invoke-static {v5}, Lj/b;->s(Ljava/lang/Object;)V

    .line 15
    iget-object v5, v2, Lk/a/e/l;->a:Lk/a/e/l;

    if-eqz v5, :cond_5

    if-ne v5, v5, :cond_3

    const/4 v3, 0x1

    .line 16
    :cond_3
    invoke-static {v3}, Lj/b;->n(Z)V

    .line 17
    invoke-static {v4}, Lj/b;->s(Ljava/lang/Object;)V

    .line 18
    iget-object v3, v4, Lk/a/e/l;->a:Lk/a/e/l;

    if-eqz v3, :cond_4

    .line 19
    invoke-virtual {v3, v4}, Lk/a/e/l;->x(Lk/a/e/l;)V

    .line 20
    :cond_4
    iget v3, v2, Lk/a/e/l;->b:I

    .line 21
    invoke-virtual {v5}, Lk/a/e/l;->l()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 22
    iput-object v5, v4, Lk/a/e/l;->a:Lk/a/e/l;

    .line 23
    iput v3, v4, Lk/a/e/l;->b:I

    .line 24
    iput-object p1, v2, Lk/a/e/l;->a:Lk/a/e/l;

    .line 25
    invoke-virtual {v4, v2}, Lk/a/e/h;->z(Lk/a/e/l;)Lk/a/e/h;

    goto :goto_1

    .line 26
    :cond_5
    throw p1

    .line 27
    :cond_6
    throw p1

    :cond_7
    return v3

    .line 28
    :cond_8
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ":matchText"

    return-object v0
.end method
