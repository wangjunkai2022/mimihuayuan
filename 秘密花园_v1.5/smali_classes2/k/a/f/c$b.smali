.class public final enum Lk/a/f/c$b;
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
    invoke-virtual {p1}, Lk/a/f/i;->e()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "caption"

    if-eqz v0, :cond_2

    .line 2
    move-object v0, p1

    check-cast v0, Lk/a/f/i$g;

    .line 3
    iget-object v3, v0, Lk/a/f/i$i;->c:Ljava/lang/String;

    .line 4
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5
    iget-object p1, v0, Lk/a/f/i$i;->c:Ljava/lang/String;

    .line 6
    invoke-virtual {p2, p1}, Lk/a/f/b;->s(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 7
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    return v1

    :cond_0
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p2, p1}, Lk/a/f/b;->l(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2}, Lk/a/f/m;->a()Lk/a/e/h;

    move-result-object p1

    .line 10
    iget-object p1, p1, Lk/a/e/h;->c:Lk/a/f/h;

    .line 11
    iget-object p1, p1, Lk/a/f/h;->b:Ljava/lang/String;

    .line 12
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 13
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    .line 14
    :cond_1
    invoke-virtual {p2, v2}, Lk/a/f/b;->F(Ljava/lang/String;)Lk/a/e/h;

    .line 15
    invoke-virtual {p2}, Lk/a/f/b;->g()V

    .line 16
    sget-object p1, Lk/a/f/c;->i:Lk/a/f/c;

    .line 17
    iput-object p1, p2, Lk/a/f/b;->k:Lk/a/f/c;

    goto :goto_0

    .line 18
    :cond_2
    invoke-virtual {p1}, Lk/a/f/i;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 19
    move-object v0, p1

    check-cast v0, Lk/a/f/i$h;

    .line 20
    iget-object v0, v0, Lk/a/f/i$i;->c:Ljava/lang/String;

    .line 21
    sget-object v3, Lk/a/f/c$x;->A:[Ljava/lang/String;

    invoke-static {v0, v3}, Lk/a/d/a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 22
    :cond_3
    invoke-virtual {p1}, Lk/a/f/i;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 23
    move-object v0, p1

    check-cast v0, Lk/a/f/i$g;

    .line 24
    iget-object v0, v0, Lk/a/f/i$i;->c:Ljava/lang/String;

    const-string v3, "table"

    .line 25
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 26
    :cond_4
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    .line 27
    invoke-virtual {p2, v2}, Lk/a/f/m;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 28
    iput-object p1, p2, Lk/a/f/m;->g:Lk/a/f/i;

    .line 29
    iget-object v0, p2, Lk/a/f/b;->k:Lk/a/f/c;

    invoke-virtual {v0, p1, p2}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    return p1

    :cond_5
    :goto_0
    const/4 p1, 0x1

    return p1

    .line 30
    :cond_6
    invoke-virtual {p1}, Lk/a/f/i;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 31
    move-object v0, p1

    check-cast v0, Lk/a/f/i$g;

    .line 32
    iget-object v0, v0, Lk/a/f/i$i;->c:Ljava/lang/String;

    .line 33
    sget-object v2, Lk/a/f/c$x;->L:[Ljava/lang/String;

    invoke-static {v0, v2}, Lk/a/d/a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 34
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    return v1

    .line 35
    :cond_7
    sget-object v0, Lk/a/f/c;->g:Lk/a/f/c;

    .line 36
    iput-object p1, p2, Lk/a/f/m;->g:Lk/a/f/i;

    .line 37
    invoke-virtual {v0, p1, p2}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    return p1
.end method
