.class public final Lf/i/a/a/b1/v/b;
.super Lf/i/a/a/b1/v/h;
.source "FlacReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/b1/v/b$a;
    }
.end annotation


# instance fields
.field public n:Lf/i/a/a/m1/n;

.field public o:Lf/i/a/a/b1/v/b$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/i/a/a/b1/v/h;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lf/i/a/a/m1/u;)J
    .locals 14

    .line 1
    iget-object v0, p1, Lf/i/a/a/m1/u;->a:[B

    const/4 v1, 0x0

    .line 2
    aget-byte v0, v0, v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-wide/16 v0, -0x1

    return-wide v0

    .line 3
    :cond_1
    iget-object v0, p1, Lf/i/a/a/m1/u;->a:[B

    const/4 v4, 0x2

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    const/4 v5, 0x4

    shr-int/2addr v0, v5

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    const/16 p1, 0x100

    add-int/lit8 v0, v0, -0x8

    goto/16 :goto_5

    .line 4
    :pswitch_1
    invoke-virtual {p1, v5}, Lf/i/a/a/m1/u;->B(I)V

    .line 5
    iget-object v2, p1, Lf/i/a/a/m1/u;->a:[B

    iget v4, p1, Lf/i/a/a/m1/u;->b:I

    aget-byte v2, v2, v4

    int-to-long v4, v2

    const/4 v2, 0x7

    const/4 v6, 0x7

    :goto_1
    const/4 v7, 0x6

    if-ltz v6, :cond_4

    shl-int v8, v3, v6

    int-to-long v9, v8

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-nez v13, :cond_3

    if-ge v6, v7, :cond_2

    sub-int/2addr v8, v3

    int-to-long v8, v8

    and-long/2addr v4, v8

    sub-int/2addr v2, v6

    goto :goto_2

    :cond_2
    if-ne v6, v2, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_8

    const/4 v3, 0x1

    :goto_3
    if-ge v3, v2, :cond_6

    .line 6
    iget-object v6, p1, Lf/i/a/a/m1/u;->a:[B

    iget v8, p1, Lf/i/a/a/m1/u;->b:I

    add-int/2addr v8, v3

    aget-byte v6, v6, v8

    and-int/lit16 v8, v6, 0xc0

    const/16 v9, 0x80

    if-ne v8, v9, :cond_5

    shl-long/2addr v4, v7

    and-int/lit8 v6, v6, 0x3f

    int-to-long v8, v6

    or-long/2addr v4, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 7
    :cond_5
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "Invalid UTF-8 sequence continuation byte: "

    invoke-static {v0, v4, v5}, Lf/b/a/a/a;->c(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_6
    iget v3, p1, Lf/i/a/a/m1/u;->b:I

    add-int/2addr v3, v2

    iput v3, p1, Lf/i/a/a/m1/u;->b:I

    if-ne v0, v7, :cond_7

    .line 9
    invoke-virtual {p1}, Lf/i/a/a/m1/u;->p()I

    move-result v0

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Lf/i/a/a/m1/u;->u()I

    move-result v0

    .line 10
    :goto_4
    invoke-virtual {p1, v1}, Lf/i/a/a/m1/u;->A(I)V

    add-int/lit8 v2, v0, 0x1

    goto :goto_6

    .line 11
    :cond_8
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "Invalid UTF-8 sequence first byte: "

    invoke-static {v0, v4, v5}, Lf/b/a/a/a;->c(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_2
    const/16 p1, 0x240

    sub-int/2addr v0, v4

    :goto_5
    shl-int v2, p1, v0

    goto :goto_6

    :pswitch_3
    const/16 v2, 0xc0

    :goto_6
    int-to-long v0, v2

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public e(Lf/i/a/a/m1/u;JLf/i/a/a/b1/v/h$b;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    .line 1
    iget-object v3, v1, Lf/i/a/a/m1/u;->a:[B

    .line 2
    iget-object v4, v0, Lf/i/a/a/b1/v/b;->n:Lf/i/a/a/m1/n;

    const/4 v5, 0x1

    if-nez v4, :cond_0

    .line 3
    new-instance v4, Lf/i/a/a/m1/n;

    const/16 v6, 0x11

    invoke-direct {v4, v3, v6}, Lf/i/a/a/m1/n;-><init>([BI)V

    iput-object v4, v0, Lf/i/a/a/b1/v/b;->n:Lf/i/a/a/m1/n;

    const/16 v4, 0x9

    .line 4
    iget v1, v1, Lf/i/a/a/m1/u;->c:I

    .line 5
    invoke-static {v3, v4, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    const/4 v3, 0x4

    const/16 v4, -0x80

    .line 6
    aput-byte v4, v1, v3

    .line 7
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    .line 8
    iget-object v1, v0, Lf/i/a/a/b1/v/b;->n:Lf/i/a/a/m1/n;

    .line 9
    iget v3, v1, Lf/i/a/a/m1/n;->c:I

    iget v12, v1, Lf/i/a/a/m1/n;->a:I

    mul-int v10, v3, v12

    .line 10
    iget v11, v1, Lf/i/a/a/m1/n;->b:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v7, "audio/flac"

    .line 11
    invoke-static/range {v6 .. v16}, Lf/i/a/a/b0;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lf/i/a/a/z0/e;ILjava/lang/String;)Lf/i/a/a/b0;

    move-result-object v1

    iput-object v1, v2, Lf/i/a/a/b1/v/h$b;->a:Lf/i/a/a/b0;

    goto :goto_2

    :cond_0
    const/4 v4, 0x0

    .line 12
    aget-byte v6, v3, v4

    and-int/lit8 v6, v6, 0x7f

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 13
    new-instance v2, Lf/i/a/a/b1/v/b$a;

    invoke-direct {v2, v0}, Lf/i/a/a/b1/v/b$a;-><init>(Lf/i/a/a/b1/v/b;)V

    iput-object v2, v0, Lf/i/a/a/b1/v/b;->o:Lf/i/a/a/b1/v/b$a;

    .line 14
    invoke-virtual {v1, v5}, Lf/i/a/a/m1/u;->B(I)V

    .line 15
    invoke-virtual/range {p1 .. p1}, Lf/i/a/a/m1/u;->r()I

    move-result v3

    .line 16
    div-int/lit8 v3, v3, 0x12

    .line 17
    new-array v6, v3, [J

    iput-object v6, v2, Lf/i/a/a/b1/v/b$a;->a:[J

    .line 18
    new-array v6, v3, [J

    iput-object v6, v2, Lf/i/a/a/b1/v/b$a;->b:[J

    :goto_0
    if-ge v4, v3, :cond_4

    .line 19
    iget-object v6, v2, Lf/i/a/a/b1/v/b$a;->a:[J

    invoke-virtual/range {p1 .. p1}, Lf/i/a/a/m1/u;->j()J

    move-result-wide v7

    aput-wide v7, v6, v4

    .line 20
    iget-object v6, v2, Lf/i/a/a/b1/v/b$a;->b:[J

    invoke-virtual/range {p1 .. p1}, Lf/i/a/a/m1/u;->j()J

    move-result-wide v7

    aput-wide v7, v6, v4

    const/4 v6, 0x2

    .line 21
    invoke-virtual {v1, v6}, Lf/i/a/a/m1/u;->B(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 22
    :cond_1
    aget-byte v1, v3, v4

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    .line 23
    iget-object v1, v0, Lf/i/a/a/b1/v/b;->o:Lf/i/a/a/b1/v/b$a;

    if-eqz v1, :cond_3

    move-wide/from16 v5, p2

    .line 24
    iput-wide v5, v1, Lf/i/a/a/b1/v/b$a;->c:J

    .line 25
    iput-object v1, v2, Lf/i/a/a/b1/v/h$b;->b:Lf/i/a/a/b1/v/f;

    :cond_3
    return v4

    :cond_4
    :goto_2
    return v5
.end method

.method public f(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lf/i/a/a/b1/v/h;->f(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lf/i/a/a/b1/v/b;->n:Lf/i/a/a/m1/n;

    .line 3
    iput-object p1, p0, Lf/i/a/a/b1/v/b;->o:Lf/i/a/a/b1/v/b$a;

    :cond_0
    return-void
.end method
