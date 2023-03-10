.class public final Lf/i/a/a/b1/r/e;
.super Lf/i/a/a/b1/r/d;
.source "VideoTagPayloadReader.java"


# instance fields
.field public final b:Lf/i/a/a/m1/u;

.field public final c:Lf/i/a/a/m1/u;

.field public d:I

.field public e:Z

.field public f:Z

.field public g:I


# direct methods
.method public constructor <init>(Lf/i/a/a/b1/p;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lf/i/a/a/b1/r/d;-><init>(Lf/i/a/a/b1/p;)V

    .line 2
    new-instance p1, Lf/i/a/a/m1/u;

    sget-object v0, Lf/i/a/a/m1/s;->a:[B

    invoke-direct {p1, v0}, Lf/i/a/a/m1/u;-><init>([B)V

    iput-object p1, p0, Lf/i/a/a/b1/r/e;->b:Lf/i/a/a/m1/u;

    .line 3
    new-instance p1, Lf/i/a/a/m1/u;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lf/i/a/a/m1/u;-><init>(I)V

    iput-object p1, p0, Lf/i/a/a/b1/r/e;->c:Lf/i/a/a/m1/u;

    return-void
.end method


# virtual methods
.method public b(Lf/i/a/a/m1/u;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/b1/r/d$a;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lf/i/a/a/m1/u;->p()I

    move-result p1

    shr-int/lit8 v0, p1, 0x4

    and-int/lit8 v0, v0, 0xf

    and-int/lit8 p1, p1, 0xf

    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    .line 2
    iput v0, p0, Lf/i/a/a/b1/r/e;->g:I

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 3
    :cond_1
    new-instance v0, Lf/i/a/a/b1/r/d$a;

    const-string v1, "Video format not supported: "

    invoke-static {v1, p1}, Lf/b/a/a/a;->J(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lf/i/a/a/b1/r/d$a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Lf/i/a/a/m1/u;J)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/h0;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Lf/i/a/a/m1/u;->p()I

    move-result v2

    .line 2
    iget-object v3, v1, Lf/i/a/a/m1/u;->a:[B

    iget v4, v1, Lf/i/a/a/m1/u;->b:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v1, Lf/i/a/a/m1/u;->b:I

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    shr-int/lit8 v4, v4, 0x8

    add-int/lit8 v6, v5, 0x1

    iput v6, v1, Lf/i/a/a/m1/u;->b:I

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v5, v6, 0x1

    iput v5, v1, Lf/i/a/a/m1/u;->b:I

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v4

    int-to-long v3, v3

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    add-long v6, v3, p2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 3
    iget-boolean v5, v0, Lf/i/a/a/b1/r/e;->e:Z

    if-nez v5, :cond_0

    .line 4
    new-instance v2, Lf/i/a/a/m1/u;

    invoke-virtual/range {p1 .. p1}, Lf/i/a/a/m1/u;->a()I

    move-result v5

    new-array v5, v5, [B

    invoke-direct {v2, v5}, Lf/i/a/a/m1/u;-><init>([B)V

    .line 5
    iget-object v5, v2, Lf/i/a/a/m1/u;->a:[B

    invoke-virtual/range {p1 .. p1}, Lf/i/a/a/m1/u;->a()I

    move-result v6

    invoke-virtual {v1, v5, v4, v6}, Lf/i/a/a/m1/u;->c([BII)V

    .line 6
    invoke-static {v2}, Lf/i/a/a/n1/h;->b(Lf/i/a/a/m1/u;)Lf/i/a/a/n1/h;

    move-result-object v1

    .line 7
    iget v2, v1, Lf/i/a/a/n1/h;->b:I

    iput v2, v0, Lf/i/a/a/b1/r/e;->d:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    .line 8
    iget v10, v1, Lf/i/a/a/n1/h;->c:I

    iget v11, v1, Lf/i/a/a/n1/h;->d:I

    const/high16 v12, -0x40800000    # -1.0f

    iget-object v13, v1, Lf/i/a/a/n1/h;->a:Ljava/util/List;

    const/4 v14, -0x1

    iget v15, v1, Lf/i/a/a/n1/h;->e:F

    const/16 v16, 0x0

    const-string v6, "video/avc"

    invoke-static/range {v5 .. v16}, Lf/i/a/a/b0;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLf/i/a/a/z0/e;)Lf/i/a/a/b0;

    move-result-object v1

    .line 9
    iget-object v2, v0, Lf/i/a/a/b1/r/d;->a:Lf/i/a/a/b1/p;

    invoke-interface {v2, v1}, Lf/i/a/a/b1/p;->d(Lf/i/a/a/b0;)V

    .line 10
    iput-boolean v3, v0, Lf/i/a/a/b1/r/e;->e:Z

    return v4

    :cond_0
    if-ne v2, v3, :cond_4

    .line 11
    iget-boolean v2, v0, Lf/i/a/a/b1/r/e;->e:Z

    if-eqz v2, :cond_4

    .line 12
    iget v2, v0, Lf/i/a/a/b1/r/e;->g:I

    if-ne v2, v3, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    .line 13
    :goto_0
    iget-boolean v2, v0, Lf/i/a/a/b1/r/e;->f:Z

    if-nez v2, :cond_2

    if-nez v8, :cond_2

    return v4

    .line 14
    :cond_2
    iget-object v2, v0, Lf/i/a/a/b1/r/e;->c:Lf/i/a/a/m1/u;

    iget-object v2, v2, Lf/i/a/a/m1/u;->a:[B

    .line 15
    aput-byte v4, v2, v4

    .line 16
    aput-byte v4, v2, v3

    const/4 v5, 0x2

    .line 17
    aput-byte v4, v2, v5

    .line 18
    iget v2, v0, Lf/i/a/a/b1/r/e;->d:I

    const/4 v5, 0x4

    rsub-int/lit8 v2, v2, 0x4

    const/4 v9, 0x0

    .line 19
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lf/i/a/a/m1/u;->a()I

    move-result v10

    if-lez v10, :cond_3

    .line 20
    iget-object v10, v0, Lf/i/a/a/b1/r/e;->c:Lf/i/a/a/m1/u;

    iget-object v10, v10, Lf/i/a/a/m1/u;->a:[B

    iget v11, v0, Lf/i/a/a/b1/r/e;->d:I

    invoke-virtual {v1, v10, v2, v11}, Lf/i/a/a/m1/u;->c([BII)V

    .line 21
    iget-object v10, v0, Lf/i/a/a/b1/r/e;->c:Lf/i/a/a/m1/u;

    invoke-virtual {v10, v4}, Lf/i/a/a/m1/u;->A(I)V

    .line 22
    iget-object v10, v0, Lf/i/a/a/b1/r/e;->c:Lf/i/a/a/m1/u;

    invoke-virtual {v10}, Lf/i/a/a/m1/u;->s()I

    move-result v10

    .line 23
    iget-object v11, v0, Lf/i/a/a/b1/r/e;->b:Lf/i/a/a/m1/u;

    invoke-virtual {v11, v4}, Lf/i/a/a/m1/u;->A(I)V

    .line 24
    iget-object v11, v0, Lf/i/a/a/b1/r/d;->a:Lf/i/a/a/b1/p;

    iget-object v12, v0, Lf/i/a/a/b1/r/e;->b:Lf/i/a/a/m1/u;

    invoke-interface {v11, v12, v5}, Lf/i/a/a/b1/p;->a(Lf/i/a/a/m1/u;I)V

    add-int/lit8 v9, v9, 0x4

    .line 25
    iget-object v11, v0, Lf/i/a/a/b1/r/d;->a:Lf/i/a/a/b1/p;

    invoke-interface {v11, v1, v10}, Lf/i/a/a/b1/p;->a(Lf/i/a/a/m1/u;I)V

    add-int/2addr v9, v10

    goto :goto_1

    .line 26
    :cond_3
    iget-object v5, v0, Lf/i/a/a/b1/r/d;->a:Lf/i/a/a/b1/p;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lf/i/a/a/b1/p;->c(JIIILf/i/a/a/b1/p$a;)V

    .line 27
    iput-boolean v3, v0, Lf/i/a/a/b1/r/e;->f:Z

    return v3

    :cond_4
    return v4
.end method
