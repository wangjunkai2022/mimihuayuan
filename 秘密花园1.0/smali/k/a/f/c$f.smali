.class public final enum Lk/a/f/c$f;
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
    .locals 5

    .line 1
    invoke-virtual {p1}, Lk/a/f/i;->e()Z

    move-result v0

    const-string v1, "th"

    const-string v2, "td"

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    .line 2
    move-object v0, p1

    check-cast v0, Lk/a/f/i$g;

    .line 3
    iget-object v0, v0, Lk/a/f/i$i;->c:Ljava/lang/String;

    .line 4
    sget-object v4, Lk/a/f/c$x;->x:[Ljava/lang/String;

    invoke-static {v0, v4}, Lk/a/d/a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5
    invoke-virtual {p2, v0}, Lk/a/f/b;->s(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    .line 7
    sget-object p1, Lk/a/f/c;->n:Lk/a/f/c;

    .line 8
    iput-object p1, p2, Lk/a/f/b;->k:Lk/a/f/c;

    return v3

    :cond_0
    const/4 p1, 0x0

    .line 9
    invoke-virtual {p2, p1}, Lk/a/f/b;->l(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2}, Lk/a/f/m;->a()Lk/a/e/h;

    move-result-object p1

    .line 11
    iget-object p1, p1, Lk/a/e/h;->c:Lk/a/f/h;

    .line 12
    iget-object p1, p1, Lk/a/f/h;->b:Ljava/lang/String;

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 14
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    .line 15
    :cond_1
    invoke-virtual {p2, v0}, Lk/a/f/b;->F(Ljava/lang/String;)Lk/a/e/h;

    .line 16
    invoke-virtual {p2}, Lk/a/f/b;->g()V

    .line 17
    sget-object p1, Lk/a/f/c;->n:Lk/a/f/c;

    .line 18
    iput-object p1, p2, Lk/a/f/b;->k:Lk/a/f/c;

    const/4 p1, 0x1

    return p1

    .line 19
    :cond_2
    sget-object v4, Lk/a/f/c$x;->y:[Ljava/lang/String;

    invoke-static {v0, v4}, Lk/a/d/a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 20
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    return v3

    .line 21
    :cond_3
    sget-object v4, Lk/a/f/c$x;->z:[Ljava/lang/String;

    invoke-static {v0, v4}, Lk/a/d/a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 22
    invoke-virtual {p2, v0}, Lk/a/f/b;->s(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 23
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    return v3

    .line 24
    :cond_4
    invoke-virtual {p2, v2}, Lk/a/f/b;->s(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 25
    invoke-virtual {p2, v2}, Lk/a/f/m;->d(Ljava/lang/String;)Z

    goto :goto_0

    .line 26
    :cond_5
    invoke-virtual {p2, v1}, Lk/a/f/m;->d(Ljava/lang/String;)Z

    .line 27
    :goto_0
    iput-object p1, p2, Lk/a/f/m;->g:Lk/a/f/i;

    .line 28
    iget-object v0, p2, Lk/a/f/b;->k:Lk/a/f/c;

    invoke-virtual {v0, p1, p2}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    return p1

    .line 29
    :cond_6
    sget-object v0, Lk/a/f/c;->g:Lk/a/f/c;

    .line 30
    iput-object p1, p2, Lk/a/f/m;->g:Lk/a/f/i;

    .line 31
    invoke-virtual {v0, p1, p2}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    return p1

    .line 32
    :cond_7
    invoke-virtual {p1}, Lk/a/f/i;->f()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 33
    move-object v0, p1

    check-cast v0, Lk/a/f/i$h;

    .line 34
    iget-object v0, v0, Lk/a/f/i$i;->c:Ljava/lang/String;

    .line 35
    sget-object v4, Lk/a/f/c$x;->A:[Ljava/lang/String;

    invoke-static {v0, v4}, Lk/a/d/a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 36
    invoke-virtual {p2, v2}, Lk/a/f/b;->s(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p2, v1}, Lk/a/f/b;->s(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 37
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    return v3

    .line 38
    :cond_8
    invoke-virtual {p2, v2}, Lk/a/f/b;->s(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 39
    invoke-virtual {p2, v2}, Lk/a/f/m;->d(Ljava/lang/String;)Z

    goto :goto_1

    .line 40
    :cond_9
    invoke-virtual {p2, v1}, Lk/a/f/m;->d(Ljava/lang/String;)Z

    .line 41
    :goto_1
    iput-object p1, p2, Lk/a/f/m;->g:Lk/a/f/i;

    .line 42
    iget-object v0, p2, Lk/a/f/b;->k:Lk/a/f/c;

    invoke-virtual {v0, p1, p2}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    return p1

    .line 43
    :cond_a
    sget-object v0, Lk/a/f/c;->g:Lk/a/f/c;

    .line 44
    iput-object p1, p2, Lk/a/f/m;->g:Lk/a/f/i;

    .line 45
    invoke-virtual {v0, p1, p2}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    return p1
.end method
