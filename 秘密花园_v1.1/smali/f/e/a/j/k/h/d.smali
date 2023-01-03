.class public Lf/e/a/j/k/h/d;
.super Ljava/lang/Object;
.source "FL2PlayerInterceptor.java"

# interfaces
.implements Li/y;


# static fields
.field public static a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "UhspVQhBb0orVFgMMQAMWHoIIhwmGVIHPTVDDhotJRFTJRsSMUFVRjoMWx82ADpYejYuUCYJbEQVNxpfHg9UDVUDUVxcRF0DQVFQVkhSAlgAUFtWW0JdC0IDVUlBCVQKAAdWB1hBAANEUQ1eGQtWXwYBUl1dQgFSRlMMARpdVl8BWlIHWUAAVkZVV1RKDwEIVQdXVw=="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lf/e/a/j/k/h/d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Li/y$a;)Li/h0;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1
    invoke-interface/range {p1 .. p1}, Li/y$a;->S()Li/e0;

    move-result-object v1

    .line 2
    iget-object v1, v1, Li/e0;->b:Li/x;

    .line 3
    iget-object v1, v1, Li/x;->j:Ljava/lang/String;

    const-string v2, "GQ9QEQ=="

    .line 4
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 5
    invoke-static {v1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ERYMDw4dBA=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lf/e/a/j/k/h/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {}, Lf/e/a/k/f;->a()V

    .line 7
    invoke-interface/range {p1 .. p1}, Li/y$a;->S()Li/e0;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 8
    new-instance v3, Li/e0$a;

    invoke-direct {v3, v2}, Li/e0$a;-><init>(Li/e0;)V

    .line 9
    invoke-virtual {v3, v1}, Li/e0$a;->i(Ljava/lang/String;)Li/e0$a;

    invoke-virtual {v3}, Li/e0$a;->b()Li/e0;

    move-result-object v1

    invoke-interface {v0, v1}, Li/y$a;->d(Li/e0;)Li/h0;

    move-result-object v0

    .line 10
    iget-object v1, v0, Li/h0;->h:Li/i0;

    .line 11
    invoke-virtual {v1}, Li/i0;->H()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FCc7MCZAbA=="

    .line 12
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "b081MAoU"

    .line 13
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Li/h0;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-static {v2, v1}, Lc/a/a/b/g/h;->J(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 15
    :goto_0
    iget-object v2, v0, Li/h0;->h:Li/i0;

    .line 16
    invoke-virtual {v2}, Li/i0;->E()Li/z;

    move-result-object v2

    invoke-static {v1, v2}, Li/i0;->F(Ljava/lang/String;Li/z;)Li/i0;

    move-result-object v10

    .line 17
    iget-object v4, v0, Li/h0;->b:Li/e0;

    .line 18
    iget-object v5, v0, Li/h0;->c:Li/c0;

    .line 19
    iget v7, v0, Li/h0;->e:I

    .line 20
    iget-object v6, v0, Li/h0;->d:Ljava/lang/String;

    .line 21
    iget-object v8, v0, Li/h0;->f:Li/v;

    .line 22
    iget-object v1, v0, Li/h0;->g:Li/w;

    .line 23
    invoke-virtual {v1}, Li/w;->d()Li/w$a;

    move-result-object v1

    .line 24
    iget-object v11, v0, Li/h0;->i:Li/h0;

    .line 25
    iget-object v12, v0, Li/h0;->j:Li/h0;

    .line 26
    iget-object v13, v0, Li/h0;->k:Li/h0;

    .line 27
    iget-wide v14, v0, Li/h0;->l:J

    .line 28
    iget-wide v2, v0, Li/h0;->m:J

    .line 29
    iget-object v0, v0, Li/h0;->n:Li/m0/d/c;

    if-ltz v7, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_5

    if-eqz v4, :cond_4

    if-eqz v5, :cond_3

    if-eqz v6, :cond_2

    .line 30
    invoke-virtual {v1}, Li/w$a;->d()Li/w;

    move-result-object v9

    .line 31
    new-instance v1, Li/h0;

    move-wide/from16 v16, v2

    move-object v3, v1

    move-object/from16 v18, v0

    invoke-direct/range {v3 .. v18}, Li/h0;-><init>(Li/e0;Li/c0;Ljava/lang/String;ILi/v;Li/w;Li/i0;Li/h0;Li/h0;Li/h0;JJLi/m0/d/c;)V

    return-object v1

    .line 32
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const-string v0, "code < 0: "

    .line 35
    invoke-static {v0, v7}, Lf/b/a/a/a;->J(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    const/4 v0, 0x0

    .line 36
    throw v0

    .line 37
    :cond_7
    invoke-interface/range {p1 .. p1}, Li/y$a;->S()Li/e0;

    move-result-object v1

    invoke-interface {v0, v1}, Li/y$a;->d(Li/e0;)Li/h0;

    move-result-object v0

    return-object v0
.end method
