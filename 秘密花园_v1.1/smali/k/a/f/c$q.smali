.class public final enum Lk/a/f/c$q;
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

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lk/a/f/i;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    check-cast p1, Lk/a/f/i$d;

    .line 6
    invoke-virtual {p2, p1}, Lk/a/f/b;->v(Lk/a/f/i$d;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Lk/a/f/i;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    return v1

    .line 9
    :cond_2
    invoke-virtual {p1}, Lk/a/f/i;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    move-object v0, p1

    check-cast v0, Lk/a/f/i$h;

    .line 11
    iget-object v0, v0, Lk/a/f/i$i;->c:Ljava/lang/String;

    const-string v2, "html"

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    sget-object v0, Lk/a/f/c;->g:Lk/a/f/c;

    invoke-virtual {v0, p1, p2}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    return p1

    .line 14
    :cond_3
    invoke-virtual {p1}, Lk/a/f/i;->f()Z

    move-result v0

    const-string v2, "head"

    if-eqz v0, :cond_4

    .line 15
    move-object v0, p1

    check-cast v0, Lk/a/f/i$h;

    .line 16
    iget-object v3, v0, Lk/a/f/i$i;->c:Ljava/lang/String;

    .line 17
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 18
    invoke-virtual {p2, v0}, Lk/a/f/b;->t(Lk/a/f/i$h;)Lk/a/e/h;

    move-result-object p1

    .line 19
    iput-object p1, p2, Lk/a/f/b;->n:Lk/a/e/h;

    .line 20
    sget-object p1, Lk/a/f/c;->d:Lk/a/f/c;

    .line 21
    iput-object p1, p2, Lk/a/f/b;->k:Lk/a/f/c;

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 22
    :cond_4
    invoke-virtual {p1}, Lk/a/f/i;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 23
    move-object v0, p1

    check-cast v0, Lk/a/f/i$g;

    .line 24
    iget-object v0, v0, Lk/a/f/i$i;->c:Ljava/lang/String;

    .line 25
    sget-object v3, Lk/a/f/c$x;->e:[Ljava/lang/String;

    invoke-static {v0, v3}, Lk/a/d/a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 26
    invoke-virtual {p2, v2}, Lk/a/f/m;->e(Ljava/lang/String;)Z

    .line 27
    iput-object p1, p2, Lk/a/f/m;->g:Lk/a/f/i;

    .line 28
    iget-object v0, p2, Lk/a/f/b;->k:Lk/a/f/c;

    invoke-virtual {v0, p1, p2}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    return p1

    .line 29
    :cond_5
    invoke-virtual {p1}, Lk/a/f/i;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 30
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    return v1

    .line 31
    :cond_6
    invoke-virtual {p2, v2}, Lk/a/f/m;->e(Ljava/lang/String;)Z

    .line 32
    iput-object p1, p2, Lk/a/f/m;->g:Lk/a/f/i;

    .line 33
    iget-object v0, p2, Lk/a/f/b;->k:Lk/a/f/c;

    invoke-virtual {v0, p1, p2}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    return p1
.end method
