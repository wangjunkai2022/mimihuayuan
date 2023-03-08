.class public final enum Lk/a/f/c$d;
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
    iget-object v0, p1, Lk/a/f/i;->a:Lk/a/f/i$j;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lk/a/f/c$d;->d(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    move-object v0, p1

    check-cast v0, Lk/a/f/i$g;

    .line 4
    iget-object v0, v0, Lk/a/f/i$i;->c:Ljava/lang/String;

    .line 5
    sget-object v2, Lk/a/f/c$x;->J:[Ljava/lang/String;

    invoke-static {v0, v2}, Lk/a/d/a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {p2, v0}, Lk/a/f/b;->s(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 7
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    return v3

    .line 8
    :cond_1
    invoke-virtual {p2}, Lk/a/f/b;->i()V

    .line 9
    invoke-virtual {p2}, Lk/a/f/b;->E()Lk/a/e/h;

    .line 10
    sget-object p1, Lk/a/f/c;->i:Lk/a/f/c;

    .line 11
    iput-object p1, p2, Lk/a/f/b;->k:Lk/a/f/c;

    goto :goto_0

    :cond_2
    const-string v1, "table"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 13
    invoke-virtual {p0, p1, p2}, Lk/a/f/c$d;->e(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    return p1

    .line 14
    :cond_3
    sget-object v1, Lk/a/f/c$x;->E:[Ljava/lang/String;

    invoke-static {v0, v1}, Lk/a/d/a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    return v3

    .line 16
    :cond_4
    invoke-virtual {p0, p1, p2}, Lk/a/f/c$d;->d(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    return p1

    .line 17
    :cond_5
    move-object v0, p1

    check-cast v0, Lk/a/f/i$h;

    .line 18
    iget-object v2, v0, Lk/a/f/i$i;->c:Ljava/lang/String;

    const-string v3, "template"

    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 20
    invoke-virtual {p2, v0}, Lk/a/f/b;->t(Lk/a/f/i$h;)Lk/a/e/h;

    goto :goto_0

    :cond_6
    const-string v3, "tr"

    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 22
    invoke-virtual {p2}, Lk/a/f/b;->i()V

    .line 23
    invoke-virtual {p2, v0}, Lk/a/f/b;->t(Lk/a/f/i$h;)Lk/a/e/h;

    .line 24
    sget-object p1, Lk/a/f/c;->n:Lk/a/f/c;

    .line 25
    iput-object p1, p2, Lk/a/f/b;->k:Lk/a/f/c;

    :goto_0
    return v1

    .line 26
    :cond_7
    sget-object v1, Lk/a/f/c$x;->x:[Ljava/lang/String;

    invoke-static {v2, v1}, Lk/a/d/a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 27
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    .line 28
    invoke-virtual {p2, v3}, Lk/a/f/m;->e(Ljava/lang/String;)Z

    .line 29
    iput-object v0, p2, Lk/a/f/m;->g:Lk/a/f/i;

    .line 30
    iget-object p1, p2, Lk/a/f/b;->k:Lk/a/f/c;

    invoke-virtual {p1, v0, p2}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    return p1

    .line 31
    :cond_8
    sget-object v0, Lk/a/f/c$x;->D:[Ljava/lang/String;

    invoke-static {v2, v0}, Lk/a/d/a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 32
    invoke-virtual {p0, p1, p2}, Lk/a/f/c$d;->e(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    return p1

    .line 33
    :cond_9
    invoke-virtual {p0, p1, p2}, Lk/a/f/c$d;->d(Lk/a/f/i;Lk/a/f/b;)Z

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

.method public final e(Lk/a/f/i;Lk/a/f/b;)Z
    .locals 1

    const-string v0, "tbody"

    .line 1
    invoke-virtual {p2, v0}, Lk/a/f/b;->s(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "thead"

    invoke-virtual {p2, v0}, Lk/a/f/b;->s(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tfoot"

    invoke-virtual {p2, v0}, Lk/a/f/b;->p(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    invoke-virtual {p2}, Lk/a/f/b;->i()V

    .line 4
    invoke-virtual {p2}, Lk/a/f/m;->a()Lk/a/e/h;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lk/a/e/h;->c:Lk/a/f/h;

    .line 6
    iget-object v0, v0, Lk/a/f/h;->b:Ljava/lang/String;

    .line 7
    invoke-virtual {p2, v0}, Lk/a/f/m;->d(Ljava/lang/String;)Z

    .line 8
    iput-object p1, p2, Lk/a/f/m;->g:Lk/a/f/i;

    .line 9
    iget-object v0, p2, Lk/a/f/b;->k:Lk/a/f/c;

    invoke-virtual {v0, p1, p2}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    return p1
.end method
