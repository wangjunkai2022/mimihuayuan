.class public final Li/x$a;
.super Ljava/lang/Object;
.source "HttpUrl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/x$a$a;
    }
.end annotation


# static fields
.field public static final i:Li/x$a$a;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Li/x$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Li/x$a$a;-><init>(Lh/o/c/f;)V

    sput-object v0, Li/x$a;->i:Li/x$a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Li/x$a;->b:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Li/x$a;->c:Ljava/lang/String;

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Li/x$a;->e:I

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Li/x$a;->f:Ljava/util/List;

    .line 6
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Li/x$a;
    .locals 13

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 1
    iget-object v1, p0, Li/x$a;->g:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Li/x$a;->g:Ljava/util/List;

    .line 2
    :cond_0
    iget-object v1, p0, Li/x$a;->g:Ljava/util/List;

    if-eqz v1, :cond_3

    sget-object v2, Li/x;->l:Li/x$b;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xdb

    const-string v6, " !\"#$&\'(),/:;<=>?@[]\\^`{|}~"

    move-object v3, p1

    invoke-static/range {v2 .. v12}, Li/x$b;->a(Li/x$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Li/x$a;->g:Ljava/util/List;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    sget-object v1, Li/x;->l:Li/x$b;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xdb

    const-string v5, " !\"#$&\'(),/:;<=>?@[]\\^`{|}~"

    move-object v2, p2

    invoke-static/range {v1 .. v11}, Li/x$b;->a(Li/x$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_2
    invoke-static {}, Lh/o/c/g;->e()V

    throw v0

    .line 4
    :cond_3
    invoke-static {}, Lh/o/c/g;->e()V

    throw v0

    :cond_4
    const-string p1, "name"

    .line 5
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()Li/x;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    new-instance v11, Li/x;

    .line 2
    iget-object v2, v0, Li/x$a;->a:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 3
    sget-object v3, Li/x;->l:Li/x$b;

    iget-object v4, v0, Li/x$a;->b:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x7

    invoke-static/range {v3 .. v8}, Li/x$b;->d(Li/x$b;Ljava/lang/String;IIZI)Ljava/lang/String;

    move-result-object v3

    .line 4
    sget-object v4, Li/x;->l:Li/x$b;

    iget-object v5, v0, Li/x$a;->c:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x7

    invoke-static/range {v4 .. v9}, Li/x$b;->d(Li/x$b;Ljava/lang/String;IIZI)Ljava/lang/String;

    move-result-object v4

    .line 5
    iget-object v5, v0, Li/x$a;->d:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 6
    invoke-virtual/range {p0 .. p0}, Li/x$a;->c()I

    move-result v6

    .line 7
    sget-object v1, Li/x;->l:Li/x$b;

    iget-object v7, v0, Li/x$a;->f:Ljava/util/List;

    const/4 v8, 0x0

    .line 8
    invoke-virtual {v1, v7, v8}, Li/x$b;->c(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v7

    .line 9
    iget-object v1, v0, Li/x$a;->g:Ljava/util/List;

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    sget-object v9, Li/x;->l:Li/x$b;

    const/4 v10, 0x1

    .line 10
    invoke-virtual {v9, v1, v10}, Li/x$b;->c(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    move-object v9, v1

    goto :goto_0

    :cond_0
    move-object v9, v8

    .line 11
    :goto_0
    iget-object v13, v0, Li/x$a;->h:Ljava/lang/String;

    if-eqz v13, :cond_1

    sget-object v12, Li/x;->l:Li/x$b;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x7

    invoke-static/range {v12 .. v17}, Li/x$b;->d(Li/x$b;Ljava/lang/String;IIZI)Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    goto :goto_1

    :cond_1
    move-object v10, v8

    .line 12
    :goto_1
    invoke-virtual/range {p0 .. p0}, Li/x$a;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v1, v11

    move-object v8, v9

    move-object v9, v10

    move-object v10, v12

    .line 13
    invoke-direct/range {v1 .. v10}, Li/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v11

    .line 14
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "host == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 15
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "scheme == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final c()I
    .locals 4

    .line 1
    iget v0, p0, Li/x$a;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Li/x$a;->a:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x310888    # 4.503E-39f

    if-eq v2, v3, :cond_2

    const v3, 0x5f008eb

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "https"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x1bb

    goto :goto_1

    :cond_2
    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x50

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    return v0

    :cond_4
    const-string v0, "scheme"

    .line 3
    invoke-static {v0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v2

    .line 4
    :cond_5
    invoke-static {}, Lh/o/c/g;->e()V

    throw v2
.end method

.method public final d(Ljava/lang/String;)Li/x$a;
    .locals 12

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 1
    sget-object v1, Li/x;->l:Li/x$b;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xd3

    const-string v5, " \"\'<>#"

    move-object v2, p1

    .line 2
    invoke-static/range {v1 .. v11}, Li/x$b;->a(Li/x$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v3, v4, :cond_3

    const/16 v4, 0x26

    const/4 v5, 0x4

    .line 5
    invoke-static {p1, v4, v3, v2, v5}, Lh/s/d;->i(Ljava/lang/CharSequence;CIZI)I

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_0

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    :cond_0
    const/16 v7, 0x3d

    .line 7
    invoke-static {p1, v7, v3, v2, v5}, Lh/s/d;->i(Ljava/lang/CharSequence;CIZI)I

    move-result v5

    const-string v7, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    if-eq v5, v6, :cond_2

    if-le v5, v4, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    .line 9
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 10
    :cond_2
    :goto_1
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v4, 0x1

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 12
    :cond_4
    iput-object v0, p0, Li/x$a;->g:Ljava/util/List;

    return-object p0
.end method

.method public final e(Ljava/lang/String;)Li/x$a;
    .locals 6

    if-eqz p1, :cond_1

    .line 1
    sget-object v0, Li/x;->l:Li/x$b;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Li/x$b;->d(Li/x$b;Ljava/lang/String;IIZI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/b/g/h;->t1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iput-object v0, p0, Li/x$a;->d:Ljava/lang/String;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unexpected host: "

    .line 4
    invoke-static {v1, p1}, Lf/b/a/a/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "host"

    .line 6
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final f(Li/x;Ljava/lang/String;)Li/x$a;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v12, p2

    if-eqz v12, :cond_2f

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 1
    invoke-static {v12, v3, v3, v2}, Li/m0/b;->s(Ljava/lang/String;III)I

    move-result v2

    .line 2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v12, v2, v4}, Li/m0/b;->t(Ljava/lang/String;II)I

    move-result v13

    sub-int v4, v13, v2

    const/4 v5, 0x2

    const/16 v6, 0x3a

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-ge v4, v5, :cond_0

    goto :goto_5

    .line 3
    :cond_0
    invoke-virtual {v12, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v9, 0x5a

    const/16 v10, 0x7a

    const/16 v11, 0x41

    const/16 v14, 0x61

    if-lt v4, v14, :cond_1

    if-le v4, v10, :cond_2

    :cond_1
    if-lt v4, v11, :cond_c

    if-le v4, v9, :cond_2

    goto :goto_5

    :cond_2
    move v4, v2

    :goto_0
    add-int/2addr v4, v8

    if-ge v4, v13, :cond_c

    .line 4
    invoke-virtual {v12, v4}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-le v14, v15, :cond_3

    goto :goto_1

    :cond_3
    if-lt v10, v15, :cond_4

    goto :goto_4

    :cond_4
    :goto_1
    if-le v11, v15, :cond_5

    goto :goto_2

    :cond_5
    if-lt v9, v15, :cond_6

    goto :goto_4

    :cond_6
    :goto_2
    const/16 v9, 0x39

    const/16 v10, 0x30

    if-le v10, v15, :cond_7

    goto :goto_3

    :cond_7
    if-lt v9, v15, :cond_8

    goto :goto_4

    :cond_8
    :goto_3
    const/16 v9, 0x2b

    if-ne v15, v9, :cond_9

    goto :goto_4

    :cond_9
    const/16 v9, 0x2d

    if-ne v15, v9, :cond_a

    goto :goto_4

    :cond_a
    const/16 v9, 0x2e

    if-ne v15, v9, :cond_b

    :goto_4
    const/16 v9, 0x5a

    const/16 v10, 0x7a

    goto :goto_0

    :cond_b
    if-ne v15, v6, :cond_c

    goto :goto_6

    :cond_c
    :goto_5
    const/4 v4, -0x1

    :goto_6
    const-string v14, "http"

    const-string v15, "https"

    const-string v11, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    if-eq v4, v7, :cond_f

    const-string v6, "https:"

    .line 5
    invoke-static {v12, v6, v2, v8}, Lh/s/d;->t(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 6
    iput-object v15, v0, Li/x$a;->a:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x6

    goto :goto_7

    :cond_d
    const-string v6, "http:"

    .line 7
    invoke-static {v12, v6, v2, v8}, Lh/s/d;->t(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 8
    iput-object v14, v0, Li/x$a;->a:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x5

    goto :goto_7

    :cond_e
    const-string v1, "Expected URL scheme \'http\' or \'https\' but was \'"

    .line 9
    invoke-static {v1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 10
    invoke-virtual {v12, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v11}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_f
    if-eqz v1, :cond_2e

    .line 12
    iget-object v3, v1, Li/x;->b:Ljava/lang/String;

    .line 13
    iput-object v3, v0, Li/x$a;->a:Ljava/lang/String;

    :goto_7
    const/4 v3, 0x0

    move v4, v2

    :goto_8
    const/16 v6, 0x2f

    const/16 v9, 0x5c

    if-ge v4, v13, :cond_11

    .line 14
    invoke-virtual {v12, v4}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v10, v9, :cond_10

    if-ne v10, v6, :cond_11

    :cond_10
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_11
    const/16 v4, 0x23

    if-ge v3, v5, :cond_15

    if-eqz v1, :cond_15

    .line 15
    iget-object v5, v1, Li/x;->b:Ljava/lang/String;

    .line 16
    iget-object v10, v0, Li/x$a;->a:Ljava/lang/String;

    invoke-static {v5, v10}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v5, v8

    if-eqz v5, :cond_12

    goto :goto_9

    .line 17
    :cond_12
    invoke-virtual/range {p1 .. p1}, Li/x;->e()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Li/x$a;->b:Ljava/lang/String;

    .line 18
    invoke-virtual/range {p1 .. p1}, Li/x;->a()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Li/x$a;->c:Ljava/lang/String;

    .line 19
    iget-object v3, v1, Li/x;->e:Ljava/lang/String;

    .line 20
    iput-object v3, v0, Li/x$a;->d:Ljava/lang/String;

    .line 21
    iget v3, v1, Li/x;->f:I

    .line 22
    iput v3, v0, Li/x$a;->e:I

    .line 23
    iget-object v3, v0, Li/x$a;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 24
    iget-object v3, v0, Li/x$a;->f:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Li/x;->c()Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eq v2, v13, :cond_13

    .line 25
    invoke-virtual {v12, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_14

    .line 26
    :cond_13
    invoke-virtual/range {p1 .. p1}, Li/x;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/x$a;->d(Ljava/lang/String;)Li/x$a;

    :cond_14
    move/from16 v18, v13

    goto/16 :goto_19

    :cond_15
    :goto_9
    add-int/2addr v2, v3

    const/4 v1, 0x0

    const/4 v3, 0x0

    move v10, v2

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_a
    const-string v1, "@/\\?#"

    .line 27
    invoke-static {v12, v1, v10, v13}, Li/m0/b;->i(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v8

    if-eq v8, v13, :cond_16

    .line 28
    invoke-virtual {v12, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_b

    :cond_16
    const/4 v1, -0x1

    :goto_b
    if-eq v1, v7, :cond_1b

    if-eq v1, v4, :cond_1b

    if-eq v1, v6, :cond_1b

    if-eq v1, v9, :cond_1b

    const/16 v2, 0x3f

    if-eq v1, v2, :cond_1b

    const/16 v2, 0x40

    if-eq v1, v2, :cond_17

    move/from16 v18, v13

    move-object/from16 v19, v14

    move-object v13, v11

    goto/16 :goto_e

    :cond_17
    const-string v9, "%40"

    if-nez v16, :cond_1a

    const/16 v1, 0x3a

    .line 29
    invoke-static {v12, v1, v10, v8}, Li/m0/b;->h(Ljava/lang/String;CII)I

    move-result v7

    .line 30
    sget-object v1, Li/x;->l:Li/x$b;

    const/4 v6, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0xf0

    const-string v5, " \"\':;<=>@[]^`{}|/\\?#"

    move-object/from16 v2, p2

    move v3, v10

    move v4, v7

    move v10, v7

    move/from16 v7, v18

    move/from16 v23, v8

    move/from16 v8, v19

    move-object/from16 v24, v9

    move/from16 v9, v20

    move/from16 v25, v10

    move-object/from16 v10, v21

    move/from16 v18, v13

    move-object v13, v11

    move/from16 v11, v22

    invoke-static/range {v1 .. v11}, Li/x$b;->a(Li/x$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v17, :cond_18

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Li/x$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v24

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 32
    :cond_18
    iput-object v1, v0, Li/x$a;->b:Ljava/lang/String;

    move/from16 v11, v23

    move/from16 v1, v25

    if-eq v1, v11, :cond_19

    .line 33
    sget-object v2, Li/x;->l:Li/x$b;

    add-int/lit8 v3, v1, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v16, 0xf0

    const-string v5, " \"\':;<=>@[]^`{}|/\\?#"

    move-object v1, v2

    move-object/from16 v2, p2

    move v4, v11

    move/from16 v23, v11

    move/from16 v11, v16

    invoke-static/range {v1 .. v11}, Li/x$b;->a(Li/x$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Li/x$a;->c:Ljava/lang/String;

    const/16 v16, 0x1

    goto :goto_c

    :cond_19
    move/from16 v23, v11

    :goto_c
    const/16 v17, 0x1

    move-object/from16 v19, v14

    goto :goto_d

    :cond_1a
    move/from16 v23, v8

    move-object v3, v9

    move/from16 v18, v13

    move-object v13, v11

    .line 34
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Li/x$a;->c:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Li/x;->l:Li/x$b;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v19, 0x0

    const/16 v20, 0xf0

    const-string v5, " \"\':;<=>@[]^`{}|/\\?#"

    move-object/from16 v2, p2

    move v3, v10

    move/from16 v4, v23

    move-object/from16 v10, v19

    move-object/from16 v19, v14

    move-object v14, v11

    move/from16 v11, v20

    invoke-static/range {v1 .. v11}, Li/x$b;->a(Li/x$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Li/x$a;->c:Ljava/lang/String;

    :goto_d
    move/from16 v14, v23

    add-int/lit8 v10, v14, 0x1

    :goto_e
    const/16 v4, 0x23

    const/16 v6, 0x2f

    const/4 v7, -0x1

    const/16 v9, 0x5c

    move-object v11, v13

    move/from16 v13, v18

    move-object/from16 v14, v19

    goto/16 :goto_a

    :cond_1b
    move/from16 v18, v13

    move-object/from16 v19, v14

    move v14, v8

    move-object v13, v11

    const/16 v1, 0x3a

    move v8, v10

    :goto_f
    if-ge v8, v14, :cond_1f

    .line 35
    invoke-virtual {v12, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v1, :cond_1e

    const/16 v3, 0x5b

    if-eq v2, v3, :cond_1c

    goto :goto_10

    :cond_1c
    add-int/lit8 v8, v8, 0x1

    if-ge v8, v14, :cond_1d

    .line 36
    invoke-virtual {v12, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_1c

    :cond_1d
    :goto_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    :cond_1e
    move v11, v8

    goto :goto_11

    :cond_1f
    move v11, v14

    :goto_11
    add-int/lit8 v9, v11, 0x1

    if-ge v9, v14, :cond_24

    .line 37
    sget-object v1, Li/x;->l:Li/x$b;

    const/4 v5, 0x0

    const/4 v6, 0x4

    move-object/from16 v2, p2

    move v3, v10

    move v4, v11

    invoke-static/range {v1 .. v6}, Li/x$b;->d(Li/x$b;Ljava/lang/String;IIZI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc/a/a/b/g/h;->t1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Li/x$a;->d:Ljava/lang/String;

    .line 38
    :try_start_0
    sget-object v1, Li/x;->l:Li/x$b;

    const-string v5, ""
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xf8

    move-object/from16 v2, p2

    move v3, v9

    move v4, v14

    move/from16 v26, v9

    move v9, v15

    move v15, v10

    move-object/from16 v10, v16

    move/from16 p1, v11

    move/from16 v11, v17

    :try_start_1
    invoke-static/range {v1 .. v11}, Li/x$b;->a(Li/x$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    const v2, 0xffff

    const/4 v3, 0x1

    if-le v3, v1, :cond_20

    goto :goto_12

    :cond_20
    if-lt v2, v1, :cond_21

    goto :goto_13

    :catch_0
    move/from16 v26, v9

    move v15, v10

    move/from16 p1, v11

    :catch_1
    :cond_21
    :goto_12
    const/4 v1, -0x1

    .line 40
    :goto_13
    iput v1, v0, Li/x$a;->e:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_22

    const/4 v1, 0x1

    goto :goto_14

    :cond_22
    const/4 v1, 0x0

    :goto_14
    if-eqz v1, :cond_23

    const/16 v1, 0x22

    move v10, v15

    goto/16 :goto_17

    :cond_23
    const-string v1, "Invalid URL port: \""

    .line 41
    invoke-static {v1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v11, v26

    invoke-virtual {v12, v11, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v13}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 42
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_24
    move/from16 p1, v11

    const/16 v7, 0x22

    .line 43
    sget-object v1, Li/x;->l:Li/x$b;

    const/4 v5, 0x0

    const/4 v6, 0x4

    move-object/from16 v2, p2

    move v3, v10

    move/from16 v4, p1

    invoke-static/range {v1 .. v6}, Li/x$b;->d(Li/x$b;Ljava/lang/String;IIZI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc/a/a/b/g/h;->t1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Li/x$a;->d:Ljava/lang/String;

    .line 44
    iget-object v1, v0, Li/x$a;->a:Ljava/lang/String;

    if-eqz v1, :cond_2d

    if-eqz v1, :cond_2c

    .line 45
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x310888    # 4.503E-39f

    if-eq v2, v3, :cond_26

    const v3, 0x5f008eb

    if-eq v2, v3, :cond_25

    goto :goto_15

    :cond_25
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    const/16 v1, 0x1bb

    goto :goto_16

    :cond_26
    move-object/from16 v2, v19

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    const/16 v1, 0x50

    goto :goto_16

    :cond_27
    :goto_15
    const/4 v1, -0x1

    .line 46
    :goto_16
    iput v1, v0, Li/x$a;->e:I

    const/16 v1, 0x22

    .line 47
    :goto_17
    iget-object v2, v0, Li/x$a;->d:Ljava/lang/String;

    if-eqz v2, :cond_28

    const/4 v2, 0x1

    goto :goto_18

    :cond_28
    const/4 v2, 0x0

    :goto_18
    if-eqz v2, :cond_2b

    move v2, v14

    :goto_19
    const-string v1, "?#"

    move/from16 v13, v18

    .line 48
    invoke-static {v12, v1, v2, v13}, Li/m0/b;->i(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    .line 49
    invoke-virtual {v0, v12, v2, v1}, Li/x$a;->g(Ljava/lang/String;II)V

    if-ge v1, v13, :cond_29

    .line 50
    invoke-virtual {v12, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3f

    if-ne v2, v3, :cond_29

    const/16 v2, 0x23

    .line 51
    invoke-static {v12, v2, v1, v13}, Li/m0/b;->h(Ljava/lang/String;CII)I

    move-result v14

    .line 52
    sget-object v15, Li/x;->l:Li/x$b;

    add-int/lit8 v3, v1, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xd0

    const-string v5, " \"\'<>#"

    move-object v1, v15

    move-object/from16 v2, p2

    move v4, v14

    invoke-static/range {v1 .. v11}, Li/x$b;->a(Li/x$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-virtual {v15, v1}, Li/x$b;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Li/x$a;->g:Ljava/util/List;

    move v1, v14

    :cond_29
    if-ge v1, v13, :cond_2a

    .line 54
    invoke-virtual {v12, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_2a

    .line 55
    sget-object v2, Li/x;->l:Li/x$b;

    add-int/lit8 v3, v1, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v11, 0xb0

    const-string v5, ""

    move-object v1, v2

    move-object/from16 v2, p2

    move v4, v13

    invoke-static/range {v1 .. v11}, Li/x$b;->a(Li/x$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Li/x$a;->h:Ljava/lang/String;

    :cond_2a
    return-object v0

    :cond_2b
    const-string v2, "Invalid URL host: \""

    .line 56
    invoke-static {v2}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v14, p1

    invoke-virtual {v12, v10, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v13}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2c
    const-string v1, "scheme"

    .line 58
    invoke-static {v1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1

    :cond_2d
    const/4 v1, 0x0

    .line 59
    invoke-static {}, Lh/o/c/g;->e()V

    throw v1

    .line 60
    :cond_2e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Expected URL scheme \'http\' or \'https\' but no colon was found"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2f
    const/4 v1, 0x0

    const-string v2, "input"

    .line 61
    invoke-static {v2}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v1
.end method

.method public final g(Ljava/lang/String;II)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    if-ne v1, v2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    const-string v5, ""

    const/4 v6, 0x1

    if-eq v3, v4, :cond_2

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    iget-object v3, v0, Li/x$a;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-interface {v3, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v4, v0

    move v9, v1

    move v3, v2

    move-object/from16 v1, p1

    goto :goto_2

    .line 3
    :cond_2
    :goto_0
    iget-object v3, v0, Li/x$a;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 4
    iget-object v3, v0, Li/x$a;->f:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v4, v0

    move v3, v2

    move v2, v1

    move-object/from16 v1, p1

    :goto_1
    add-int/2addr v2, v6

    :cond_3
    move v9, v2

    :goto_2
    if-ge v9, v3, :cond_10

    const-string v2, "/\\"

    .line 5
    invoke-static {v1, v2, v9, v3}, Li/m0/b;->i(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v2

    const/16 v18, 0x0

    if-ge v2, v3, :cond_4

    const/16 v19, 0x1

    goto :goto_3

    :cond_4
    const/16 v19, 0x0

    :goto_3
    const/4 v12, 0x1

    .line 6
    sget-object v7, Li/x;->l:Li/x$b;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xf0

    const-string v11, " \"<>^`{}|/\\?#"

    move-object v8, v1

    move v10, v2

    invoke-static/range {v7 .. v17}, Li/x$b;->a(Li/x$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "."

    .line 7
    invoke-static {v7, v8}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "%2e"

    invoke-static {v7, v8, v6}, Lh/s/d;->d(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_4

    :cond_5
    const/4 v8, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v8, 0x1

    :goto_5
    if-eqz v8, :cond_7

    goto/16 :goto_9

    :cond_7
    const-string v8, ".."

    .line 8
    invoke-static {v7, v8}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "%2e."

    .line 9
    invoke-static {v7, v8, v6}, Lh/s/d;->d(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, ".%2e"

    .line 10
    invoke-static {v7, v8, v6}, Lh/s/d;->d(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "%2e%2e"

    .line 11
    invoke-static {v7, v8, v6}, Lh/s/d;->d(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_8

    goto :goto_6

    :cond_8
    const/4 v8, 0x0

    goto :goto_7

    :cond_9
    :goto_6
    const/4 v8, 0x1

    :goto_7
    if-eqz v8, :cond_c

    .line 12
    iget-object v7, v4, Li/x$a;->f:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-interface {v7, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 13
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_a

    const/16 v18, 0x1

    :cond_a
    if-eqz v18, :cond_b

    iget-object v7, v4, Li/x$a;->f:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    xor-int/2addr v7, v6

    if-eqz v7, :cond_b

    .line 14
    iget-object v7, v4, Li/x$a;->f:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-interface {v7, v8, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 15
    :cond_b
    iget-object v7, v4, Li/x$a;->f:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 16
    :cond_c
    iget-object v8, v4, Li/x$a;->f:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v6

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_d

    const/16 v18, 0x1

    :cond_d
    if-eqz v18, :cond_e

    .line 17
    iget-object v8, v4, Li/x$a;->f:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v6

    invoke-interface {v8, v9, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 18
    :cond_e
    iget-object v8, v4, Li/x$a;->f:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_8
    if-eqz v19, :cond_f

    .line 19
    iget-object v7, v4, Li/x$a;->f:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    :goto_9
    if-eqz v19, :cond_3

    goto/16 :goto_1

    :cond_10
    return-void
.end method

.method public final h(Ljava/lang/String;)Li/x$a;
    .locals 3

    if-eqz p1, :cond_2

    const-string v0, "http"

    const/4 v1, 0x1

    .line 1
    invoke-static {p1, v0, v1}, Lh/s/d;->d(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v0, p0, Li/x$a;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "https"

    .line 2
    invoke-static {p1, v0, v1}, Lh/s/d;->d(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Li/x$a;->a:Ljava/lang/String;

    :goto_0
    return-object p0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unexpected scheme: "

    invoke-static {v1, p1}, Lf/b/a/a/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string p1, "scheme"

    .line 4
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Li/x$a;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "//"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :goto_0
    iget-object v1, p0, Li/x$a;->b:Ljava/lang/String;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const/16 v4, 0x3a

    if-nez v1, :cond_3

    iget-object v1, p0, Li/x$a;->c:Ljava/lang/String;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_6

    .line 7
    :cond_3
    iget-object v1, p0, Li/x$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v1, p0, Li/x$a;->c:Ljava/lang/String;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_5

    .line 9
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    iget-object v1, p0, Li/x$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const/16 v1, 0x40

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    :cond_6
    iget-object v1, p0, Li/x$a;->d:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v5, 0x0

    if-eqz v1, :cond_9

    if-eqz v1, :cond_8

    .line 13
    invoke-static {v1, v4, v3, v2}, Lh/s/d;->a(Ljava/lang/CharSequence;CZI)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x5b

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 15
    iget-object v1, p0, Li/x$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 17
    :cond_7
    iget-object v1, p0, Li/x$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 18
    :cond_8
    invoke-static {}, Lh/o/c/g;->e()V

    throw v5

    .line 19
    :cond_9
    :goto_4
    iget v1, p0, Li/x$a;->e:I

    const/4 v6, -0x1

    if-ne v1, v6, :cond_a

    iget-object v1, p0, Li/x$a;->a:Ljava/lang/String;

    if-eqz v1, :cond_11

    .line 20
    :cond_a
    invoke-virtual {p0}, Li/x$a;->c()I

    move-result v1

    .line 21
    iget-object v7, p0, Li/x$a;->a:Ljava/lang/String;

    if-eqz v7, :cond_10

    if-eqz v7, :cond_f

    if-eqz v7, :cond_e

    .line 22
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, 0x310888    # 4.503E-39f

    if-eq v8, v9, :cond_c

    const v9, 0x5f008eb

    if-eq v8, v9, :cond_b

    goto :goto_5

    :cond_b
    const-string v8, "https"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    const/16 v6, 0x1bb

    goto :goto_5

    :cond_c
    const-string v8, "http"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    const/16 v6, 0x50

    :cond_d
    :goto_5
    if-eq v1, v6, :cond_11

    goto :goto_6

    :cond_e
    const-string v0, "scheme"

    .line 23
    invoke-static {v0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v5

    .line 24
    :cond_f
    invoke-static {}, Lh/o/c/g;->e()V

    throw v5

    .line 25
    :cond_10
    :goto_6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    :cond_11
    iget-object v1, p0, Li/x$a;->f:Ljava/util/List;

    if-eqz v1, :cond_1a

    .line 28
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v4, :cond_12

    const/16 v7, 0x2f

    .line 29
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 31
    :cond_12
    iget-object v1, p0, Li/x$a;->g:Ljava/util/List;

    if-eqz v1, :cond_18

    const/16 v1, 0x3f

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    iget-object v1, p0, Li/x$a;->g:Ljava/util/List;

    if-eqz v1, :cond_17

    if-eqz v1, :cond_16

    .line 34
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, v4}, Lh/p/d;->c(II)Lh/p/c;

    move-result-object v3

    invoke-static {v3, v2}, Lh/p/d;->b(Lh/p/a;I)Lh/p/a;

    move-result-object v2

    .line 35
    iget v3, v2, Lh/p/a;->a:I

    .line 36
    iget v4, v2, Lh/p/a;->b:I

    .line 37
    iget v2, v2, Lh/p/a;->c:I

    if-ltz v2, :cond_13

    if-gt v3, v4, :cond_18

    goto :goto_8

    :cond_13
    if-lt v3, v4, :cond_18

    .line 38
    :goto_8
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    add-int/lit8 v6, v3, 0x1

    .line 39
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-lez v3, :cond_14

    const/16 v7, 0x26

    .line 40
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    :cond_14
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_15

    const/16 v5, 0x3d

    .line 42
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    if-eq v3, v4, :cond_18

    add-int/2addr v3, v2

    goto :goto_8

    :cond_16
    const-string v0, "$this$toQueryString"

    .line 44
    invoke-static {v0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v5

    .line 45
    :cond_17
    invoke-static {}, Lh/o/c/g;->e()V

    throw v5

    .line 46
    :cond_18
    iget-object v1, p0, Li/x$a;->h:Ljava/lang/String;

    if-eqz v1, :cond_19

    const/16 v1, 0x23

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    iget-object v1, p0, Li/x$a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    :cond_19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_1a
    const-string v0, "$this$toPathString"

    .line 50
    invoke-static {v0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v5
.end method
