.class public final enum Lk/a/f/c$t;
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
    .locals 4

    .line 1
    invoke-static {p1}, Lk/a/f/c;->a(Lk/a/f/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lk/a/f/i$c;

    .line 3
    invoke-virtual {p2, p1}, Lk/a/f/b;->u(Lk/a/f/i$c;)V

    goto/16 :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lk/a/f/i;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    check-cast p1, Lk/a/f/i$d;

    .line 6
    invoke-virtual {p2, p1}, Lk/a/f/b;->v(Lk/a/f/i$d;)V

    goto/16 :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Lk/a/f/i;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    goto/16 :goto_0

    .line 9
    :cond_2
    invoke-virtual {p1}, Lk/a/f/i;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 10
    move-object v0, p1

    check-cast v0, Lk/a/f/i$h;

    .line 11
    iget-object v2, v0, Lk/a/f/i$i;->c:Ljava/lang/String;

    const-string v3, "html"

    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 13
    sget-object v0, Lk/a/f/c;->g:Lk/a/f/c;

    .line 14
    iput-object p1, p2, Lk/a/f/m;->g:Lk/a/f/i;

    .line 15
    invoke-virtual {v0, p1, p2}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    return p1

    :cond_3
    const-string v3, "body"

    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 17
    invoke-virtual {p2, v0}, Lk/a/f/b;->t(Lk/a/f/i$h;)Lk/a/e/h;

    .line 18
    iput-boolean v1, p2, Lk/a/f/b;->t:Z

    .line 19
    sget-object p1, Lk/a/f/c;->g:Lk/a/f/c;

    .line 20
    iput-object p1, p2, Lk/a/f/b;->k:Lk/a/f/c;

    goto :goto_0

    :cond_4
    const-string v3, "frameset"

    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 22
    invoke-virtual {p2, v0}, Lk/a/f/b;->t(Lk/a/f/i$h;)Lk/a/e/h;

    .line 23
    sget-object p1, Lk/a/f/c;->s:Lk/a/f/c;

    .line 24
    iput-object p1, p2, Lk/a/f/b;->k:Lk/a/f/c;

    goto :goto_0

    .line 25
    :cond_5
    sget-object v0, Lk/a/f/c$x;->g:[Ljava/lang/String;

    invoke-static {v2, v0}, Lk/a/d/a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 26
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    .line 27
    iget-object v0, p2, Lk/a/f/b;->n:Lk/a/e/h;

    .line 28
    iget-object v1, p2, Lk/a/f/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v1, Lk/a/f/c;->d:Lk/a/f/c;

    .line 30
    iput-object p1, p2, Lk/a/f/m;->g:Lk/a/f/i;

    .line 31
    invoke-virtual {v1, p1, p2}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    .line 32
    invoke-virtual {p2, v0}, Lk/a/f/b;->J(Lk/a/e/h;)Z

    goto :goto_0

    :cond_6
    const-string v0, "head"

    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 34
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    return v1

    .line 35
    :cond_7
    invoke-virtual {p0, p1, p2}, Lk/a/f/c$t;->d(Lk/a/f/i;Lk/a/f/b;)Z

    goto :goto_0

    .line 36
    :cond_8
    invoke-virtual {p1}, Lk/a/f/i;->e()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 37
    move-object v0, p1

    check-cast v0, Lk/a/f/i$g;

    .line 38
    iget-object v0, v0, Lk/a/f/i$i;->c:Ljava/lang/String;

    .line 39
    sget-object v2, Lk/a/f/c$x;->d:[Ljava/lang/String;

    invoke-static {v0, v2}, Lk/a/d/a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 40
    invoke-virtual {p0, p1, p2}, Lk/a/f/c$t;->d(Lk/a/f/i;Lk/a/f/b;)Z

    goto :goto_0

    .line 41
    :cond_9
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    return v1

    .line 42
    :cond_a
    invoke-virtual {p0, p1, p2}, Lk/a/f/c$t;->d(Lk/a/f/i;Lk/a/f/b;)Z

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final d(Lk/a/f/i;Lk/a/f/b;)Z
    .locals 1

    const-string v0, "body"

    .line 1
    invoke-virtual {p2, v0}, Lk/a/f/m;->e(Ljava/lang/String;)Z

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p2, Lk/a/f/b;->t:Z

    .line 3
    iput-object p1, p2, Lk/a/f/m;->g:Lk/a/f/i;

    .line 4
    iget-object v0, p2, Lk/a/f/b;->k:Lk/a/f/c;

    invoke-virtual {v0, p1, p2}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    return p1
.end method
