.class public final enum Lk/a/f/c$r;
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
    .locals 6

    .line 1
    invoke-static {p1}, Lk/a/f/c;->a(Lk/a/f/i;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lk/a/f/i$c;

    .line 3
    invoke-virtual {p2, p1}, Lk/a/f/b;->u(Lk/a/f/i$c;)V

    return v1

    .line 4
    :cond_0
    iget-object v0, p1, Lk/a/f/i;->a:Lk/a/f/i$j;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    const-string v3, "head"

    if-eq v0, v1, :cond_5

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    .line 5
    invoke-virtual {p0, p1, p2}, Lk/a/f/c$r;->d(Lk/a/f/i;Lk/a/f/m;)Z

    move-result p1

    return p1

    .line 6
    :cond_1
    check-cast p1, Lk/a/f/i$d;

    .line 7
    invoke-virtual {p2, p1}, Lk/a/f/b;->v(Lk/a/f/i$d;)V

    goto/16 :goto_0

    .line 8
    :cond_2
    move-object v0, p1

    check-cast v0, Lk/a/f/i$g;

    .line 9
    iget-object v0, v0, Lk/a/f/i$i;->c:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 11
    invoke-virtual {p2}, Lk/a/f/b;->E()Lk/a/e/h;

    .line 12
    sget-object p1, Lk/a/f/c;->f:Lk/a/f/c;

    .line 13
    iput-object p1, p2, Lk/a/f/b;->k:Lk/a/f/c;

    goto/16 :goto_0

    .line 14
    :cond_3
    sget-object v1, Lk/a/f/c$x;->c:[Ljava/lang/String;

    invoke-static {v0, v1}, Lk/a/d/a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {p0, p1, p2}, Lk/a/f/c$r;->d(Lk/a/f/i;Lk/a/f/m;)Z

    move-result p1

    return p1

    .line 16
    :cond_4
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    return v2

    .line 17
    :cond_5
    move-object v0, p1

    check-cast v0, Lk/a/f/i$h;

    .line 18
    iget-object v4, v0, Lk/a/f/i$i;->c:Ljava/lang/String;

    const-string v5, "html"

    .line 19
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 20
    sget-object v0, Lk/a/f/c;->g:Lk/a/f/c;

    invoke-virtual {v0, p1, p2}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    return p1

    .line 21
    :cond_6
    sget-object v5, Lk/a/f/c$x;->a:[Ljava/lang/String;

    invoke-static {v4, v5}, Lk/a/d/a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 22
    invoke-virtual {p2, v0}, Lk/a/f/b;->w(Lk/a/f/i$h;)Lk/a/e/h;

    move-result-object p1

    const-string v0, "base"

    .line 23
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "href"

    invoke-virtual {p1, v0}, Lk/a/e/l;->m(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 24
    iget-boolean v2, p2, Lk/a/f/b;->m:Z

    if-eqz v2, :cond_7

    goto/16 :goto_0

    .line 25
    :cond_7
    invoke-virtual {p1, v0}, Lk/a/e/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_e

    .line 27
    iput-object p1, p2, Lk/a/f/m;->f:Ljava/lang/String;

    .line 28
    iput-boolean v1, p2, Lk/a/f/b;->m:Z

    .line 29
    iget-object p2, p2, Lk/a/f/m;->d:Lk/a/e/f;

    if-eqz p2, :cond_8

    .line 30
    invoke-static {p1}, Lj/b;->s(Ljava/lang/Object;)V

    .line 31
    invoke-virtual {p2}, Lk/a/e/h;->d()Lk/a/e/b;

    move-result-object p2

    sget-object v0, Lk/a/e/h;->h:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Lk/a/e/b;->n(Ljava/lang/String;Ljava/lang/String;)Lk/a/e/b;

    goto :goto_0

    :cond_8
    const/4 p1, 0x0

    .line 32
    throw p1

    :cond_9
    const-string v5, "meta"

    .line 33
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 34
    invoke-virtual {p2, v0}, Lk/a/f/b;->w(Lk/a/f/i$h;)Lk/a/e/h;

    goto :goto_0

    :cond_a
    const-string v5, "title"

    .line 35
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 36
    iget-object p1, p2, Lk/a/f/m;->c:Lk/a/f/k;

    sget-object v2, Lk/a/f/l;->c:Lk/a/f/l;

    .line 37
    iput-object v2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    .line 38
    iget-object p1, p2, Lk/a/f/b;->k:Lk/a/f/c;

    iput-object p1, p2, Lk/a/f/b;->l:Lk/a/f/c;

    .line 39
    sget-object p1, Lk/a/f/c;->h:Lk/a/f/c;

    .line 40
    iput-object p1, p2, Lk/a/f/b;->k:Lk/a/f/c;

    .line 41
    invoke-virtual {p2, v0}, Lk/a/f/b;->t(Lk/a/f/i$h;)Lk/a/e/h;

    goto :goto_0

    .line 42
    :cond_b
    sget-object v5, Lk/a/f/c$x;->b:[Ljava/lang/String;

    invoke-static {v4, v5}, Lk/a/d/a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 43
    invoke-static {v0, p2}, Lk/a/f/c;->b(Lk/a/f/i$h;Lk/a/f/b;)V

    goto :goto_0

    :cond_c
    const-string v5, "noscript"

    .line 44
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 45
    invoke-virtual {p2, v0}, Lk/a/f/b;->t(Lk/a/f/i$h;)Lk/a/e/h;

    .line 46
    sget-object p1, Lk/a/f/c;->e:Lk/a/f/c;

    .line 47
    iput-object p1, p2, Lk/a/f/b;->k:Lk/a/f/c;

    goto :goto_0

    :cond_d
    const-string v5, "script"

    .line 48
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 49
    iget-object p1, p2, Lk/a/f/m;->c:Lk/a/f/k;

    sget-object v2, Lk/a/f/l;->f:Lk/a/f/l;

    .line 50
    iput-object v2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    .line 51
    iget-object p1, p2, Lk/a/f/b;->k:Lk/a/f/c;

    iput-object p1, p2, Lk/a/f/b;->l:Lk/a/f/c;

    .line 52
    sget-object p1, Lk/a/f/c;->h:Lk/a/f/c;

    .line 53
    iput-object p1, p2, Lk/a/f/b;->k:Lk/a/f/c;

    .line 54
    invoke-virtual {p2, v0}, Lk/a/f/b;->t(Lk/a/f/i$h;)Lk/a/e/h;

    :cond_e
    :goto_0
    return v1

    .line 55
    :cond_f
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 56
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    return v2

    .line 57
    :cond_10
    invoke-virtual {p0, p1, p2}, Lk/a/f/c$r;->d(Lk/a/f/i;Lk/a/f/m;)Z

    move-result p1

    return p1

    .line 58
    :cond_11
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    return v2
.end method

.method public final d(Lk/a/f/i;Lk/a/f/m;)Z
    .locals 1

    const-string v0, "head"

    .line 1
    invoke-virtual {p2, v0}, Lk/a/f/m;->d(Ljava/lang/String;)Z

    .line 2
    check-cast p2, Lk/a/f/b;

    .line 3
    iput-object p1, p2, Lk/a/f/m;->g:Lk/a/f/i;

    .line 4
    iget-object v0, p2, Lk/a/f/b;->k:Lk/a/f/c;

    invoke-virtual {v0, p1, p2}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    return p1
.end method
