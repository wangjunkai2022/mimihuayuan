.class public final Lf/i/a/a/h1/a0;
.super Ljava/lang/Object;
.source "IcyDataSource.java"

# interfaces
.implements Lf/i/a/a/l1/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/h1/a0$a;
    }
.end annotation


# instance fields
.field public final a:Lf/i/a/a/l1/m;

.field public final b:I

.field public final c:Lf/i/a/a/h1/a0$a;

.field public final d:[B

.field public e:I


# direct methods
.method public constructor <init>(Lf/i/a/a/l1/m;ILf/i/a/a/h1/a0$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lez p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-static {v1}, Lc/a/a/b/g/h;->m(Z)V

    .line 3
    iput-object p1, p0, Lf/i/a/a/h1/a0;->a:Lf/i/a/a/l1/m;

    .line 4
    iput p2, p0, Lf/i/a/a/h1/a0;->b:I

    .line 5
    iput-object p3, p0, Lf/i/a/a/h1/a0;->c:Lf/i/a/a/h1/a0$a;

    new-array p1, v0, [B

    .line 6
    iput-object p1, p0, Lf/i/a/a/h1/a0;->d:[B

    .line 7
    iput p2, p0, Lf/i/a/a/h1/a0;->e:I

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/a0;->a:Lf/i/a/a/l1/m;

    invoke-interface {v0}, Lf/i/a/a/l1/m;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public b(Lf/i/a/a/l1/p;)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public c(Lf/i/a/a/l1/i0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/a0;->a:Lf/i/a/a/l1/m;

    invoke-interface {v0, p1}, Lf/i/a/a/l1/m;->c(Lf/i/a/a/l1/i0;)V

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public d()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/a0;->a:Lf/i/a/a/l1/m;

    invoke-interface {v0}, Lf/i/a/a/l1/m;->d()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public read([BII)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lf/i/a/a/h1/a0;->e:I

    const/4 v2, -0x1

    if-nez v1, :cond_8

    .line 2
    iget-object v1, v0, Lf/i/a/a/h1/a0;->a:Lf/i/a/a/l1/m;

    iget-object v3, v0, Lf/i/a/a/h1/a0;->d:[B

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v1, v3, v5, v4}, Lf/i/a/a/l1/m;->read([BII)I

    move-result v1

    if-ne v1, v2, :cond_0

    :goto_0
    const/4 v4, 0x0

    goto :goto_4

    .line 3
    :cond_0
    iget-object v1, v0, Lf/i/a/a/h1/a0;->d:[B

    aget-byte v1, v1, v5

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_1

    goto :goto_4

    .line 4
    :cond_1
    new-array v3, v1, [B

    move v6, v1

    const/4 v7, 0x0

    :goto_1
    if-lez v6, :cond_3

    .line 5
    iget-object v8, v0, Lf/i/a/a/h1/a0;->a:Lf/i/a/a/l1/m;

    invoke-interface {v8, v3, v7, v6}, Lf/i/a/a/l1/m;->read([BII)I

    move-result v8

    if-ne v8, v2, :cond_2

    goto :goto_0

    :cond_2
    add-int/2addr v7, v8

    sub-int/2addr v6, v8

    goto :goto_1

    :cond_3
    :goto_2
    if-lez v1, :cond_4

    add-int/lit8 v5, v1, -0x1

    .line 6
    aget-byte v6, v3, v5

    if-nez v6, :cond_4

    move v1, v5

    goto :goto_2

    :cond_4
    if-lez v1, :cond_6

    .line 7
    iget-object v5, v0, Lf/i/a/a/h1/a0;->c:Lf/i/a/a/h1/a0$a;

    new-instance v6, Lf/i/a/a/m1/u;

    invoke-direct {v6, v3, v1}, Lf/i/a/a/m1/u;-><init>([BI)V

    check-cast v5, Lf/i/a/a/h1/g0$a;

    .line 8
    iget-boolean v1, v5, Lf/i/a/a/h1/g0$a;->m:Z

    if-nez v1, :cond_5

    iget-wide v7, v5, Lf/i/a/a/h1/g0$a;->i:J

    goto :goto_3

    :cond_5
    iget-object v1, v5, Lf/i/a/a/h1/g0$a;->n:Lf/i/a/a/h1/g0;

    .line 9
    invoke-static {v1}, Lf/i/a/a/h1/g0;->v(Lf/i/a/a/h1/g0;)J

    move-result-wide v7

    iget-wide v9, v5, Lf/i/a/a/h1/g0$a;->i:J

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    :goto_3
    move-wide v10, v7

    .line 10
    invoke-virtual {v6}, Lf/i/a/a/m1/u;->a()I

    move-result v13

    .line 11
    iget-object v9, v5, Lf/i/a/a/h1/g0$a;->l:Lf/i/a/a/b1/p;

    invoke-static {v9}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-interface {v9, v6, v13}, Lf/i/a/a/b1/p;->a(Lf/i/a/a/m1/u;I)V

    const/4 v12, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 13
    invoke-interface/range {v9 .. v15}, Lf/i/a/a/b1/p;->c(JIIILf/i/a/a/b1/p$a;)V

    .line 14
    iput-boolean v4, v5, Lf/i/a/a/h1/g0$a;->m:Z

    :cond_6
    :goto_4
    if-eqz v4, :cond_7

    .line 15
    iget v1, v0, Lf/i/a/a/h1/a0;->b:I

    iput v1, v0, Lf/i/a/a/h1/a0;->e:I

    goto :goto_5

    :cond_7
    return v2

    .line 16
    :cond_8
    :goto_5
    iget-object v1, v0, Lf/i/a/a/h1/a0;->a:Lf/i/a/a/l1/m;

    iget v3, v0, Lf/i/a/a/h1/a0;->e:I

    move/from16 v4, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-interface {v1, v4, v5, v3}, Lf/i/a/a/l1/m;->read([BII)I

    move-result v1

    if-eq v1, v2, :cond_9

    .line 17
    iget v2, v0, Lf/i/a/a/h1/a0;->e:I

    sub-int/2addr v2, v1

    iput v2, v0, Lf/i/a/a/h1/a0;->e:I

    :cond_9
    return v1
.end method
