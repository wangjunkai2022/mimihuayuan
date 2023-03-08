.class public final enum Lk/a/f/c$w;
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
    .locals 7

    .line 1
    invoke-virtual {p1}, Lk/a/f/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p2, Lk/a/f/b;->r:Ljava/util/List;

    .line 3
    iget-object v0, p2, Lk/a/f/b;->k:Lk/a/f/c;

    iput-object v0, p2, Lk/a/f/b;->l:Lk/a/f/c;

    .line 4
    sget-object v0, Lk/a/f/c;->j:Lk/a/f/c;

    .line 5
    iput-object v0, p2, Lk/a/f/b;->k:Lk/a/f/c;

    .line 6
    iput-object p1, p2, Lk/a/f/m;->g:Lk/a/f/i;

    .line 7
    invoke-virtual {v0, p1, p2}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    return p1

    .line 8
    :cond_0
    invoke-virtual {p1}, Lk/a/f/i;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 9
    check-cast p1, Lk/a/f/i$d;

    .line 10
    invoke-virtual {p2, p1}, Lk/a/f/b;->v(Lk/a/f/i$d;)V

    return v1

    .line 11
    :cond_1
    invoke-virtual {p1}, Lk/a/f/i;->c()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    return v2

    .line 13
    :cond_2
    invoke-virtual {p1}, Lk/a/f/i;->f()Z

    move-result v0

    const-string v3, "table"

    if-eqz v0, :cond_f

    .line 14
    move-object v0, p1

    check-cast v0, Lk/a/f/i$h;

    .line 15
    iget-object v4, v0, Lk/a/f/i$i;->c:Ljava/lang/String;

    const-string v5, "caption"

    .line 16
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 17
    invoke-virtual {p2}, Lk/a/f/b;->j()V

    .line 18
    invoke-virtual {p2}, Lk/a/f/b;->z()V

    .line 19
    invoke-virtual {p2, v0}, Lk/a/f/b;->t(Lk/a/f/i$h;)Lk/a/e/h;

    .line 20
    sget-object p1, Lk/a/f/c;->k:Lk/a/f/c;

    .line 21
    iput-object p1, p2, Lk/a/f/b;->k:Lk/a/f/c;

    goto/16 :goto_0

    :cond_3
    const-string v5, "colgroup"

    .line 22
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 23
    invoke-virtual {p2}, Lk/a/f/b;->j()V

    .line 24
    invoke-virtual {p2, v0}, Lk/a/f/b;->t(Lk/a/f/i$h;)Lk/a/e/h;

    .line 25
    sget-object p1, Lk/a/f/c;->l:Lk/a/f/c;

    .line 26
    iput-object p1, p2, Lk/a/f/b;->k:Lk/a/f/c;

    goto/16 :goto_0

    :cond_4
    const-string v6, "col"

    .line 27
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 28
    invoke-virtual {p2, v5}, Lk/a/f/m;->e(Ljava/lang/String;)Z

    .line 29
    iput-object p1, p2, Lk/a/f/m;->g:Lk/a/f/i;

    .line 30
    iget-object v0, p2, Lk/a/f/b;->k:Lk/a/f/c;

    invoke-virtual {v0, p1, p2}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    return p1

    .line 31
    :cond_5
    sget-object v5, Lk/a/f/c$x;->u:[Ljava/lang/String;

    invoke-static {v4, v5}, Lk/a/d/a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 32
    invoke-virtual {p2}, Lk/a/f/b;->j()V

    .line 33
    invoke-virtual {p2, v0}, Lk/a/f/b;->t(Lk/a/f/i$h;)Lk/a/e/h;

    .line 34
    sget-object p1, Lk/a/f/c;->m:Lk/a/f/c;

    .line 35
    iput-object p1, p2, Lk/a/f/b;->k:Lk/a/f/c;

    goto/16 :goto_0

    .line 36
    :cond_6
    sget-object v5, Lk/a/f/c$x;->v:[Ljava/lang/String;

    invoke-static {v4, v5}, Lk/a/d/a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v0, "tbody"

    .line 37
    invoke-virtual {p2, v0}, Lk/a/f/m;->e(Ljava/lang/String;)Z

    .line 38
    iput-object p1, p2, Lk/a/f/m;->g:Lk/a/f/i;

    .line 39
    iget-object v0, p2, Lk/a/f/b;->k:Lk/a/f/c;

    invoke-virtual {v0, p1, p2}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    return p1

    .line 40
    :cond_7
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 41
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    .line 42
    invoke-virtual {p2, v3}, Lk/a/f/m;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 43
    iput-object p1, p2, Lk/a/f/m;->g:Lk/a/f/i;

    .line 44
    iget-object v0, p2, Lk/a/f/b;->k:Lk/a/f/c;

    invoke-virtual {v0, p1, p2}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    return p1

    .line 45
    :cond_8
    sget-object v3, Lk/a/f/c$x;->w:[Ljava/lang/String;

    invoke-static {v4, v3}, Lk/a/d/a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 46
    sget-object v0, Lk/a/f/c;->d:Lk/a/f/c;

    .line 47
    iput-object p1, p2, Lk/a/f/m;->g:Lk/a/f/i;

    .line 48
    invoke-virtual {v0, p1, p2}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    return p1

    :cond_9
    const-string v3, "input"

    .line 49
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 50
    iget-object v2, v0, Lk/a/f/i$i;->j:Lk/a/e/b;

    const-string v3, "type"

    invoke-virtual {v2, v3}, Lk/a/e/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "hidden"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 51
    invoke-virtual {p0, p1, p2}, Lk/a/f/c$w;->d(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    return p1

    .line 52
    :cond_a
    invoke-virtual {p2, v0}, Lk/a/f/b;->w(Lk/a/f/i$h;)Lk/a/e/h;

    goto :goto_0

    :cond_b
    const-string v3, "form"

    .line 53
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 54
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    .line 55
    iget-object p1, p2, Lk/a/f/b;->o:Lk/a/e/j;

    if-eqz p1, :cond_c

    return v2

    .line 56
    :cond_c
    invoke-virtual {p2, v0, v2}, Lk/a/f/b;->x(Lk/a/f/i$h;Z)Lk/a/e/j;

    :cond_d
    :goto_0
    return v1

    .line 57
    :cond_e
    invoke-virtual {p0, p1, p2}, Lk/a/f/c$w;->d(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    return p1

    .line 58
    :cond_f
    invoke-virtual {p1}, Lk/a/f/i;->e()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 59
    move-object v0, p1

    check-cast v0, Lk/a/f/i$g;

    .line 60
    iget-object v0, v0, Lk/a/f/i$i;->c:Ljava/lang/String;

    .line 61
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 62
    invoke-virtual {p2, v0}, Lk/a/f/b;->s(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 63
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    return v2

    .line 64
    :cond_10
    invoke-virtual {p2, v3}, Lk/a/f/b;->F(Ljava/lang/String;)Lk/a/e/h;

    .line 65
    invoke-virtual {p2}, Lk/a/f/b;->K()V

    return v1

    .line 66
    :cond_11
    sget-object v1, Lk/a/f/c$x;->B:[Ljava/lang/String;

    invoke-static {v0, v1}, Lk/a/d/a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 67
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    return v2

    .line 68
    :cond_12
    invoke-virtual {p0, p1, p2}, Lk/a/f/c$w;->d(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    return p1

    .line 69
    :cond_13
    invoke-virtual {p1}, Lk/a/f/i;->d()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 70
    invoke-virtual {p2}, Lk/a/f/m;->a()Lk/a/e/h;

    move-result-object p1

    .line 71
    iget-object p1, p1, Lk/a/e/h;->c:Lk/a/f/h;

    .line 72
    iget-object p1, p1, Lk/a/f/h;->b:Ljava/lang/String;

    const-string v0, "html"

    .line 73
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 74
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    :cond_14
    return v1

    .line 75
    :cond_15
    invoke-virtual {p0, p1, p2}, Lk/a/f/c$w;->d(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    return p1
.end method

.method public d(Lk/a/f/i;Lk/a/f/b;)Z
    .locals 2

    .line 1
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    .line 2
    invoke-virtual {p2}, Lk/a/f/m;->a()Lk/a/e/h;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lk/a/e/h;->c:Lk/a/f/h;

    .line 4
    iget-object v0, v0, Lk/a/f/h;->b:Ljava/lang/String;

    .line 5
    sget-object v1, Lk/a/f/c$x;->C:[Ljava/lang/String;

    invoke-static {v0, v1}, Lk/a/d/a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p2, Lk/a/f/b;->u:Z

    .line 7
    sget-object v0, Lk/a/f/c;->g:Lk/a/f/c;

    .line 8
    iput-object p1, p2, Lk/a/f/m;->g:Lk/a/f/i;

    .line 9
    invoke-virtual {v0, p1, p2}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p2, Lk/a/f/b;->u:Z

    goto :goto_0

    .line 11
    :cond_0
    sget-object v0, Lk/a/f/c;->g:Lk/a/f/c;

    .line 12
    iput-object p1, p2, Lk/a/f/m;->g:Lk/a/f/i;

    .line 13
    invoke-virtual {v0, p1, p2}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    :goto_0
    return p1
.end method
