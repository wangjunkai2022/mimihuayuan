.class public final Li/m0/f/a$c;
.super Li/m0/f/a$a;
.source "Http1ExchangeCodec.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/m0/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public d:J

.field public e:Z

.field public final f:Li/x;

.field public final synthetic g:Li/m0/f/a;


# direct methods
.method public constructor <init>(Li/m0/f/a;Li/x;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/x;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    iput-object p1, p0, Li/m0/f/a$c;->g:Li/m0/f/a;

    .line 2
    invoke-direct {p0, p1}, Li/m0/f/a$a;-><init>(Li/m0/f/a;)V

    iput-object p2, p0, Li/m0/f/a$c;->f:Li/x;

    const-wide/16 p1, -0x1

    .line 3
    iput-wide p1, p0, Li/m0/f/a$c;->d:J

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Li/m0/f/a$c;->e:Z

    return-void

    :cond_0
    const-string p1, "url"

    .line 5
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public c(Lj/g;J)J
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_10

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, p2, v3

    if-ltz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_f

    .line 1
    iget-boolean v5, p0, Li/m0/f/a$a;->b:Z

    xor-int/2addr v5, v1

    if-eqz v5, :cond_e

    .line 2
    iget-boolean v5, p0, Li/m0/f/a$c;->e:Z

    const-wide/16 v6, -0x1

    if-nez v5, :cond_1

    return-wide v6

    .line 3
    :cond_1
    iget-wide v8, p0, Li/m0/f/a$c;->d:J

    cmp-long v5, v8, v3

    if-eqz v5, :cond_2

    cmp-long v5, v8, v6

    if-nez v5, :cond_9

    .line 4
    :cond_2
    iget-wide v8, p0, Li/m0/f/a$c;->d:J

    cmp-long v5, v8, v6

    if-eqz v5, :cond_3

    .line 5
    iget-object v5, p0, Li/m0/f/a$c;->g:Li/m0/f/a;

    .line 6
    iget-object v5, v5, Li/m0/f/a;->f:Lj/j;

    .line 7
    invoke-interface {v5}, Lj/j;->n()Ljava/lang/String;

    .line 8
    :cond_3
    :try_start_0
    iget-object v5, p0, Li/m0/f/a$c;->g:Li/m0/f/a;

    .line 9
    iget-object v5, v5, Li/m0/f/a;->f:Lj/j;

    .line 10
    invoke-interface {v5}, Lj/j;->A()J

    move-result-wide v8

    iput-wide v8, p0, Li/m0/f/a$c;->d:J

    .line 11
    iget-object v5, p0, Li/m0/f/a$c;->g:Li/m0/f/a;

    .line 12
    iget-object v5, v5, Li/m0/f/a;->f:Lj/j;

    .line 13
    invoke-interface {v5}, Lj/j;->n()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-static {v5}, Lh/s/d;->y(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 14
    iget-wide v8, p0, Li/m0/f/a$c;->d:J

    cmp-long v10, v8, v3

    if-ltz v10, :cond_c

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_5

    const-string v1, ";"

    const/4 v8, 0x2

    invoke-static {v5, v1, v2, v8}, Lh/s/d;->w(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_c

    .line 15
    :cond_5
    iget-wide v8, p0, Li/m0/f/a$c;->d:J

    cmp-long v1, v8, v3

    if-nez v1, :cond_8

    .line 16
    iput-boolean v2, p0, Li/m0/f/a$c;->e:Z

    .line 17
    iget-object v1, p0, Li/m0/f/a$c;->g:Li/m0/f/a;

    .line 18
    invoke-virtual {v1}, Li/m0/f/a;->l()Li/w;

    move-result-object v2

    .line 19
    iput-object v2, v1, Li/m0/f/a;->c:Li/w;

    .line 20
    iget-object v1, p0, Li/m0/f/a$c;->g:Li/m0/f/a;

    .line 21
    iget-object v2, v1, Li/m0/f/a;->d:Li/b0;

    if-eqz v2, :cond_7

    .line 22
    iget-object v2, v2, Li/b0;->j:Li/p;

    .line 23
    iget-object v3, p0, Li/m0/f/a$c;->f:Li/x;

    .line 24
    iget-object v1, v1, Li/m0/f/a;->c:Li/w;

    if-eqz v1, :cond_6

    .line 25
    invoke-static {v2, v3, v1}, Li/m0/e/e;->b(Li/p;Li/x;Li/w;)V

    .line 26
    invoke-virtual {p0}, Li/m0/f/a$a;->d()V

    goto :goto_2

    .line 27
    :cond_6
    invoke-static {}, Lh/o/c/g;->e()V

    throw v0

    :cond_7
    invoke-static {}, Lh/o/c/g;->e()V

    throw v0

    .line 28
    :cond_8
    :goto_2
    iget-boolean v1, p0, Li/m0/f/a$c;->e:Z

    if-nez v1, :cond_9

    return-wide v6

    .line 29
    :cond_9
    iget-wide v1, p0, Li/m0/f/a$c;->d:J

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-super {p0, p1, p2, p3}, Li/m0/f/a$a;->c(Lj/g;J)J

    move-result-wide p1

    cmp-long p3, p1, v6

    if-nez p3, :cond_b

    .line 30
    iget-object p1, p0, Li/m0/f/a$c;->g:Li/m0/f/a;

    .line 31
    iget-object p1, p1, Li/m0/f/a;->e:Li/m0/d/h;

    if-nez p1, :cond_a

    .line 32
    invoke-static {}, Lh/o/c/g;->e()V

    throw v0

    :cond_a
    invoke-virtual {p1}, Li/m0/d/h;->i()V

    .line 33
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "unexpected end of stream"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Li/m0/f/a$a;->d()V

    .line 35
    throw p1

    .line 36
    :cond_b
    iget-wide v0, p0, Li/m0/f/a$c;->d:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Li/m0/f/a$c;->d:J

    return-wide p1

    .line 37
    :cond_c
    :try_start_1
    new-instance p1, Ljava/net/ProtocolException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "expected chunk size and optional extensions"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " but was \""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget-wide v0, p0, Li/m0/f/a$c;->d:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x22

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 39
    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_d
    new-instance p1, Lh/f;

    const-string p2, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {p1, p2}, Lh/f;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 41
    new-instance p2, Ljava/net/ProtocolException;

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 42
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    const-string p1, "byteCount < 0: "

    .line 43
    invoke-static {p1, p2, p3}, Lf/b/a/a/a;->c(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_10
    const-string p1, "sink"

    .line 44
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Li/m0/f/a$a;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Li/m0/f/a$c;->e:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Li/m0/b;->k(Lj/a0;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Li/m0/f/a$c;->g:Li/m0/f/a;

    .line 4
    iget-object v0, v0, Li/m0/f/a;->e:Li/m0/d/h;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Li/m0/d/h;->i()V

    .line 6
    invoke-virtual {p0}, Li/m0/f/a$a;->d()V

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Lh/o/c/g;->e()V

    const/4 v0, 0x0

    throw v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Li/m0/f/a$a;->b:Z

    return-void
.end method
