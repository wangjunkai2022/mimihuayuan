.class public final Li/m0/e/g;
.super Ljava/lang/Object;
.source "RealInterceptorChain.kt"

# interfaces
.implements Li/y$a;


# instance fields
.field public a:I

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li/y;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Li/m0/d/m;

.field public final d:Li/m0/d/c;

.field public final e:I

.field public final f:Li/e0;

.field public final g:Li/f;

.field public final h:I

.field public final i:I

.field public final j:I


# direct methods
.method public constructor <init>(Ljava/util/List;Li/m0/d/m;Li/m0/d/c;ILi/e0;Li/f;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Li/y;",
            ">;",
            "Li/m0/d/m;",
            "Li/m0/d/c;",
            "I",
            "Li/e0;",
            "Li/f;",
            "III)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eqz p5, :cond_1

    if-eqz p6, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li/m0/e/g;->b:Ljava/util/List;

    iput-object p2, p0, Li/m0/e/g;->c:Li/m0/d/m;

    iput-object p3, p0, Li/m0/e/g;->d:Li/m0/d/c;

    iput p4, p0, Li/m0/e/g;->e:I

    iput-object p5, p0, Li/m0/e/g;->f:Li/e0;

    iput-object p6, p0, Li/m0/e/g;->g:Li/f;

    iput p7, p0, Li/m0/e/g;->h:I

    iput p8, p0, Li/m0/e/g;->i:I

    iput p9, p0, Li/m0/e/g;->j:I

    return-void

    :cond_0
    const-string p1, "call"

    .line 2
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "request"

    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string p1, "transmitter"

    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string p1, "interceptors"

    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public S()Li/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Li/m0/e/g;->f:Li/e0;

    return-object v0
.end method

.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Li/m0/e/g;->h:I

    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Li/m0/e/g;->i:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Li/m0/e/g;->j:I

    return v0
.end method

.method public d(Li/e0;)Li/h0;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Li/m0/e/g;->c:Li/m0/d/m;

    iget-object v1, p0, Li/m0/e/g;->d:Li/m0/d/c;

    invoke-virtual {p0, p1, v0, v1}, Li/m0/e/g;->e(Li/e0;Li/m0/d/m;Li/m0/d/c;)Li/h0;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "request"

    .line 2
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final e(Li/e0;Li/m0/d/m;Li/m0/d/c;)Li/h0;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v6, p1

    const/4 v1, 0x0

    if-eqz v6, :cond_f

    if-eqz p2, :cond_e

    .line 1
    iget v2, v0, Li/m0/e/g;->e:I

    iget-object v3, v0, Li/m0/e/g;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_d

    .line 2
    iget v2, v0, Li/m0/e/g;->a:I

    const/4 v11, 0x1

    add-int/2addr v2, v11

    iput v2, v0, Li/m0/e/g;->a:I

    .line 3
    iget-object v2, v0, Li/m0/e/g;->d:Li/m0/d/c;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Li/m0/d/c;->b()Li/m0/d/h;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4
    iget-object v1, v6, Li/e0;->b:Li/x;

    .line 5
    invoke-virtual {v2, v1}, Li/m0/d/h;->l(Li/x;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-static {}, Lh/o/c/g;->e()V

    throw v1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const-string v12, "network interceptor "

    if-eqz v1, :cond_c

    .line 6
    iget-object v1, v0, Li/m0/e/g;->d:Li/m0/d/c;

    if-eqz v1, :cond_4

    iget v1, v0, Li/m0/e/g;->a:I

    if-gt v1, v11, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v1, 0x1

    :goto_3
    const-string v13, " must call proceed() exactly once"

    if-eqz v1, :cond_b

    .line 7
    new-instance v14, Li/m0/e/g;

    iget-object v2, v0, Li/m0/e/g;->b:Ljava/util/List;

    .line 8
    iget v1, v0, Li/m0/e/g;->e:I

    add-int/lit8 v5, v1, 0x1

    iget-object v7, v0, Li/m0/e/g;->g:Li/f;

    iget v8, v0, Li/m0/e/g;->h:I

    iget v9, v0, Li/m0/e/g;->i:I

    iget v10, v0, Li/m0/e/g;->j:I

    move-object v1, v14

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p1

    .line 9
    invoke-direct/range {v1 .. v10}, Li/m0/e/g;-><init>(Ljava/util/List;Li/m0/d/m;Li/m0/d/c;ILi/e0;Li/f;III)V

    .line 10
    iget-object v1, v0, Li/m0/e/g;->b:Ljava/util/List;

    iget v2, v0, Li/m0/e/g;->e:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li/y;

    .line 11
    invoke-interface {v1, v14}, Li/y;->a(Li/y$a;)Li/h0;

    move-result-object v2

    const-string v3, "interceptor "

    if-eqz v2, :cond_a

    if-eqz p3, :cond_6

    .line 12
    iget v4, v0, Li/m0/e/g;->e:I

    add-int/2addr v4, v11

    iget-object v5, v0, Li/m0/e/g;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    iget v4, v14, Li/m0/e/g;->a:I

    if-ne v4, v11, :cond_5

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v4, 0x1

    :goto_5
    if-eqz v4, :cond_9

    .line 13
    iget-object v4, v2, Li/h0;->h:Li/i0;

    if-eqz v4, :cond_7

    goto :goto_6

    :cond_7
    const/4 v11, 0x0

    :goto_6
    if-eqz v11, :cond_8

    return-object v2

    .line 14
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " returned a response with no body"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 15
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 17
    :cond_a
    new-instance v2, Ljava/lang/NullPointerException;

    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " returned null"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 20
    :cond_b
    invoke-static {v12}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Li/m0/e/g;->b:Ljava/util/List;

    iget v3, v0, Li/m0/e/g;->e:I

    sub-int/2addr v3, v11

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li/y;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 21
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 22
    :cond_c
    invoke-static {v12}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Li/m0/e/g;->b:Ljava/util/List;

    iget v3, v0, Li/m0/e/g;->e:I

    sub-int/2addr v3, v11

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li/y;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " must retain the same host and port"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 23
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 24
    :cond_d
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_e
    const-string v2, "transmitter"

    .line 25
    invoke-static {v2}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v1

    :cond_f
    const-string v2, "request"

    invoke-static {v2}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v1
.end method
