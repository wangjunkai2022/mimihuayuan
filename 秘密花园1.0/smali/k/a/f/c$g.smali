.class public final enum Lk/a/f/c$g;
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
    iget-object v0, p1, Lk/a/f/i;->a:Lk/a/f/i$j;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    const-string v2, "html"

    const-string v3, "select"

    const-string v4, "optgroup"

    const-string v5, "option"

    const/4 v6, 0x1

    if-eq v0, v6, :cond_10

    const/4 v7, 0x2

    if-eq v0, v7, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    .line 2
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    return v1

    .line 3
    :cond_0
    invoke-virtual {p2}, Lk/a/f/m;->a()Lk/a/e/h;

    move-result-object p1

    .line 4
    iget-object p1, p1, Lk/a/e/h;->c:Lk/a/f/h;

    .line 5
    iget-object p1, p1, Lk/a/f/h;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    .line 7
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    goto/16 :goto_1

    .line 8
    :cond_1
    check-cast p1, Lk/a/f/i$c;

    .line 9
    iget-object v0, p1, Lk/a/f/i$c;->b:Ljava/lang/String;

    .line 10
    sget-object v2, Lk/a/f/c;->x:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    return v1

    .line 13
    :cond_2
    invoke-virtual {p2, p1}, Lk/a/f/b;->u(Lk/a/f/i$c;)V

    goto/16 :goto_1

    .line 14
    :cond_3
    check-cast p1, Lk/a/f/i$d;

    .line 15
    invoke-virtual {p2, p1}, Lk/a/f/b;->v(Lk/a/f/i$d;)V

    goto/16 :goto_1

    .line 16
    :cond_4
    check-cast p1, Lk/a/f/i$g;

    .line 17
    iget-object p1, p1, Lk/a/f/i$i;->c:Ljava/lang/String;

    const/4 v0, -0x1

    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v8, -0x3c35778b

    if-eq v2, v8, :cond_7

    const v8, -0x3600cb04    # -2090655.5f

    if-eq v2, v8, :cond_6

    const v3, -0x4d08054

    if-eq v2, v3, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v0, 0x2

    goto :goto_0

    :cond_7
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v0, 0x1

    :cond_8
    :goto_0
    if-eqz v0, :cond_d

    if-eq v0, v6, :cond_b

    if-eq v0, v7, :cond_9

    .line 19
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    return v1

    .line 20
    :cond_9
    invoke-virtual {p2, p1}, Lk/a/f/b;->q(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 21
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    return v1

    .line 22
    :cond_a
    invoke-virtual {p2, p1}, Lk/a/f/b;->F(Ljava/lang/String;)Lk/a/e/h;

    .line 23
    invoke-virtual {p2}, Lk/a/f/b;->K()V

    goto/16 :goto_1

    .line 24
    :cond_b
    invoke-virtual {p2}, Lk/a/f/m;->a()Lk/a/e/h;

    move-result-object p1

    .line 25
    iget-object p1, p1, Lk/a/e/h;->c:Lk/a/f/h;

    .line 26
    iget-object p1, p1, Lk/a/f/h;->b:Ljava/lang/String;

    .line 27
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 28
    invoke-virtual {p2}, Lk/a/f/b;->E()Lk/a/e/h;

    goto/16 :goto_1

    .line 29
    :cond_c
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    goto/16 :goto_1

    .line 30
    :cond_d
    invoke-virtual {p2}, Lk/a/f/m;->a()Lk/a/e/h;

    move-result-object p1

    .line 31
    iget-object p1, p1, Lk/a/e/h;->c:Lk/a/f/h;

    .line 32
    iget-object p1, p1, Lk/a/f/h;->b:Ljava/lang/String;

    .line 33
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {p2}, Lk/a/f/m;->a()Lk/a/e/h;

    move-result-object p1

    invoke-virtual {p2, p1}, Lk/a/f/b;->f(Lk/a/e/h;)Lk/a/e/h;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-virtual {p2}, Lk/a/f/m;->a()Lk/a/e/h;

    move-result-object p1

    invoke-virtual {p2, p1}, Lk/a/f/b;->f(Lk/a/e/h;)Lk/a/e/h;

    move-result-object p1

    .line 34
    iget-object p1, p1, Lk/a/e/h;->c:Lk/a/f/h;

    .line 35
    iget-object p1, p1, Lk/a/f/h;->b:Ljava/lang/String;

    .line 36
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 37
    invoke-virtual {p2, v5}, Lk/a/f/m;->d(Ljava/lang/String;)Z

    .line 38
    :cond_e
    invoke-virtual {p2}, Lk/a/f/m;->a()Lk/a/e/h;

    move-result-object p1

    .line 39
    iget-object p1, p1, Lk/a/e/h;->c:Lk/a/f/h;

    .line 40
    iget-object p1, p1, Lk/a/f/h;->b:Ljava/lang/String;

    .line 41
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 42
    invoke-virtual {p2}, Lk/a/f/b;->E()Lk/a/e/h;

    goto :goto_1

    .line 43
    :cond_f
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    goto :goto_1

    .line 44
    :cond_10
    move-object v0, p1

    check-cast v0, Lk/a/f/i$h;

    .line 45
    iget-object v7, v0, Lk/a/f/i$i;->c:Ljava/lang/String;

    .line 46
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 47
    sget-object p1, Lk/a/f/c;->g:Lk/a/f/c;

    .line 48
    iput-object v0, p2, Lk/a/f/m;->g:Lk/a/f/i;

    .line 49
    invoke-virtual {p1, v0, p2}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    return p1

    .line 50
    :cond_11
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 51
    invoke-virtual {p2}, Lk/a/f/m;->a()Lk/a/e/h;

    move-result-object p1

    .line 52
    iget-object p1, p1, Lk/a/e/h;->c:Lk/a/f/h;

    .line 53
    iget-object p1, p1, Lk/a/f/h;->b:Ljava/lang/String;

    .line 54
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 55
    invoke-virtual {p2, v5}, Lk/a/f/m;->d(Ljava/lang/String;)Z

    .line 56
    :cond_12
    invoke-virtual {p2, v0}, Lk/a/f/b;->t(Lk/a/f/i$h;)Lk/a/e/h;

    goto :goto_1

    .line 57
    :cond_13
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 58
    invoke-virtual {p2}, Lk/a/f/m;->a()Lk/a/e/h;

    move-result-object p1

    .line 59
    iget-object p1, p1, Lk/a/e/h;->c:Lk/a/f/h;

    .line 60
    iget-object p1, p1, Lk/a/f/h;->b:Ljava/lang/String;

    .line 61
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 62
    invoke-virtual {p2, v5}, Lk/a/f/m;->d(Ljava/lang/String;)Z

    .line 63
    :cond_14
    invoke-virtual {p2}, Lk/a/f/m;->a()Lk/a/e/h;

    move-result-object p1

    .line 64
    iget-object p1, p1, Lk/a/e/h;->c:Lk/a/f/h;

    .line 65
    iget-object p1, p1, Lk/a/f/h;->b:Ljava/lang/String;

    .line 66
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 67
    invoke-virtual {p2, v4}, Lk/a/f/m;->d(Ljava/lang/String;)Z

    .line 68
    :cond_15
    invoke-virtual {p2, v0}, Lk/a/f/b;->t(Lk/a/f/i$h;)Lk/a/e/h;

    :cond_16
    :goto_1
    return v6

    .line 69
    :cond_17
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 70
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    .line 71
    invoke-virtual {p2, v3}, Lk/a/f/m;->d(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 72
    :cond_18
    sget-object v2, Lk/a/f/c$x;->H:[Ljava/lang/String;

    invoke-static {v7, v2}, Lk/a/d/a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 73
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    .line 74
    invoke-virtual {p2, v3}, Lk/a/f/b;->q(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_19

    return v1

    .line 75
    :cond_19
    invoke-virtual {p2, v3}, Lk/a/f/m;->d(Ljava/lang/String;)Z

    .line 76
    iput-object v0, p2, Lk/a/f/m;->g:Lk/a/f/i;

    .line 77
    iget-object p1, p2, Lk/a/f/b;->k:Lk/a/f/c;

    invoke-virtual {p1, v0, p2}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    return p1

    :cond_1a
    const-string v0, "script"

    .line 78
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 79
    sget-object v0, Lk/a/f/c;->d:Lk/a/f/c;

    .line 80
    iput-object p1, p2, Lk/a/f/m;->g:Lk/a/f/i;

    .line 81
    invoke-virtual {v0, p1, p2}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    move-result p1

    return p1

    .line 82
    :cond_1b
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    return v1

    .line 83
    :cond_1c
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    return v1
.end method
