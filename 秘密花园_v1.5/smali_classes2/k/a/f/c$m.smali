.class public final enum Lk/a/f/c$m;
.super Lk/a/f/c;
.source "HtmlTreeBuilderState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/f/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lk/a/f/c;-><init>(Ljava/lang/String;ILk/a/f/c$k;)V

    return-void
.end method


# virtual methods
.method public c(Lk/a/f/i;Lk/a/f/b;)Z
    .locals 11

    .line 1
    invoke-virtual {p1}, Lk/a/f/i;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lk/a/f/i$d;

    .line 3
    invoke-virtual {p2, p1}, Lk/a/f/b;->v(Lk/a/f/i$d;)V

    goto/16 :goto_4

    .line 4
    :cond_0
    invoke-virtual {p1}, Lk/a/f/i;->c()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p1}, Lk/a/f/i;->f()Z

    move-result v0

    const-string v1, "html"

    if-eqz v0, :cond_1

    .line 5
    move-object v0, p1

    check-cast v0, Lk/a/f/i$h;

    .line 6
    iget-object v0, v0, Lk/a/f/i$i;->c:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_5

    .line 8
    :cond_1
    invoke-static {p1}, Lk/a/f/c;->a(Lk/a/f/i;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 9
    invoke-virtual {p2, v1}, Lk/a/f/b;->F(Ljava/lang/String;)Lk/a/e/h;

    move-result-object v0

    .line 10
    check-cast p1, Lk/a/f/i$c;

    .line 11
    invoke-virtual {p2, p1}, Lk/a/f/b;->u(Lk/a/f/i$c;)V

    .line 12
    iget-object p1, p2, Lk/a/f/m;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object p1, p2, Lk/a/f/m;->e:Ljava/util/ArrayList;

    const-string p2, "body"

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 14
    invoke-static {p2}, Lj/b;->q(Ljava/lang/String;)V

    .line 15
    invoke-static {p2}, Lk/a/g/g;->h(Ljava/lang/String;)Lk/a/g/d;

    move-result-object p2

    .line 16
    sget-object v2, Lk/a/g/e;->d:Lk/a/g/e;

    sget-object v3, Lk/a/g/e;->b:Lk/a/g/e;

    sget-object v4, Lk/a/g/e;->e:Lk/a/g/e;

    sget-object v5, Lk/a/g/e;->a:Lk/a/g/e;

    const/4 v6, 0x0

    move-object v7, v0

    const/4 v8, 0x0

    :goto_0
    if-eqz v7, :cond_d

    .line 17
    instance-of v9, v7, Lk/a/e/h;

    if-eqz v9, :cond_2

    .line 18
    move-object v9, v7

    check-cast v9, Lk/a/e/h;

    .line 19
    invoke-virtual {p2, v0, v9}, Lk/a/g/d;->a(Lk/a/e/h;Lk/a/e/h;)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v1, v9

    move-object v9, v4

    goto :goto_1

    :cond_2
    move-object v9, v5

    :goto_1
    if-ne v9, v4, :cond_3

    goto :goto_3

    :cond_3
    if-ne v9, v5, :cond_4

    .line 20
    invoke-virtual {v7}, Lk/a/e/l;->f()I

    move-result v10

    if-lez v10, :cond_4

    .line 21
    invoke-virtual {v7}, Lk/a/e/l;->l()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lk/a/e/l;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 22
    :cond_4
    :goto_2
    invoke-virtual {v7}, Lk/a/e/l;->p()Lk/a/e/l;

    move-result-object v10

    if-nez v10, :cond_8

    if-lez v8, :cond_8

    if-eq v9, v5, :cond_5

    if-ne v9, v3, :cond_6

    :cond_5
    move-object v9, v5

    .line 23
    :cond_6
    iget-object v10, v7, Lk/a/e/l;->a:Lk/a/e/l;

    add-int/lit8 v8, v8, -0x1

    if-ne v9, v2, :cond_7

    .line 24
    invoke-virtual {v7}, Lk/a/e/l;->w()V

    :cond_7
    move-object v9, v5

    move-object v7, v10

    goto :goto_2

    :cond_8
    if-eq v9, v5, :cond_9

    if-ne v9, v3, :cond_a

    :cond_9
    move-object v9, v5

    :cond_a
    if-ne v7, v0, :cond_b

    goto :goto_3

    .line 25
    :cond_b
    invoke-virtual {v7}, Lk/a/e/l;->p()Lk/a/e/l;

    move-result-object v10

    if-ne v9, v2, :cond_c

    .line 26
    invoke-virtual {v7}, Lk/a/e/l;->w()V

    :cond_c
    move-object v7, v10

    goto :goto_0

    .line 27
    :cond_d
    :goto_3
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 28
    :cond_e
    throw v1

    .line 29
    :cond_f
    invoke-virtual {p1}, Lk/a/f/i;->d()Z

    move-result v0

    if-eqz v0, :cond_10

    :goto_4
    const/4 p1, 0x1

    return p1

    .line 30
    :cond_10
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    .line 31
    sget-object v0, Lk/a/f/c;->g:Lk/a/f/c;

    .line 32
    iput-object v0, p2, Lk/a/f/b;->k:Lk/a/f/c;

    .line 33
    iput-object p1, p2, Lk/a/f/m;->g:Lk/a/f/i;

    .line 34
    invoke-virtual {v0, p1, p2}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    return p1

    .line 35
    :cond_11
    :goto_5
    sget-object v0, Lk/a/f/c;->g:Lk/a/f/c;

    .line 36
    iput-object p1, p2, Lk/a/f/m;->g:Lk/a/f/i;

    .line 37
    invoke-virtual {v0, p1, p2}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    return p1
.end method
