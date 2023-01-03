.class public final enum Lk/a/f/c$u;
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
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-object v3, v1, Lk/a/f/i;->a:Lk/a/f/i$j;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_68

    const-string v5, "span"

    const-string v6, "html"

    const-string v7, "dt"

    const-string v8, "dd"

    const-string v9, "li"

    const-string v10, "body"

    const-string v11, "form"

    const-string v12, "h4"

    const-string v13, "h3"

    const-string v14, "h2"

    const-string v15, "h1"

    const/16 v16, 0xe

    const/16 v17, 0x7

    const/16 v18, 0xa

    const/16 v19, 0xb

    const/16 v20, 0xd

    const/16 v21, 0x9

    const/16 v22, 0x6

    const/16 v23, 0xc

    const/16 v24, 0xf

    const/16 v25, 0x5

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2f

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    check-cast v1, Lk/a/f/i$c;

    .line 3
    iget-object v3, v1, Lk/a/f/i$c;->b:Ljava/lang/String;

    .line 4
    sget-object v4, Lk/a/f/c;->x:Ljava/lang/String;

    .line 5
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {v2, v0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    const/4 v1, 0x0

    return v1

    .line 7
    :cond_1
    iget-boolean v3, v2, Lk/a/f/b;->t:Z

    if-eqz v3, :cond_2

    .line 8
    invoke-static {v1}, Lk/a/f/c;->a(Lk/a/f/i;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    invoke-virtual/range {p2 .. p2}, Lk/a/f/b;->H()V

    .line 10
    invoke-virtual {v2, v1}, Lk/a/f/b;->u(Lk/a/f/i$c;)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lk/a/f/b;->H()V

    .line 12
    invoke-virtual {v2, v1}, Lk/a/f/b;->u(Lk/a/f/i$c;)V

    const/4 v1, 0x0

    .line 13
    iput-boolean v1, v2, Lk/a/f/b;->t:Z

    goto :goto_0

    .line 14
    :cond_3
    check-cast v1, Lk/a/f/i$d;

    .line 15
    invoke-virtual {v2, v1}, Lk/a/f/b;->v(Lk/a/f/i$d;)V

    :goto_0
    const/4 v1, 0x1

    return v1

    :cond_4
    const/4 v4, 0x4

    .line 16
    move-object v3, v1

    check-cast v3, Lk/a/f/i$g;

    .line 17
    iget-object v4, v3, Lk/a/f/i$i;->c:Ljava/lang/String;

    .line 18
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v26

    const-string v1, "br"

    sparse-switch v26, :sswitch_data_0

    packed-switch v26, :pswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v5, "sarcasm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v16, 0x0

    goto/16 :goto_2

    :sswitch_1
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v16, 0x1

    goto/16 :goto_2

    :sswitch_2
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v16, 0x4

    goto/16 :goto_2

    :sswitch_3
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v16, 0x5

    goto/16 :goto_2

    :sswitch_4
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v16, 0x3

    goto/16 :goto_2

    :sswitch_5
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v16, 0x2

    goto/16 :goto_2

    :sswitch_6
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v16, 0x8

    goto :goto_2

    :sswitch_7
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v16, 0x7

    goto :goto_2

    :sswitch_8
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v16, 0xf

    goto :goto_2

    :sswitch_9
    const-string v5, "p"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v16, 0x6

    goto :goto_2

    :pswitch_0
    const-string v5, "h6"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    :pswitch_1
    const-string v5, "h5"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v16, 0xd

    goto :goto_2

    :pswitch_2
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v16, 0xc

    goto :goto_2

    :pswitch_3
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v16, 0xb

    goto :goto_2

    :pswitch_4
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v16, 0xa

    goto :goto_2

    :pswitch_5
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v16, 0x9

    goto :goto_2

    :cond_5
    :goto_1
    const/16 v16, -0x1

    :goto_2
    packed-switch v16, :pswitch_data_1

    .line 19
    sget-object v1, Lk/a/f/c$x;->s:[Ljava/lang/String;

    invoke-static {v4, v1}, Lk/a/d/a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    goto/16 :goto_6

    .line 20
    :pswitch_6
    invoke-virtual {v2, v0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    .line 21
    invoke-virtual {v2, v1}, Lk/a/f/m;->e(Ljava/lang/String;)Z

    goto/16 :goto_5

    .line 22
    :pswitch_7
    sget-object v1, Lk/a/f/c$x;->i:[Ljava/lang/String;

    .line 23
    sget-object v3, Lk/a/f/b;->x:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v3, v5}, Lk/a/f/b;->r([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 24
    invoke-virtual {v2, v0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    goto/16 :goto_5

    .line 25
    :cond_6
    invoke-virtual {v2, v4}, Lk/a/f/b;->l(Ljava/lang/String;)V

    .line 26
    invoke-virtual/range {p2 .. p2}, Lk/a/f/m;->a()Lk/a/e/h;

    move-result-object v1

    .line 27
    iget-object v1, v1, Lk/a/e/h;->c:Lk/a/f/h;

    .line 28
    iget-object v1, v1, Lk/a/f/h;->b:Ljava/lang/String;

    .line 29
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 30
    invoke-virtual {v2, v0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    .line 31
    :cond_7
    sget-object v1, Lk/a/f/c$x;->i:[Ljava/lang/String;

    .line 32
    iget-object v3, v2, Lk/a/f/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, -0x1

    add-int/2addr v3, v4

    :goto_3
    if-ltz v3, :cond_2d

    .line 33
    iget-object v4, v2, Lk/a/f/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lk/a/e/h;

    .line 34
    iget-object v5, v2, Lk/a/f/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 35
    iget-object v4, v4, Lk/a/e/h;->c:Lk/a/f/h;

    .line 36
    iget-object v4, v4, Lk/a/f/h;->b:Ljava/lang/String;

    .line 37
    invoke-static {v4, v1}, Lk/a/d/a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto/16 :goto_13

    :cond_8
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 38
    :pswitch_8
    invoke-virtual {v2, v4}, Lk/a/f/b;->p(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 39
    invoke-virtual {v2, v0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    goto/16 :goto_5

    .line 40
    :cond_9
    invoke-virtual {v2, v4}, Lk/a/f/b;->l(Ljava/lang/String;)V

    .line 41
    invoke-virtual/range {p2 .. p2}, Lk/a/f/m;->a()Lk/a/e/h;

    move-result-object v1

    .line 42
    iget-object v1, v1, Lk/a/e/h;->c:Lk/a/f/h;

    .line 43
    iget-object v1, v1, Lk/a/f/h;->b:Ljava/lang/String;

    .line 44
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 45
    invoke-virtual {v2, v0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    .line 46
    :cond_a
    invoke-virtual {v2, v4}, Lk/a/f/b;->F(Ljava/lang/String;)Lk/a/e/h;

    goto/16 :goto_13

    .line 47
    :pswitch_9
    invoke-virtual {v2, v4}, Lk/a/f/b;->o(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 48
    invoke-virtual {v2, v0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    .line 49
    invoke-virtual {v2, v4}, Lk/a/f/m;->e(Ljava/lang/String;)Z

    .line 50
    iput-object v3, v2, Lk/a/f/m;->g:Lk/a/f/i;

    .line 51
    iget-object v1, v2, Lk/a/f/b;->k:Lk/a/f/c;

    invoke-virtual {v1, v3, v2}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    move-result v4

    goto/16 :goto_14

    .line 52
    :cond_b
    invoke-virtual {v2, v4}, Lk/a/f/b;->l(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Lk/a/f/m;->a()Lk/a/e/h;

    move-result-object v1

    .line 54
    iget-object v1, v1, Lk/a/e/h;->c:Lk/a/f/h;

    .line 55
    iget-object v1, v1, Lk/a/f/h;->b:Ljava/lang/String;

    .line 56
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 57
    invoke-virtual {v2, v0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    .line 58
    :cond_c
    invoke-virtual {v2, v4}, Lk/a/f/b;->F(Ljava/lang/String;)Lk/a/e/h;

    goto/16 :goto_13

    .line 59
    :pswitch_a
    iget-object v1, v2, Lk/a/f/b;->o:Lk/a/e/j;

    const/4 v3, 0x0

    .line 60
    iput-object v3, v2, Lk/a/f/b;->o:Lk/a/e/j;

    if-eqz v1, :cond_f

    .line 61
    invoke-virtual {v2, v4}, Lk/a/f/b;->p(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    goto :goto_4

    .line 62
    :cond_d
    invoke-virtual {v2, v3}, Lk/a/f/b;->l(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p2 .. p2}, Lk/a/f/m;->a()Lk/a/e/h;

    move-result-object v3

    .line 64
    iget-object v3, v3, Lk/a/e/h;->c:Lk/a/f/h;

    .line 65
    iget-object v3, v3, Lk/a/f/h;->b:Ljava/lang/String;

    .line 66
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 67
    invoke-virtual {v2, v0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    .line 68
    :cond_e
    invoke-virtual {v2, v1}, Lk/a/f/b;->J(Lk/a/e/h;)Z

    goto/16 :goto_13

    .line 69
    :cond_f
    :goto_4
    invoke-virtual {v2, v0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    goto :goto_5

    .line 70
    :pswitch_b
    invoke-virtual {v2, v10}, Lk/a/f/m;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 71
    iput-object v3, v2, Lk/a/f/m;->g:Lk/a/f/i;

    .line 72
    iget-object v1, v2, Lk/a/f/b;->k:Lk/a/f/c;

    invoke-virtual {v1, v3, v2}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    move-result v4

    goto/16 :goto_14

    .line 73
    :pswitch_c
    invoke-virtual {v2, v10}, Lk/a/f/b;->p(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 74
    invoke-virtual {v2, v0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    goto :goto_5

    .line 75
    :cond_10
    sget-object v1, Lk/a/f/c;->r:Lk/a/f/c;

    .line 76
    iput-object v1, v2, Lk/a/f/b;->k:Lk/a/f/c;

    goto/16 :goto_13

    .line 77
    :pswitch_d
    sget-object v1, Lk/a/f/b;->y:[Ljava/lang/String;

    .line 78
    sget-object v3, Lk/a/f/b;->x:[Ljava/lang/String;

    .line 79
    iget-object v5, v2, Lk/a/f/b;->w:[Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    .line 80
    invoke-virtual {v2, v5, v3, v1}, Lk/a/f/b;->r([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 81
    invoke-virtual {v2, v0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    :goto_5
    const/4 v4, 0x0

    goto/16 :goto_14

    .line 82
    :cond_11
    invoke-virtual {v2, v4}, Lk/a/f/b;->l(Ljava/lang/String;)V

    .line 83
    invoke-virtual/range {p2 .. p2}, Lk/a/f/m;->a()Lk/a/e/h;

    move-result-object v1

    .line 84
    iget-object v1, v1, Lk/a/e/h;->c:Lk/a/f/h;

    .line 85
    iget-object v1, v1, Lk/a/f/h;->b:Ljava/lang/String;

    .line 86
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 87
    invoke-virtual {v2, v0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    .line 88
    :cond_12
    invoke-virtual {v2, v4}, Lk/a/f/b;->F(Ljava/lang/String;)Lk/a/e/h;

    goto/16 :goto_13

    .line 89
    :pswitch_e
    invoke-virtual/range {p0 .. p2}, Lk/a/f/c$u;->d(Lk/a/f/i;Lk/a/f/b;)Z

    move-result v4

    goto/16 :goto_14

    .line 90
    :goto_6
    iget-object v1, v3, Lk/a/f/i$i;->c:Ljava/lang/String;

    .line 91
    iget-object v3, v2, Lk/a/f/m;->e:Ljava/util/ArrayList;

    const/4 v4, 0x0

    :goto_7
    const/16 v5, 0x8

    if-ge v4, v5, :cond_2d

    .line 92
    invoke-virtual {v2, v1}, Lk/a/f/b;->m(Ljava/lang/String;)Lk/a/e/h;

    move-result-object v6

    if-nez v6, :cond_13

    .line 93
    invoke-virtual/range {p0 .. p2}, Lk/a/f/c$u;->d(Lk/a/f/i;Lk/a/f/b;)Z

    move-result v4

    goto/16 :goto_14

    .line 94
    :cond_13
    iget-object v7, v2, Lk/a/f/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v7, v6}, Lk/a/f/b;->B(Ljava/util/ArrayList;Lk/a/e/h;)Z

    move-result v7

    if-nez v7, :cond_14

    .line 95
    invoke-virtual {v2, v0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    .line 96
    invoke-virtual {v2, v6}, Lk/a/f/b;->I(Lk/a/e/h;)V

    goto/16 :goto_13

    .line 97
    :cond_14
    iget-object v7, v6, Lk/a/e/h;->c:Lk/a/f/h;

    .line 98
    iget-object v7, v7, Lk/a/f/h;->b:Ljava/lang/String;

    .line 99
    invoke-virtual {v2, v7}, Lk/a/f/b;->p(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_15

    .line 100
    invoke-virtual {v2, v0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    goto :goto_5

    .line 101
    :cond_15
    invoke-virtual/range {p2 .. p2}, Lk/a/f/m;->a()Lk/a/e/h;

    move-result-object v7

    if-eq v7, v6, :cond_16

    .line 102
    invoke-virtual {v2, v0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    .line 103
    :cond_16
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_8
    if-ge v8, v7, :cond_19

    const/16 v11, 0x40

    if-ge v8, v11, :cond_19

    .line 104
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lk/a/e/h;

    if-ne v11, v6, :cond_17

    add-int/lit8 v9, v8, -0x1

    .line 105
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lk/a/e/h;

    move-object v10, v9

    const/4 v9, 0x1

    goto :goto_9

    :cond_17
    if-eqz v9, :cond_18

    .line 106
    invoke-virtual {v2, v11}, Lk/a/f/b;->C(Lk/a/e/h;)Z

    move-result v12

    if-eqz v12, :cond_18

    goto :goto_a

    :cond_18
    :goto_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_19
    const/4 v11, 0x0

    :goto_a
    if-nez v11, :cond_1a

    .line 107
    iget-object v1, v6, Lk/a/e/h;->c:Lk/a/f/h;

    .line 108
    iget-object v1, v1, Lk/a/f/h;->b:Ljava/lang/String;

    .line 109
    invoke-virtual {v2, v1}, Lk/a/f/b;->F(Ljava/lang/String;)Lk/a/e/h;

    .line 110
    invoke-virtual {v2, v6}, Lk/a/f/b;->I(Lk/a/e/h;)V

    goto/16 :goto_13

    :cond_1a
    move-object v8, v11

    move-object v9, v8

    const/4 v7, 0x0

    const/4 v12, 0x3

    :goto_b
    if-ge v7, v12, :cond_21

    .line 111
    invoke-virtual {v2, v8}, Lk/a/f/b;->D(Lk/a/e/h;)Z

    move-result v13

    if-eqz v13, :cond_1b

    .line 112
    invoke-virtual {v2, v8}, Lk/a/f/b;->f(Lk/a/e/h;)Lk/a/e/h;

    move-result-object v8

    .line 113
    :cond_1b
    iget-object v13, v2, Lk/a/f/b;->q:Ljava/util/ArrayList;

    invoke-virtual {v2, v13, v8}, Lk/a/f/b;->B(Ljava/util/ArrayList;Lk/a/e/h;)Z

    move-result v13

    if-nez v13, :cond_1c

    .line 114
    invoke-virtual {v2, v8}, Lk/a/f/b;->J(Lk/a/e/h;)Z

    goto :goto_e

    :cond_1c
    if-ne v8, v6, :cond_1d

    goto :goto_f

    .line 115
    :cond_1d
    new-instance v13, Lk/a/e/h;

    invoke-virtual {v8}, Lk/a/e/h;->q()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lk/a/f/f;->d:Lk/a/f/f;

    invoke-static {v14, v15}, Lk/a/f/h;->a(Ljava/lang/String;Lk/a/f/f;)Lk/a/f/h;

    move-result-object v14

    .line 116
    iget-object v15, v2, Lk/a/f/m;->f:Ljava/lang/String;

    const/4 v5, 0x0

    .line 117
    invoke-direct {v13, v14, v15, v5}, Lk/a/e/h;-><init>(Lk/a/f/h;Ljava/lang/String;Lk/a/e/b;)V

    .line 118
    iget-object v5, v2, Lk/a/f/b;->q:Ljava/util/ArrayList;

    .line 119
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_1e

    const/16 v16, 0x1

    goto :goto_c

    :cond_1e
    const/16 v16, 0x0

    .line 120
    :goto_c
    invoke-static/range {v16 .. v16}, Lj/b;->n(Z)V

    .line 121
    invoke-virtual {v5, v14, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v5, v2, Lk/a/f/m;->e:Ljava/util/ArrayList;

    .line 123
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v8

    if-eq v8, v15, :cond_1f

    const/4 v14, 0x1

    goto :goto_d

    :cond_1f
    const/4 v14, 0x0

    .line 124
    :goto_d
    invoke-static {v14}, Lj/b;->n(Z)V

    .line 125
    invoke-virtual {v5, v8, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v5, v9, Lk/a/e/l;->a:Lk/a/e/l;

    check-cast v5, Lk/a/e/h;

    if-eqz v5, :cond_20

    .line 127
    invoke-virtual {v9}, Lk/a/e/l;->w()V

    .line 128
    :cond_20
    invoke-virtual {v13, v9}, Lk/a/e/h;->z(Lk/a/e/l;)Lk/a/e/h;

    move-object v8, v13

    move-object v9, v8

    :goto_e
    add-int/lit8 v7, v7, 0x1

    const/16 v5, 0x8

    goto :goto_b

    .line 129
    :cond_21
    :goto_f
    iget-object v5, v10, Lk/a/e/h;->c:Lk/a/f/h;

    .line 130
    iget-object v5, v5, Lk/a/f/h;->b:Ljava/lang/String;

    .line 131
    sget-object v7, Lk/a/f/c$x;->t:[Ljava/lang/String;

    invoke-static {v5, v7}, Lk/a/d/a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 132
    iget-object v5, v9, Lk/a/e/l;->a:Lk/a/e/l;

    check-cast v5, Lk/a/e/h;

    if-eqz v5, :cond_22

    .line 133
    invoke-virtual {v9}, Lk/a/e/l;->w()V

    .line 134
    :cond_22
    invoke-virtual {v2, v9}, Lk/a/f/b;->y(Lk/a/e/l;)V

    goto :goto_10

    .line 135
    :cond_23
    iget-object v5, v9, Lk/a/e/l;->a:Lk/a/e/l;

    check-cast v5, Lk/a/e/h;

    if-eqz v5, :cond_24

    .line 136
    invoke-virtual {v9}, Lk/a/e/l;->w()V

    .line 137
    :cond_24
    invoke-virtual {v10, v9}, Lk/a/e/h;->z(Lk/a/e/l;)Lk/a/e/h;

    .line 138
    :goto_10
    new-instance v5, Lk/a/e/h;

    .line 139
    iget-object v7, v6, Lk/a/e/h;->c:Lk/a/f/h;

    .line 140
    iget-object v8, v2, Lk/a/f/m;->f:Ljava/lang/String;

    const/4 v9, 0x0

    .line 141
    invoke-direct {v5, v7, v8, v9}, Lk/a/e/h;-><init>(Lk/a/f/h;Ljava/lang/String;Lk/a/e/b;)V

    .line 142
    invoke-virtual {v5}, Lk/a/e/h;->d()Lk/a/e/b;

    move-result-object v7

    invoke-virtual {v6}, Lk/a/e/h;->d()Lk/a/e/b;

    move-result-object v8

    invoke-virtual {v7, v8}, Lk/a/e/b;->c(Lk/a/e/b;)V

    .line 143
    invoke-virtual {v11}, Lk/a/e/l;->g()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    new-array v9, v8, [Lk/a/e/l;

    invoke-interface {v7, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lk/a/e/l;

    .line 144
    array-length v8, v7

    const/4 v9, 0x0

    :goto_11
    if-ge v9, v8, :cond_25

    aget-object v10, v7, v9

    .line 145
    invoke-virtual {v5, v10}, Lk/a/e/h;->z(Lk/a/e/l;)Lk/a/e/h;

    add-int/lit8 v9, v9, 0x1

    goto :goto_11

    .line 146
    :cond_25
    invoke-virtual {v11, v5}, Lk/a/e/h;->z(Lk/a/e/l;)Lk/a/e/h;

    .line 147
    invoke-virtual {v2, v6}, Lk/a/f/b;->I(Lk/a/e/h;)V

    .line 148
    invoke-virtual {v2, v6}, Lk/a/f/b;->J(Lk/a/e/h;)Z

    .line 149
    iget-object v6, v2, Lk/a/f/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_26

    const/4 v7, 0x1

    goto :goto_12

    :cond_26
    const/4 v7, 0x0

    .line 150
    :goto_12
    invoke-static {v7}, Lj/b;->n(Z)V

    .line 151
    iget-object v7, v2, Lk/a/f/m;->e:Ljava/util/ArrayList;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v7, v6, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_7

    .line 152
    :cond_27
    sget-object v1, Lk/a/f/c$x;->r:[Ljava/lang/String;

    invoke-static {v4, v1}, Lk/a/d/a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 153
    invoke-virtual {v2, v4}, Lk/a/f/b;->p(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 154
    invoke-virtual {v2, v0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    goto/16 :goto_5

    :cond_28
    const/4 v1, 0x0

    .line 155
    invoke-virtual {v2, v1}, Lk/a/f/b;->l(Ljava/lang/String;)V

    .line 156
    invoke-virtual/range {p2 .. p2}, Lk/a/f/m;->a()Lk/a/e/h;

    move-result-object v1

    .line 157
    iget-object v1, v1, Lk/a/e/h;->c:Lk/a/f/h;

    .line 158
    iget-object v1, v1, Lk/a/f/h;->b:Ljava/lang/String;

    .line 159
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 160
    invoke-virtual {v2, v0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    .line 161
    :cond_29
    invoke-virtual {v2, v4}, Lk/a/f/b;->F(Ljava/lang/String;)Lk/a/e/h;

    goto :goto_13

    .line 162
    :cond_2a
    sget-object v1, Lk/a/f/c$x;->m:[Ljava/lang/String;

    invoke-static {v4, v1}, Lk/a/d/a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const-string v1, "name"

    .line 163
    invoke-virtual {v2, v1}, Lk/a/f/b;->p(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 164
    invoke-virtual {v2, v4}, Lk/a/f/b;->p(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 165
    invoke-virtual {v2, v0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    goto/16 :goto_5

    :cond_2b
    const/4 v1, 0x0

    .line 166
    invoke-virtual {v2, v1}, Lk/a/f/b;->l(Ljava/lang/String;)V

    .line 167
    invoke-virtual/range {p2 .. p2}, Lk/a/f/m;->a()Lk/a/e/h;

    move-result-object v1

    .line 168
    iget-object v1, v1, Lk/a/e/h;->c:Lk/a/f/h;

    .line 169
    iget-object v1, v1, Lk/a/f/h;->b:Ljava/lang/String;

    .line 170
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 171
    invoke-virtual {v2, v0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    .line 172
    :cond_2c
    invoke-virtual {v2, v4}, Lk/a/f/b;->F(Ljava/lang/String;)Lk/a/e/h;

    .line 173
    invoke-virtual/range {p2 .. p2}, Lk/a/f/b;->g()V

    :cond_2d
    :goto_13
    const/4 v4, 0x1

    goto :goto_14

    .line 174
    :cond_2e
    invoke-virtual/range {p0 .. p2}, Lk/a/f/c$u;->d(Lk/a/f/i;Lk/a/f/b;)Z

    move-result v4

    :goto_14
    return v4

    :cond_2f
    const/4 v4, 0x3

    .line 175
    move-object v3, v1

    check-cast v3, Lk/a/f/i$h;

    .line 176
    iget-object v4, v3, Lk/a/f/i$i;->c:Ljava/lang/String;

    .line 177
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v26

    const-string v1, "isindex"

    move-object/from16 v27, v3

    const-string v3, "input"

    const-string v0, "svg"

    const-string v2, "nobr"

    move-object/from16 v28, v15

    const-string v15, "hr"

    move-object/from16 v29, v14

    const-string v14, "option"

    move-object/from16 v30, v13

    const-string v13, "button"

    move-object/from16 v31, v12

    const-string v12, "a"

    sparse-switch v26, :sswitch_data_1

    packed-switch v26, :pswitch_data_2

    goto/16 :goto_16

    :sswitch_a
    const-string v5, "noembed"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    const/16 v16, 0x12

    goto/16 :goto_15

    :sswitch_b
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    goto/16 :goto_15

    :sswitch_c
    const-string v5, "plaintext"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    const/16 v16, 0x7

    goto/16 :goto_15

    :sswitch_d
    const-string v5, "listing"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    const/16 v16, 0x1d

    goto/16 :goto_15

    :sswitch_e
    const-string v5, "table"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    const/16 v16, 0xa

    goto/16 :goto_15

    :sswitch_f
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    goto/16 :goto_17

    :sswitch_10
    const-string v5, "image"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    const/16 v19, 0xd

    goto/16 :goto_17

    :sswitch_11
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    const/16 v19, 0x1

    goto/16 :goto_17

    :sswitch_12
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    const/16 v19, 0x9

    goto/16 :goto_17

    :sswitch_13
    const-string v5, "math"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    const/16 v16, 0x14

    goto/16 :goto_15

    :sswitch_14
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    const/16 v19, 0x3

    goto/16 :goto_17

    :sswitch_15
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    const/16 v19, 0x6

    goto/16 :goto_17

    :sswitch_16
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    const/16 v19, 0x4

    goto/16 :goto_17

    :sswitch_17
    const-string v5, "xmp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    const/16 v16, 0x10

    goto/16 :goto_15

    :sswitch_18
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    const/16 v16, 0x15

    goto/16 :goto_15

    :sswitch_19
    const-string v5, "pre"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    const/16 v16, 0x1c

    goto/16 :goto_15

    :sswitch_1a
    const-string v5, "rt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    const/16 v16, 0x23

    goto/16 :goto_15

    :sswitch_1b
    const-string v5, "rp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    const/16 v16, 0x22

    goto/16 :goto_15

    :sswitch_1c
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    const/16 v19, 0x2

    goto/16 :goto_17

    :sswitch_1d
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    const/16 v19, 0xc

    goto/16 :goto_17

    :sswitch_1e
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    const/16 v16, 0x1f

    goto :goto_15

    :sswitch_1f
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    const/16 v16, 0x1e

    goto :goto_15

    :sswitch_20
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    const/16 v19, 0x0

    goto/16 :goto_17

    :sswitch_21
    const-string v5, "optgroup"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    const/16 v16, 0x20

    goto :goto_15

    :sswitch_22
    const-string v5, "select"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    const/16 v16, 0x13

    goto :goto_15

    :sswitch_23
    const-string v5, "textarea"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    const/16 v19, 0xf

    goto/16 :goto_17

    :sswitch_24
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    const/16 v16, 0x21

    goto :goto_15

    :sswitch_25
    const-string v5, "iframe"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    const/16 v16, 0x11

    :goto_15
    move/from16 v19, v16

    goto :goto_17

    :sswitch_26
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    const/16 v19, 0x8

    goto :goto_17

    :sswitch_27
    const-string v5, "frameset"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    const/16 v19, 0x5

    goto :goto_17

    :pswitch_f
    const-string v5, "h6"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    const/16 v19, 0x1b

    goto :goto_17

    :pswitch_10
    const-string v5, "h5"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    const/16 v19, 0x1a

    goto :goto_17

    :pswitch_11
    move-object/from16 v5, v31

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    const/16 v19, 0x19

    goto :goto_17

    :pswitch_12
    move-object/from16 v5, v30

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    const/16 v19, 0x18

    goto :goto_17

    :pswitch_13
    move-object/from16 v5, v29

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    const/16 v19, 0x17

    goto :goto_17

    :pswitch_14
    move-object/from16 v5, v28

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    const/16 v19, 0x16

    goto :goto_17

    :cond_30
    :goto_16
    const/16 v19, -0x1

    :goto_17
    const-string v5, "p"

    packed-switch v19, :pswitch_data_3

    move-object/from16 v6, p0

    move-object/from16 v2, p2

    move-object/from16 v0, v27

    const/4 v7, 0x1

    .line 178
    sget-object v1, Lk/a/f/c$x;->n:[Ljava/lang/String;

    invoke-static {v4, v1}, Lk/a/d/a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 179
    invoke-virtual/range {p2 .. p2}, Lk/a/f/b;->H()V

    .line 180
    invoke-virtual {v2, v0}, Lk/a/f/b;->w(Lk/a/f/i$h;)Lk/a/e/h;

    const/4 v0, 0x0

    goto/16 :goto_26

    :pswitch_15
    const-string v0, "ruby"

    move-object/from16 v2, p2

    .line 181
    invoke-virtual {v2, v0}, Lk/a/f/b;->p(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    const/4 v1, 0x0

    .line 182
    invoke-virtual {v2, v1}, Lk/a/f/b;->l(Ljava/lang/String;)V

    .line 183
    invoke-virtual/range {p2 .. p2}, Lk/a/f/m;->a()Lk/a/e/h;

    move-result-object v1

    .line 184
    iget-object v1, v1, Lk/a/e/h;->c:Lk/a/f/h;

    .line 185
    iget-object v1, v1, Lk/a/f/h;->b:Ljava/lang/String;

    .line 186
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    move-object/from16 v6, p0

    if-nez v1, :cond_32

    .line 187
    invoke-virtual {v2, v6}, Lk/a/f/b;->k(Lk/a/f/c;)V

    .line 188
    iget-object v1, v2, Lk/a/f/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, -0x1

    add-int/2addr v1, v3

    :goto_18
    if-ltz v1, :cond_32

    .line 189
    iget-object v3, v2, Lk/a/f/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk/a/e/h;

    .line 190
    iget-object v3, v3, Lk/a/e/h;->c:Lk/a/f/h;

    .line 191
    iget-object v3, v3, Lk/a/f/h;->b:Ljava/lang/String;

    .line 192
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    goto :goto_19

    .line 193
    :cond_31
    iget-object v3, v2, Lk/a/f/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_18

    :cond_32
    :goto_19
    move-object/from16 v0, v27

    .line 194
    invoke-virtual {v2, v0}, Lk/a/f/b;->t(Lk/a/f/i$h;)Lk/a/e/h;

    goto/16 :goto_23

    :cond_33
    move-object/from16 v6, p0

    goto/16 :goto_23

    :pswitch_16
    move-object/from16 v6, p0

    move-object/from16 v2, p2

    move-object/from16 v0, v27

    .line 195
    invoke-virtual/range {p2 .. p2}, Lk/a/f/m;->a()Lk/a/e/h;

    move-result-object v1

    .line 196
    iget-object v1, v1, Lk/a/e/h;->c:Lk/a/f/h;

    .line 197
    iget-object v1, v1, Lk/a/f/h;->b:Ljava/lang/String;

    .line 198
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 199
    invoke-virtual {v2, v14}, Lk/a/f/m;->d(Ljava/lang/String;)Z

    .line 200
    :cond_34
    invoke-virtual/range {p2 .. p2}, Lk/a/f/b;->H()V

    .line 201
    invoke-virtual {v2, v0}, Lk/a/f/b;->t(Lk/a/f/i$h;)Lk/a/e/h;

    goto/16 :goto_23

    :pswitch_17
    move-object/from16 v6, p0

    move-object/from16 v2, p2

    move-object/from16 v0, v27

    const/4 v1, 0x0

    .line 202
    iput-boolean v1, v2, Lk/a/f/b;->t:Z

    .line 203
    iget-object v1, v2, Lk/a/f/m;->e:Ljava/util/ArrayList;

    .line 204
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_1a
    if-lez v3, :cond_37

    .line 205
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lk/a/e/h;

    .line 206
    iget-object v7, v4, Lk/a/e/h;->c:Lk/a/f/h;

    .line 207
    iget-object v7, v7, Lk/a/f/h;->b:Ljava/lang/String;

    .line 208
    sget-object v8, Lk/a/f/c$x;->k:[Ljava/lang/String;

    invoke-static {v7, v8}, Lk/a/d/a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_35

    .line 209
    iget-object v1, v4, Lk/a/e/h;->c:Lk/a/f/h;

    .line 210
    iget-object v1, v1, Lk/a/f/h;->b:Ljava/lang/String;

    .line 211
    invoke-virtual {v2, v1}, Lk/a/f/m;->d(Ljava/lang/String;)Z

    goto :goto_1b

    .line 212
    :cond_35
    invoke-virtual {v2, v4}, Lk/a/f/b;->C(Lk/a/e/h;)Z

    move-result v7

    if-eqz v7, :cond_36

    .line 213
    iget-object v4, v4, Lk/a/e/h;->c:Lk/a/f/h;

    .line 214
    iget-object v4, v4, Lk/a/f/h;->b:Ljava/lang/String;

    .line 215
    sget-object v7, Lk/a/f/c$x;->j:[Ljava/lang/String;

    invoke-static {v4, v7}, Lk/a/d/a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_36

    goto :goto_1b

    :cond_36
    add-int/lit8 v3, v3, -0x1

    goto :goto_1a

    .line 216
    :cond_37
    :goto_1b
    invoke-virtual {v2, v5}, Lk/a/f/b;->o(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 217
    invoke-virtual {v2, v5}, Lk/a/f/m;->d(Ljava/lang/String;)Z

    .line 218
    :cond_38
    invoke-virtual {v2, v0}, Lk/a/f/b;->t(Lk/a/f/i$h;)Lk/a/e/h;

    goto/16 :goto_23

    :pswitch_18
    move-object/from16 v6, p0

    move-object/from16 v2, p2

    move-object/from16 v0, v27

    .line 219
    invoke-virtual {v2, v5}, Lk/a/f/b;->o(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 220
    invoke-virtual {v2, v5}, Lk/a/f/m;->d(Ljava/lang/String;)Z

    .line 221
    :cond_39
    invoke-virtual {v2, v0}, Lk/a/f/b;->t(Lk/a/f/i$h;)Lk/a/e/h;

    .line 222
    iget-object v0, v2, Lk/a/f/m;->b:Lk/a/f/a;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Lk/a/f/a;->n(Ljava/lang/String;)Z

    const/4 v0, 0x0

    .line 223
    iput-boolean v0, v2, Lk/a/f/b;->t:Z

    goto/16 :goto_23

    :pswitch_19
    move-object/from16 v6, p0

    move-object/from16 v2, p2

    move-object/from16 v0, v27

    .line 224
    invoke-virtual {v2, v5}, Lk/a/f/b;->o(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 225
    invoke-virtual {v2, v5}, Lk/a/f/m;->d(Ljava/lang/String;)Z

    .line 226
    :cond_3a
    invoke-virtual/range {p2 .. p2}, Lk/a/f/m;->a()Lk/a/e/h;

    move-result-object v1

    .line 227
    iget-object v1, v1, Lk/a/e/h;->c:Lk/a/f/h;

    .line 228
    iget-object v1, v1, Lk/a/f/h;->b:Ljava/lang/String;

    .line 229
    sget-object v3, Lk/a/f/c$x;->i:[Ljava/lang/String;

    invoke-static {v1, v3}, Lk/a/d/a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 230
    invoke-virtual {v2, v6}, Lk/a/f/b;->k(Lk/a/f/c;)V

    .line 231
    invoke-virtual/range {p2 .. p2}, Lk/a/f/b;->E()Lk/a/e/h;

    .line 232
    :cond_3b
    invoke-virtual {v2, v0}, Lk/a/f/b;->t(Lk/a/f/i$h;)Lk/a/e/h;

    goto/16 :goto_23

    :pswitch_1a
    move-object/from16 v6, p0

    move-object/from16 v2, p2

    move-object/from16 v0, v27

    .line 233
    invoke-virtual/range {p2 .. p2}, Lk/a/f/b;->H()V

    .line 234
    invoke-virtual {v2, v0}, Lk/a/f/b;->t(Lk/a/f/i$h;)Lk/a/e/h;

    goto/16 :goto_23

    :pswitch_1b
    move-object/from16 v6, p0

    move-object/from16 v2, p2

    move-object/from16 v0, v27

    .line 235
    invoke-virtual/range {p2 .. p2}, Lk/a/f/b;->H()V

    .line 236
    invoke-virtual {v2, v0}, Lk/a/f/b;->t(Lk/a/f/i$h;)Lk/a/e/h;

    goto/16 :goto_23

    :pswitch_1c
    move-object/from16 v6, p0

    move-object/from16 v2, p2

    move-object/from16 v0, v27

    .line 237
    invoke-virtual/range {p2 .. p2}, Lk/a/f/b;->H()V

    .line 238
    invoke-virtual {v2, v0}, Lk/a/f/b;->t(Lk/a/f/i$h;)Lk/a/e/h;

    const/4 v0, 0x0

    .line 239
    iput-boolean v0, v2, Lk/a/f/b;->t:Z

    .line 240
    iget-object v0, v2, Lk/a/f/b;->k:Lk/a/f/c;

    .line 241
    sget-object v1, Lk/a/f/c;->i:Lk/a/f/c;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    sget-object v1, Lk/a/f/c;->k:Lk/a/f/c;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    sget-object v1, Lk/a/f/c;->m:Lk/a/f/c;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    sget-object v1, Lk/a/f/c;->n:Lk/a/f/c;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    sget-object v1, Lk/a/f/c;->o:Lk/a/f/c;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    goto :goto_1c

    .line 242
    :cond_3c
    sget-object v0, Lk/a/f/c;->p:Lk/a/f/c;

    .line 243
    iput-object v0, v2, Lk/a/f/b;->k:Lk/a/f/c;

    goto/16 :goto_23

    .line 244
    :cond_3d
    :goto_1c
    sget-object v0, Lk/a/f/c;->q:Lk/a/f/c;

    .line 245
    iput-object v0, v2, Lk/a/f/b;->k:Lk/a/f/c;

    goto/16 :goto_23

    :pswitch_1d
    move-object/from16 v6, p0

    move-object/from16 v2, p2

    move-object/from16 v0, v27

    .line 246
    invoke-static {v0, v2}, Lk/a/f/c;->b(Lk/a/f/i$h;Lk/a/f/b;)V

    goto/16 :goto_23

    :pswitch_1e
    move-object/from16 v6, p0

    move-object/from16 v2, p2

    move-object/from16 v0, v27

    const/4 v1, 0x0

    .line 247
    iput-boolean v1, v2, Lk/a/f/b;->t:Z

    .line 248
    invoke-static {v0, v2}, Lk/a/f/c;->b(Lk/a/f/i$h;Lk/a/f/b;)V

    goto/16 :goto_23

    :pswitch_1f
    move-object/from16 v6, p0

    move-object/from16 v2, p2

    move-object/from16 v0, v27

    const/4 v1, 0x0

    .line 249
    invoke-virtual {v2, v5}, Lk/a/f/b;->o(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 250
    invoke-virtual {v2, v5}, Lk/a/f/m;->d(Ljava/lang/String;)Z

    .line 251
    :cond_3e
    invoke-virtual/range {p2 .. p2}, Lk/a/f/b;->H()V

    .line 252
    iput-boolean v1, v2, Lk/a/f/b;->t:Z

    .line 253
    invoke-static {v0, v2}, Lk/a/f/c;->b(Lk/a/f/i$h;Lk/a/f/b;)V

    goto/16 :goto_23

    :pswitch_20
    move-object/from16 v6, p0

    move-object/from16 v2, p2

    move-object/from16 v0, v27

    const/4 v1, 0x0

    .line 254
    invoke-virtual {v2, v0}, Lk/a/f/b;->t(Lk/a/f/i$h;)Lk/a/e/h;

    .line 255
    iget-boolean v0, v0, Lk/a/f/i$i;->i:Z

    if-nez v0, :cond_58

    .line 256
    iget-object v0, v2, Lk/a/f/m;->c:Lk/a/f/k;

    sget-object v3, Lk/a/f/l;->c:Lk/a/f/l;

    .line 257
    iput-object v3, v0, Lk/a/f/k;->c:Lk/a/f/l;

    .line 258
    iget-object v0, v2, Lk/a/f/b;->k:Lk/a/f/c;

    iput-object v0, v2, Lk/a/f/b;->l:Lk/a/f/c;

    .line 259
    iput-boolean v1, v2, Lk/a/f/b;->t:Z

    .line 260
    sget-object v0, Lk/a/f/c;->h:Lk/a/f/c;

    .line 261
    iput-object v0, v2, Lk/a/f/b;->k:Lk/a/f/c;

    goto/16 :goto_23

    :pswitch_21
    move-object/from16 v6, p0

    move-object/from16 v2, p2

    move-object/from16 v0, v27

    .line 262
    invoke-virtual {v2, v6}, Lk/a/f/b;->k(Lk/a/f/c;)V

    .line 263
    iget-object v4, v2, Lk/a/f/b;->o:Lk/a/e/j;

    if-eqz v4, :cond_3f

    goto/16 :goto_27

    .line 264
    :cond_3f
    invoke-virtual {v2, v11}, Lk/a/f/m;->e(Ljava/lang/String;)Z

    .line 265
    iget-object v4, v0, Lk/a/f/i$i;->j:Lk/a/e/b;

    const-string v5, "action"

    invoke-virtual {v4, v5}, Lk/a/e/b;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 266
    iget-object v4, v2, Lk/a/f/b;->o:Lk/a/e/j;

    .line 267
    iget-object v7, v0, Lk/a/f/i$i;->j:Lk/a/e/b;

    invoke-virtual {v7, v5}, Lk/a/e/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lk/a/e/h;->B(Ljava/lang/String;Ljava/lang/String;)Lk/a/e/h;

    .line 268
    :cond_40
    invoke-virtual {v2, v15}, Lk/a/f/m;->e(Ljava/lang/String;)Z

    const-string v4, "label"

    .line 269
    invoke-virtual {v2, v4}, Lk/a/f/m;->e(Ljava/lang/String;)Z

    .line 270
    iget-object v5, v0, Lk/a/f/i$i;->j:Lk/a/e/b;

    const-string v7, "prompt"

    invoke-virtual {v5, v7}, Lk/a/e/b;->i(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 271
    iget-object v5, v0, Lk/a/f/i$i;->j:Lk/a/e/b;

    invoke-virtual {v5, v7}, Lk/a/e/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1d

    :cond_41
    const-string v5, "This is a searchable index. Enter search keywords: "

    .line 272
    :goto_1d
    new-instance v7, Lk/a/f/i$c;

    invoke-direct {v7}, Lk/a/f/i$c;-><init>()V

    .line 273
    iput-object v5, v7, Lk/a/f/i$c;->b:Ljava/lang/String;

    .line 274
    iput-object v7, v2, Lk/a/f/m;->g:Lk/a/f/i;

    .line 275
    iget-object v5, v2, Lk/a/f/b;->k:Lk/a/f/c;

    invoke-virtual {v5, v7, v2}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    .line 276
    new-instance v5, Lk/a/e/b;

    invoke-direct {v5}, Lk/a/e/b;-><init>()V

    .line 277
    iget-object v0, v0, Lk/a/f/i$i;->j:Lk/a/e/b;

    if-eqz v0, :cond_45

    .line 278
    new-instance v7, Lk/a/e/b$a;

    invoke-direct {v7, v0}, Lk/a/e/b$a;-><init>(Lk/a/e/b;)V

    .line 279
    :cond_42
    :goto_1e
    invoke-virtual {v7}, Lk/a/e/b$a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-virtual {v7}, Lk/a/e/b$a;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/a/e/a;

    .line 280
    iget-object v8, v0, Lk/a/e/a;->a:Ljava/lang/String;

    .line 281
    sget-object v9, Lk/a/f/c$x;->p:[Ljava/lang/String;

    invoke-static {v8, v9}, Lk/a/d/a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_42

    .line 282
    invoke-virtual {v5, v0}, Lk/a/e/b;->o(Lk/a/e/a;)Lk/a/e/b;

    goto :goto_1e

    :cond_43
    const-string v0, "name"

    .line 283
    invoke-virtual {v5, v0, v1}, Lk/a/e/b;->n(Ljava/lang/String;Ljava/lang/String;)Lk/a/e/b;

    .line 284
    iget-object v0, v2, Lk/a/f/m;->i:Lk/a/f/i$h;

    .line 285
    iget-object v1, v2, Lk/a/f/m;->g:Lk/a/f/i;

    if-ne v1, v0, :cond_44

    .line 286
    new-instance v0, Lk/a/f/i$h;

    invoke-direct {v0}, Lk/a/f/i$h;-><init>()V

    .line 287
    iput-object v3, v0, Lk/a/f/i$i;->b:Ljava/lang/String;

    .line 288
    iput-object v5, v0, Lk/a/f/i$i;->j:Lk/a/e/b;

    .line 289
    invoke-static {v3}, Lj/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk/a/f/i$i;->c:Ljava/lang/String;

    .line 290
    iput-object v0, v2, Lk/a/f/m;->g:Lk/a/f/i;

    .line 291
    iget-object v1, v2, Lk/a/f/b;->k:Lk/a/f/c;

    invoke-virtual {v1, v0, v2}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    goto :goto_1f

    .line 292
    :cond_44
    invoke-virtual {v0}, Lk/a/f/i$h;->s()Lk/a/f/i$i;

    .line 293
    iput-object v3, v0, Lk/a/f/i$i;->b:Ljava/lang/String;

    .line 294
    iput-object v5, v0, Lk/a/f/i$i;->j:Lk/a/e/b;

    .line 295
    invoke-static {v3}, Lj/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk/a/f/i$i;->c:Ljava/lang/String;

    .line 296
    iput-object v0, v2, Lk/a/f/m;->g:Lk/a/f/i;

    .line 297
    iget-object v1, v2, Lk/a/f/b;->k:Lk/a/f/c;

    invoke-virtual {v1, v0, v2}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    .line 298
    :goto_1f
    invoke-virtual {v2, v4}, Lk/a/f/m;->d(Ljava/lang/String;)Z

    .line 299
    invoke-virtual {v2, v15}, Lk/a/f/m;->e(Ljava/lang/String;)Z

    .line 300
    invoke-virtual {v2, v11}, Lk/a/f/m;->d(Ljava/lang/String;)Z

    goto/16 :goto_23

    :cond_45
    const/4 v0, 0x0

    .line 301
    throw v0

    :pswitch_22
    move-object/from16 v6, p0

    move-object/from16 v2, p2

    move-object v1, v0

    move-object/from16 v0, v27

    .line 302
    invoke-virtual {v2, v1}, Lk/a/f/b;->n(Ljava/lang/String;)Lk/a/e/h;

    move-result-object v1

    if-nez v1, :cond_46

    const-string v1, "img"

    .line 303
    iput-object v1, v0, Lk/a/f/i$i;->b:Ljava/lang/String;

    .line 304
    invoke-static {v1}, Lj/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk/a/f/i$i;->c:Ljava/lang/String;

    .line 305
    iput-object v0, v2, Lk/a/f/m;->g:Lk/a/f/i;

    .line 306
    iget-object v1, v2, Lk/a/f/b;->k:Lk/a/f/c;

    invoke-virtual {v1, v0, v2}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    move-result v4

    goto/16 :goto_29

    .line 307
    :cond_46
    invoke-virtual {v2, v0}, Lk/a/f/b;->t(Lk/a/f/i$h;)Lk/a/e/h;

    goto/16 :goto_23

    :pswitch_23
    move-object/from16 v6, p0

    move-object/from16 v2, p2

    move-object/from16 v0, v27

    .line 308
    invoke-virtual {v2, v5}, Lk/a/f/b;->o(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 309
    invoke-virtual {v2, v5}, Lk/a/f/m;->d(Ljava/lang/String;)Z

    .line 310
    :cond_47
    invoke-virtual {v2, v0}, Lk/a/f/b;->w(Lk/a/f/i$h;)Lk/a/e/h;

    const/4 v1, 0x0

    .line 311
    iput-boolean v1, v2, Lk/a/f/b;->t:Z

    goto/16 :goto_23

    :pswitch_24
    move-object/from16 v6, p0

    move-object/from16 v2, p2

    move-object/from16 v0, v27

    const/4 v1, 0x0

    .line 312
    invoke-virtual/range {p2 .. p2}, Lk/a/f/b;->H()V

    .line 313
    invoke-virtual {v2, v0}, Lk/a/f/b;->w(Lk/a/f/i$h;)Lk/a/e/h;

    move-result-object v0

    const-string v3, "type"

    .line 314
    invoke-virtual {v0, v3}, Lk/a/e/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "hidden"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_58

    .line 315
    iput-boolean v1, v2, Lk/a/f/b;->t:Z

    goto/16 :goto_23

    :pswitch_25
    move-object/from16 v6, p0

    move-object/from16 v2, p2

    move-object/from16 v0, v27

    .line 316
    iget-object v1, v2, Lk/a/f/m;->d:Lk/a/e/f;

    .line 317
    iget-object v1, v1, Lk/a/e/f;->k:Lk/a/e/f$b;

    .line 318
    sget-object v3, Lk/a/e/f$b;->b:Lk/a/e/f$b;

    if-eq v1, v3, :cond_48

    invoke-virtual {v2, v5}, Lk/a/f/b;->o(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 319
    invoke-virtual {v2, v5}, Lk/a/f/m;->d(Ljava/lang/String;)Z

    .line 320
    :cond_48
    invoke-virtual {v2, v0}, Lk/a/f/b;->t(Lk/a/f/i$h;)Lk/a/e/h;

    const/4 v0, 0x0

    .line 321
    iput-boolean v0, v2, Lk/a/f/b;->t:Z

    .line 322
    sget-object v0, Lk/a/f/c;->i:Lk/a/f/c;

    .line 323
    iput-object v0, v2, Lk/a/f/b;->k:Lk/a/f/c;

    goto/16 :goto_23

    :pswitch_26
    move-object/from16 v6, p0

    move-object v1, v2

    move-object/from16 v0, v27

    move-object/from16 v2, p2

    .line 324
    invoke-virtual/range {p2 .. p2}, Lk/a/f/b;->H()V

    .line 325
    invoke-virtual {v2, v1}, Lk/a/f/b;->p(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 326
    invoke-virtual {v2, v6}, Lk/a/f/b;->k(Lk/a/f/c;)V

    .line 327
    invoke-virtual {v2, v1}, Lk/a/f/m;->d(Ljava/lang/String;)Z

    .line 328
    invoke-virtual/range {p2 .. p2}, Lk/a/f/b;->H()V

    .line 329
    :cond_49
    invoke-virtual {v2, v0}, Lk/a/f/b;->t(Lk/a/f/i$h;)Lk/a/e/h;

    move-result-object v0

    .line 330
    invoke-virtual {v2, v0}, Lk/a/f/b;->G(Lk/a/e/h;)V

    goto/16 :goto_23

    :pswitch_27
    move-object/from16 v6, p0

    move-object/from16 v2, p2

    move-object/from16 v0, v27

    .line 331
    invoke-virtual {v2, v13}, Lk/a/f/b;->o(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 332
    invoke-virtual {v2, v6}, Lk/a/f/b;->k(Lk/a/f/c;)V

    .line 333
    invoke-virtual {v2, v13}, Lk/a/f/m;->d(Ljava/lang/String;)Z

    .line 334
    iput-object v0, v2, Lk/a/f/m;->g:Lk/a/f/i;

    .line 335
    iget-object v1, v2, Lk/a/f/b;->k:Lk/a/f/c;

    invoke-virtual {v1, v0, v2}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    goto/16 :goto_23

    .line 336
    :cond_4a
    invoke-virtual/range {p2 .. p2}, Lk/a/f/b;->H()V

    .line 337
    invoke-virtual {v2, v0}, Lk/a/f/b;->t(Lk/a/f/i$h;)Lk/a/e/h;

    const/4 v0, 0x0

    .line 338
    iput-boolean v0, v2, Lk/a/f/b;->t:Z

    goto/16 :goto_23

    :pswitch_28
    move-object/from16 v6, p0

    move-object/from16 v2, p2

    move-object/from16 v0, v27

    .line 339
    invoke-virtual {v2, v5}, Lk/a/f/b;->o(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 340
    invoke-virtual {v2, v5}, Lk/a/f/m;->d(Ljava/lang/String;)Z

    .line 341
    :cond_4b
    invoke-virtual {v2, v0}, Lk/a/f/b;->t(Lk/a/f/i$h;)Lk/a/e/h;

    .line 342
    iget-object v0, v2, Lk/a/f/m;->c:Lk/a/f/k;

    sget-object v1, Lk/a/f/l;->g:Lk/a/f/l;

    .line 343
    iput-object v1, v0, Lk/a/f/k;->c:Lk/a/f/l;

    goto/16 :goto_23

    :pswitch_29
    move-object/from16 v6, p0

    move-object/from16 v2, p2

    move-object/from16 v0, v27

    .line 344
    iget-object v1, v2, Lk/a/f/b;->o:Lk/a/e/j;

    if-eqz v1, :cond_4c

    .line 345
    invoke-virtual {v2, v6}, Lk/a/f/b;->k(Lk/a/f/c;)V

    goto/16 :goto_27

    .line 346
    :cond_4c
    invoke-virtual {v2, v5}, Lk/a/f/b;->o(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 347
    invoke-virtual {v2, v5}, Lk/a/f/m;->d(Ljava/lang/String;)Z

    :cond_4d
    const/4 v1, 0x1

    .line 348
    invoke-virtual {v2, v0, v1}, Lk/a/f/b;->x(Lk/a/f/i$h;Z)Lk/a/e/j;

    goto/16 :goto_23

    :pswitch_2a
    move-object/from16 v6, p0

    move-object/from16 v2, p2

    move-object/from16 v0, v27

    const/4 v1, 0x1

    .line 349
    invoke-virtual {v2, v6}, Lk/a/f/b;->k(Lk/a/f/c;)V

    .line 350
    iget-object v3, v2, Lk/a/f/m;->e:Ljava/util/ArrayList;

    .line 351
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v4, v1, :cond_66

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_4e

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lk/a/e/h;

    .line 352
    iget-object v1, v4, Lk/a/e/h;->c:Lk/a/f/h;

    .line 353
    iget-object v1, v1, Lk/a/f/h;->b:Ljava/lang/String;

    .line 354
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    goto/16 :goto_27

    .line 355
    :cond_4e
    iget-boolean v1, v2, Lk/a/f/b;->t:Z

    if-nez v1, :cond_4f

    goto/16 :goto_27

    :cond_4f
    const/4 v1, 0x1

    .line 356
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lk/a/e/h;

    .line 357
    iget-object v5, v4, Lk/a/e/l;->a:Lk/a/e/l;

    check-cast v5, Lk/a/e/h;

    if-eqz v5, :cond_50

    .line 358
    invoke-virtual {v4}, Lk/a/e/l;->w()V

    .line 359
    :cond_50
    :goto_20
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v1, :cond_51

    .line 360
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_20

    .line 361
    :cond_51
    invoke-virtual {v2, v0}, Lk/a/f/b;->t(Lk/a/f/i$h;)Lk/a/e/h;

    .line 362
    sget-object v0, Lk/a/f/c;->s:Lk/a/f/c;

    .line 363
    iput-object v0, v2, Lk/a/f/b;->k:Lk/a/f/c;

    goto/16 :goto_23

    :pswitch_2b
    move-object/from16 v6, p0

    move-object/from16 v2, p2

    move-object/from16 v0, v27

    const/4 v1, 0x1

    .line 364
    invoke-virtual {v2, v6}, Lk/a/f/b;->k(Lk/a/f/c;)V

    .line 365
    iget-object v3, v2, Lk/a/f/m;->e:Ljava/util/ArrayList;

    .line 366
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v4, v1, :cond_66

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_52

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lk/a/e/h;

    .line 367
    iget-object v4, v4, Lk/a/e/h;->c:Lk/a/f/h;

    .line 368
    iget-object v4, v4, Lk/a/f/h;->b:Ljava/lang/String;

    .line 369
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_52

    goto/16 :goto_27

    :cond_52
    const/4 v4, 0x0

    .line 370
    iput-boolean v4, v2, Lk/a/f/b;->t:Z

    .line 371
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk/a/e/h;

    .line 372
    iget-object v1, v0, Lk/a/f/i$i;->j:Lk/a/e/b;

    if-nez v1, :cond_53

    .line 373
    new-instance v1, Lk/a/e/b;

    invoke-direct {v1}, Lk/a/e/b;-><init>()V

    iput-object v1, v0, Lk/a/f/i$i;->j:Lk/a/e/b;

    .line 374
    :cond_53
    iget-object v0, v0, Lk/a/f/i$i;->j:Lk/a/e/b;

    if-eqz v0, :cond_55

    .line 375
    new-instance v1, Lk/a/e/b$a;

    invoke-direct {v1, v0}, Lk/a/e/b$a;-><init>(Lk/a/e/b;)V

    .line 376
    :cond_54
    :goto_21
    invoke-virtual {v1}, Lk/a/e/b$a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-virtual {v1}, Lk/a/e/b$a;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/a/e/a;

    .line 377
    iget-object v3, v0, Lk/a/e/a;->a:Ljava/lang/String;

    .line 378
    invoke-virtual {v2, v3}, Lk/a/e/l;->m(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_54

    .line 379
    invoke-virtual {v2}, Lk/a/e/h;->d()Lk/a/e/b;

    move-result-object v3

    invoke-virtual {v3, v0}, Lk/a/e/b;->o(Lk/a/e/a;)Lk/a/e/b;

    goto :goto_21

    :cond_55
    const/4 v0, 0x0

    .line 380
    throw v0

    :pswitch_2c
    move-object/from16 v6, p0

    move-object/from16 v2, p2

    move-object/from16 v0, v27

    .line 381
    invoke-virtual {v2, v6}, Lk/a/f/b;->k(Lk/a/f/c;)V

    .line 382
    iget-object v1, v2, Lk/a/f/m;->e:Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 383
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/e/h;

    .line 384
    iget-object v2, v0, Lk/a/f/i$i;->j:Lk/a/e/b;

    if-nez v2, :cond_56

    .line 385
    new-instance v2, Lk/a/e/b;

    invoke-direct {v2}, Lk/a/e/b;-><init>()V

    iput-object v2, v0, Lk/a/f/i$i;->j:Lk/a/e/b;

    .line 386
    :cond_56
    iget-object v0, v0, Lk/a/f/i$i;->j:Lk/a/e/b;

    if-eqz v0, :cond_59

    .line 387
    new-instance v2, Lk/a/e/b$a;

    invoke-direct {v2, v0}, Lk/a/e/b$a;-><init>(Lk/a/e/b;)V

    .line 388
    :cond_57
    :goto_22
    invoke-virtual {v2}, Lk/a/e/b$a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-virtual {v2}, Lk/a/e/b$a;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/a/e/a;

    .line 389
    iget-object v3, v0, Lk/a/e/a;->a:Ljava/lang/String;

    .line 390
    invoke-virtual {v1, v3}, Lk/a/e/l;->m(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_57

    .line 391
    invoke-virtual {v1}, Lk/a/e/h;->d()Lk/a/e/b;

    move-result-object v3

    invoke-virtual {v3, v0}, Lk/a/e/b;->o(Lk/a/e/a;)Lk/a/e/b;

    goto :goto_22

    :cond_58
    :goto_23
    const/4 v7, 0x1

    goto/16 :goto_28

    :cond_59
    const/4 v0, 0x0

    .line 392
    throw v0

    :pswitch_2d
    move-object/from16 v6, p0

    move-object/from16 v2, p2

    move-object/from16 v0, v27

    const/4 v1, 0x0

    .line 393
    iput-boolean v1, v2, Lk/a/f/b;->t:Z

    .line 394
    iget-object v1, v2, Lk/a/f/m;->e:Ljava/util/ArrayList;

    .line 395
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    :goto_24
    if-lez v3, :cond_5c

    .line 396
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lk/a/e/h;

    .line 397
    iget-object v8, v4, Lk/a/e/h;->c:Lk/a/f/h;

    .line 398
    iget-object v8, v8, Lk/a/f/h;->b:Ljava/lang/String;

    .line 399
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5a

    .line 400
    invoke-virtual {v2, v9}, Lk/a/f/m;->d(Ljava/lang/String;)Z

    goto :goto_25

    .line 401
    :cond_5a
    invoke-virtual {v2, v4}, Lk/a/f/b;->C(Lk/a/e/h;)Z

    move-result v8

    if-eqz v8, :cond_5b

    .line 402
    iget-object v4, v4, Lk/a/e/h;->c:Lk/a/f/h;

    .line 403
    iget-object v4, v4, Lk/a/f/h;->b:Ljava/lang/String;

    .line 404
    sget-object v8, Lk/a/f/c$x;->j:[Ljava/lang/String;

    invoke-static {v4, v8}, Lk/a/d/a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5b

    goto :goto_25

    :cond_5b
    add-int/lit8 v3, v3, -0x1

    goto :goto_24

    .line 405
    :cond_5c
    :goto_25
    invoke-virtual {v2, v5}, Lk/a/f/b;->o(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 406
    invoke-virtual {v2, v5}, Lk/a/f/m;->d(Ljava/lang/String;)Z

    .line 407
    :cond_5d
    invoke-virtual {v2, v0}, Lk/a/f/b;->t(Lk/a/f/i$h;)Lk/a/e/h;

    goto/16 :goto_28

    :pswitch_2e
    move-object/from16 v6, p0

    move-object/from16 v2, p2

    move-object/from16 v0, v27

    const/4 v7, 0x1

    .line 408
    invoke-virtual/range {p2 .. p2}, Lk/a/f/b;->H()V

    .line 409
    invoke-virtual {v2, v0}, Lk/a/f/b;->t(Lk/a/f/i$h;)Lk/a/e/h;

    goto/16 :goto_28

    :pswitch_2f
    move-object/from16 v6, p0

    move-object/from16 v2, p2

    move-object/from16 v0, v27

    const/4 v7, 0x1

    .line 410
    invoke-virtual {v2, v12}, Lk/a/f/b;->m(Ljava/lang/String;)Lk/a/e/h;

    move-result-object v1

    if-eqz v1, :cond_5e

    .line 411
    invoke-virtual {v2, v6}, Lk/a/f/b;->k(Lk/a/f/c;)V

    .line 412
    invoke-virtual {v2, v12}, Lk/a/f/m;->d(Ljava/lang/String;)Z

    .line 413
    invoke-virtual {v2, v12}, Lk/a/f/b;->n(Ljava/lang/String;)Lk/a/e/h;

    move-result-object v1

    if-eqz v1, :cond_5e

    .line 414
    invoke-virtual {v2, v1}, Lk/a/f/b;->I(Lk/a/e/h;)V

    .line 415
    invoke-virtual {v2, v1}, Lk/a/f/b;->J(Lk/a/e/h;)Z

    .line 416
    :cond_5e
    invoke-virtual/range {p2 .. p2}, Lk/a/f/b;->H()V

    .line 417
    invoke-virtual {v2, v0}, Lk/a/f/b;->t(Lk/a/f/i$h;)Lk/a/e/h;

    move-result-object v0

    .line 418
    invoke-virtual {v2, v0}, Lk/a/f/b;->G(Lk/a/e/h;)V

    goto/16 :goto_28

    .line 419
    :goto_26
    iput-boolean v0, v2, Lk/a/f/b;->t:Z

    goto/16 :goto_28

    .line 420
    :cond_5f
    sget-object v1, Lk/a/f/c$x;->h:[Ljava/lang/String;

    invoke-static {v4, v1}, Lk/a/d/a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 421
    invoke-virtual {v2, v5}, Lk/a/f/b;->o(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 422
    invoke-virtual {v2, v5}, Lk/a/f/m;->d(Ljava/lang/String;)Z

    .line 423
    :cond_60
    invoke-virtual {v2, v0}, Lk/a/f/b;->t(Lk/a/f/i$h;)Lk/a/e/h;

    goto :goto_28

    .line 424
    :cond_61
    sget-object v1, Lk/a/f/c$x;->g:[Ljava/lang/String;

    invoke-static {v4, v1}, Lk/a/d/a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 425
    sget-object v0, Lk/a/f/c;->d:Lk/a/f/c;

    move-object/from16 v1, p1

    .line 426
    iput-object v1, v2, Lk/a/f/m;->g:Lk/a/f/i;

    .line 427
    invoke-virtual {v0, v1, v2}, Lk/a/f/c;->c(Lk/a/f/i;Lk/a/f/b;)Z

    move-result v4

    goto :goto_29

    .line 428
    :cond_62
    sget-object v1, Lk/a/f/c$x;->l:[Ljava/lang/String;

    invoke-static {v4, v1}, Lk/a/d/a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 429
    invoke-virtual/range {p2 .. p2}, Lk/a/f/b;->H()V

    .line 430
    invoke-virtual {v2, v0}, Lk/a/f/b;->t(Lk/a/f/i$h;)Lk/a/e/h;

    move-result-object v0

    .line 431
    invoke-virtual {v2, v0}, Lk/a/f/b;->G(Lk/a/e/h;)V

    goto :goto_28

    .line 432
    :cond_63
    sget-object v1, Lk/a/f/c$x;->m:[Ljava/lang/String;

    invoke-static {v4, v1}, Lk/a/d/a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 433
    invoke-virtual/range {p2 .. p2}, Lk/a/f/b;->H()V

    .line 434
    invoke-virtual {v2, v0}, Lk/a/f/b;->t(Lk/a/f/i$h;)Lk/a/e/h;

    .line 435
    invoke-virtual/range {p2 .. p2}, Lk/a/f/b;->z()V

    const/4 v0, 0x0

    .line 436
    iput-boolean v0, v2, Lk/a/f/b;->t:Z

    goto :goto_28

    .line 437
    :cond_64
    sget-object v1, Lk/a/f/c$x;->o:[Ljava/lang/String;

    invoke-static {v4, v1}, Lk/a/d/a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 438
    invoke-virtual {v2, v0}, Lk/a/f/b;->w(Lk/a/f/i$h;)Lk/a/e/h;

    goto :goto_28

    .line 439
    :cond_65
    sget-object v1, Lk/a/f/c$x;->q:[Ljava/lang/String;

    invoke-static {v4, v1}, Lk/a/d/a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 440
    invoke-virtual {v2, v6}, Lk/a/f/b;->k(Lk/a/f/c;)V

    :cond_66
    :goto_27
    const/4 v4, 0x0

    goto :goto_29

    .line 441
    :cond_67
    invoke-virtual/range {p2 .. p2}, Lk/a/f/b;->H()V

    .line 442
    invoke-virtual {v2, v0}, Lk/a/f/b;->t(Lk/a/f/i$h;)Lk/a/e/h;

    :goto_28
    const/4 v4, 0x1

    :goto_29
    return v4

    :cond_68
    move-object v6, v0

    .line 443
    invoke-virtual {v2, v6}, Lk/a/f/b;->k(Lk/a/f/c;)V

    const/4 v0, 0x0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x70 -> :sswitch_9
        0xc50 -> :sswitch_8
        0xc80 -> :sswitch_7
        0xc90 -> :sswitch_6
        0xd7d -> :sswitch_5
        0x2e39a2 -> :sswitch_4
        0x300cc4 -> :sswitch_3
        0x3107ab -> :sswitch_2
        0x35f74a -> :sswitch_1
        0x6f67a51c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0xcc9
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x620c002b -> :sswitch_27
        -0x521dd8ce -> :sswitch_26
        -0x47007d5c -> :sswitch_25
        -0x3c35778b -> :sswitch_24
        -0x3bcc48c6 -> :sswitch_23
        -0x3600cb04 -> :sswitch_22
        -0x4d08054 -> :sswitch_21
        0x61 -> :sswitch_20
        0xc80 -> :sswitch_1f
        0xc90 -> :sswitch_1e
        0xd0a -> :sswitch_1d
        0xd7d -> :sswitch_1c
        0xe3e -> :sswitch_1b
        0xe42 -> :sswitch_1a
        0x1b2a3 -> :sswitch_19
        0x1be64 -> :sswitch_18
        0x1d01b -> :sswitch_17
        0x2e39a2 -> :sswitch_16
        0x300cc4 -> :sswitch_15
        0x3107ab -> :sswitch_14
        0x330708 -> :sswitch_13
        0x33add1 -> :sswitch_12
        0x35f74a -> :sswitch_11
        0x5faa95b -> :sswitch_10
        0x5fb57ca -> :sswitch_f
        0x6903bce -> :sswitch_e
        0xad8ba84 -> :sswitch_d
        0x759d29f7 -> :sswitch_c
        0x7ca6c5e8 -> :sswitch_b
        0x7e19b1b8 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0xcc9
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_18
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_15
    .end packed-switch
.end method

.method public d(Lk/a/f/i;Lk/a/f/b;)Z
    .locals 5

    .line 1
    check-cast p1, Lk/a/f/i$g;

    .line 2
    iget-object p1, p1, Lk/a/f/i$i;->c:Ljava/lang/String;

    .line 3
    iget-object v0, p2, Lk/a/f/m;->e:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_3

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk/a/e/h;

    .line 6
    iget-object v4, v3, Lk/a/e/h;->c:Lk/a/f/h;

    .line 7
    iget-object v4, v4, Lk/a/f/h;->b:Ljava/lang/String;

    .line 8
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9
    invoke-virtual {p2, p1}, Lk/a/f/b;->l(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2}, Lk/a/f/m;->a()Lk/a/e/h;

    move-result-object v0

    .line 11
    iget-object v0, v0, Lk/a/e/h;->c:Lk/a/f/h;

    .line 12
    iget-object v0, v0, Lk/a/f/h;->b:Ljava/lang/String;

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 14
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    .line 15
    :cond_0
    invoke-virtual {p2, p1}, Lk/a/f/b;->F(Ljava/lang/String;)Lk/a/e/h;

    goto :goto_1

    .line 16
    :cond_1
    invoke-virtual {p2, v3}, Lk/a/f/b;->C(Lk/a/e/h;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 17
    invoke-virtual {p2, p0}, Lk/a/f/b;->k(Lk/a/f/c;)V

    const/4 p1, 0x0

    return p1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v2
.end method
