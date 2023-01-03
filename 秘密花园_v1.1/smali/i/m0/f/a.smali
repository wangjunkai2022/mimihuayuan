.class public final Li/m0/f/a;
.super Ljava/lang/Object;
.source "Http1ExchangeCodec.kt"

# interfaces
.implements Li/m0/e/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/m0/f/a$e;,
        Li/m0/f/a$b;,
        Li/m0/f/a$a;,
        Li/m0/f/a$d;,
        Li/m0/f/a$c;,
        Li/m0/f/a$f;
    }
.end annotation


# instance fields
.field public a:I

.field public b:J

.field public c:Li/w;

.field public final d:Li/b0;

.field public final e:Li/m0/d/h;

.field public final f:Lj/j;

.field public final g:Lj/i;


# direct methods
.method public constructor <init>(Li/b0;Li/m0/d/h;Lj/j;Lj/i;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li/m0/f/a;->d:Li/b0;

    iput-object p2, p0, Li/m0/f/a;->e:Li/m0/d/h;

    iput-object p3, p0, Li/m0/f/a;->f:Lj/j;

    iput-object p4, p0, Li/m0/f/a;->g:Lj/i;

    const/high16 p1, 0x40000

    int-to-long p1, p1

    .line 2
    iput-wide p1, p0, Li/m0/f/a;->b:J

    return-void

    :cond_0
    const-string p1, "sink"

    .line 3
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "source"

    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0
.end method

.method public static final i(Li/m0/f/a;Lj/n;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    iget-object p0, p1, Lj/n;->e:Lj/b0;

    .line 2
    sget-object v0, Lj/b0;->d:Lj/b0;

    .line 3
    iput-object v0, p1, Lj/n;->e:Lj/b0;

    .line 4
    invoke-virtual {p0}, Lj/b0;->a()Lj/b0;

    .line 5
    invoke-virtual {p0}, Lj/b0;->b()Lj/b0;

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 6
    throw p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/m0/f/a;->g:Lj/i;

    invoke-interface {v0}, Lj/i;->flush()V

    return-void
.end method

.method public b(Li/e0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Li/m0/f/a;->e:Li/m0/d/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, v0, Li/m0/d/h;->q:Li/k0;

    .line 3
    iget-object v0, v0, Li/k0;->b:Ljava/net/Proxy;

    .line 4
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    const-string v2, "realConnection!!.route().proxy.type()"

    invoke-static {v0, v2}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v3, p1, Li/e0;->c:Ljava/lang/String;

    .line 7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    .line 8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    iget-object v3, p1, Li/e0;->b:Li/x;

    .line 10
    iget-boolean v3, v3, Li/x;->a:Z

    if-nez v3, :cond_0

    .line 11
    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p1, Li/e0;->b:Li/x;

    .line 13
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 14
    :cond_1
    iget-object v0, p1, Li/e0;->b:Li/x;

    if-eqz v0, :cond_3

    .line 15
    invoke-virtual {v0}, Li/x;->b()Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-virtual {v0}, Li/x;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3f

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 18
    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v0, " HTTP/1.1"

    .line 19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object p1, p1, Li/e0;->d:Li/w;

    .line 22
    invoke-virtual {p0, p1, v0}, Li/m0/f/a;->m(Li/w;Ljava/lang/String;)V

    return-void

    :cond_3
    const-string p1, "url"

    .line 23
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v1

    .line 24
    :cond_4
    invoke-static {}, Lh/o/c/g;->e()V

    throw v1
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/m0/f/a;->g:Lj/i;

    invoke-interface {v0}, Lj/i;->flush()V

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/m0/f/a;->e:Li/m0/d/h;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Li/m0/d/h;->b:Ljava/net/Socket;

    if-eqz v0, :cond_0

    invoke-static {v0}, Li/m0/b;->g(Ljava/net/Socket;)V

    :cond_0
    return-void
.end method

.method public d(Li/h0;)J
    .locals 3

    .line 1
    invoke-static {p1}, Li/m0/e/e;->a(Li/h0;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    const-string v1, "Transfer-Encoding"

    const/4 v2, 0x0

    .line 2
    invoke-static {p1, v1, v2, v0}, Li/h0;->f(Li/h0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "chunked"

    invoke-static {v2, v0, v1}, Lh/s/d;->d(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, -0x1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {p1}, Li/m0/b;->n(Li/h0;)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public e(Li/h0;)Lj/a0;
    .locals 10

    .line 1
    invoke-static {p1}, Li/m0/e/e;->a(Li/h0;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Li/m0/f/a;->j(J)Lj/a0;

    move-result-object p1

    goto :goto_2

    :cond_0
    const/4 v0, 0x2

    const-string v1, "Transfer-Encoding"

    const/4 v2, 0x0

    .line 2
    invoke-static {p1, v1, v2, v0}, Li/h0;->f(Li/h0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v3, "chunked"

    invoke-static {v3, v0, v1}, Lh/s/d;->d(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const/4 v3, 0x5

    const-string v4, "state: "

    const/4 v5, 0x4

    if-eqz v0, :cond_3

    .line 3
    iget-object p1, p1, Li/h0;->b:Li/e0;

    .line 4
    iget-object p1, p1, Li/e0;->b:Li/x;

    .line 5
    iget v0, p0, Li/m0/f/a;->a:I

    if-ne v0, v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 6
    iput v3, p0, Li/m0/f/a;->a:I

    .line 7
    new-instance v0, Li/m0/f/a$c;

    invoke-direct {v0, p0, p1}, Li/m0/f/a$c;-><init>(Li/m0/f/a;Li/x;)V

    move-object p1, v0

    goto :goto_2

    .line 8
    :cond_2
    invoke-static {v4}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Li/m0/f/a;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_3
    invoke-static {p1}, Li/m0/b;->n(Li/h0;)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long p1, v6, v8

    if-eqz p1, :cond_4

    .line 10
    invoke-virtual {p0, v6, v7}, Li/m0/f/a;->j(J)Lj/a0;

    move-result-object p1

    goto :goto_2

    .line 11
    :cond_4
    iget p1, p0, Li/m0/f/a;->a:I

    if-ne p1, v5, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_7

    .line 12
    iput v3, p0, Li/m0/f/a;->a:I

    .line 13
    iget-object p1, p0, Li/m0/f/a;->e:Li/m0/d/h;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Li/m0/d/h;->i()V

    .line 14
    new-instance p1, Li/m0/f/a$f;

    invoke-direct {p1, p0}, Li/m0/f/a$f;-><init>(Li/m0/f/a;)V

    :goto_2
    return-object p1

    .line 15
    :cond_6
    invoke-static {}, Lh/o/c/g;->e()V

    throw v2

    .line 16
    :cond_7
    invoke-static {v4}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Li/m0/f/a;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f(Li/e0;J)Lj/y;
    .locals 5

    const-string v0, "Transfer-Encoding"

    .line 1
    invoke-virtual {p1, v0}, Li/e0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "chunked"

    invoke-static {v1, p1, v0}, Lh/s/d;->d(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    const/4 v1, 0x2

    const-string v2, "state: "

    if-eqz p1, :cond_2

    .line 2
    iget p1, p0, Li/m0/f/a;->a:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    iput v1, p0, Li/m0/f/a;->a:I

    .line 4
    new-instance p1, Li/m0/f/a$b;

    invoke-direct {p1, p0}, Li/m0/f/a$b;-><init>(Li/m0/f/a;)V

    goto :goto_2

    .line 5
    :cond_1
    invoke-static {v2}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Li/m0/f/a;->a:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    const-wide/16 v3, -0x1

    cmp-long p1, p2, v3

    if-eqz p1, :cond_5

    .line 6
    iget p1, p0, Li/m0/f/a;->a:I

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    .line 7
    iput v1, p0, Li/m0/f/a;->a:I

    .line 8
    new-instance p1, Li/m0/f/a$e;

    invoke-direct {p1, p0}, Li/m0/f/a$e;-><init>(Li/m0/f/a;)V

    :goto_2
    return-object p1

    .line 9
    :cond_4
    invoke-static {v2}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Li/m0/f/a;->a:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 10
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g(Z)Li/h0$a;
    .locals 4

    .line 1
    iget v0, p0, Li/m0/f/a;->a:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    if-eqz v2, :cond_5

    .line 2
    :try_start_0
    invoke-virtual {p0}, Li/m0/f/a;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li/m0/e/j;->a(Ljava/lang/String;)Li/m0/e/j;

    move-result-object v0

    .line 3
    new-instance v2, Li/h0$a;

    invoke-direct {v2}, Li/h0$a;-><init>()V

    .line 4
    iget-object v3, v0, Li/m0/e/j;->a:Li/c0;

    invoke-virtual {v2, v3}, Li/h0$a;->h(Li/c0;)Li/h0$a;

    .line 5
    iget v3, v0, Li/m0/e/j;->b:I

    .line 6
    iput v3, v2, Li/h0$a;->c:I

    .line 7
    iget-object v3, v0, Li/m0/e/j;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Li/h0$a;->g(Ljava/lang/String;)Li/h0$a;

    .line 8
    invoke-virtual {p0}, Li/m0/f/a;->l()Li/w;

    move-result-object v3

    invoke-virtual {v2, v3}, Li/h0$a;->f(Li/w;)Li/h0$a;

    const/16 v3, 0x64

    if-eqz p1, :cond_2

    .line 9
    iget p1, v0, Li/m0/e/j;->b:I

    if-ne p1, v3, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    .line 10
    :cond_2
    iget p1, v0, Li/m0/e/j;->b:I

    if-ne p1, v3, :cond_3

    .line 11
    iput v1, p0, Li/m0/f/a;->a:I

    goto :goto_1

    :cond_3
    const/4 p1, 0x4

    .line 12
    iput p1, p0, Li/m0/f/a;->a:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v2

    :catch_0
    move-exception p1

    .line 13
    iget-object v0, p0, Li/m0/f/a;->e:Li/m0/d/h;

    if-eqz v0, :cond_4

    .line 14
    iget-object v0, v0, Li/m0/d/h;->q:Li/k0;

    if-eqz v0, :cond_4

    .line 15
    iget-object v0, v0, Li/k0;->a:Li/a;

    if-eqz v0, :cond_4

    .line 16
    iget-object v0, v0, Li/a;->a:Li/x;

    if-eqz v0, :cond_4

    .line 17
    invoke-virtual {v0}, Li/x;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    const-string v0, "unknown"

    .line 18
    :goto_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "unexpected end of stream on "

    invoke-static {v2, v0}, Lf/b/a/a/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    const-string p1, "state: "

    .line 19
    invoke-static {p1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Li/m0/f/a;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 20
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h()Li/m0/d/h;
    .locals 1

    .line 1
    iget-object v0, p0, Li/m0/f/a;->e:Li/m0/d/h;

    return-object v0
.end method

.method public final j(J)Lj/a0;
    .locals 2

    .line 1
    iget v0, p0, Li/m0/f/a;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Li/m0/f/a;->a:I

    .line 3
    new-instance v0, Li/m0/f/a$d;

    invoke-direct {v0, p0, p1, p2}, Li/m0/f/a$d;-><init>(Li/m0/f/a;J)V

    return-object v0

    :cond_1
    const-string p1, "state: "

    .line 4
    invoke-static {p1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Li/m0/f/a;->a:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final k()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Li/m0/f/a;->f:Lj/j;

    iget-wide v1, p0, Li/m0/f/a;->b:J

    invoke-interface {v0, v1, v2}, Lj/j;->v(J)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-wide v1, p0, Li/m0/f/a;->b:J

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Li/m0/f/a;->b:J

    return-object v0
.end method

.method public final l()Li/w;
    .locals 3

    .line 1
    new-instance v0, Li/w$a;

    invoke-direct {v0}, Li/w$a;-><init>()V

    .line 2
    invoke-virtual {p0}, Li/m0/f/a;->k()Ljava/lang/String;

    move-result-object v1

    .line 3
    :goto_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Li/w$a;->b(Ljava/lang/String;)Li/w$a;

    .line 5
    invoke-virtual {p0}, Li/m0/f/a;->k()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Li/w$a;->d()Li/w;

    move-result-object v0

    return-object v0
.end method

.method public final m(Li/w;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    .line 1
    iget v0, p0, Li/m0/f/a;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Li/m0/f/a;->g:Lj/i;

    invoke-interface {v0, p2}, Lj/i;->y(Ljava/lang/String;)Lj/i;

    move-result-object p2

    const-string v0, "\r\n"

    invoke-interface {p2, v0}, Lj/i;->y(Ljava/lang/String;)Lj/i;

    .line 3
    invoke-virtual {p1}, Li/w;->size()I

    move-result p2

    :goto_1
    if-ge v1, p2, :cond_1

    .line 4
    iget-object v3, p0, Li/m0/f/a;->g:Lj/i;

    invoke-virtual {p1, v1}, Li/w;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lj/i;->y(Ljava/lang/String;)Lj/i;

    move-result-object v3

    const-string v4, ": "

    .line 5
    invoke-interface {v3, v4}, Lj/i;->y(Ljava/lang/String;)Lj/i;

    move-result-object v3

    .line 6
    invoke-virtual {p1, v1}, Li/w;->f(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lj/i;->y(Ljava/lang/String;)Lj/i;

    move-result-object v3

    .line 7
    invoke-interface {v3, v0}, Lj/i;->y(Ljava/lang/String;)Lj/i;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8
    :cond_1
    iget-object p1, p0, Li/m0/f/a;->g:Lj/i;

    invoke-interface {p1, v0}, Lj/i;->y(Ljava/lang/String;)Lj/i;

    .line 9
    iput v2, p0, Li/m0/f/a;->a:I

    return-void

    :cond_2
    const-string p1, "state: "

    .line 10
    invoke-static {p1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Li/m0/f/a;->a:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    const-string p1, "requestLine"

    .line 11
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string p1, "headers"

    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0
.end method
