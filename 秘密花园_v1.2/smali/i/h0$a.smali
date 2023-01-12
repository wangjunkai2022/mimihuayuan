.class public Li/h0$a;
.super Ljava/lang/Object;
.source "Response.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Li/e0;

.field public b:Li/c0;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Li/v;

.field public f:Li/w$a;

.field public g:Li/i0;

.field public h:Li/h0;

.field public i:Li/h0;

.field public j:Li/h0;

.field public k:J

.field public l:J

.field public m:Li/m0/d/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Li/h0$a;->c:I

    .line 3
    new-instance v0, Li/w$a;

    invoke-direct {v0}, Li/w$a;-><init>()V

    iput-object v0, p0, Li/h0$a;->f:Li/w$a;

    return-void
.end method

.method public constructor <init>(Li/h0;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Li/h0$a;->c:I

    .line 6
    iget-object v0, p1, Li/h0;->b:Li/e0;

    .line 7
    iput-object v0, p0, Li/h0$a;->a:Li/e0;

    .line 8
    iget-object v0, p1, Li/h0;->c:Li/c0;

    .line 9
    iput-object v0, p0, Li/h0$a;->b:Li/c0;

    .line 10
    iget v0, p1, Li/h0;->e:I

    .line 11
    iput v0, p0, Li/h0$a;->c:I

    .line 12
    iget-object v0, p1, Li/h0;->d:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Li/h0$a;->d:Ljava/lang/String;

    .line 14
    iget-object v0, p1, Li/h0;->f:Li/v;

    .line 15
    iput-object v0, p0, Li/h0$a;->e:Li/v;

    .line 16
    iget-object v0, p1, Li/h0;->g:Li/w;

    .line 17
    invoke-virtual {v0}, Li/w;->d()Li/w$a;

    move-result-object v0

    iput-object v0, p0, Li/h0$a;->f:Li/w$a;

    .line 18
    iget-object v0, p1, Li/h0;->h:Li/i0;

    .line 19
    iput-object v0, p0, Li/h0$a;->g:Li/i0;

    .line 20
    iget-object v0, p1, Li/h0;->i:Li/h0;

    .line 21
    iput-object v0, p0, Li/h0$a;->h:Li/h0;

    .line 22
    iget-object v0, p1, Li/h0;->j:Li/h0;

    .line 23
    iput-object v0, p0, Li/h0$a;->i:Li/h0;

    .line 24
    iget-object v0, p1, Li/h0;->k:Li/h0;

    .line 25
    iput-object v0, p0, Li/h0$a;->j:Li/h0;

    .line 26
    iget-wide v0, p1, Li/h0;->l:J

    .line 27
    iput-wide v0, p0, Li/h0$a;->k:J

    .line 28
    iget-wide v0, p1, Li/h0;->m:J

    .line 29
    iput-wide v0, p0, Li/h0$a;->l:J

    .line 30
    iget-object p1, p1, Li/h0;->n:Li/m0/d/c;

    .line 31
    iput-object p1, p0, Li/h0$a;->m:Li/m0/d/c;

    return-void

    :cond_0
    const-string p1, "response"

    .line 32
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Li/h0$a;
    .locals 1

    .line 1
    iget-object v0, p0, Li/h0$a;->f:Li/w$a;

    invoke-virtual {v0, p1, p2}, Li/w$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/w$a;

    return-object p0
.end method

.method public b()Li/h0;
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Li/h0$a;->c:I

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    .line 2
    iget-object v3, v0, Li/h0$a;->a:Li/e0;

    if-eqz v3, :cond_3

    .line 3
    iget-object v4, v0, Li/h0$a;->b:Li/c0;

    if-eqz v4, :cond_2

    .line 4
    iget-object v5, v0, Li/h0$a;->d:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 5
    iget v6, v0, Li/h0$a;->c:I

    .line 6
    iget-object v7, v0, Li/h0$a;->e:Li/v;

    .line 7
    iget-object v1, v0, Li/h0$a;->f:Li/w$a;

    invoke-virtual {v1}, Li/w$a;->d()Li/w;

    move-result-object v8

    .line 8
    iget-object v9, v0, Li/h0$a;->g:Li/i0;

    .line 9
    iget-object v10, v0, Li/h0$a;->h:Li/h0;

    .line 10
    iget-object v11, v0, Li/h0$a;->i:Li/h0;

    .line 11
    iget-object v12, v0, Li/h0$a;->j:Li/h0;

    .line 12
    iget-wide v13, v0, Li/h0$a;->k:J

    .line 13
    iget-wide v1, v0, Li/h0$a;->l:J

    .line 14
    iget-object v15, v0, Li/h0$a;->m:Li/m0/d/c;

    .line 15
    new-instance v18, Li/h0;

    move-wide/from16 v16, v1

    move-object/from16 v2, v18

    move-object v1, v15

    move-wide/from16 v15, v16

    move-object/from16 v17, v1

    invoke-direct/range {v2 .. v17}, Li/h0;-><init>(Li/e0;Li/c0;Ljava/lang/String;ILi/v;Li/w;Li/i0;Li/h0;Li/h0;Li/h0;JJLi/m0/d/c;)V

    return-object v18

    .line 16
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "message == null"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 17
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "protocol == null"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 18
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "request == null"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string v1, "code < 0: "

    .line 19
    invoke-static {v1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Li/h0$a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public c(Li/h0;)Li/h0$a;
    .locals 1

    const-string v0, "cacheResponse"

    .line 1
    invoke-virtual {p0, v0, p1}, Li/h0$a;->d(Ljava/lang/String;Li/h0;)V

    .line 2
    iput-object p1, p0, Li/h0$a;->i:Li/h0;

    return-object p0
.end method

.method public final d(Ljava/lang/String;Li/h0;)V
    .locals 2

    if-eqz p2, :cond_8

    .line 1
    iget-object v0, p2, Li/h0;->h:Li/i0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_7

    .line 2
    iget-object v0, p2, Li/h0;->i:Li/h0;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_6

    .line 3
    iget-object v0, p2, Li/h0;->j:Li/h0;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_5

    .line 4
    iget-object p2, p2, Li/h0;->k:Li/h0;

    if-nez p2, :cond_3

    const/4 v1, 0x1

    :cond_3
    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    const-string p2, ".priorResponse != null"

    .line 5
    invoke-static {p1, p2}, Lf/b/a/a/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    const-string p2, ".cacheResponse != null"

    .line 6
    invoke-static {p1, p2}, Lf/b/a/a/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_6
    const-string p2, ".networkResponse != null"

    .line 7
    invoke-static {p1, p2}, Lf/b/a/a/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_7
    const-string p2, ".body != null"

    .line 8
    invoke-static {p1, p2}, Lf/b/a/a/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_8
    :goto_3
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)Li/h0$a;
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Li/h0$a;->f:Li/w$a;

    invoke-virtual {v0, p1, p2}, Li/w$a;->g(Ljava/lang/String;Ljava/lang/String;)Li/w$a;

    return-object p0

    :cond_0
    const-string p1, "value"

    .line 2
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public f(Li/w;)Li/h0$a;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Li/w;->d()Li/w$a;

    move-result-object p1

    iput-object p1, p0, Li/h0$a;->f:Li/w$a;

    return-object p0

    :cond_0
    const-string p1, "headers"

    .line 2
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public g(Ljava/lang/String;)Li/h0$a;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Li/h0$a;->d:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p1, "message"

    .line 2
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public h(Li/c0;)Li/h0$a;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Li/h0$a;->b:Li/c0;

    return-object p0

    :cond_0
    const-string p1, "protocol"

    .line 2
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public i(Ljava/lang/String;)Li/h0$a;
    .locals 1

    .line 1
    iget-object v0, p0, Li/h0$a;->f:Li/w$a;

    invoke-virtual {v0, p1}, Li/w$a;->f(Ljava/lang/String;)Li/w$a;

    return-object p0
.end method

.method public j(Li/e0;)Li/h0$a;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Li/h0$a;->a:Li/e0;

    return-object p0

    :cond_0
    const-string p1, "request"

    .line 2
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
