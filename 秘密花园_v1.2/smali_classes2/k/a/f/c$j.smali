.class public final enum Lk/a/f/c$j;
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
    .locals 9

    .line 1
    invoke-static {p1}, Lk/a/f/c;->a(Lk/a/f/i;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lk/a/f/i$c;

    .line 3
    invoke-virtual {p2, p1}, Lk/a/f/b;->u(Lk/a/f/i$c;)V

    goto/16 :goto_1

    .line 4
    :cond_0
    invoke-virtual {p1}, Lk/a/f/i;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    check-cast p1, Lk/a/f/i$d;

    .line 6
    invoke-virtual {p2, p1}, Lk/a/f/b;->v(Lk/a/f/i$d;)V

    goto/16 :goto_1

    .line 7
    :cond_1
    invoke-virtual {p1}, Lk/a/f/i;->c()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    return v2

    .line 9
    :cond_2
    invoke-virtual {p1}, Lk/a/f/i;->f()Z

    move-result v0

    const-string v3, "html"

    const-string v4, "frameset"

    if-eqz v0, :cond_8

    .line 10
    check-cast p1, Lk/a/f/i$h;

    .line 11
    iget-object v0, p1, Lk/a/f/i$i;->c:Ljava/lang/String;

    const/4 v5, -0x1

    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x3

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "noframes"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v5, 0x3

    goto :goto_0

    :sswitch_1
    const-string v3, "frame"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v5, 0x2

    goto :goto_0

    :sswitch_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v5, 0x0

    goto :goto_0

    :sswitch_3
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v5, 0x1

    :cond_3
    :goto_0
    if-eqz v5, :cond_7

    if-eq v5, v1, :cond_6

    if-eq v5, v7, :cond_5

    if-eq v5, v8, :cond_4

    .line 13
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    return v2

    .line 14
    :cond_4
    sget-object v0, Lk/a/f/c;->d:Lk/a/f/c;

    .line 15
    iput-object p1, p2, Lk/a/f/m;->g:Lk/a/f/i;

    .line 16
    invoke-virtual {v0, p1, p2}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    return p1

    .line 17
    :cond_5
    invoke-virtual {p2, p1}, Lk/a/f/b;->w(Lk/a/f/i$h;)Lk/a/e/h;

    goto :goto_1

    .line 18
    :cond_6
    invoke-virtual {p2, p1}, Lk/a/f/b;->t(Lk/a/f/i$h;)Lk/a/e/h;

    goto :goto_1

    .line 19
    :cond_7
    sget-object v0, Lk/a/f/c;->g:Lk/a/f/c;

    .line 20
    iput-object p1, p2, Lk/a/f/m;->g:Lk/a/f/i;

    .line 21
    invoke-virtual {v0, p1, p2}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    return p1

    .line 22
    :cond_8
    invoke-virtual {p1}, Lk/a/f/i;->e()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 23
    move-object v0, p1

    check-cast v0, Lk/a/f/i$g;

    .line 24
    iget-object v0, v0, Lk/a/f/i$i;->c:Ljava/lang/String;

    .line 25
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 26
    invoke-virtual {p2}, Lk/a/f/m;->a()Lk/a/e/h;

    move-result-object p1

    .line 27
    iget-object p1, p1, Lk/a/e/h;->c:Lk/a/f/h;

    .line 28
    iget-object p1, p1, Lk/a/f/h;->b:Ljava/lang/String;

    .line 29
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 30
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    return v2

    .line 31
    :cond_9
    invoke-virtual {p2}, Lk/a/f/b;->E()Lk/a/e/h;

    .line 32
    iget-boolean p1, p2, Lk/a/f/b;->v:Z

    if-nez p1, :cond_b

    .line 33
    invoke-virtual {p2}, Lk/a/f/m;->a()Lk/a/e/h;

    move-result-object p1

    .line 34
    iget-object p1, p1, Lk/a/e/h;->c:Lk/a/f/h;

    .line 35
    iget-object p1, p1, Lk/a/f/h;->b:Ljava/lang/String;

    .line 36
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 37
    sget-object p1, Lk/a/f/c;->t:Lk/a/f/c;

    .line 38
    iput-object p1, p2, Lk/a/f/b;->k:Lk/a/f/c;

    goto :goto_1

    .line 39
    :cond_a
    invoke-virtual {p1}, Lk/a/f/i;->d()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 40
    invoke-virtual {p2}, Lk/a/f/m;->a()Lk/a/e/h;

    move-result-object p1

    .line 41
    iget-object p1, p1, Lk/a/e/h;->c:Lk/a/f/h;

    .line 42
    iget-object p1, p1, Lk/a/f/h;->b:Ljava/lang/String;

    .line 43
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 44
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    :cond_b
    :goto_1
    return v1

    .line 45
    :cond_c
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x620c002b -> :sswitch_3
        0x3107ab -> :sswitch_2
        0x5d2a96d -> :sswitch_1
        0x47177da7 -> :sswitch_0
    .end sparse-switch
.end method
