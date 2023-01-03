.class public final enum Lk/a/f/c$c;
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

    if-eqz v0, :cond_d

    const/4 v2, 0x0

    const-string v3, "html"

    if-eq v0, v1, :cond_7

    const/4 v4, 0x2

    if-eq v0, v4, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    .line 5
    invoke-virtual {p0, p1, p2}, Lk/a/f/c$c;->d(Lk/a/f/i;Lk/a/f/m;)Z

    move-result p1

    return p1

    .line 6
    :cond_1
    invoke-virtual {p2}, Lk/a/f/m;->a()Lk/a/e/h;

    move-result-object v0

    .line 7
    iget-object v0, v0, Lk/a/e/h;->c:Lk/a/f/h;

    .line 8
    iget-object v0, v0, Lk/a/f/h;->b:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 10
    :cond_2
    invoke-virtual {p0, p1, p2}, Lk/a/f/c$c;->d(Lk/a/f/i;Lk/a/f/m;)Z

    move-result p1

    return p1

    .line 11
    :cond_3
    check-cast p1, Lk/a/f/i$d;

    .line 12
    invoke-virtual {p2, p1}, Lk/a/f/b;->v(Lk/a/f/i$d;)V

    goto/16 :goto_2

    .line 13
    :cond_4
    move-object v0, p1

    check-cast v0, Lk/a/f/i$g;

    .line 14
    iget-object v0, v0, Lk/a/f/i$i;->c:Ljava/lang/String;

    const-string v4, "colgroup"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15
    invoke-virtual {p2}, Lk/a/f/m;->a()Lk/a/e/h;

    move-result-object p1

    .line 16
    iget-object p1, p1, Lk/a/e/h;->c:Lk/a/f/h;

    .line 17
    iget-object p1, p1, Lk/a/f/h;->b:Ljava/lang/String;

    .line 18
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 19
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    return v2

    .line 20
    :cond_5
    invoke-virtual {p2}, Lk/a/f/b;->E()Lk/a/e/h;

    .line 21
    sget-object p1, Lk/a/f/c;->i:Lk/a/f/c;

    .line 22
    iput-object p1, p2, Lk/a/f/b;->k:Lk/a/f/c;

    goto :goto_2

    .line 23
    :cond_6
    invoke-virtual {p0, p1, p2}, Lk/a/f/c$c;->d(Lk/a/f/i;Lk/a/f/m;)Z

    move-result p1

    return p1

    .line 24
    :cond_7
    move-object v0, p1

    check-cast v0, Lk/a/f/i$h;

    .line 25
    iget-object v4, v0, Lk/a/f/i$i;->c:Ljava/lang/String;

    .line 26
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, 0x18180

    if-eq v5, v6, :cond_9

    const v6, 0x3107ab

    if-eq v5, v6, :cond_8

    goto :goto_0

    :cond_8
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_1

    :cond_9
    const-string v2, "col"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    goto :goto_1

    :cond_a
    :goto_0
    const/4 v2, -0x1

    :goto_1
    if-eqz v2, :cond_c

    if-eq v2, v1, :cond_b

    .line 27
    invoke-virtual {p0, p1, p2}, Lk/a/f/c$c;->d(Lk/a/f/i;Lk/a/f/m;)Z

    move-result p1

    return p1

    .line 28
    :cond_b
    invoke-virtual {p2, v0}, Lk/a/f/b;->w(Lk/a/f/i$h;)Lk/a/e/h;

    goto :goto_2

    .line 29
    :cond_c
    sget-object v0, Lk/a/f/c;->g:Lk/a/f/c;

    .line 30
    iput-object p1, p2, Lk/a/f/m;->g:Lk/a/f/i;

    .line 31
    invoke-virtual {v0, p1, p2}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    return p1

    .line 32
    :cond_d
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    :goto_2
    return v1
.end method

.method public final d(Lk/a/f/i;Lk/a/f/m;)Z
    .locals 1

    const-string v0, "colgroup"

    .line 1
    invoke-virtual {p2, v0}, Lk/a/f/m;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Lk/a/f/b;

    .line 3
    iput-object p1, p2, Lk/a/f/m;->g:Lk/a/f/i;

    .line 4
    iget-object v0, p2, Lk/a/f/b;->k:Lk/a/f/c;

    invoke-virtual {v0, p1, p2}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
