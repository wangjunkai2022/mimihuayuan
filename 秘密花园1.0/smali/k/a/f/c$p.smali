.class public final enum Lk/a/f/c$p;
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
    invoke-virtual {p1}, Lk/a/f/i;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    return v1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lk/a/f/i;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Lk/a/f/i$d;

    .line 5
    invoke-virtual {p2, p1}, Lk/a/f/b;->v(Lk/a/f/i$d;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p1}, Lk/a/f/c;->a(Lk/a/f/i;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    check-cast p1, Lk/a/f/i$c;

    .line 8
    invoke-virtual {p2, p1}, Lk/a/f/b;->u(Lk/a/f/i$c;)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p1}, Lk/a/f/i;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    move-object v0, p1

    check-cast v0, Lk/a/f/i$h;

    .line 11
    iget-object v2, v0, Lk/a/f/i$i;->c:Ljava/lang/String;

    const-string v3, "html"

    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 13
    invoke-virtual {p2, v0}, Lk/a/f/b;->t(Lk/a/f/i$h;)Lk/a/e/h;

    .line 14
    sget-object p1, Lk/a/f/c;->c:Lk/a/f/c;

    .line 15
    iput-object p1, p2, Lk/a/f/b;->k:Lk/a/f/c;

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 16
    :cond_3
    invoke-virtual {p1}, Lk/a/f/i;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17
    move-object v0, p1

    check-cast v0, Lk/a/f/i$g;

    .line 18
    iget-object v0, v0, Lk/a/f/i$i;->c:Ljava/lang/String;

    .line 19
    sget-object v2, Lk/a/f/c$x;->e:[Ljava/lang/String;

    invoke-static {v0, v2}, Lk/a/d/a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 20
    invoke-virtual {p0, p1, p2}, Lk/a/f/c$p;->d(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    return p1

    .line 21
    :cond_4
    invoke-virtual {p1}, Lk/a/f/i;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 22
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    return v1

    .line 23
    :cond_5
    invoke-virtual {p0, p1, p2}, Lk/a/f/c$p;->d(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    return p1
.end method

.method public final d(Lk/a/f/i;Lk/a/f/b;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1
    new-instance v1, Lk/a/e/h;

    iget-object v2, p2, Lk/a/f/m;->h:Lk/a/f/f;

    const-string v3, "html"

    invoke-static {v3, v2}, Lk/a/f/h;->a(Ljava/lang/String;Lk/a/f/f;)Lk/a/f/h;

    move-result-object v2

    .line 2
    invoke-direct {v1, v2, v0, v0}, Lk/a/e/h;-><init>(Lk/a/f/h;Ljava/lang/String;Lk/a/e/b;)V

    .line 3
    invoke-virtual {p2, v1}, Lk/a/f/b;->A(Lk/a/e/l;)V

    .line 4
    iget-object v0, p2, Lk/a/f/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    sget-object v0, Lk/a/f/c;->c:Lk/a/f/c;

    .line 6
    iput-object v0, p2, Lk/a/f/b;->k:Lk/a/f/c;

    .line 7
    iput-object p1, p2, Lk/a/f/m;->g:Lk/a/f/i;

    .line 8
    invoke-virtual {v0, p1, p2}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    return p1

    .line 9
    :cond_0
    throw v0
.end method
