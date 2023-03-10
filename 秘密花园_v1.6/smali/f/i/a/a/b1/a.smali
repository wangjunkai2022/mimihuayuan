.class public abstract Lf/i/a/a/b1/a;
.super Ljava/lang/Object;
.source "BinarySearchSeeker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/b1/a$a;,
        Lf/i/a/a/b1/a$f;,
        Lf/i/a/a/b1/a$d;,
        Lf/i/a/a/b1/a$e;,
        Lf/i/a/a/b1/a$b;,
        Lf/i/a/a/b1/a$c;,
        Lf/i/a/a/b1/a$g;
    }
.end annotation


# instance fields
.field public final a:Lf/i/a/a/b1/a$a;

.field public final b:Lf/i/a/a/b1/a$g;

.field public c:Lf/i/a/a/b1/a$d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:I


# direct methods
.method public constructor <init>(Lf/i/a/a/b1/a$e;Lf/i/a/a/b1/a$g;JJJJJJI)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p2

    .line 2
    iput-object v1, v0, Lf/i/a/a/b1/a;->b:Lf/i/a/a/b1/a$g;

    move/from16 v1, p15

    .line 3
    iput v1, v0, Lf/i/a/a/b1/a;->d:I

    .line 4
    new-instance v15, Lf/i/a/a/b1/a$a;

    move-object v1, v15

    move-object/from16 v2, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    invoke-direct/range {v1 .. v14}, Lf/i/a/a/b1/a$a;-><init>(Lf/i/a/a/b1/a$e;JJJJJJ)V

    iput-object v15, v0, Lf/i/a/a/b1/a;->a:Lf/i/a/a/b1/a$a;

    return-void
.end method


# virtual methods
.method public a(Lf/i/a/a/b1/d;Lf/i/a/a/b1/m;Lf/i/a/a/b1/a$c;)I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-object v3, v0, Lf/i/a/a/b1/a;->b:Lf/i/a/a/b1/a$g;

    invoke-static {v3}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :goto_0
    iget-object v4, v0, Lf/i/a/a/b1/a;->c:Lf/i/a/a/b1/a$d;

    invoke-static {v4}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-wide v5, v4, Lf/i/a/a/b1/a$d;->f:J

    .line 4
    iget-wide v7, v4, Lf/i/a/a/b1/a$d;->g:J

    .line 5
    iget-wide v9, v4, Lf/i/a/a/b1/a$d;->h:J

    sub-long/2addr v7, v5

    .line 6
    iget v11, v0, Lf/i/a/a/b1/a;->d:I

    int-to-long v11, v11

    const/4 v13, 0x0

    cmp-long v14, v7, v11

    if-gtz v14, :cond_0

    .line 7
    invoke-virtual {v0, v13, v5, v6}, Lf/i/a/a/b1/a;->b(ZJ)V

    .line 8
    invoke-virtual {v0, v1, v5, v6, v2}, Lf/i/a/a/b1/a;->c(Lf/i/a/a/b1/d;JLf/i/a/a/b1/m;)I

    move-result v1

    return v1

    .line 9
    :cond_0
    invoke-virtual {v0, v1, v9, v10}, Lf/i/a/a/b1/a;->e(Lf/i/a/a/b1/d;J)Z

    move-result v5

    if-nez v5, :cond_1

    .line 10
    invoke-virtual {v0, v1, v9, v10, v2}, Lf/i/a/a/b1/a;->c(Lf/i/a/a/b1/d;JLf/i/a/a/b1/m;)I

    move-result v1

    return v1

    .line 11
    :cond_1
    iput v13, v1, Lf/i/a/a/b1/d;->f:I

    .line 12
    iget-wide v5, v4, Lf/i/a/a/b1/a$d;->b:J

    const/4 v7, 0x0

    .line 13
    invoke-interface {v3, v1, v5, v6, v7}, Lf/i/a/a/b1/a$g;->a(Lf/i/a/a/b1/d;JLf/i/a/a/b1/a$c;)Lf/i/a/a/b1/a$f;

    move-result-object v5

    .line 14
    iget v6, v5, Lf/i/a/a/b1/a$f;->a:I

    const/4 v7, -0x3

    if-eq v6, v7, :cond_5

    const/4 v7, -0x2

    if-eq v6, v7, :cond_4

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    if-nez v6, :cond_2

    const/4 v3, 0x1

    .line 15
    iget-wide v6, v5, Lf/i/a/a/b1/a$f;->c:J

    .line 16
    invoke-virtual {v0, v3, v6, v7}, Lf/i/a/a/b1/a;->b(ZJ)V

    .line 17
    iget-wide v3, v5, Lf/i/a/a/b1/a$f;->c:J

    .line 18
    invoke-virtual {v0, v1, v3, v4}, Lf/i/a/a/b1/a;->e(Lf/i/a/a/b1/d;J)Z

    .line 19
    iget-wide v3, v5, Lf/i/a/a/b1/a$f;->c:J

    .line 20
    invoke-virtual {v0, v1, v3, v4, v2}, Lf/i/a/a/b1/a;->c(Lf/i/a/a/b1/d;JLf/i/a/a/b1/m;)I

    move-result v1

    return v1

    .line 21
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Invalid case"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 22
    :cond_3
    iget-wide v9, v5, Lf/i/a/a/b1/a$f;->b:J

    .line 23
    iget-wide v13, v5, Lf/i/a/a/b1/a$f;->c:J

    .line 24
    iput-wide v9, v4, Lf/i/a/a/b1/a$d;->e:J

    .line 25
    iput-wide v13, v4, Lf/i/a/a/b1/a$d;->g:J

    .line 26
    iget-wide v5, v4, Lf/i/a/a/b1/a$d;->b:J

    iget-wide v7, v4, Lf/i/a/a/b1/a$d;->d:J

    iget-wide v11, v4, Lf/i/a/a/b1/a$d;->f:J

    iget-wide v1, v4, Lf/i/a/a/b1/a$d;->c:J

    move-wide v15, v1

    .line 27
    invoke-static/range {v5 .. v16}, Lf/i/a/a/b1/a$d;->a(JJJJJJ)J

    move-result-wide v1

    iput-wide v1, v4, Lf/i/a/a/b1/a$d;->h:J

    goto :goto_1

    .line 28
    :cond_4
    iget-wide v7, v5, Lf/i/a/a/b1/a$f;->b:J

    .line 29
    iget-wide v11, v5, Lf/i/a/a/b1/a$f;->c:J

    .line 30
    iput-wide v7, v4, Lf/i/a/a/b1/a$d;->d:J

    .line 31
    iput-wide v11, v4, Lf/i/a/a/b1/a$d;->f:J

    .line 32
    iget-wide v5, v4, Lf/i/a/a/b1/a$d;->b:J

    iget-wide v9, v4, Lf/i/a/a/b1/a$d;->e:J

    iget-wide v13, v4, Lf/i/a/a/b1/a$d;->g:J

    iget-wide v1, v4, Lf/i/a/a/b1/a$d;->c:J

    move-wide v15, v1

    .line 33
    invoke-static/range {v5 .. v16}, Lf/i/a/a/b1/a$d;->a(JJJJJJ)J

    move-result-wide v1

    iput-wide v1, v4, Lf/i/a/a/b1/a$d;->h:J

    :goto_1
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    goto/16 :goto_0

    .line 34
    :cond_5
    invoke-virtual {v0, v13, v9, v10}, Lf/i/a/a/b1/a;->b(ZJ)V

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 35
    invoke-virtual {v0, v1, v9, v10, v2}, Lf/i/a/a/b1/a;->c(Lf/i/a/a/b1/d;JLf/i/a/a/b1/m;)I

    move-result v1

    return v1
.end method

.method public final b(ZJ)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lf/i/a/a/b1/a;->c:Lf/i/a/a/b1/a$d;

    .line 2
    iget-object p1, p0, Lf/i/a/a/b1/a;->b:Lf/i/a/a/b1/a$g;

    invoke-interface {p1}, Lf/i/a/a/b1/a$g;->b()V

    return-void
.end method

.method public final c(Lf/i/a/a/b1/d;JLf/i/a/a/b1/m;)I
    .locals 2

    .line 1
    iget-wide v0, p1, Lf/i/a/a/b1/d;->d:J

    cmp-long p1, p2, v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iput-wide p2, p4, Lf/i/a/a/b1/m;->a:J

    const/4 p1, 0x1

    return p1
.end method

.method public final d(J)V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lf/i/a/a/b1/a;->c:Lf/i/a/a/b1/a$d;

    if-eqz v1, :cond_0

    .line 2
    iget-wide v1, v1, Lf/i/a/a/b1/a$d;->a:J

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v1, Lf/i/a/a/b1/a$d;

    iget-object v2, v0, Lf/i/a/a/b1/a;->a:Lf/i/a/a/b1/a$a;

    .line 4
    iget-object v3, v2, Lf/i/a/a/b1/a$a;->a:Lf/i/a/a/b1/a$e;

    check-cast v3, Lf/i/a/a/b1/a$b;

    if-eqz v3, :cond_1

    .line 5
    iget-wide v8, v2, Lf/i/a/a/b1/a$a;->c:J

    .line 6
    iget-wide v10, v2, Lf/i/a/a/b1/a$a;->d:J

    .line 7
    iget-wide v12, v2, Lf/i/a/a/b1/a$a;->e:J

    .line 8
    iget-wide v14, v2, Lf/i/a/a/b1/a$a;->f:J

    .line 9
    iget-wide v6, v2, Lf/i/a/a/b1/a$a;->g:J

    move-object v3, v1

    move-wide/from16 v4, p1

    move-wide/from16 v16, v6

    move-wide/from16 v6, p1

    .line 10
    invoke-direct/range {v3 .. v17}, Lf/i/a/a/b1/a$d;-><init>(JJJJJJJ)V

    .line 11
    iput-object v1, v0, Lf/i/a/a/b1/a;->c:Lf/i/a/a/b1/a$d;

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 12
    throw v1
.end method

.method public final e(Lf/i/a/a/b1/d;J)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-wide v0, p1, Lf/i/a/a/b1/d;->d:J

    sub-long/2addr p2, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    const-wide/32 v0, 0x40000

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    long-to-int p3, p2

    .line 2
    invoke-virtual {p1, p3}, Lf/i/a/a/b1/d;->h(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
