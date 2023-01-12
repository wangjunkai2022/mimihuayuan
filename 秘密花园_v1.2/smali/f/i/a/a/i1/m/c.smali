.class public final Lf/i/a/a/i1/m/c;
.super Lf/i/a/a/i1/m/d;
.source "Cea708Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/i1/m/c$a;,
        Lf/i/a/a/i1/m/c$b;
    }
.end annotation


# instance fields
.field public final g:Lf/i/a/a/m1/u;

.field public final h:Lf/i/a/a/m1/t;

.field public final i:I

.field public final j:[Lf/i/a/a/i1/m/c$a;

.field public k:Lf/i/a/a/i1/m/c$a;

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/i/a/a/i1/b;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/i/a/a/i1/b;",
            ">;"
        }
    .end annotation
.end field

.field public n:Lf/i/a/a/i1/m/c$b;

.field public o:I


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lf/i/a/a/i1/m/d;-><init>()V

    .line 2
    new-instance v0, Lf/i/a/a/m1/u;

    invoke-direct {v0}, Lf/i/a/a/m1/u;-><init>()V

    iput-object v0, p0, Lf/i/a/a/i1/m/c;->g:Lf/i/a/a/m1/u;

    .line 3
    new-instance v0, Lf/i/a/a/m1/t;

    invoke-direct {v0}, Lf/i/a/a/m1/t;-><init>()V

    iput-object v0, p0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 4
    :cond_0
    iput p1, p0, Lf/i/a/a/i1/m/c;->i:I

    const/16 p1, 0x8

    new-array v0, p1, [Lf/i/a/a/i1/m/c$a;

    .line 5
    iput-object v0, p0, Lf/i/a/a/i1/m/c;->j:[Lf/i/a/a/i1/m/c$a;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 6
    iget-object v2, p0, Lf/i/a/a/i1/m/c;->j:[Lf/i/a/a/i1/m/c$a;

    new-instance v3, Lf/i/a/a/i1/m/c$a;

    invoke-direct {v3}, Lf/i/a/a/i1/m/c$a;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lf/i/a/a/i1/m/c;->j:[Lf/i/a/a/i1/m/c$a;

    aget-object p1, p1, v0

    iput-object p1, p0, Lf/i/a/a/i1/m/c;->k:Lf/i/a/a/i1/m/c$a;

    .line 8
    invoke-virtual {p0}, Lf/i/a/a/i1/m/c;->l()V

    return-void
.end method


# virtual methods
.method public f()Lf/i/a/a/i1/e;
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/i1/m/c;->l:Ljava/util/List;

    iput-object v0, p0, Lf/i/a/a/i1/m/c;->m:Ljava/util/List;

    .line 2
    new-instance v1, Lf/i/a/a/i1/m/e;

    invoke-direct {v1, v0}, Lf/i/a/a/i1/m/e;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public flush()V
    .locals 3

    .line 1
    invoke-super {p0}, Lf/i/a/a/i1/m/d;->flush()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lf/i/a/a/i1/m/c;->l:Ljava/util/List;

    .line 3
    iput-object v0, p0, Lf/i/a/a/i1/m/c;->m:Ljava/util/List;

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lf/i/a/a/i1/m/c;->o:I

    .line 5
    iget-object v2, p0, Lf/i/a/a/i1/m/c;->j:[Lf/i/a/a/i1/m/c$a;

    aget-object v1, v2, v1

    iput-object v1, p0, Lf/i/a/a/i1/m/c;->k:Lf/i/a/a/i1/m/c$a;

    .line 6
    invoke-virtual {p0}, Lf/i/a/a/i1/m/c;->l()V

    .line 7
    iput-object v0, p0, Lf/i/a/a/i1/m/c;->n:Lf/i/a/a/i1/m/c$b;

    return-void
.end method

.method public g(Lf/i/a/a/i1/i;)V
    .locals 7

    .line 1
    iget-object v0, p1, Lf/i/a/a/y0/e;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 2
    iget-object v1, p0, Lf/i/a/a/i1/m/c;->g:Lf/i/a/a/m1/u;

    iget-object p1, p1, Lf/i/a/a/y0/e;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    invoke-virtual {v1, v0, p1}, Lf/i/a/a/m1/u;->y([BI)V

    .line 3
    :cond_0
    :goto_0
    iget-object p1, p0, Lf/i/a/a/i1/m/c;->g:Lf/i/a/a/m1/u;

    invoke-virtual {p1}, Lf/i/a/a/m1/u;->a()I

    move-result p1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_8

    .line 4
    iget-object p1, p0, Lf/i/a/a/i1/m/c;->g:Lf/i/a/a/m1/u;

    invoke-virtual {p1}, Lf/i/a/a/m1/u;->p()I

    move-result p1

    and-int/lit8 p1, p1, 0x7

    and-int/lit8 v1, p1, 0x3

    const/4 v2, 0x4

    and-int/2addr p1, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v2, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 5
    :goto_1
    iget-object v2, p0, Lf/i/a/a/i1/m/c;->g:Lf/i/a/a/m1/u;

    invoke-virtual {v2}, Lf/i/a/a/m1/u;->p()I

    move-result v2

    int-to-byte v2, v2

    .line 6
    iget-object v5, p0, Lf/i/a/a/i1/m/c;->g:Lf/i/a/a/m1/u;

    invoke-virtual {v5}, Lf/i/a/a/m1/u;->p()I

    move-result v5

    int-to-byte v5, v5

    const/4 v6, 0x2

    if-eq v1, v6, :cond_2

    if-eq v1, v0, :cond_2

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    if-ne v1, v0, :cond_5

    .line 7
    invoke-virtual {p0}, Lf/i/a/a/i1/m/c;->j()V

    and-int/lit16 p1, v2, 0xc0

    shr-int/lit8 p1, p1, 0x6

    and-int/lit8 v0, v2, 0x3f

    if-nez v0, :cond_4

    const/16 v0, 0x40

    .line 8
    :cond_4
    new-instance v1, Lf/i/a/a/i1/m/c$b;

    invoke-direct {v1, p1, v0}, Lf/i/a/a/i1/m/c$b;-><init>(II)V

    iput-object v1, p0, Lf/i/a/a/i1/m/c;->n:Lf/i/a/a/i1/m/c$b;

    .line 9
    iget-object p1, v1, Lf/i/a/a/i1/m/c$b;->c:[B

    iget v0, v1, Lf/i/a/a/i1/m/c$b;->d:I

    add-int/lit8 v2, v0, 0x1

    iput v2, v1, Lf/i/a/a/i1/m/c$b;->d:I

    aput-byte v5, p1, v0

    goto :goto_2

    :cond_5
    if-ne v1, v6, :cond_6

    const/4 v3, 0x1

    .line 10
    :cond_6
    invoke-static {v3}, Lc/a/a/b/g/h;->m(Z)V

    .line 11
    iget-object p1, p0, Lf/i/a/a/i1/m/c;->n:Lf/i/a/a/i1/m/c$b;

    if-nez p1, :cond_7

    goto :goto_0

    .line 12
    :cond_7
    iget-object v0, p1, Lf/i/a/a/i1/m/c$b;->c:[B

    iget v1, p1, Lf/i/a/a/i1/m/c$b;->d:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p1, Lf/i/a/a/i1/m/c$b;->d:I

    aput-byte v2, v0, v1

    add-int/lit8 v1, v3, 0x1

    .line 13
    iput v1, p1, Lf/i/a/a/i1/m/c$b;->d:I

    aput-byte v5, v0, v3

    .line 14
    :goto_2
    iget-object p1, p0, Lf/i/a/a/i1/m/c;->n:Lf/i/a/a/i1/m/c$b;

    iget v0, p1, Lf/i/a/a/i1/m/c$b;->d:I

    iget p1, p1, Lf/i/a/a/i1/m/c$b;->b:I

    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr p1, v4

    if-ne v0, p1, :cond_0

    .line 15
    invoke-virtual {p0}, Lf/i/a/a/i1/m/c;->j()V

    goto :goto_0

    :cond_8
    return-void
.end method

.method public h()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/i1/m/c;->l:Ljava/util/List;

    iget-object v1, p0, Lf/i/a/a/i1/m/c;->m:Ljava/util/List;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final j()V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->n:Lf/i/a/a/i1/m/c$b;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget v2, v1, Lf/i/a/a/i1/m/c$b;->d:I

    iget v3, v1, Lf/i/a/a/i1/m/c$b;->b:I

    const/4 v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    if-eq v2, v3, :cond_1

    goto/16 :goto_11

    .line 3
    :cond_1
    iget-object v3, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    iget-object v1, v1, Lf/i/a/a/i1/m/c$b;->c:[B

    invoke-virtual {v3, v1, v2}, Lf/i/a/a/m1/t;->i([BI)V

    .line 4
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lf/i/a/a/m1/t;->f(I)I

    move-result v1

    .line 5
    iget-object v3, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    const/4 v6, 0x5

    invoke-virtual {v3, v6}, Lf/i/a/a/m1/t;->f(I)I

    move-result v3

    const/4 v6, 0x7

    const/4 v7, 0x6

    if-ne v1, v6, :cond_2

    .line 6
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v1, v4}, Lf/i/a/a/m1/t;->l(I)V

    .line 7
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v1, v7}, Lf/i/a/a/m1/t;->f(I)I

    move-result v1

    :cond_2
    if-nez v3, :cond_3

    goto/16 :goto_11

    .line 8
    :cond_3
    iget v3, v0, Lf/i/a/a/i1/m/c;->i:I

    if-eq v1, v3, :cond_4

    goto/16 :goto_11

    :cond_4
    const/4 v3, 0x0

    .line 9
    :goto_0
    iget-object v8, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v8}, Lf/i/a/a/m1/t;->b()I

    move-result v8

    if-lez v8, :cond_35

    .line 10
    iget-object v8, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lf/i/a/a/m1/t;->f(I)I

    move-result v8

    const/16 v10, 0x17

    const/16 v11, 0x9f

    const/16 v12, 0x18

    const/16 v13, 0x7f

    const/16 v14, 0x1f

    const/16 v15, 0x10

    if-eq v8, v15, :cond_1f

    const/16 v1, 0xa

    if-gt v8, v14, :cond_8

    if-eqz v8, :cond_a

    if-eq v8, v2, :cond_7

    if-eq v8, v9, :cond_6

    packed-switch v8, :pswitch_data_0

    const/16 v1, 0x11

    if-lt v8, v1, :cond_5

    if-gt v8, v10, :cond_5

    .line 11
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v1, v9}, Lf/i/a/a/m1/t;->l(I)V

    goto :goto_2

    .line 12
    :pswitch_0
    iget-object v8, v0, Lf/i/a/a/i1/m/c;->k:Lf/i/a/a/i1/m/c$a;

    invoke-virtual {v8, v1}, Lf/i/a/a/i1/m/c$a;->a(C)V

    goto :goto_2

    .line 13
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/i1/m/c;->l()V

    goto :goto_2

    :cond_5
    if-lt v8, v12, :cond_a

    if-gt v8, v14, :cond_a

    .line 14
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v1, v15}, Lf/i/a/a/m1/t;->l(I)V

    goto :goto_2

    .line 15
    :cond_6
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->k:Lf/i/a/a/i1/m/c$a;

    .line 16
    iget-object v8, v1, Lf/i/a/a/i1/m/c$a;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_a

    .line 17
    iget-object v1, v1, Lf/i/a/a/i1/m/c$a;->b:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v9, v8, -0x1

    invoke-virtual {v1, v9, v8}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    .line 18
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/i1/m/c;->k()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lf/i/a/a/i1/m/c;->l:Ljava/util/List;

    goto :goto_2

    :cond_8
    if-gt v8, v13, :cond_b

    if-ne v8, v13, :cond_9

    .line 19
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->k:Lf/i/a/a/i1/m/c$a;

    const/16 v3, 0x266b

    invoke-virtual {v1, v3}, Lf/i/a/a/i1/m/c$a;->a(C)V

    goto :goto_1

    .line 20
    :cond_9
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->k:Lf/i/a/a/i1/m/c$a;

    and-int/lit16 v3, v8, 0xff

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Lf/i/a/a/i1/m/c$a;->a(C)V

    :goto_1
    const/4 v3, 0x1

    :cond_a
    :goto_2
    :pswitch_2
    const/4 v6, 0x0

    goto/16 :goto_c

    :cond_b
    if-gt v8, v11, :cond_1c

    const/4 v3, 0x4

    packed-switch v8, :pswitch_data_1

    :pswitch_3
    goto/16 :goto_4

    :pswitch_4
    add-int/lit16 v8, v8, -0x98

    .line 21
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->j:[Lf/i/a/a/i1/m/c$a;

    aget-object v1, v1, v8

    .line 22
    iget-object v10, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v10, v4}, Lf/i/a/a/m1/t;->l(I)V

    .line 23
    iget-object v10, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v10}, Lf/i/a/a/m1/t;->e()Z

    move-result v10

    .line 24
    iget-object v11, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v11}, Lf/i/a/a/m1/t;->e()Z

    move-result v11

    .line 25
    iget-object v12, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v12}, Lf/i/a/a/m1/t;->e()Z

    .line 26
    iget-object v12, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v12, v2}, Lf/i/a/a/m1/t;->f(I)I

    move-result v12

    .line 27
    iget-object v13, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v13}, Lf/i/a/a/m1/t;->e()Z

    move-result v13

    .line 28
    iget-object v14, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v14, v6}, Lf/i/a/a/m1/t;->f(I)I

    move-result v14

    .line 29
    iget-object v15, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v15, v9}, Lf/i/a/a/m1/t;->f(I)I

    move-result v9

    .line 30
    iget-object v15, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v15, v3}, Lf/i/a/a/m1/t;->f(I)I

    move-result v15

    .line 31
    iget-object v6, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v6, v3}, Lf/i/a/a/m1/t;->f(I)I

    move-result v3

    .line 32
    iget-object v6, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v6, v4}, Lf/i/a/a/m1/t;->l(I)V

    .line 33
    iget-object v6, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v6, v7}, Lf/i/a/a/m1/t;->f(I)I

    .line 34
    iget-object v6, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v6, v4}, Lf/i/a/a/m1/t;->l(I)V

    .line 35
    iget-object v6, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v6, v2}, Lf/i/a/a/m1/t;->f(I)I

    move-result v6

    .line 36
    iget-object v7, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v7, v2}, Lf/i/a/a/m1/t;->f(I)I

    move-result v7

    .line 37
    iput-boolean v5, v1, Lf/i/a/a/i1/m/c$a;->c:Z

    .line 38
    iput-boolean v10, v1, Lf/i/a/a/i1/m/c$a;->d:Z

    .line 39
    iput-boolean v11, v1, Lf/i/a/a/i1/m/c$a;->k:Z

    .line 40
    iput v12, v1, Lf/i/a/a/i1/m/c$a;->e:I

    .line 41
    iput-boolean v13, v1, Lf/i/a/a/i1/m/c$a;->f:Z

    .line 42
    iput v14, v1, Lf/i/a/a/i1/m/c$a;->g:I

    .line 43
    iput v9, v1, Lf/i/a/a/i1/m/c$a;->h:I

    .line 44
    iput v15, v1, Lf/i/a/a/i1/m/c$a;->i:I

    .line 45
    iget v9, v1, Lf/i/a/a/i1/m/c$a;->j:I

    add-int/2addr v3, v5

    if-eq v9, v3, :cond_e

    .line 46
    iput v3, v1, Lf/i/a/a/i1/m/c$a;->j:I

    :goto_3
    if-eqz v11, :cond_c

    .line 47
    iget-object v3, v1, Lf/i/a/a/i1/m/c$a;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v9, v1, Lf/i/a/a/i1/m/c$a;->j:I

    if-ge v3, v9, :cond_d

    :cond_c
    iget-object v3, v1, Lf/i/a/a/i1/m/c$a;->a:Ljava/util/List;

    .line 48
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v9, 0xf

    if-lt v3, v9, :cond_e

    .line 49
    :cond_d
    iget-object v3, v1, Lf/i/a/a/i1/m/c$a;->a:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v3, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_e
    if-eqz v6, :cond_f

    .line 50
    iget v3, v1, Lf/i/a/a/i1/m/c$a;->m:I

    if-eq v3, v6, :cond_f

    .line 51
    iput v6, v1, Lf/i/a/a/i1/m/c$a;->m:I

    add-int/lit8 v6, v6, -0x1

    .line 52
    sget-object v3, Lf/i/a/a/i1/m/c$a;->D:[I

    aget v3, v3, v6

    sget-object v9, Lf/i/a/a/i1/m/c$a;->C:[Z

    aget-boolean v9, v9, v6

    sget-object v9, Lf/i/a/a/i1/m/c$a;->A:[I

    aget v9, v9, v6

    sget-object v9, Lf/i/a/a/i1/m/c$a;->B:[I

    aget v9, v9, v6

    sget-object v9, Lf/i/a/a/i1/m/c$a;->z:[I

    aget v6, v9, v6

    .line 53
    iput v3, v1, Lf/i/a/a/i1/m/c$a;->o:I

    .line 54
    iput v6, v1, Lf/i/a/a/i1/m/c$a;->l:I

    :cond_f
    if-eqz v7, :cond_10

    .line 55
    iget v3, v1, Lf/i/a/a/i1/m/c$a;->n:I

    if-eq v3, v7, :cond_10

    .line 56
    iput v7, v1, Lf/i/a/a/i1/m/c$a;->n:I

    add-int/lit8 v7, v7, -0x1

    .line 57
    sget-object v3, Lf/i/a/a/i1/m/c$a;->F:[I

    aget v3, v3, v7

    sget-object v3, Lf/i/a/a/i1/m/c$a;->E:[I

    aget v3, v3, v7

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v6}, Lf/i/a/a/i1/m/c$a;->g(ZZ)V

    .line 58
    sget v3, Lf/i/a/a/i1/m/c$a;->w:I

    sget-object v6, Lf/i/a/a/i1/m/c$a;->G:[I

    aget v6, v6, v7

    invoke-virtual {v1, v3, v6}, Lf/i/a/a/i1/m/c$a;->h(II)V

    .line 59
    :cond_10
    iget v1, v0, Lf/i/a/a/i1/m/c;->o:I

    if-eq v1, v8, :cond_16

    .line 60
    iput v8, v0, Lf/i/a/a/i1/m/c;->o:I

    .line 61
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->j:[Lf/i/a/a/i1/m/c$a;

    aget-object v1, v1, v8

    iput-object v1, v0, Lf/i/a/a/i1/m/c;->k:Lf/i/a/a/i1/m/c$a;

    goto/16 :goto_4

    .line 62
    :pswitch_5
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->k:Lf/i/a/a/i1/m/c$a;

    .line 63
    iget-boolean v1, v1, Lf/i/a/a/i1/m/c$a;->c:Z

    if-nez v1, :cond_11

    .line 64
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Lf/i/a/a/m1/t;->l(I)V

    goto/16 :goto_4

    .line 65
    :cond_11
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v1, v4}, Lf/i/a/a/m1/t;->f(I)I

    move-result v1

    .line 66
    iget-object v3, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v3, v4}, Lf/i/a/a/m1/t;->f(I)I

    move-result v3

    .line 67
    iget-object v6, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v6, v4}, Lf/i/a/a/m1/t;->f(I)I

    move-result v6

    .line 68
    iget-object v7, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v7, v4}, Lf/i/a/a/m1/t;->f(I)I

    move-result v7

    .line 69
    invoke-static {v3, v6, v7, v1}, Lf/i/a/a/i1/m/c$a;->d(IIII)I

    move-result v1

    .line 70
    iget-object v3, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v3, v4}, Lf/i/a/a/m1/t;->f(I)I

    .line 71
    iget-object v3, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v3, v4}, Lf/i/a/a/m1/t;->f(I)I

    move-result v3

    .line 72
    iget-object v6, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v6, v4}, Lf/i/a/a/m1/t;->f(I)I

    move-result v6

    .line 73
    iget-object v7, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v7, v4}, Lf/i/a/a/m1/t;->f(I)I

    move-result v7

    const/4 v8, 0x0

    .line 74
    invoke-static {v3, v6, v7, v8}, Lf/i/a/a/i1/m/c$a;->d(IIII)I

    .line 75
    iget-object v3, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v3}, Lf/i/a/a/m1/t;->e()Z

    .line 76
    iget-object v3, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v3}, Lf/i/a/a/m1/t;->e()Z

    .line 77
    iget-object v3, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v3, v4}, Lf/i/a/a/m1/t;->f(I)I

    .line 78
    iget-object v3, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v3, v4}, Lf/i/a/a/m1/t;->f(I)I

    .line 79
    iget-object v3, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v3, v4}, Lf/i/a/a/m1/t;->f(I)I

    move-result v3

    .line 80
    iget-object v6, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v6, v9}, Lf/i/a/a/m1/t;->l(I)V

    .line 81
    iget-object v6, v0, Lf/i/a/a/i1/m/c;->k:Lf/i/a/a/i1/m/c$a;

    .line 82
    iput v1, v6, Lf/i/a/a/i1/m/c$a;->o:I

    .line 83
    iput v3, v6, Lf/i/a/a/i1/m/c$a;->l:I

    goto/16 :goto_4

    .line 84
    :pswitch_6
    iget-object v6, v0, Lf/i/a/a/i1/m/c;->k:Lf/i/a/a/i1/m/c$a;

    .line 85
    iget-boolean v6, v6, Lf/i/a/a/i1/m/c$a;->c:Z

    if-nez v6, :cond_12

    .line 86
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v1, v15}, Lf/i/a/a/m1/t;->l(I)V

    goto/16 :goto_4

    .line 87
    :cond_12
    iget-object v6, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v6, v3}, Lf/i/a/a/m1/t;->l(I)V

    .line 88
    iget-object v6, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v6, v3}, Lf/i/a/a/m1/t;->f(I)I

    move-result v3

    .line 89
    iget-object v6, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v6, v4}, Lf/i/a/a/m1/t;->l(I)V

    .line 90
    iget-object v6, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Lf/i/a/a/m1/t;->f(I)I

    .line 91
    iget-object v6, v0, Lf/i/a/a/i1/m/c;->k:Lf/i/a/a/i1/m/c$a;

    .line 92
    iget v7, v6, Lf/i/a/a/i1/m/c$a;->v:I

    if-eq v7, v3, :cond_13

    .line 93
    invoke-virtual {v6, v1}, Lf/i/a/a/i1/m/c$a;->a(C)V

    .line 94
    :cond_13
    iput v3, v6, Lf/i/a/a/i1/m/c$a;->v:I

    goto/16 :goto_4

    .line 95
    :pswitch_7
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->k:Lf/i/a/a/i1/m/c$a;

    .line 96
    iget-boolean v1, v1, Lf/i/a/a/i1/m/c$a;->c:Z

    if-nez v1, :cond_14

    .line 97
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v1, v12}, Lf/i/a/a/m1/t;->l(I)V

    goto/16 :goto_4

    .line 98
    :cond_14
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v1, v4}, Lf/i/a/a/m1/t;->f(I)I

    move-result v1

    .line 99
    iget-object v3, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v3, v4}, Lf/i/a/a/m1/t;->f(I)I

    move-result v3

    .line 100
    iget-object v6, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v6, v4}, Lf/i/a/a/m1/t;->f(I)I

    move-result v6

    .line 101
    iget-object v7, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v7, v4}, Lf/i/a/a/m1/t;->f(I)I

    move-result v7

    .line 102
    invoke-static {v3, v6, v7, v1}, Lf/i/a/a/i1/m/c$a;->d(IIII)I

    move-result v1

    .line 103
    iget-object v3, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v3, v4}, Lf/i/a/a/m1/t;->f(I)I

    move-result v3

    .line 104
    iget-object v6, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v6, v4}, Lf/i/a/a/m1/t;->f(I)I

    move-result v6

    .line 105
    iget-object v7, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v7, v4}, Lf/i/a/a/m1/t;->f(I)I

    move-result v7

    .line 106
    iget-object v8, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v8, v4}, Lf/i/a/a/m1/t;->f(I)I

    move-result v8

    .line 107
    invoke-static {v6, v7, v8, v3}, Lf/i/a/a/i1/m/c$a;->d(IIII)I

    move-result v3

    .line 108
    iget-object v6, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v6, v4}, Lf/i/a/a/m1/t;->l(I)V

    .line 109
    iget-object v6, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v6, v4}, Lf/i/a/a/m1/t;->f(I)I

    move-result v6

    .line 110
    iget-object v7, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v7, v4}, Lf/i/a/a/m1/t;->f(I)I

    move-result v7

    .line 111
    iget-object v8, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v8, v4}, Lf/i/a/a/m1/t;->f(I)I

    move-result v8

    const/4 v9, 0x0

    .line 112
    invoke-static {v6, v7, v8, v9}, Lf/i/a/a/i1/m/c$a;->d(IIII)I

    .line 113
    iget-object v6, v0, Lf/i/a/a/i1/m/c;->k:Lf/i/a/a/i1/m/c$a;

    invoke-virtual {v6, v1, v3}, Lf/i/a/a/i1/m/c$a;->h(II)V

    goto :goto_4

    .line 114
    :pswitch_8
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->k:Lf/i/a/a/i1/m/c$a;

    .line 115
    iget-boolean v1, v1, Lf/i/a/a/i1/m/c$a;->c:Z

    if-nez v1, :cond_15

    .line 116
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v1, v15}, Lf/i/a/a/m1/t;->l(I)V

    goto :goto_4

    .line 117
    :cond_15
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v1, v3}, Lf/i/a/a/m1/t;->f(I)I

    .line 118
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v1, v4}, Lf/i/a/a/m1/t;->f(I)I

    .line 119
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v1, v4}, Lf/i/a/a/m1/t;->f(I)I

    .line 120
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v1}, Lf/i/a/a/m1/t;->e()Z

    move-result v1

    .line 121
    iget-object v3, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v3}, Lf/i/a/a/m1/t;->e()Z

    move-result v3

    .line 122
    iget-object v6, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v6, v2}, Lf/i/a/a/m1/t;->f(I)I

    .line 123
    iget-object v6, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v6, v2}, Lf/i/a/a/m1/t;->f(I)I

    .line 124
    iget-object v6, v0, Lf/i/a/a/i1/m/c;->k:Lf/i/a/a/i1/m/c$a;

    invoke-virtual {v6, v1, v3}, Lf/i/a/a/i1/m/c$a;->g(ZZ)V

    goto :goto_4

    .line 125
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/i1/m/c;->l()V

    goto :goto_4

    .line 126
    :pswitch_a
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v1, v9}, Lf/i/a/a/m1/t;->l(I)V

    :cond_16
    :goto_4
    const/4 v6, 0x0

    goto/16 :goto_b

    :pswitch_b
    const/4 v1, 0x1

    :goto_5
    if-gt v1, v9, :cond_16

    .line 127
    iget-object v3, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v3}, Lf/i/a/a/m1/t;->e()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 128
    iget-object v3, v0, Lf/i/a/a/i1/m/c;->j:[Lf/i/a/a/i1/m/c$a;

    rsub-int/lit8 v6, v1, 0x8

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lf/i/a/a/i1/m/c$a;->f()V

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :pswitch_c
    const/4 v1, 0x1

    :goto_6
    if-gt v1, v9, :cond_16

    .line 129
    iget-object v3, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v3}, Lf/i/a/a/m1/t;->e()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 130
    iget-object v3, v0, Lf/i/a/a/i1/m/c;->j:[Lf/i/a/a/i1/m/c$a;

    rsub-int/lit8 v6, v1, 0x8

    aget-object v3, v3, v6

    .line 131
    iget-boolean v6, v3, Lf/i/a/a/i1/m/c$a;->d:Z

    xor-int/2addr v6, v5

    .line 132
    iput-boolean v6, v3, Lf/i/a/a/i1/m/c$a;->d:Z

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :pswitch_d
    const/4 v1, 0x1

    :goto_7
    if-gt v1, v9, :cond_16

    .line 133
    iget-object v3, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v3}, Lf/i/a/a/m1/t;->e()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 134
    iget-object v3, v0, Lf/i/a/a/i1/m/c;->j:[Lf/i/a/a/i1/m/c$a;

    rsub-int/lit8 v6, v1, 0x8

    aget-object v3, v3, v6

    const/4 v6, 0x0

    .line 135
    iput-boolean v6, v3, Lf/i/a/a/i1/m/c$a;->d:Z

    goto :goto_8

    :cond_19
    const/4 v6, 0x0

    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :pswitch_e
    const/4 v6, 0x0

    const/4 v1, 0x1

    :goto_9
    if-gt v1, v9, :cond_1d

    .line 136
    iget-object v3, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v3}, Lf/i/a/a/m1/t;->e()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 137
    iget-object v3, v0, Lf/i/a/a/i1/m/c;->j:[Lf/i/a/a/i1/m/c$a;

    rsub-int/lit8 v7, v1, 0x8

    aget-object v3, v3, v7

    .line 138
    iput-boolean v5, v3, Lf/i/a/a/i1/m/c$a;->d:Z

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :pswitch_f
    const/4 v6, 0x0

    const/4 v1, 0x1

    :goto_a
    if-gt v1, v9, :cond_1d

    .line 139
    iget-object v3, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v3}, Lf/i/a/a/m1/t;->e()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 140
    iget-object v3, v0, Lf/i/a/a/i1/m/c;->j:[Lf/i/a/a/i1/m/c$a;

    rsub-int/lit8 v7, v1, 0x8

    aget-object v3, v3, v7

    invoke-virtual {v3}, Lf/i/a/a/i1/m/c$a;->c()V

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :pswitch_10
    const/4 v6, 0x0

    add-int/lit8 v8, v8, -0x80

    .line 141
    iget v1, v0, Lf/i/a/a/i1/m/c;->o:I

    if-eq v1, v8, :cond_1d

    .line 142
    iput v8, v0, Lf/i/a/a/i1/m/c;->o:I

    .line 143
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->j:[Lf/i/a/a/i1/m/c$a;

    aget-object v1, v1, v8

    iput-object v1, v0, Lf/i/a/a/i1/m/c;->k:Lf/i/a/a/i1/m/c$a;

    goto :goto_b

    :cond_1c
    const/16 v1, 0xff

    const/4 v6, 0x0

    if-gt v8, v1, :cond_1e

    .line 144
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->k:Lf/i/a/a/i1/m/c$a;

    and-int/lit16 v3, v8, 0xff

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Lf/i/a/a/i1/m/c$a;->a(C)V

    :cond_1d
    :goto_b
    const/4 v3, 0x1

    :cond_1e
    :goto_c
    const/4 v7, 0x7

    goto :goto_d

    :cond_1f
    const/4 v6, 0x0

    .line 145
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v1, v9}, Lf/i/a/a/m1/t;->f(I)I

    move-result v1

    if-gt v1, v14, :cond_24

    const/4 v7, 0x7

    if-gt v1, v7, :cond_21

    :cond_20
    :goto_d
    const/4 v10, 0x6

    goto/16 :goto_10

    :cond_21
    const/16 v8, 0xf

    if-gt v1, v8, :cond_22

    .line 146
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v1, v9}, Lf/i/a/a/m1/t;->l(I)V

    goto :goto_d

    :cond_22
    if-gt v1, v10, :cond_23

    .line 147
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v1, v15}, Lf/i/a/a/m1/t;->l(I)V

    goto :goto_d

    :cond_23
    if-gt v1, v14, :cond_20

    .line 148
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v1, v12}, Lf/i/a/a/m1/t;->l(I)V

    goto :goto_d

    :cond_24
    const/4 v7, 0x7

    const/16 v8, 0xa0

    if-gt v1, v13, :cond_2f

    const/16 v10, 0x20

    if-eq v1, v10, :cond_2e

    const/16 v3, 0x21

    if-eq v1, v3, :cond_2d

    const/16 v3, 0x25

    if-eq v1, v3, :cond_2c

    const/16 v3, 0x2a

    if-eq v1, v3, :cond_2b

    const/16 v3, 0x2c

    if-eq v1, v3, :cond_2a

    const/16 v3, 0x3f

    if-eq v1, v3, :cond_29

    const/16 v3, 0x39

    if-eq v1, v3, :cond_28

    const/16 v3, 0x3a

    if-eq v1, v3, :cond_27

    const/16 v3, 0x3c

    if-eq v1, v3, :cond_26

    const/16 v3, 0x3d

    if-eq v1, v3, :cond_25

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    goto/16 :goto_e

    .line 149
    :pswitch_11
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->k:Lf/i/a/a/i1/m/c$a;

    const/16 v3, 0x2022

    invoke-virtual {v1, v3}, Lf/i/a/a/i1/m/c$a;->a(C)V

    goto/16 :goto_e

    .line 150
    :pswitch_12
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->k:Lf/i/a/a/i1/m/c$a;

    const/16 v3, 0x201d

    invoke-virtual {v1, v3}, Lf/i/a/a/i1/m/c$a;->a(C)V

    goto/16 :goto_e

    .line 151
    :pswitch_13
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->k:Lf/i/a/a/i1/m/c$a;

    const/16 v3, 0x201c

    invoke-virtual {v1, v3}, Lf/i/a/a/i1/m/c$a;->a(C)V

    goto/16 :goto_e

    .line 152
    :pswitch_14
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->k:Lf/i/a/a/i1/m/c$a;

    const/16 v3, 0x2019

    invoke-virtual {v1, v3}, Lf/i/a/a/i1/m/c$a;->a(C)V

    goto/16 :goto_e

    .line 153
    :pswitch_15
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->k:Lf/i/a/a/i1/m/c$a;

    const/16 v3, 0x2018

    invoke-virtual {v1, v3}, Lf/i/a/a/i1/m/c$a;->a(C)V

    goto/16 :goto_e

    .line 154
    :pswitch_16
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->k:Lf/i/a/a/i1/m/c$a;

    const/16 v3, 0x2588

    invoke-virtual {v1, v3}, Lf/i/a/a/i1/m/c$a;->a(C)V

    goto/16 :goto_e

    .line 155
    :pswitch_17
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->k:Lf/i/a/a/i1/m/c$a;

    const/16 v3, 0x250c

    invoke-virtual {v1, v3}, Lf/i/a/a/i1/m/c$a;->a(C)V

    goto/16 :goto_e

    .line 156
    :pswitch_18
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->k:Lf/i/a/a/i1/m/c$a;

    const/16 v3, 0x2518

    invoke-virtual {v1, v3}, Lf/i/a/a/i1/m/c$a;->a(C)V

    goto/16 :goto_e

    .line 157
    :pswitch_19
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->k:Lf/i/a/a/i1/m/c$a;

    const/16 v3, 0x2500

    invoke-virtual {v1, v3}, Lf/i/a/a/i1/m/c$a;->a(C)V

    goto/16 :goto_e

    .line 158
    :pswitch_1a
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->k:Lf/i/a/a/i1/m/c$a;

    const/16 v3, 0x2514

    invoke-virtual {v1, v3}, Lf/i/a/a/i1/m/c$a;->a(C)V

    goto/16 :goto_e

    .line 159
    :pswitch_1b
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->k:Lf/i/a/a/i1/m/c$a;

    const/16 v3, 0x2510

    invoke-virtual {v1, v3}, Lf/i/a/a/i1/m/c$a;->a(C)V

    goto/16 :goto_e

    .line 160
    :pswitch_1c
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->k:Lf/i/a/a/i1/m/c$a;

    const/16 v3, 0x2502

    invoke-virtual {v1, v3}, Lf/i/a/a/i1/m/c$a;->a(C)V

    goto/16 :goto_e

    .line 161
    :pswitch_1d
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->k:Lf/i/a/a/i1/m/c$a;

    const/16 v3, 0x215e

    invoke-virtual {v1, v3}, Lf/i/a/a/i1/m/c$a;->a(C)V

    goto/16 :goto_e

    .line 162
    :pswitch_1e
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->k:Lf/i/a/a/i1/m/c$a;

    const/16 v3, 0x215d

    invoke-virtual {v1, v3}, Lf/i/a/a/i1/m/c$a;->a(C)V

    goto :goto_e

    .line 163
    :pswitch_1f
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->k:Lf/i/a/a/i1/m/c$a;

    const/16 v3, 0x215c

    invoke-virtual {v1, v3}, Lf/i/a/a/i1/m/c$a;->a(C)V

    goto :goto_e

    .line 164
    :pswitch_20
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->k:Lf/i/a/a/i1/m/c$a;

    const/16 v3, 0x215b

    invoke-virtual {v1, v3}, Lf/i/a/a/i1/m/c$a;->a(C)V

    goto :goto_e

    .line 165
    :cond_25
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->k:Lf/i/a/a/i1/m/c$a;

    const/16 v3, 0x2120

    invoke-virtual {v1, v3}, Lf/i/a/a/i1/m/c$a;->a(C)V

    goto :goto_e

    .line 166
    :cond_26
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->k:Lf/i/a/a/i1/m/c$a;

    const/16 v3, 0x153

    invoke-virtual {v1, v3}, Lf/i/a/a/i1/m/c$a;->a(C)V

    goto :goto_e

    .line 167
    :cond_27
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->k:Lf/i/a/a/i1/m/c$a;

    const/16 v3, 0x161

    invoke-virtual {v1, v3}, Lf/i/a/a/i1/m/c$a;->a(C)V

    goto :goto_e

    .line 168
    :cond_28
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->k:Lf/i/a/a/i1/m/c$a;

    const/16 v3, 0x2122

    invoke-virtual {v1, v3}, Lf/i/a/a/i1/m/c$a;->a(C)V

    goto :goto_e

    .line 169
    :cond_29
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->k:Lf/i/a/a/i1/m/c$a;

    const/16 v3, 0x178

    invoke-virtual {v1, v3}, Lf/i/a/a/i1/m/c$a;->a(C)V

    goto :goto_e

    .line 170
    :cond_2a
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->k:Lf/i/a/a/i1/m/c$a;

    const/16 v3, 0x152

    invoke-virtual {v1, v3}, Lf/i/a/a/i1/m/c$a;->a(C)V

    goto :goto_e

    .line 171
    :cond_2b
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->k:Lf/i/a/a/i1/m/c$a;

    const/16 v3, 0x160

    invoke-virtual {v1, v3}, Lf/i/a/a/i1/m/c$a;->a(C)V

    goto :goto_e

    .line 172
    :cond_2c
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->k:Lf/i/a/a/i1/m/c$a;

    const/16 v3, 0x2026

    invoke-virtual {v1, v3}, Lf/i/a/a/i1/m/c$a;->a(C)V

    goto :goto_e

    .line 173
    :cond_2d
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->k:Lf/i/a/a/i1/m/c$a;

    invoke-virtual {v1, v8}, Lf/i/a/a/i1/m/c$a;->a(C)V

    goto :goto_e

    .line 174
    :cond_2e
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->k:Lf/i/a/a/i1/m/c$a;

    const/16 v10, 0x20

    invoke-virtual {v1, v10}, Lf/i/a/a/i1/m/c$a;->a(C)V

    :goto_e
    const/4 v3, 0x1

    goto/16 :goto_d

    :cond_2f
    const/16 v10, 0x20

    if-gt v1, v11, :cond_32

    const/16 v8, 0x87

    if-gt v1, v8, :cond_30

    .line 175
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v1, v10}, Lf/i/a/a/m1/t;->l(I)V

    goto/16 :goto_d

    :cond_30
    const/16 v8, 0x8f

    if-gt v1, v8, :cond_31

    .line 176
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    const/16 v8, 0x28

    invoke-virtual {v1, v8}, Lf/i/a/a/m1/t;->l(I)V

    goto/16 :goto_d

    :cond_31
    if-gt v1, v11, :cond_20

    .line 177
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    invoke-virtual {v1, v4}, Lf/i/a/a/m1/t;->l(I)V

    .line 178
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    const/4 v10, 0x6

    invoke-virtual {v1, v10}, Lf/i/a/a/m1/t;->f(I)I

    move-result v1

    .line 179
    iget-object v8, v0, Lf/i/a/a/i1/m/c;->h:Lf/i/a/a/m1/t;

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v8, v1}, Lf/i/a/a/m1/t;->l(I)V

    goto :goto_10

    :cond_32
    const/16 v9, 0xff

    const/4 v10, 0x6

    if-gt v1, v9, :cond_34

    if-ne v1, v8, :cond_33

    .line 180
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->k:Lf/i/a/a/i1/m/c$a;

    const/16 v3, 0x33c4

    invoke-virtual {v1, v3}, Lf/i/a/a/i1/m/c$a;->a(C)V

    goto :goto_f

    .line 181
    :cond_33
    iget-object v1, v0, Lf/i/a/a/i1/m/c;->k:Lf/i/a/a/i1/m/c$a;

    const/16 v3, 0x5f

    invoke-virtual {v1, v3}, Lf/i/a/a/i1/m/c$a;->a(C)V

    :goto_f
    const/4 v3, 0x1

    :cond_34
    :goto_10
    const/4 v6, 0x7

    const/4 v7, 0x6

    goto/16 :goto_0

    :cond_35
    if-eqz v3, :cond_36

    .line 182
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/i1/m/c;->k()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lf/i/a/a/i1/m/c;->l:Ljava/util/List;

    :cond_36
    :goto_11
    const/4 v1, 0x0

    .line 183
    iput-object v1, v0, Lf/i/a/a/i1/m/c;->n:Lf/i/a/a/i1/m/c$b;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x80
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_3
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x30
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x76
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch
.end method

.method public final k()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lf/i/a/a/i1/b;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_d

    .line 2
    iget-object v3, v0, Lf/i/a/a/i1/m/c;->j:[Lf/i/a/a/i1/m/c$a;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lf/i/a/a/i1/m/c$a;->e()Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, v0, Lf/i/a/a/i1/m/c;->j:[Lf/i/a/a/i1/m/c$a;

    aget-object v4, v3, v2

    .line 3
    iget-boolean v4, v4, Lf/i/a/a/i1/m/c$a;->d:Z

    if-eqz v4, :cond_c

    .line 4
    aget-object v3, v3, v2

    .line 5
    invoke-virtual {v3}, Lf/i/a/a/i1/m/c$a;->e()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    goto/16 :goto_8

    .line 6
    :cond_0
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v4, 0x0

    .line 7
    :goto_1
    iget-object v6, v3, Lf/i/a/a/i1/m/c$a;->a:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_1

    .line 8
    iget-object v6, v3, Lf/i/a/a/i1/m/c$a;->a:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v6, 0xa

    .line 9
    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v3}, Lf/i/a/a/i1/m/c$a;->b()Landroid/text/SpannableString;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 11
    iget v4, v3, Lf/i/a/a/i1/m/c$a;->l:I

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v4, :cond_5

    if-eq v4, v8, :cond_4

    if-eq v4, v7, :cond_3

    if-ne v4, v6, :cond_2

    goto :goto_2

    .line 12
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unexpected justification value: "

    invoke-static {v2}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v3, Lf/i/a/a/i1/m/c$a;->l:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 13
    :cond_3
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_3

    .line 14
    :cond_4
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_3

    .line 15
    :cond_5
    :goto_2
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_3
    move-object v7, v4

    .line 16
    iget-boolean v4, v3, Lf/i/a/a/i1/m/c$a;->f:Z

    if-eqz v4, :cond_6

    .line 17
    iget v4, v3, Lf/i/a/a/i1/m/c$a;->h:I

    int-to-float v4, v4

    const/high16 v9, 0x42c60000    # 99.0f

    div-float/2addr v4, v9

    .line 18
    iget v10, v3, Lf/i/a/a/i1/m/c$a;->g:I

    int-to-float v10, v10

    div-float/2addr v10, v9

    goto :goto_4

    .line 19
    :cond_6
    iget v4, v3, Lf/i/a/a/i1/m/c$a;->h:I

    int-to-float v4, v4

    const/high16 v9, 0x43510000    # 209.0f

    div-float/2addr v4, v9

    .line 20
    iget v9, v3, Lf/i/a/a/i1/m/c$a;->g:I

    int-to-float v9, v9

    const/high16 v10, 0x42940000    # 74.0f

    div-float v10, v9, v10

    :goto_4
    const v9, 0x3f666666    # 0.9f

    mul-float v4, v4, v9

    const v11, 0x3d4ccccd    # 0.05f

    add-float v12, v4, v11

    mul-float v10, v10, v9

    add-float v9, v10, v11

    .line 21
    iget v4, v3, Lf/i/a/a/i1/m/c$a;->i:I

    rem-int/2addr v4, v6

    if-nez v4, :cond_7

    const/4 v4, 0x0

    const/4 v10, 0x0

    goto :goto_5

    :cond_7
    if-ne v4, v8, :cond_8

    const/4 v4, 0x1

    const/4 v10, 0x1

    goto :goto_5

    :cond_8
    const/4 v4, 0x2

    const/4 v10, 0x2

    .line 22
    :goto_5
    iget v4, v3, Lf/i/a/a/i1/m/c$a;->i:I

    div-int/2addr v4, v6

    if-nez v4, :cond_9

    const/4 v4, 0x0

    const/4 v11, 0x0

    goto :goto_6

    :cond_9
    if-ne v4, v8, :cond_a

    const/4 v4, 0x1

    const/4 v11, 0x1

    goto :goto_6

    :cond_a
    const/4 v4, 0x2

    const/4 v11, 0x2

    .line 23
    :goto_6
    iget v4, v3, Lf/i/a/a/i1/m/c$a;->o:I

    sget v6, Lf/i/a/a/i1/m/c$a;->x:I

    if-eq v4, v6, :cond_b

    const/4 v4, 0x1

    const/4 v13, 0x1

    goto :goto_7

    :cond_b
    const/4 v4, 0x0

    const/4 v13, 0x0

    .line 24
    :goto_7
    new-instance v16, Lf/i/a/a/i1/m/b;

    const/4 v8, 0x0

    const/4 v14, 0x1

    iget v15, v3, Lf/i/a/a/i1/m/c$a;->o:I

    iget v3, v3, Lf/i/a/a/i1/m/c$a;->e:I

    move-object/from16 v4, v16

    move-object v6, v7

    move v7, v9

    move v9, v10

    move v10, v12

    move v12, v14

    move v14, v15

    move v15, v3

    invoke-direct/range {v4 .. v15}, Lf/i/a/a/i1/m/b;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZII)V

    move-object/from16 v3, v16

    .line 25
    :goto_8
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 26
    :cond_d
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 27
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public final l()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 1
    iget-object v1, p0, Lf/i/a/a/i1/m/c;->j:[Lf/i/a/a/i1/m/c$a;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lf/i/a/a/i1/m/c$a;->f()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
