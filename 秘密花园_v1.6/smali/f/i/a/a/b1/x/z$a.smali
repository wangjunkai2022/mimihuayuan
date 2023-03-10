.class public final Lf/i/a/a/b1/x/z$a;
.super Ljava/lang/Object;
.source "TsBinarySearchSeeker.java"

# interfaces
.implements Lf/i/a/a/b1/a$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/b1/x/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lf/i/a/a/m1/e0;

.field public final b:Lf/i/a/a/m1/u;

.field public final c:I


# direct methods
.method public constructor <init>(ILf/i/a/a/m1/e0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lf/i/a/a/b1/x/z$a;->c:I

    .line 3
    iput-object p2, p0, Lf/i/a/a/b1/x/z$a;->a:Lf/i/a/a/m1/e0;

    .line 4
    new-instance p1, Lf/i/a/a/m1/u;

    invoke-direct {p1}, Lf/i/a/a/m1/u;-><init>()V

    iput-object p1, p0, Lf/i/a/a/b1/x/z$a;->b:Lf/i/a/a/m1/u;

    return-void
.end method


# virtual methods
.method public a(Lf/i/a/a/b1/d;JLf/i/a/a/b1/a$c;)Lf/i/a/a/b1/a$f;
    .locals 17
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

    const-wide/32 v7, 0x1b8a0

    .line 3
    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    .line 4
    iget-object v2, v0, Lf/i/a/a/b1/x/z$a;->b:Lf/i/a/a/m1/u;

    invoke-virtual {v2, v3}, Lf/i/a/a/m1/u;->w(I)V

    .line 5
    iget-object v2, v0, Lf/i/a/a/b1/x/z$a;->b:Lf/i/a/a/m1/u;

    iget-object v2, v2, Lf/i/a/a/m1/u;->a:[B

    const/4 v4, 0x0

    .line 6
    invoke-virtual {v1, v2, v4, v3, v4}, Lf/i/a/a/b1/d;->d([BIIZ)Z

    .line 7
    iget-object v1, v0, Lf/i/a/a/b1/x/z$a;->b:Lf/i/a/a/m1/u;

    .line 8
    iget v2, v1, Lf/i/a/a/m1/u;->c:I

    const-wide/16 v7, -0x1

    move-wide v9, v7

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    :goto_0
    invoke-virtual {v1}, Lf/i/a/a/m1/u;->a()I

    move-result v11

    const/16 v12, 0xbc

    if-lt v11, v12, :cond_6

    .line 10
    iget-object v11, v1, Lf/i/a/a/m1/u;->a:[B

    .line 11
    iget v12, v1, Lf/i/a/a/m1/u;->b:I

    :goto_1
    if-ge v12, v2, :cond_0

    .line 12
    aget-byte v15, v11, v12

    const/16 v3, 0x47

    if-eq v15, v3, :cond_0

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_0
    add-int/lit16 v3, v12, 0xbc

    if-le v3, v2, :cond_1

    goto :goto_2

    .line 13
    :cond_1
    iget v4, v0, Lf/i/a/a/b1/x/z$a;->c:I

    invoke-static {v1, v12, v4}, Lc/a/a/b/g/h;->d1(Lf/i/a/a/m1/u;II)J

    move-result-wide v7

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v7, v15

    if-eqz v4, :cond_5

    .line 14
    iget-object v4, v0, Lf/i/a/a/b1/x/z$a;->a:Lf/i/a/a/m1/e0;

    invoke-virtual {v4, v7, v8}, Lf/i/a/a/m1/e0;->b(J)J

    move-result-wide v7

    cmp-long v4, v7, p2

    if-lez v4, :cond_3

    cmp-long v1, v13, v15

    if-nez v1, :cond_2

    .line 15
    new-instance v9, Lf/i/a/a/b1/a$f;

    const/4 v2, -0x1

    move-object v1, v9

    move-wide v3, v7

    invoke-direct/range {v1 .. v6}, Lf/i/a/a/b1/a$f;-><init>(IJJ)V

    goto :goto_3

    :cond_2
    add-long/2addr v5, v9

    .line 16
    invoke-static {v5, v6}, Lf/i/a/a/b1/a$f;->a(J)Lf/i/a/a/b1/a$f;

    move-result-object v9

    goto :goto_3

    :cond_3
    const-wide/32 v9, 0x186a0

    add-long/2addr v9, v7

    cmp-long v4, v9, p2

    if-lez v4, :cond_4

    int-to-long v1, v12

    add-long/2addr v5, v1

    .line 17
    invoke-static {v5, v6}, Lf/i/a/a/b1/a$f;->a(J)Lf/i/a/a/b1/a$f;

    move-result-object v9

    goto :goto_3

    :cond_4
    int-to-long v9, v12

    move-wide v13, v7

    .line 18
    :cond_5
    invoke-virtual {v1, v3}, Lf/i/a/a/m1/u;->A(I)V

    int-to-long v7, v3

    goto :goto_0

    :cond_6
    :goto_2
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v13, v1

    if-eqz v3, :cond_7

    add-long v15, v5, v7

    .line 19
    new-instance v9, Lf/i/a/a/b1/a$f;

    const/4 v12, -0x2

    move-object v11, v9

    invoke-direct/range {v11 .. v16}, Lf/i/a/a/b1/a$f;-><init>(IJJ)V

    goto :goto_3

    .line 20
    :cond_7
    sget-object v9, Lf/i/a/a/b1/a$f;->d:Lf/i/a/a/b1/a$f;

    :goto_3
    return-object v9
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/b1/x/z$a;->b:Lf/i/a/a/m1/u;

    sget-object v1, Lf/i/a/a/m1/h0;->f:[B

    invoke-virtual {v0, v1}, Lf/i/a/a/m1/u;->x([B)V

    return-void
.end method
