.class public final Lf/i/a/a/b1/x/s$b;
.super Ljava/lang/Object;
.source "PsBinarySearchSeeker.java"

# interfaces
.implements Lf/i/a/a/b1/a$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/b1/x/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lf/i/a/a/m1/e0;

.field public final b:Lf/i/a/a/m1/u;


# direct methods
.method public constructor <init>(Lf/i/a/a/m1/e0;Lf/i/a/a/b1/x/s$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/b1/x/s$b;->a:Lf/i/a/a/m1/e0;

    .line 3
    new-instance p1, Lf/i/a/a/m1/u;

    invoke-direct {p1}, Lf/i/a/a/m1/u;-><init>()V

    iput-object p1, p0, Lf/i/a/a/b1/x/s$b;->b:Lf/i/a/a/m1/u;

    return-void
.end method


# virtual methods
.method public a(Lf/i/a/a/b1/d;JLf/i/a/a/b1/a$c;)Lf/i/a/a/b1/a$f;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-wide v5, v1, Lf/i/a/a/b1/d;->d:J

    .line 2
    iget-wide v2, v1, Lf/i/a/a/b1/d;->c:J

    sub-long/2addr v2, v5

    const-wide/16 v7, 0x4e20

    .line 3
    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    .line 4
    iget-object v2, v0, Lf/i/a/a/b1/x/s$b;->b:Lf/i/a/a/m1/u;

    invoke-virtual {v2, v3}, Lf/i/a/a/m1/u;->w(I)V

    .line 5
    iget-object v2, v0, Lf/i/a/a/b1/x/s$b;->b:Lf/i/a/a/m1/u;

    iget-object v2, v2, Lf/i/a/a/m1/u;->a:[B

    const/4 v4, 0x0

    .line 6
    invoke-virtual {v1, v2, v4, v3, v4}, Lf/i/a/a/b1/d;->d([BIIZ)Z

    .line 7
    iget-object v1, v0, Lf/i/a/a/b1/x/s$b;->b:Lf/i/a/a/m1/u;

    const/4 v2, -0x1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v10, v3

    const/4 v7, -0x1

    .line 8
    :goto_0
    invoke-virtual {v1}, Lf/i/a/a/m1/u;->a()I

    move-result v8

    const/4 v9, 0x4

    if-lt v8, v9, :cond_e

    .line 9
    iget-object v8, v1, Lf/i/a/a/m1/u;->a:[B

    .line 10
    iget v12, v1, Lf/i/a/a/m1/u;->b:I

    .line 11
    invoke-static {v8, v12}, Lf/i/a/a/b1/x/s;->f([BI)I

    move-result v8

    const/4 v12, 0x1

    const/16 v13, 0x1ba

    if-eq v8, v13, :cond_0

    .line 12
    invoke-virtual {v1, v12}, Lf/i/a/a/m1/u;->B(I)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v1, v9}, Lf/i/a/a/m1/u;->B(I)V

    .line 14
    invoke-static {v1}, Lf/i/a/a/b1/x/t;->c(Lf/i/a/a/m1/u;)J

    move-result-wide v14

    cmp-long v2, v14, v3

    if-eqz v2, :cond_4

    .line 15
    iget-object v2, v0, Lf/i/a/a/b1/x/s$b;->a:Lf/i/a/a/m1/e0;

    invoke-virtual {v2, v14, v15}, Lf/i/a/a/m1/e0;->b(J)J

    move-result-wide v14

    cmp-long v2, v14, p2

    if-lez v2, :cond_2

    cmp-long v1, v10, v3

    if-nez v1, :cond_1

    .line 16
    new-instance v7, Lf/i/a/a/b1/a$f;

    const/4 v2, -0x1

    move-object v1, v7

    move-wide v3, v14

    invoke-direct/range {v1 .. v6}, Lf/i/a/a/b1/a$f;-><init>(IJJ)V

    goto/16 :goto_3

    :cond_1
    int-to-long v1, v7

    add-long/2addr v5, v1

    .line 17
    invoke-static {v5, v6}, Lf/i/a/a/b1/a$f;->a(J)Lf/i/a/a/b1/a$f;

    move-result-object v7

    goto/16 :goto_3

    :cond_2
    const-wide/32 v7, 0x186a0

    add-long/2addr v7, v14

    cmp-long v2, v7, p2

    if-lez v2, :cond_3

    .line 18
    iget v1, v1, Lf/i/a/a/m1/u;->b:I

    int-to-long v1, v1

    add-long/2addr v5, v1

    .line 19
    invoke-static {v5, v6}, Lf/i/a/a/b1/a$f;->a(J)Lf/i/a/a/b1/a$f;

    move-result-object v7

    goto/16 :goto_3

    .line 20
    :cond_3
    iget v2, v1, Lf/i/a/a/m1/u;->b:I

    move v7, v2

    move-wide v10, v14

    .line 21
    :cond_4
    iget v2, v1, Lf/i/a/a/m1/u;->c:I

    .line 22
    invoke-virtual {v1}, Lf/i/a/a/m1/u;->a()I

    move-result v8

    const/16 v14, 0xa

    if-ge v8, v14, :cond_5

    .line 23
    invoke-virtual {v1, v2}, Lf/i/a/a/m1/u;->A(I)V

    goto/16 :goto_2

    :cond_5
    const/16 v8, 0x9

    .line 24
    invoke-virtual {v1, v8}, Lf/i/a/a/m1/u;->B(I)V

    .line 25
    invoke-virtual {v1}, Lf/i/a/a/m1/u;->p()I

    move-result v8

    and-int/lit8 v8, v8, 0x7

    .line 26
    invoke-virtual {v1}, Lf/i/a/a/m1/u;->a()I

    move-result v14

    if-ge v14, v8, :cond_6

    .line 27
    invoke-virtual {v1, v2}, Lf/i/a/a/m1/u;->A(I)V

    goto :goto_2

    .line 28
    :cond_6
    invoke-virtual {v1, v8}, Lf/i/a/a/m1/u;->B(I)V

    .line 29
    invoke-virtual {v1}, Lf/i/a/a/m1/u;->a()I

    move-result v8

    if-ge v8, v9, :cond_7

    .line 30
    invoke-virtual {v1, v2}, Lf/i/a/a/m1/u;->A(I)V

    goto :goto_2

    .line 31
    :cond_7
    iget-object v8, v1, Lf/i/a/a/m1/u;->a:[B

    .line 32
    iget v14, v1, Lf/i/a/a/m1/u;->b:I

    .line 33
    invoke-static {v8, v14}, Lf/i/a/a/b1/x/s;->f([BI)I

    move-result v8

    const/16 v14, 0x1bb

    if-ne v8, v14, :cond_9

    .line 34
    invoke-virtual {v1, v9}, Lf/i/a/a/m1/u;->B(I)V

    .line 35
    invoke-virtual {v1}, Lf/i/a/a/m1/u;->u()I

    move-result v8

    .line 36
    invoke-virtual {v1}, Lf/i/a/a/m1/u;->a()I

    move-result v14

    if-ge v14, v8, :cond_8

    .line 37
    invoke-virtual {v1, v2}, Lf/i/a/a/m1/u;->A(I)V

    goto :goto_2

    .line 38
    :cond_8
    invoke-virtual {v1, v8}, Lf/i/a/a/m1/u;->B(I)V

    .line 39
    :cond_9
    :goto_1
    invoke-virtual {v1}, Lf/i/a/a/m1/u;->a()I

    move-result v8

    if-lt v8, v9, :cond_d

    .line 40
    iget-object v8, v1, Lf/i/a/a/m1/u;->a:[B

    .line 41
    iget v14, v1, Lf/i/a/a/m1/u;->b:I

    .line 42
    invoke-static {v8, v14}, Lf/i/a/a/b1/x/s;->f([BI)I

    move-result v8

    if-eq v8, v13, :cond_d

    const/16 v14, 0x1b9

    if-ne v8, v14, :cond_a

    goto :goto_2

    :cond_a
    ushr-int/lit8 v8, v8, 0x8

    if-eq v8, v12, :cond_b

    goto :goto_2

    .line 43
    :cond_b
    invoke-virtual {v1, v9}, Lf/i/a/a/m1/u;->B(I)V

    .line 44
    invoke-virtual {v1}, Lf/i/a/a/m1/u;->a()I

    move-result v8

    const/4 v14, 0x2

    if-ge v8, v14, :cond_c

    .line 45
    invoke-virtual {v1, v2}, Lf/i/a/a/m1/u;->A(I)V

    goto :goto_2

    .line 46
    :cond_c
    invoke-virtual {v1}, Lf/i/a/a/m1/u;->u()I

    move-result v8

    .line 47
    iget v14, v1, Lf/i/a/a/m1/u;->c:I

    .line 48
    iget v15, v1, Lf/i/a/a/m1/u;->b:I

    add-int/2addr v15, v8

    .line 49
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 50
    invoke-virtual {v1, v8}, Lf/i/a/a/m1/u;->A(I)V

    goto :goto_1

    .line 51
    :cond_d
    :goto_2
    iget v2, v1, Lf/i/a/a/m1/u;->b:I

    goto/16 :goto_0

    :cond_e
    cmp-long v1, v10, v3

    if-eqz v1, :cond_f

    int-to-long v1, v2

    add-long v12, v5, v1

    .line 52
    new-instance v7, Lf/i/a/a/b1/a$f;

    const/4 v9, -0x2

    move-object v8, v7

    invoke-direct/range {v8 .. v13}, Lf/i/a/a/b1/a$f;-><init>(IJJ)V

    goto :goto_3

    .line 53
    :cond_f
    sget-object v7, Lf/i/a/a/b1/a$f;->d:Lf/i/a/a/b1/a$f;

    :goto_3
    return-object v7
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/b1/x/s$b;->b:Lf/i/a/a/m1/u;

    sget-object v1, Lf/i/a/a/m1/h0;->f:[B

    invoke-virtual {v0, v1}, Lf/i/a/a/m1/u;->x([B)V

    return-void
.end method
