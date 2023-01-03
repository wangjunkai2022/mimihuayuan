.class public final Lf/i/a/a/b1/w/a;
.super Ljava/lang/Object;
.source "RawCcExtractor.java"

# interfaces
.implements Lf/i/a/a/b1/g;


# static fields
.field public static final i:I


# instance fields
.field public final a:Lf/i/a/a/b0;

.field public final b:Lf/i/a/a/m1/u;

.field public c:Lf/i/a/a/b1/p;

.field public d:I

.field public e:I

.field public f:J

.field public g:I

.field public h:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "RCC\u0001"

    .line 1
    invoke-static {v0}, Lf/i/a/a/m1/h0;->C(Ljava/lang/String;)I

    move-result v0

    sput v0, Lf/i/a/a/b1/w/a;->i:I

    return-void
.end method

.method public constructor <init>(Lf/i/a/a/b0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/b1/w/a;->a:Lf/i/a/a/b0;

    .line 3
    new-instance p1, Lf/i/a/a/m1/u;

    const/16 v0, 0x9

    invoke-direct {p1, v0}, Lf/i/a/a/m1/u;-><init>(I)V

    iput-object p1, p0, Lf/i/a/a/b1/w/a;->b:Lf/i/a/a/m1/u;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lf/i/a/a/b1/w/a;->d:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public c(Lf/i/a/a/b1/d;Lf/i/a/a/b1/m;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    :goto_0
    iget p2, p0, Lf/i/a/a/b1/w/a;->d:I

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_9

    const/4 v3, 0x2

    if-eq p2, v1, :cond_3

    if-ne p2, v3, :cond_2

    .line 2
    :goto_1
    iget p2, p0, Lf/i/a/a/b1/w/a;->g:I

    if-lez p2, :cond_0

    .line 3
    iget-object p2, p0, Lf/i/a/a/b1/w/a;->b:Lf/i/a/a/m1/u;

    invoke-virtual {p2}, Lf/i/a/a/m1/u;->v()V

    .line 4
    iget-object p2, p0, Lf/i/a/a/b1/w/a;->b:Lf/i/a/a/m1/u;

    iget-object p2, p2, Lf/i/a/a/m1/u;->a:[B

    const/4 v3, 0x3

    .line 5
    invoke-virtual {p1, p2, v2, v3, v2}, Lf/i/a/a/b1/d;->g([BIIZ)Z

    .line 6
    iget-object p2, p0, Lf/i/a/a/b1/w/a;->c:Lf/i/a/a/b1/p;

    iget-object v4, p0, Lf/i/a/a/b1/w/a;->b:Lf/i/a/a/m1/u;

    invoke-interface {p2, v4, v3}, Lf/i/a/a/b1/p;->a(Lf/i/a/a/m1/u;I)V

    .line 7
    iget p2, p0, Lf/i/a/a/b1/w/a;->h:I

    add-int/2addr p2, v3

    iput p2, p0, Lf/i/a/a/b1/w/a;->h:I

    .line 8
    iget p2, p0, Lf/i/a/a/b1/w/a;->g:I

    add-int/2addr p2, v0

    iput p2, p0, Lf/i/a/a/b1/w/a;->g:I

    goto :goto_1

    .line 9
    :cond_0
    iget v7, p0, Lf/i/a/a/b1/w/a;->h:I

    if-lez v7, :cond_1

    .line 10
    iget-object v3, p0, Lf/i/a/a/b1/w/a;->c:Lf/i/a/a/b1/p;

    iget-wide v4, p0, Lf/i/a/a/b1/w/a;->f:J

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lf/i/a/a/b1/p;->c(JIIILf/i/a/a/b1/p$a;)V

    .line 11
    :cond_1
    iput v1, p0, Lf/i/a/a/b1/w/a;->d:I

    return v2

    .line 12
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 13
    :cond_3
    iget-object p2, p0, Lf/i/a/a/b1/w/a;->b:Lf/i/a/a/m1/u;

    invoke-virtual {p2}, Lf/i/a/a/m1/u;->v()V

    .line 14
    iget p2, p0, Lf/i/a/a/b1/w/a;->e:I

    if-nez p2, :cond_5

    .line 15
    iget-object p2, p0, Lf/i/a/a/b1/w/a;->b:Lf/i/a/a/m1/u;

    iget-object p2, p2, Lf/i/a/a/m1/u;->a:[B

    const/4 v4, 0x5

    invoke-virtual {p1, p2, v2, v4, v1}, Lf/i/a/a/b1/d;->g([BIIZ)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_2

    .line 16
    :cond_4
    iget-object p2, p0, Lf/i/a/a/b1/w/a;->b:Lf/i/a/a/m1/u;

    invoke-virtual {p2}, Lf/i/a/a/m1/u;->q()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    const-wide/16 v6, 0x2d

    div-long/2addr v4, v6

    iput-wide v4, p0, Lf/i/a/a/b1/w/a;->f:J

    goto :goto_3

    :cond_5
    if-ne p2, v1, :cond_8

    .line 17
    iget-object p2, p0, Lf/i/a/a/b1/w/a;->b:Lf/i/a/a/m1/u;

    iget-object p2, p2, Lf/i/a/a/m1/u;->a:[B

    const/16 v4, 0x9

    invoke-virtual {p1, p2, v2, v4, v1}, Lf/i/a/a/b1/d;->g([BIIZ)Z

    move-result p2

    if-nez p2, :cond_6

    :goto_2
    const/4 v1, 0x0

    goto :goto_4

    .line 18
    :cond_6
    iget-object p2, p0, Lf/i/a/a/b1/w/a;->b:Lf/i/a/a/m1/u;

    invoke-virtual {p2}, Lf/i/a/a/m1/u;->j()J

    move-result-wide v4

    iput-wide v4, p0, Lf/i/a/a/b1/w/a;->f:J

    .line 19
    :goto_3
    iget-object p2, p0, Lf/i/a/a/b1/w/a;->b:Lf/i/a/a/m1/u;

    invoke-virtual {p2}, Lf/i/a/a/m1/u;->p()I

    move-result p2

    iput p2, p0, Lf/i/a/a/b1/w/a;->g:I

    .line 20
    iput v2, p0, Lf/i/a/a/b1/w/a;->h:I

    :goto_4
    if-eqz v1, :cond_7

    .line 21
    iput v3, p0, Lf/i/a/a/b1/w/a;->d:I

    goto/16 :goto_0

    .line 22
    :cond_7
    iput v2, p0, Lf/i/a/a/b1/w/a;->d:I

    return v0

    .line 23
    :cond_8
    new-instance p1, Lf/i/a/a/h0;

    const-string p2, "Unsupported version number: "

    invoke-static {p2}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lf/i/a/a/b1/w/a;->e:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_9
    iget-object p2, p0, Lf/i/a/a/b1/w/a;->b:Lf/i/a/a/m1/u;

    invoke-virtual {p2}, Lf/i/a/a/m1/u;->v()V

    .line 25
    iget-object p2, p0, Lf/i/a/a/b1/w/a;->b:Lf/i/a/a/m1/u;

    iget-object p2, p2, Lf/i/a/a/m1/u;->a:[B

    const/16 v3, 0x8

    invoke-virtual {p1, p2, v2, v3, v1}, Lf/i/a/a/b1/d;->g([BIIZ)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 26
    iget-object p2, p0, Lf/i/a/a/b1/w/a;->b:Lf/i/a/a/m1/u;

    invoke-virtual {p2}, Lf/i/a/a/m1/u;->d()I

    move-result p2

    sget v2, Lf/i/a/a/b1/w/a;->i:I

    if-ne p2, v2, :cond_a

    .line 27
    iget-object p2, p0, Lf/i/a/a/b1/w/a;->b:Lf/i/a/a/m1/u;

    invoke-virtual {p2}, Lf/i/a/a/m1/u;->p()I

    move-result p2

    iput p2, p0, Lf/i/a/a/b1/w/a;->e:I

    const/4 v2, 0x1

    goto :goto_5

    .line 28
    :cond_a
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Input not RawCC"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    :goto_5
    if-eqz v2, :cond_c

    .line 29
    iput v1, p0, Lf/i/a/a/b1/w/a;->d:I

    goto/16 :goto_0

    :cond_c
    return v0
.end method

.method public d(Lf/i/a/a/b1/h;)V
    .locals 5

    .line 1
    new-instance v0, Lf/i/a/a/b1/n$b;

    const-wide/16 v1, 0x0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    invoke-direct {v0, v3, v4, v1, v2}, Lf/i/a/a/b1/n$b;-><init>(JJ)V

    .line 3
    invoke-interface {p1, v0}, Lf/i/a/a/b1/h;->a(Lf/i/a/a/b1/n;)V

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 4
    invoke-interface {p1, v0, v1}, Lf/i/a/a/b1/h;->q(II)Lf/i/a/a/b1/p;

    move-result-object v0

    iput-object v0, p0, Lf/i/a/a/b1/w/a;->c:Lf/i/a/a/b1/p;

    .line 5
    invoke-interface {p1}, Lf/i/a/a/b1/h;->d()V

    .line 6
    iget-object p1, p0, Lf/i/a/a/b1/w/a;->c:Lf/i/a/a/b1/p;

    iget-object v0, p0, Lf/i/a/a/b1/w/a;->a:Lf/i/a/a/b0;

    invoke-interface {p1, v0}, Lf/i/a/a/b1/p;->d(Lf/i/a/a/b0;)V

    return-void
.end method

.method public f(JJ)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lf/i/a/a/b1/w/a;->d:I

    return-void
.end method

.method public i(Lf/i/a/a/b1/d;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/b1/w/a;->b:Lf/i/a/a/m1/u;

    invoke-virtual {v0}, Lf/i/a/a/m1/u;->v()V

    .line 2
    iget-object v0, p0, Lf/i/a/a/b1/w/a;->b:Lf/i/a/a/m1/u;

    iget-object v0, v0, Lf/i/a/a/m1/u;->a:[B

    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 3
    invoke-virtual {p1, v0, v1, v2, v1}, Lf/i/a/a/b1/d;->d([BIIZ)Z

    .line 4
    iget-object p1, p0, Lf/i/a/a/b1/w/a;->b:Lf/i/a/a/m1/u;

    invoke-virtual {p1}, Lf/i/a/a/m1/u;->d()I

    move-result p1

    sget v0, Lf/i/a/a/b1/w/a;->i:I

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
