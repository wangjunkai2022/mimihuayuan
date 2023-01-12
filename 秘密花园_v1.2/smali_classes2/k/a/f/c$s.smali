.class public final enum Lk/a/f/c$s;
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
    .locals 3

    .line 1
    invoke-virtual {p1}, Lk/a/f/i;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lk/a/f/i;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    move-object v0, p1

    check-cast v0, Lk/a/f/i$h;

    .line 5
    iget-object v0, v0, Lk/a/f/i$i;->c:Ljava/lang/String;

    const-string v2, "html"

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    sget-object v0, Lk/a/f/c;->g:Lk/a/f/c;

    .line 8
    iput-object p1, p2, Lk/a/f/m;->g:Lk/a/f/i;

    .line 9
    invoke-virtual {v0, p1, p2}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    return p1

    .line 10
    :cond_1
    invoke-virtual {p1}, Lk/a/f/i;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    move-object v0, p1

    check-cast v0, Lk/a/f/i$g;

    .line 12
    iget-object v0, v0, Lk/a/f/i$i;->c:Ljava/lang/String;

    const-string v2, "noscript"

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {p2}, Lk/a/f/b;->E()Lk/a/e/h;

    .line 15
    sget-object p1, Lk/a/f/c;->d:Lk/a/f/c;

    .line 16
    iput-object p1, p2, Lk/a/f/b;->k:Lk/a/f/c;

    :goto_0
    return v1

    .line 17
    :cond_2
    invoke-static {p1}, Lk/a/f/c;->a(Lk/a/f/i;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lk/a/f/i;->b()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lk/a/f/i;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 18
    move-object v0, p1

    check-cast v0, Lk/a/f/i$h;

    .line 19
    iget-object v0, v0, Lk/a/f/i$i;->c:Ljava/lang/String;

    .line 20
    sget-object v2, Lk/a/f/c$x;->f:[Ljava/lang/String;

    invoke-static {v0, v2}, Lk/a/d/a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 21
    :cond_3
    invoke-virtual {p1}, Lk/a/f/i;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 22
    move-object v0, p1

    check-cast v0, Lk/a/f/i$g;

    .line 23
    iget-object v0, v0, Lk/a/f/i$i;->c:Ljava/lang/String;

    const-string v2, "br"

    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 25
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    .line 26
    new-instance v0, Lk/a/f/i$c;

    invoke-direct {v0}, Lk/a/f/i$c;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 27
    iput-object p1, v0, Lk/a/f/i$c;->b:Ljava/lang/String;

    .line 28
    invoke-virtual {p2, v0}, Lk/a/f/b;->u(Lk/a/f/i$c;)V

    return v1

    .line 29
    :cond_4
    invoke-virtual {p1}, Lk/a/f/i;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 30
    move-object v0, p1

    check-cast v0, Lk/a/f/i$h;

    .line 31
    iget-object v0, v0, Lk/a/f/i$i;->c:Ljava/lang/String;

    .line 32
    sget-object v2, Lk/a/f/c$x;->K:[Ljava/lang/String;

    invoke-static {v0, v2}, Lk/a/d/a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    invoke-virtual {p1}, Lk/a/f/i;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 33
    :cond_6
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    const/4 p1, 0x0

    return p1

    .line 34
    :cond_7
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    .line 35
    new-instance v0, Lk/a/f/i$c;

    invoke-direct {v0}, Lk/a/f/i$c;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 36
    iput-object p1, v0, Lk/a/f/i$c;->b:Ljava/lang/String;

    .line 37
    invoke-virtual {p2, v0}, Lk/a/f/b;->u(Lk/a/f/i$c;)V

    return v1

    .line 38
    :cond_8
    :goto_1
    sget-object v0, Lk/a/f/c;->d:Lk/a/f/c;

    .line 39
    iput-object p1, p2, Lk/a/f/m;->g:Lk/a/f/i;

    .line 40
    invoke-virtual {v0, p1, p2}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    return p1
.end method
