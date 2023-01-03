.class public final enum Lk/a/f/c$e;
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
    invoke-virtual {p1}, Lk/a/f/i;->f()Z

    move-result v0

    const-string v1, "template"

    const/4 v2, 0x0

    const-string v3, "tr"

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lk/a/f/i$h;

    .line 3
    iget-object v4, v0, Lk/a/f/i$i;->c:Ljava/lang/String;

    .line 4
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5
    invoke-virtual {p2, v0}, Lk/a/f/b;->t(Lk/a/f/i$h;)Lk/a/e/h;

    goto :goto_0

    .line 6
    :cond_0
    sget-object v5, Lk/a/f/c$x;->x:[Ljava/lang/String;

    invoke-static {v4, v5}, Lk/a/d/a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 7
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lk/a/f/b;->h([Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2, v0}, Lk/a/f/b;->t(Lk/a/f/i$h;)Lk/a/e/h;

    .line 9
    sget-object p1, Lk/a/f/c;->o:Lk/a/f/c;

    .line 10
    iput-object p1, p2, Lk/a/f/b;->k:Lk/a/f/c;

    .line 11
    invoke-virtual {p2}, Lk/a/f/b;->z()V

    goto :goto_0

    .line 12
    :cond_1
    sget-object v0, Lk/a/f/c$x;->F:[Ljava/lang/String;

    invoke-static {v4, v0}, Lk/a/d/a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {p2, v3}, Lk/a/f/m;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    iput-object p1, p2, Lk/a/f/m;->g:Lk/a/f/i;

    .line 15
    iget-object v0, p2, Lk/a/f/b;->k:Lk/a/f/c;

    invoke-virtual {v0, p1, p2}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    move-result v2

    :cond_2
    return v2

    .line 16
    :cond_3
    invoke-virtual {p0, p1, p2}, Lk/a/f/c$e;->d(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    return p1

    .line 17
    :cond_4
    invoke-virtual {p1}, Lk/a/f/i;->e()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 18
    move-object v0, p1

    check-cast v0, Lk/a/f/i$g;

    .line 19
    iget-object v0, v0, Lk/a/f/i$i;->c:Ljava/lang/String;

    .line 20
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 21
    invoke-virtual {p2, v0}, Lk/a/f/b;->s(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 22
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    return v2

    .line 23
    :cond_5
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lk/a/f/b;->h([Ljava/lang/String;)V

    .line 24
    invoke-virtual {p2}, Lk/a/f/b;->E()Lk/a/e/h;

    .line 25
    sget-object p1, Lk/a/f/c;->m:Lk/a/f/c;

    .line 26
    iput-object p1, p2, Lk/a/f/b;->k:Lk/a/f/c;

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_6
    const-string v1, "table"

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 28
    invoke-virtual {p2, v3}, Lk/a/f/m;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 29
    iput-object p1, p2, Lk/a/f/m;->g:Lk/a/f/i;

    .line 30
    iget-object v0, p2, Lk/a/f/b;->k:Lk/a/f/c;

    invoke-virtual {v0, p1, p2}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    move-result v2

    :cond_7
    return v2

    .line 31
    :cond_8
    sget-object v1, Lk/a/f/c$x;->u:[Ljava/lang/String;

    invoke-static {v0, v1}, Lk/a/d/a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 32
    invoke-virtual {p2, v0}, Lk/a/f/b;->s(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 33
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    return v2

    .line 34
    :cond_9
    invoke-virtual {p2, v3}, Lk/a/f/m;->d(Ljava/lang/String;)Z

    .line 35
    iput-object p1, p2, Lk/a/f/m;->g:Lk/a/f/i;

    .line 36
    iget-object v0, p2, Lk/a/f/b;->k:Lk/a/f/c;

    invoke-virtual {v0, p1, p2}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    return p1

    .line 37
    :cond_a
    sget-object v1, Lk/a/f/c$x;->G:[Ljava/lang/String;

    invoke-static {v0, v1}, Lk/a/d/a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 38
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    return v2

    .line 39
    :cond_b
    invoke-virtual {p0, p1, p2}, Lk/a/f/c$e;->d(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    return p1

    .line 40
    :cond_c
    invoke-virtual {p0, p1, p2}, Lk/a/f/c$e;->d(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    return p1
.end method

.method public final d(Lk/a/f/i;Lk/a/f/b;)Z
    .locals 1

    .line 1
    sget-object v0, Lk/a/f/c;->i:Lk/a/f/c;

    .line 2
    iput-object p1, p2, Lk/a/f/m;->g:Lk/a/f/i;

    .line 3
    invoke-virtual {v0, p1, p2}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    return p1
.end method
