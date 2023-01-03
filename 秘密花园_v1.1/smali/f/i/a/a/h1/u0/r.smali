.class public final Lf/i/a/a/h1/u0/r;
.super Ljava/lang/Object;
.source "WebvttExtractor.java"

# interfaces
.implements Lf/i/a/a/b1/g;


# static fields
.field public static final g:Ljava/util/regex/Pattern;

.field public static final h:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lf/i/a/a/m1/e0;

.field public final c:Lf/i/a/a/m1/u;

.field public d:Lf/i/a/a/b1/h;

.field public e:[B

.field public f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "LOCAL:([^,]+)"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lf/i/a/a/h1/u0/r;->g:Ljava/util/regex/Pattern;

    const-string v0, "MPEGTS:(\\d+)"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lf/i/a/a/h1/u0/r;->h:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lf/i/a/a/m1/e0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/h1/u0/r;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lf/i/a/a/h1/u0/r;->b:Lf/i/a/a/m1/e0;

    .line 4
    new-instance p1, Lf/i/a/a/m1/u;

    invoke-direct {p1}, Lf/i/a/a/m1/u;-><init>()V

    iput-object p1, p0, Lf/i/a/a/h1/u0/r;->c:Lf/i/a/a/m1/u;

    const/16 p1, 0x400

    new-array p1, p1, [B

    .line 5
    iput-object p1, p0, Lf/i/a/a/h1/u0/r;->e:[B

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public final b(J)Lf/i/a/a/b1/p;
    .locals 12

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/u0/r;->d:Lf/i/a/a/b1/h;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Lf/i/a/a/b1/h;->q(II)Lf/i/a/a/b1/p;

    move-result-object v0

    .line 2
    iget-object v6, p0, Lf/i/a/a/h1/u0/r;->a:Ljava/lang/String;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    const/4 v7, -0x1

    const/4 v1, 0x0

    const-string v2, "text/vtt"

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-wide v9, p1

    .line 4
    invoke-static/range {v1 .. v11}, Lf/i/a/a/b0;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILf/i/a/a/z0/e;JLjava/util/List;)Lf/i/a/a/b0;

    move-result-object p1

    .line 5
    invoke-interface {v0, p1}, Lf/i/a/a/b1/p;->d(Lf/i/a/a/b0;)V

    .line 6
    iget-object p1, p0, Lf/i/a/a/h1/u0/r;->d:Lf/i/a/a/b1/h;

    invoke-interface {p1}, Lf/i/a/a/b1/h;->d()V

    return-object v0
.end method

.method public c(Lf/i/a/a/b1/d;Lf/i/a/a/b1/m;)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-wide v0, p1, Lf/i/a/a/b1/d;->c:J

    long-to-int p2, v0

    .line 2
    iget v0, p0, Lf/i/a/a/h1/u0/r;->f:I

    iget-object v1, p0, Lf/i/a/a/h1/u0/r;->e:[B

    array-length v2, v1

    const/4 v3, -0x1

    if-ne v0, v2, :cond_1

    if-eq p2, v3, :cond_0

    move v0, p2

    goto :goto_0

    .line 3
    :cond_0
    array-length v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lf/i/a/a/h1/u0/r;->e:[B

    .line 4
    :cond_1
    iget-object v0, p0, Lf/i/a/a/h1/u0/r;->e:[B

    iget v1, p0, Lf/i/a/a/h1/u0/r;->f:I

    array-length v2, v0

    sub-int/2addr v2, v1

    invoke-virtual {p1, v0, v1, v2}, Lf/i/a/a/b1/d;->e([BII)I

    move-result p1

    if-eq p1, v3, :cond_3

    .line 5
    iget v0, p0, Lf/i/a/a/h1/u0/r;->f:I

    add-int/2addr v0, p1

    iput v0, p0, Lf/i/a/a/h1/u0/r;->f:I

    if-eq p2, v3, :cond_2

    if-eq v0, p2, :cond_3

    :cond_2
    const/4 p1, 0x0

    return p1

    .line 6
    :cond_3
    new-instance p1, Lf/i/a/a/m1/u;

    iget-object p2, p0, Lf/i/a/a/h1/u0/r;->e:[B

    invoke-direct {p1, p2}, Lf/i/a/a/m1/u;-><init>([B)V

    .line 7
    invoke-static {p1}, Lf/i/a/a/i1/t/h;->d(Lf/i/a/a/m1/u;)V

    const-wide/16 v0, 0x0

    move-wide v4, v0

    move-wide v6, v4

    .line 8
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lf/i/a/a/m1/u;->e()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-wide/32 v8, 0xf4240

    const-wide/32 v10, 0x15f90

    const/4 v12, 0x1

    if-nez v2, :cond_7

    const-string v2, "X-TIMESTAMP-MAP"

    .line 9
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 10
    sget-object v2, Lf/i/a/a/h1/u0/r;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 11
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 12
    sget-object v4, Lf/i/a/a/h1/u0/r;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 13
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 14
    invoke-virtual {v2, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lf/i/a/a/i1/t/h;->c(Ljava/lang/String;)J

    move-result-wide v6

    .line 15
    invoke-virtual {v4, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    mul-long v4, v4, v8

    .line 16
    div-long/2addr v4, v10

    goto :goto_1

    .line 17
    :cond_5
    new-instance p1, Lf/i/a/a/h0;

    const-string v0, "X-TIMESTAMP-MAP doesn\'t contain media timestamp: "

    invoke-static {v0, p2}, Lf/b/a/a/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_6
    new-instance p1, Lf/i/a/a/h0;

    const-string v0, "X-TIMESTAMP-MAP doesn\'t contain local timestamp: "

    invoke-static {v0, p2}, Lf/b/a/a/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_7
    invoke-virtual {p1}, Lf/i/a/a/m1/u;->e()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 20
    sget-object v2, Lf/i/a/a/i1/t/h;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 21
    :goto_2
    invoke-virtual {p1}, Lf/i/a/a/m1/u;->e()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_2

    .line 22
    :cond_8
    sget-object v2, Lf/i/a/a/i1/t/f;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 23
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_3

    :cond_9
    const/4 p2, 0x0

    :goto_3
    if-nez p2, :cond_a

    .line 24
    invoke-virtual {p0, v0, v1}, Lf/i/a/a/h1/u0/r;->b(J)Lf/i/a/a/b1/p;

    goto :goto_4

    .line 25
    :cond_a
    invoke-virtual {p2, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lf/i/a/a/i1/t/h;->c(Ljava/lang/String;)J

    move-result-wide p1

    .line 26
    iget-object v0, p0, Lf/i/a/a/h1/u0/r;->b:Lf/i/a/a/m1/e0;

    add-long/2addr v4, p1

    sub-long/2addr v4, v6

    mul-long v4, v4, v10

    .line 27
    div-long/2addr v4, v8

    .line 28
    invoke-virtual {v0, v4, v5}, Lf/i/a/a/m1/e0;->b(J)J

    move-result-wide v7

    sub-long p1, v7, p1

    .line 29
    invoke-virtual {p0, p1, p2}, Lf/i/a/a/h1/u0/r;->b(J)Lf/i/a/a/b1/p;

    move-result-object v6

    .line 30
    iget-object p1, p0, Lf/i/a/a/h1/u0/r;->c:Lf/i/a/a/m1/u;

    iget-object p2, p0, Lf/i/a/a/h1/u0/r;->e:[B

    iget v0, p0, Lf/i/a/a/h1/u0/r;->f:I

    invoke-virtual {p1, p2, v0}, Lf/i/a/a/m1/u;->y([BI)V

    .line 31
    iget-object p1, p0, Lf/i/a/a/h1/u0/r;->c:Lf/i/a/a/m1/u;

    iget p2, p0, Lf/i/a/a/h1/u0/r;->f:I

    invoke-interface {v6, p1, p2}, Lf/i/a/a/b1/p;->a(Lf/i/a/a/m1/u;I)V

    const/4 v9, 0x1

    .line 32
    iget v10, p0, Lf/i/a/a/h1/u0/r;->f:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v6 .. v12}, Lf/i/a/a/b1/p;->c(JIIILf/i/a/a/b1/p$a;)V

    :goto_4
    return v3
.end method

.method public d(Lf/i/a/a/b1/h;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lf/i/a/a/h1/u0/r;->d:Lf/i/a/a/b1/h;

    .line 2
    new-instance v0, Lf/i/a/a/b1/n$b;

    const-wide/16 v1, 0x0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 3
    invoke-direct {v0, v3, v4, v1, v2}, Lf/i/a/a/b1/n$b;-><init>(JJ)V

    .line 4
    invoke-interface {p1, v0}, Lf/i/a/a/b1/h;->a(Lf/i/a/a/b1/n;)V

    return-void
.end method

.method public f(JJ)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public i(Lf/i/a/a/b1/d;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/u0/r;->e:[B

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-virtual {p1, v0, v1, v2, v1}, Lf/i/a/a/b1/d;->d([BIIZ)Z

    .line 2
    iget-object v0, p0, Lf/i/a/a/h1/u0/r;->c:Lf/i/a/a/m1/u;

    iget-object v3, p0, Lf/i/a/a/h1/u0/r;->e:[B

    invoke-virtual {v0, v3, v2}, Lf/i/a/a/m1/u;->y([BI)V

    .line 3
    iget-object v0, p0, Lf/i/a/a/h1/u0/r;->c:Lf/i/a/a/m1/u;

    invoke-static {v0}, Lf/i/a/a/i1/t/h;->a(Lf/i/a/a/m1/u;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    iget-object v0, p0, Lf/i/a/a/h1/u0/r;->e:[B

    const/4 v3, 0x3

    invoke-virtual {p1, v0, v2, v3, v1}, Lf/i/a/a/b1/d;->d([BIIZ)Z

    .line 5
    iget-object p1, p0, Lf/i/a/a/h1/u0/r;->c:Lf/i/a/a/m1/u;

    iget-object v0, p0, Lf/i/a/a/h1/u0/r;->e:[B

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lf/i/a/a/m1/u;->y([BI)V

    .line 6
    iget-object p1, p0, Lf/i/a/a/h1/u0/r;->c:Lf/i/a/a/m1/u;

    invoke-static {p1}, Lf/i/a/a/i1/t/h;->a(Lf/i/a/a/m1/u;)Z

    move-result p1

    return p1
.end method
