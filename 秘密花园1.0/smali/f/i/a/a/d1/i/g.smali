.class public final Lf/i/a/a/d1/i/g;
.super Ljava/lang/Object;
.source "Id3Decoder.java"

# interfaces
.implements Lf/i/a/a/d1/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/d1/i/g$b;,
        Lf/i/a/a/d1/i/g$a;
    }
.end annotation


# static fields
.field public static final b:I


# instance fields
.field public final a:Lf/i/a/a/d1/i/g$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ID3"

    .line 1
    invoke-static {v0}, Lf/i/a/a/m1/h0;->C(Ljava/lang/String;)I

    move-result v0

    sput v0, Lf/i/a/a/d1/i/g;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lf/i/a/a/d1/i/g;->a:Lf/i/a/a/d1/i/g$a;

    return-void
.end method

.method public constructor <init>(Lf/i/a/a/d1/i/g$a;)V
    .locals 0
    .param p1    # Lf/i/a/a/d1/i/g$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lf/i/a/a/d1/i/g;->a:Lf/i/a/a/d1/i/g$a;

    return-void
.end method

.method public static b([BII)[B
    .locals 0

    if-gt p2, p1, :cond_0

    .line 1
    sget-object p0, Lf/i/a/a/m1/h0;->f:[B

    return-object p0

    .line 2
    :cond_0
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static d(Lf/i/a/a/m1/u;II)Lf/i/a/a/d1/i/a;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/m1/u;->p()I

    move-result v0

    .line 2
    invoke-static {v0}, Lf/i/a/a/d1/i/g;->s(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    add-int/2addr p1, v2

    .line 3
    new-array v3, p1, [B

    .line 4
    iget-object v4, p0, Lf/i/a/a/m1/u;->a:[B

    iget v5, p0, Lf/i/a/a/m1/u;->b:I

    const/4 v6, 0x0

    invoke-static {v4, v5, v3, v6, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget v4, p0, Lf/i/a/a/m1/u;->b:I

    add-int/2addr v4, p1

    iput v4, p0, Lf/i/a/a/m1/u;->b:I

    const/4 p0, 0x2

    const-string v4, "image/"

    const-string v5, "ISO-8859-1"

    if-ne p2, p0, :cond_1

    .line 6
    invoke-static {v4}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    new-instance v2, Ljava/lang/String;

    const/4 v4, 0x3

    invoke-direct {v2, v3, v6, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v2}, Lf/i/a/a/m1/h0;->p0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "image/jpg"

    .line 7
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p2, "image/jpeg"

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {v3, v6}, Lf/i/a/a/d1/i/g;->v([BI)I

    move-result p2

    .line 9
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v3, v6, p2, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v7}, Lf/i/a/a/m1/h0;->p0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2f

    .line 10
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ne v6, v2, :cond_2

    .line 11
    invoke-static {v4, v5}, Lf/b/a/a/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    move v2, p2

    move-object p2, v8

    goto :goto_0

    :cond_2
    move v2, p2

    move-object p2, v5

    :goto_0
    add-int/lit8 v4, v2, 0x1

    .line 12
    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v2, p0

    .line 13
    invoke-static {v3, v2, v0}, Lf/i/a/a/d1/i/g;->u([BII)I

    move-result p0

    .line 14
    new-instance v5, Ljava/lang/String;

    sub-int v6, p0, v2

    invoke-direct {v5, v3, v2, v6, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 15
    invoke-static {v0}, Lf/i/a/a/d1/i/g;->r(I)I

    move-result v0

    add-int/2addr v0, p0

    .line 16
    invoke-static {v3, v0, p1}, Lf/i/a/a/d1/i/g;->b([BII)[B

    move-result-object p0

    .line 17
    new-instance p1, Lf/i/a/a/d1/i/a;

    invoke-direct {p1, p2, v5, v4, p0}, Lf/i/a/a/d1/i/a;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    return-object p1
.end method

.method public static e(Lf/i/a/a/m1/u;ILjava/lang/String;)Lf/i/a/a/d1/i/b;
    .locals 4

    .line 1
    new-array v0, p1, [B

    .line 2
    iget-object v1, p0, Lf/i/a/a/m1/u;->a:[B

    iget v2, p0, Lf/i/a/a/m1/u;->b:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    iget v1, p0, Lf/i/a/a/m1/u;->b:I

    add-int/2addr v1, p1

    iput v1, p0, Lf/i/a/a/m1/u;->b:I

    .line 4
    new-instance p0, Lf/i/a/a/d1/i/b;

    invoke-direct {p0, p2, v0}, Lf/i/a/a/d1/i/b;-><init>(Ljava/lang/String;[B)V

    return-object p0
.end method

.method public static f(Lf/i/a/a/m1/u;IIZILf/i/a/a/d1/i/g$a;)Lf/i/a/a/d1/i/c;
    .locals 15
    .param p5    # Lf/i/a/a/d1/i/g$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    move-object v0, p0

    .line 1
    iget v1, v0, Lf/i/a/a/m1/u;->b:I

    .line 2
    iget-object v2, v0, Lf/i/a/a/m1/u;->a:[B

    invoke-static {v2, v1}, Lf/i/a/a/d1/i/g;->v([BI)I

    move-result v2

    .line 3
    new-instance v4, Ljava/lang/String;

    iget-object v3, v0, Lf/i/a/a/m1/u;->a:[B

    sub-int v5, v2, v1

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v3, v1, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    .line 4
    invoke-virtual {p0, v2}, Lf/i/a/a/m1/u;->A(I)V

    .line 5
    invoke-virtual {p0}, Lf/i/a/a/m1/u;->d()I

    move-result v5

    .line 6
    invoke-virtual {p0}, Lf/i/a/a/m1/u;->d()I

    move-result v6

    .line 7
    invoke-virtual {p0}, Lf/i/a/a/m1/u;->q()J

    move-result-wide v2

    const-wide/16 v7, -0x1

    const-wide v9, 0xffffffffL

    cmp-long v11, v2, v9

    if-nez v11, :cond_0

    move-wide v11, v7

    goto :goto_0

    :cond_0
    move-wide v11, v2

    .line 8
    :goto_0
    invoke-virtual {p0}, Lf/i/a/a/m1/u;->q()J

    move-result-wide v2

    cmp-long v13, v2, v9

    if-nez v13, :cond_1

    move-wide v9, v7

    goto :goto_1

    :cond_1
    move-wide v9, v2

    .line 9
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    add-int v1, v1, p1

    .line 10
    :cond_2
    :goto_2
    iget v3, v0, Lf/i/a/a/m1/u;->b:I

    if-ge v3, v1, :cond_3

    move/from16 v3, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v13, p5

    .line 11
    invoke-static {v3, p0, v7, v8, v13}, Lf/i/a/a/d1/i/g;->i(ILf/i/a/a/m1/u;ZILf/i/a/a/d1/i/g$a;)Lf/i/a/a/d1/i/h;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 12
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 13
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lf/i/a/a/d1/i/h;

    .line 14
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 15
    new-instance v1, Lf/i/a/a/d1/i/c;

    move-object v3, v1

    move-wide v7, v11

    move-object v11, v0

    invoke-direct/range {v3 .. v11}, Lf/i/a/a/d1/i/c;-><init>(Ljava/lang/String;IIJJ[Lf/i/a/a/d1/i/h;)V

    return-object v1
.end method

.method public static g(Lf/i/a/a/m1/u;IIZILf/i/a/a/d1/i/g$a;)Lf/i/a/a/d1/i/d;
    .locals 15
    .param p5    # Lf/i/a/a/d1/i/g$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    move-object v0, p0

    .line 1
    iget v1, v0, Lf/i/a/a/m1/u;->b:I

    .line 2
    iget-object v2, v0, Lf/i/a/a/m1/u;->a:[B

    invoke-static {v2, v1}, Lf/i/a/a/d1/i/g;->v([BI)I

    move-result v2

    .line 3
    new-instance v3, Ljava/lang/String;

    iget-object v4, v0, Lf/i/a/a/m1/u;->a:[B

    sub-int v5, v2, v1

    const-string v6, "ISO-8859-1"

    invoke-direct {v3, v4, v1, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const/4 v4, 0x1

    add-int/2addr v2, v4

    .line 4
    invoke-virtual {p0, v2}, Lf/i/a/a/m1/u;->A(I)V

    .line 5
    invoke-virtual {p0}, Lf/i/a/a/m1/u;->p()I

    move-result v2

    and-int/lit8 v5, v2, 0x2

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    and-int/2addr v2, v4

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 6
    :goto_1
    invoke-virtual {p0}, Lf/i/a/a/m1/u;->p()I

    move-result v8

    .line 7
    new-array v9, v8, [Ljava/lang/String;

    :goto_2
    if-ge v7, v8, :cond_2

    .line 8
    iget v10, v0, Lf/i/a/a/m1/u;->b:I

    .line 9
    iget-object v11, v0, Lf/i/a/a/m1/u;->a:[B

    invoke-static {v11, v10}, Lf/i/a/a/d1/i/g;->v([BI)I

    move-result v11

    .line 10
    new-instance v12, Ljava/lang/String;

    iget-object v13, v0, Lf/i/a/a/m1/u;->a:[B

    sub-int v14, v11, v10

    invoke-direct {v12, v13, v10, v14, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    aput-object v12, v9, v7

    add-int/2addr v11, v4

    .line 11
    invoke-virtual {p0, v11}, Lf/i/a/a/m1/u;->A(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 12
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    add-int v1, v1, p1

    .line 13
    :cond_3
    :goto_3
    iget v6, v0, Lf/i/a/a/m1/u;->b:I

    if-ge v6, v1, :cond_4

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v10, p5

    .line 14
    invoke-static {v6, p0, v7, v8, v10}, Lf/i/a/a/d1/i/g;->i(ILf/i/a/a/m1/u;ZILf/i/a/a/d1/i/g$a;)Lf/i/a/a/d1/i/h;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 15
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 16
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lf/i/a/a/d1/i/h;

    .line 17
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 18
    new-instance v1, Lf/i/a/a/d1/i/d;

    move-object p0, v1

    move-object/from16 p1, v3

    move/from16 p2, v5

    move/from16 p3, v2

    move-object/from16 p4, v9

    move-object/from16 p5, v0

    invoke-direct/range {p0 .. p5}, Lf/i/a/a/d1/i/d;-><init>(Ljava/lang/String;ZZ[Ljava/lang/String;[Lf/i/a/a/d1/i/h;)V

    return-object v1
.end method

.method public static h(Lf/i/a/a/m1/u;I)Lf/i/a/a/d1/i/e;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lf/i/a/a/m1/u;->p()I

    move-result v1

    .line 2
    invoke-static {v1}, Lf/i/a/a/d1/i/g;->s(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v4, v3, [B

    .line 3
    iget-object v5, p0, Lf/i/a/a/m1/u;->a:[B

    iget v6, p0, Lf/i/a/a/m1/u;->b:I

    const/4 v7, 0x0

    invoke-static {v5, v6, v4, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget v5, p0, Lf/i/a/a/m1/u;->b:I

    add-int/2addr v5, v3

    iput v5, p0, Lf/i/a/a/m1/u;->b:I

    .line 5
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4, v7, v3}, Ljava/lang/String;-><init>([BII)V

    sub-int/2addr p1, v0

    .line 6
    new-array v0, p1, [B

    .line 7
    iget-object v3, p0, Lf/i/a/a/m1/u;->a:[B

    iget v4, p0, Lf/i/a/a/m1/u;->b:I

    invoke-static {v3, v4, v0, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v3, p0, Lf/i/a/a/m1/u;->b:I

    add-int/2addr v3, p1

    iput v3, p0, Lf/i/a/a/m1/u;->b:I

    .line 9
    invoke-static {v0, v7, v1}, Lf/i/a/a/d1/i/g;->u([BII)I

    move-result p0

    .line 10
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, v7, p0, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 11
    invoke-static {v1}, Lf/i/a/a/d1/i/g;->r(I)I

    move-result v3

    add-int/2addr v3, p0

    .line 12
    invoke-static {v0, v3, v1}, Lf/i/a/a/d1/i/g;->u([BII)I

    move-result p0

    .line 13
    invoke-static {v0, v3, p0, v2}, Lf/i/a/a/d1/i/g;->m([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 14
    new-instance v0, Lf/i/a/a/d1/i/e;

    invoke-direct {v0, v5, p1, p0}, Lf/i/a/a/d1/i/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static i(ILf/i/a/a/m1/u;ZILf/i/a/a/d1/i/g$a;)Lf/i/a/a/d1/i/h;
    .locals 19
    .param p4    # Lf/i/a/a/d1/i/g$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move/from16 v0, p0

    move-object/from16 v7, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Lf/i/a/a/m1/u;->p()I

    move-result v8

    .line 2
    invoke-virtual/range {p1 .. p1}, Lf/i/a/a/m1/u;->p()I

    move-result v9

    .line 3
    invoke-virtual/range {p1 .. p1}, Lf/i/a/a/m1/u;->p()I

    move-result v10

    const/4 v12, 0x3

    if-lt v0, v12, :cond_0

    .line 4
    invoke-virtual/range {p1 .. p1}, Lf/i/a/a/m1/u;->p()I

    move-result v1

    move v13, v1

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :goto_0
    const/4 v14, 0x4

    if-ne v0, v14, :cond_2

    .line 5
    invoke-virtual/range {p1 .. p1}, Lf/i/a/a/m1/u;->s()I

    move-result v1

    if-nez p2, :cond_1

    and-int/lit16 v2, v1, 0xff

    shr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x7

    or-int/2addr v2, v3

    shr-int/lit8 v3, v1, 0x10

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xe

    or-int/2addr v2, v3

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v1, v2

    :cond_1
    :goto_1
    move v15, v1

    goto :goto_2

    :cond_2
    if-ne v0, v12, :cond_3

    .line 6
    invoke-virtual/range {p1 .. p1}, Lf/i/a/a/m1/u;->s()I

    move-result v1

    goto :goto_1

    .line 7
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lf/i/a/a/m1/u;->r()I

    move-result v1

    goto :goto_1

    :goto_2
    if-lt v0, v12, :cond_4

    .line 8
    invoke-virtual/range {p1 .. p1}, Lf/i/a/a/m1/u;->u()I

    move-result v1

    move v6, v1

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    :goto_3
    const/16 v16, 0x0

    if-nez v8, :cond_5

    if-nez v9, :cond_5

    if-nez v10, :cond_5

    if-nez v13, :cond_5

    if-nez v15, :cond_5

    if-nez v6, :cond_5

    .line 9
    iget v0, v7, Lf/i/a/a/m1/u;->c:I

    .line 10
    invoke-virtual {v7, v0}, Lf/i/a/a/m1/u;->A(I)V

    return-object v16

    .line 11
    :cond_5
    iget v1, v7, Lf/i/a/a/m1/u;->b:I

    add-int v5, v1, v15

    .line 12
    iget v1, v7, Lf/i/a/a/m1/u;->c:I

    if-le v5, v1, :cond_6

    .line 13
    invoke-virtual {v7, v1}, Lf/i/a/a/m1/u;->A(I)V

    return-object v16

    :cond_6
    if-eqz p4, :cond_7

    move-object/from16 v1, p4

    move/from16 v2, p0

    move v3, v8

    move v4, v9

    move v11, v5

    move v5, v10

    move v14, v6

    move v6, v13

    .line 14
    invoke-interface/range {v1 .. v6}, Lf/i/a/a/d1/i/g$a;->a(IIIII)Z

    move-result v1

    if-nez v1, :cond_8

    .line 15
    invoke-virtual {v7, v11}, Lf/i/a/a/m1/u;->A(I)V

    return-object v16

    :cond_7
    move v11, v5

    move v14, v6

    :cond_8
    const/4 v1, 0x1

    if-ne v0, v12, :cond_c

    and-int/lit16 v2, v14, 0x80

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    goto :goto_4

    :cond_9
    const/4 v2, 0x0

    :goto_4
    and-int/lit8 v3, v14, 0x40

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    and-int/lit8 v4, v14, 0x20

    if-eqz v4, :cond_b

    const/4 v4, 0x1

    goto :goto_6

    :cond_b
    const/4 v4, 0x0

    :goto_6
    move/from16 v17, v2

    const/4 v5, 0x0

    move v2, v4

    move/from16 v4, v17

    goto :goto_c

    :cond_c
    const/4 v2, 0x4

    if-ne v0, v2, :cond_12

    and-int/lit8 v2, v14, 0x40

    if-eqz v2, :cond_d

    const/4 v2, 0x1

    goto :goto_7

    :cond_d
    const/4 v2, 0x0

    :goto_7
    and-int/lit8 v3, v14, 0x8

    if-eqz v3, :cond_e

    const/4 v3, 0x1

    goto :goto_8

    :cond_e
    const/4 v3, 0x0

    :goto_8
    and-int/lit8 v4, v14, 0x4

    if-eqz v4, :cond_f

    const/4 v4, 0x1

    goto :goto_9

    :cond_f
    const/4 v4, 0x0

    :goto_9
    and-int/lit8 v5, v14, 0x2

    if-eqz v5, :cond_10

    const/4 v5, 0x1

    goto :goto_a

    :cond_10
    const/4 v5, 0x0

    :goto_a
    and-int/lit8 v6, v14, 0x1

    if-eqz v6, :cond_11

    const/16 v17, 0x1

    goto :goto_b

    :cond_11
    const/16 v17, 0x0

    :goto_b
    move/from16 v18, v17

    move/from16 v17, v3

    move v3, v4

    move/from16 v4, v18

    goto :goto_c

    :cond_12
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v17, 0x0

    :goto_c
    if-nez v17, :cond_28

    if-eqz v3, :cond_13

    goto/16 :goto_11

    :cond_13
    if-eqz v2, :cond_14

    add-int/lit8 v15, v15, -0x1

    .line 16
    invoke-virtual {v7, v1}, Lf/i/a/a/m1/u;->B(I)V

    :cond_14
    if-eqz v4, :cond_15

    add-int/lit8 v15, v15, -0x4

    const/4 v1, 0x4

    .line 17
    invoke-virtual {v7, v1}, Lf/i/a/a/m1/u;->B(I)V

    :cond_15
    if-eqz v5, :cond_16

    .line 18
    invoke-static {v7, v15}, Lf/i/a/a/d1/i/g;->w(Lf/i/a/a/m1/u;I)I

    move-result v1

    move v2, v1

    goto :goto_d

    :cond_16
    move v2, v15

    :goto_d
    const/16 v1, 0x54

    const/16 v3, 0x58

    const/4 v4, 0x2

    if-ne v8, v1, :cond_18

    if-ne v9, v3, :cond_18

    if-ne v10, v3, :cond_18

    if-eq v0, v4, :cond_17

    if-ne v13, v3, :cond_18

    .line 19
    :cond_17
    :try_start_0
    invoke-static {v7, v2}, Lf/i/a/a/d1/i/g;->o(Lf/i/a/a/m1/u;I)Lf/i/a/a/d1/i/l;

    move-result-object v1

    goto/16 :goto_f

    :cond_18
    if-ne v8, v1, :cond_19

    .line 20
    invoke-static {v0, v8, v9, v10, v13}, Lf/i/a/a/d1/i/g;->t(IIIII)Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-static {v7, v2, v1}, Lf/i/a/a/d1/i/g;->n(Lf/i/a/a/m1/u;ILjava/lang/String;)Lf/i/a/a/d1/i/l;

    move-result-object v1

    goto/16 :goto_f

    :catchall_0
    move-exception v0

    goto/16 :goto_10

    :cond_19
    const/16 v5, 0x57

    if-ne v8, v5, :cond_1b

    if-ne v9, v3, :cond_1b

    if-ne v10, v3, :cond_1b

    if-eq v0, v4, :cond_1a

    if-ne v13, v3, :cond_1b

    .line 22
    :cond_1a
    invoke-static {v7, v2}, Lf/i/a/a/d1/i/g;->q(Lf/i/a/a/m1/u;I)Lf/i/a/a/d1/i/m;

    move-result-object v1

    goto/16 :goto_f

    :cond_1b
    if-ne v8, v5, :cond_1c

    .line 23
    invoke-static {v0, v8, v9, v10, v13}, Lf/i/a/a/d1/i/g;->t(IIIII)Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-static {v7, v2, v1}, Lf/i/a/a/d1/i/g;->p(Lf/i/a/a/m1/u;ILjava/lang/String;)Lf/i/a/a/d1/i/m;

    move-result-object v1

    goto/16 :goto_f

    :cond_1c
    const/16 v3, 0x49

    const/16 v5, 0x50

    if-ne v8, v5, :cond_1d

    const/16 v6, 0x52

    if-ne v9, v6, :cond_1d

    if-ne v10, v3, :cond_1d

    const/16 v6, 0x56

    if-ne v13, v6, :cond_1d

    .line 25
    invoke-static {v7, v2}, Lf/i/a/a/d1/i/g;->l(Lf/i/a/a/m1/u;I)Lf/i/a/a/d1/i/k;

    move-result-object v1

    goto/16 :goto_f

    :cond_1d
    const/16 v6, 0x47

    const/16 v12, 0x4f

    if-ne v8, v6, :cond_1f

    const/16 v6, 0x45

    if-ne v9, v6, :cond_1f

    if-ne v10, v12, :cond_1f

    const/16 v6, 0x42

    if-eq v13, v6, :cond_1e

    if-ne v0, v4, :cond_1f

    .line 26
    :cond_1e
    invoke-static {v7, v2}, Lf/i/a/a/d1/i/g;->j(Lf/i/a/a/m1/u;I)Lf/i/a/a/d1/i/f;

    move-result-object v1

    goto/16 :goto_f

    :cond_1f
    const/16 v6, 0x41

    const/16 v14, 0x43

    if-ne v0, v4, :cond_20

    if-ne v8, v5, :cond_21

    if-ne v9, v3, :cond_21

    if-ne v10, v14, :cond_21

    goto :goto_e

    :cond_20
    if-ne v8, v6, :cond_21

    if-ne v9, v5, :cond_21

    if-ne v10, v3, :cond_21

    if-ne v13, v14, :cond_21

    .line 27
    :goto_e
    invoke-static {v7, v2, v0}, Lf/i/a/a/d1/i/g;->d(Lf/i/a/a/m1/u;II)Lf/i/a/a/d1/i/a;

    move-result-object v1

    goto :goto_f

    :cond_21
    const/16 v3, 0x4d

    if-ne v8, v14, :cond_23

    if-ne v9, v12, :cond_23

    if-ne v10, v3, :cond_23

    if-eq v13, v3, :cond_22

    if-ne v0, v4, :cond_23

    .line 28
    :cond_22
    invoke-static {v7, v2}, Lf/i/a/a/d1/i/g;->h(Lf/i/a/a/m1/u;I)Lf/i/a/a/d1/i/e;

    move-result-object v1

    goto :goto_f

    :cond_23
    if-ne v8, v14, :cond_24

    const/16 v4, 0x48

    if-ne v9, v4, :cond_24

    if-ne v10, v6, :cond_24

    if-ne v13, v5, :cond_24

    move-object/from16 v1, p1

    move/from16 v3, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    .line 29
    invoke-static/range {v1 .. v6}, Lf/i/a/a/d1/i/g;->f(Lf/i/a/a/m1/u;IIZILf/i/a/a/d1/i/g$a;)Lf/i/a/a/d1/i/c;

    move-result-object v1

    goto :goto_f

    :cond_24
    if-ne v8, v14, :cond_25

    if-ne v9, v1, :cond_25

    if-ne v10, v12, :cond_25

    if-ne v13, v14, :cond_25

    move-object/from16 v1, p1

    move/from16 v3, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    .line 30
    invoke-static/range {v1 .. v6}, Lf/i/a/a/d1/i/g;->g(Lf/i/a/a/m1/u;IIZILf/i/a/a/d1/i/g$a;)Lf/i/a/a/d1/i/d;

    move-result-object v1

    goto :goto_f

    :cond_25
    if-ne v8, v3, :cond_26

    const/16 v3, 0x4c

    if-ne v9, v3, :cond_26

    if-ne v10, v3, :cond_26

    if-ne v13, v1, :cond_26

    .line 31
    invoke-static {v7, v2}, Lf/i/a/a/d1/i/g;->k(Lf/i/a/a/m1/u;I)Lf/i/a/a/d1/i/j;

    move-result-object v1

    goto :goto_f

    .line 32
    :cond_26
    invoke-static {v0, v8, v9, v10, v13}, Lf/i/a/a/d1/i/g;->t(IIIII)Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-static {v7, v2, v1}, Lf/i/a/a/d1/i/g;->e(Lf/i/a/a/m1/u;ILjava/lang/String;)Lf/i/a/a/d1/i/b;

    move-result-object v1

    :goto_f
    if-nez v1, :cond_27

    .line 34
    invoke-static {v0, v8, v9, v10, v13}, Lf/i/a/a/d1/i/g;->t(IIIII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :cond_27
    invoke-virtual {v7, v11}, Lf/i/a/a/m1/u;->A(I)V

    return-object v1

    :goto_10
    invoke-virtual {v7, v11}, Lf/i/a/a/m1/u;->A(I)V

    .line 36
    throw v0

    .line 37
    :catch_0
    invoke-virtual {v7, v11}, Lf/i/a/a/m1/u;->A(I)V

    return-object v16

    .line 38
    :cond_28
    :goto_11
    invoke-virtual {v7, v11}, Lf/i/a/a/m1/u;->A(I)V

    return-object v16
.end method

.method public static j(Lf/i/a/a/m1/u;I)Lf/i/a/a/d1/i/f;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/m1/u;->p()I

    move-result v0

    .line 2
    invoke-static {v0}, Lf/i/a/a/d1/i/g;->s(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 p1, p1, -0x1

    .line 3
    new-array v2, p1, [B

    .line 4
    iget-object v3, p0, Lf/i/a/a/m1/u;->a:[B

    iget v4, p0, Lf/i/a/a/m1/u;->b:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v2, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget v3, p0, Lf/i/a/a/m1/u;->b:I

    add-int/2addr v3, p1

    iput v3, p0, Lf/i/a/a/m1/u;->b:I

    .line 6
    invoke-static {v2, v5}, Lf/i/a/a/d1/i/g;->v([BI)I

    move-result p0

    .line 7
    new-instance v3, Ljava/lang/String;

    const-string v4, "ISO-8859-1"

    invoke-direct {v3, v2, v5, p0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 p0, p0, 0x1

    .line 8
    invoke-static {v2, p0, v0}, Lf/i/a/a/d1/i/g;->u([BII)I

    move-result v4

    .line 9
    invoke-static {v2, p0, v4, v1}, Lf/i/a/a/d1/i/g;->m([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 10
    invoke-static {v0}, Lf/i/a/a/d1/i/g;->r(I)I

    move-result v5

    add-int/2addr v5, v4

    .line 11
    invoke-static {v2, v5, v0}, Lf/i/a/a/d1/i/g;->u([BII)I

    move-result v4

    .line 12
    invoke-static {v2, v5, v4, v1}, Lf/i/a/a/d1/i/g;->m([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-static {v0}, Lf/i/a/a/d1/i/g;->r(I)I

    move-result v0

    add-int/2addr v0, v4

    .line 14
    invoke-static {v2, v0, p1}, Lf/i/a/a/d1/i/g;->b([BII)[B

    move-result-object p1

    .line 15
    new-instance v0, Lf/i/a/a/d1/i/f;

    invoke-direct {v0, v3, p0, v1, p1}, Lf/i/a/a/d1/i/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v0
.end method

.method public static k(Lf/i/a/a/m1/u;I)Lf/i/a/a/d1/i/j;
    .locals 10

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/m1/u;->u()I

    move-result v1

    .line 2
    invoke-virtual {p0}, Lf/i/a/a/m1/u;->r()I

    move-result v2

    .line 3
    invoke-virtual {p0}, Lf/i/a/a/m1/u;->r()I

    move-result v3

    .line 4
    invoke-virtual {p0}, Lf/i/a/a/m1/u;->p()I

    move-result v0

    .line 5
    invoke-virtual {p0}, Lf/i/a/a/m1/u;->p()I

    move-result v4

    .line 6
    new-instance v5, Lf/i/a/a/m1/t;

    invoke-direct {v5}, Lf/i/a/a/m1/t;-><init>()V

    .line 7
    iget-object v6, p0, Lf/i/a/a/m1/u;->a:[B

    .line 8
    iget v7, p0, Lf/i/a/a/m1/u;->c:I

    .line 9
    invoke-virtual {v5, v6, v7}, Lf/i/a/a/m1/t;->i([BI)V

    .line 10
    iget p0, p0, Lf/i/a/a/m1/u;->b:I

    mul-int/lit8 p0, p0, 0x8

    .line 11
    invoke-virtual {v5, p0}, Lf/i/a/a/m1/t;->j(I)V

    add-int/lit8 p1, p1, -0xa

    mul-int/lit8 p1, p1, 0x8

    add-int p0, v0, v4

    .line 12
    div-int/2addr p1, p0

    .line 13
    new-array p0, p1, [I

    .line 14
    new-array v6, p1, [I

    const/4 v7, 0x0

    :goto_0
    if-ge v7, p1, :cond_0

    .line 15
    invoke-virtual {v5, v0}, Lf/i/a/a/m1/t;->f(I)I

    move-result v8

    .line 16
    invoke-virtual {v5, v4}, Lf/i/a/a/m1/t;->f(I)I

    move-result v9

    .line 17
    aput v8, p0, v7

    .line 18
    aput v9, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 19
    :cond_0
    new-instance p1, Lf/i/a/a/d1/i/j;

    move-object v0, p1

    move-object v4, p0

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lf/i/a/a/d1/i/j;-><init>(III[I[I)V

    return-object p1
.end method

.method public static l(Lf/i/a/a/m1/u;I)Lf/i/a/a/d1/i/k;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    new-array v0, p1, [B

    .line 2
    iget-object v1, p0, Lf/i/a/a/m1/u;->a:[B

    iget v2, p0, Lf/i/a/a/m1/u;->b:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    iget v1, p0, Lf/i/a/a/m1/u;->b:I

    add-int/2addr v1, p1

    iput v1, p0, Lf/i/a/a/m1/u;->b:I

    .line 4
    invoke-static {v0, v3}, Lf/i/a/a/d1/i/g;->v([BI)I

    move-result p0

    .line 5
    new-instance v1, Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    invoke-direct {v1, v0, v3, p0, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 p0, p0, 0x1

    .line 6
    invoke-static {v0, p0, p1}, Lf/i/a/a/d1/i/g;->b([BII)[B

    move-result-object p0

    .line 7
    new-instance p1, Lf/i/a/a/d1/i/k;

    invoke-direct {p1, v1, p0}, Lf/i/a/a/d1/i/k;-><init>(Ljava/lang/String;[B)V

    return-object p1
.end method

.method public static m([BIILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-le p2, p1, :cond_1

    .line 1
    array-length v0, p0

    if-le p2, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/String;

    sub-int/2addr p2, p1

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static n(Lf/i/a/a/m1/u;ILjava/lang/String;)Lf/i/a/a/d1/i/l;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lf/i/a/a/m1/u;->p()I

    move-result v2

    .line 2
    invoke-static {v2}, Lf/i/a/a/d1/i/g;->s(I)Ljava/lang/String;

    move-result-object v3

    sub-int/2addr p1, v1

    .line 3
    new-array v1, p1, [B

    .line 4
    iget-object v4, p0, Lf/i/a/a/m1/u;->a:[B

    iget v5, p0, Lf/i/a/a/m1/u;->b:I

    const/4 v6, 0x0

    invoke-static {v4, v5, v1, v6, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget v4, p0, Lf/i/a/a/m1/u;->b:I

    add-int/2addr v4, p1

    iput v4, p0, Lf/i/a/a/m1/u;->b:I

    .line 6
    invoke-static {v1, v6, v2}, Lf/i/a/a/d1/i/g;->u([BII)I

    move-result p0

    .line 7
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1, v6, p0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 8
    new-instance p0, Lf/i/a/a/d1/i/l;

    invoke-direct {p0, p2, v0, p1}, Lf/i/a/a/d1/i/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static o(Lf/i/a/a/m1/u;I)Lf/i/a/a/d1/i/l;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lf/i/a/a/m1/u;->p()I

    move-result v1

    .line 2
    invoke-static {v1}, Lf/i/a/a/d1/i/g;->s(I)Ljava/lang/String;

    move-result-object v2

    sub-int/2addr p1, v0

    .line 3
    new-array v0, p1, [B

    .line 4
    iget-object v3, p0, Lf/i/a/a/m1/u;->a:[B

    iget v4, p0, Lf/i/a/a/m1/u;->b:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v0, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget v3, p0, Lf/i/a/a/m1/u;->b:I

    add-int/2addr v3, p1

    iput v3, p0, Lf/i/a/a/m1/u;->b:I

    .line 6
    invoke-static {v0, v5, v1}, Lf/i/a/a/d1/i/g;->u([BII)I

    move-result p0

    .line 7
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, v5, p0, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 8
    invoke-static {v1}, Lf/i/a/a/d1/i/g;->r(I)I

    move-result v3

    add-int/2addr v3, p0

    .line 9
    invoke-static {v0, v3, v1}, Lf/i/a/a/d1/i/g;->u([BII)I

    move-result p0

    .line 10
    invoke-static {v0, v3, p0, v2}, Lf/i/a/a/d1/i/g;->m([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 11
    new-instance v0, Lf/i/a/a/d1/i/l;

    const-string v1, "TXXX"

    invoke-direct {v0, v1, p1, p0}, Lf/i/a/a/d1/i/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static p(Lf/i/a/a/m1/u;ILjava/lang/String;)Lf/i/a/a/d1/i/m;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    new-array v0, p1, [B

    .line 2
    iget-object v1, p0, Lf/i/a/a/m1/u;->a:[B

    iget v2, p0, Lf/i/a/a/m1/u;->b:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    iget v1, p0, Lf/i/a/a/m1/u;->b:I

    add-int/2addr v1, p1

    iput v1, p0, Lf/i/a/a/m1/u;->b:I

    .line 4
    invoke-static {v0, v3}, Lf/i/a/a/d1/i/g;->v([BI)I

    move-result p0

    .line 5
    new-instance p1, Ljava/lang/String;

    const-string v1, "ISO-8859-1"

    invoke-direct {p1, v0, v3, p0, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 6
    new-instance p0, Lf/i/a/a/d1/i/m;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p1}, Lf/i/a/a/d1/i/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static q(Lf/i/a/a/m1/u;I)Lf/i/a/a/d1/i/m;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lf/i/a/a/m1/u;->p()I

    move-result v1

    .line 2
    invoke-static {v1}, Lf/i/a/a/d1/i/g;->s(I)Ljava/lang/String;

    move-result-object v2

    sub-int/2addr p1, v0

    .line 3
    new-array v0, p1, [B

    .line 4
    iget-object v3, p0, Lf/i/a/a/m1/u;->a:[B

    iget v4, p0, Lf/i/a/a/m1/u;->b:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v0, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget v3, p0, Lf/i/a/a/m1/u;->b:I

    add-int/2addr v3, p1

    iput v3, p0, Lf/i/a/a/m1/u;->b:I

    .line 6
    invoke-static {v0, v5, v1}, Lf/i/a/a/d1/i/g;->u([BII)I

    move-result p0

    .line 7
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, v5, p0, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 8
    invoke-static {v1}, Lf/i/a/a/d1/i/g;->r(I)I

    move-result v1

    add-int/2addr v1, p0

    .line 9
    invoke-static {v0, v1}, Lf/i/a/a/d1/i/g;->v([BI)I

    move-result p0

    const-string v2, "ISO-8859-1"

    .line 10
    invoke-static {v0, v1, p0, v2}, Lf/i/a/a/d1/i/g;->m([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 11
    new-instance v0, Lf/i/a/a/d1/i/m;

    const-string v1, "WXXX"

    invoke-direct {v0, v1, p1, p0}, Lf/i/a/a/d1/i/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static r(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static s(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "ISO-8859-1"

    return-object p0

    :cond_0
    const-string p0, "UTF-8"

    return-object p0

    :cond_1
    const-string p0, "UTF-16BE"

    return-object p0

    :cond_2
    const-string p0, "UTF-16"

    return-object p0
.end method

.method public static t(IIIII)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p0, v3, :cond_0

    .line 1
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array p4, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p4, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p4, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p4, v3

    const-string p1, "%c%c%c"

    invoke-static {p0, p1, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v0

    const-string p1, "%c%c%c%c"

    invoke-static {p0, p1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static u([BII)I
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lf/i/a/a/d1/i/g;->v([BI)I

    move-result p1

    if-eqz p2, :cond_3

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    :goto_0
    array-length p2, p0

    add-int/lit8 p2, p2, -0x1

    if-ge p1, p2, :cond_2

    .line 3
    rem-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    add-int/lit8 p2, p1, 0x1

    aget-byte p2, p0, p2

    if-nez p2, :cond_1

    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 4
    invoke-static {p0, p1}, Lf/i/a/a/d1/i/g;->v([BI)I

    move-result p1

    goto :goto_0

    .line 5
    :cond_2
    array-length p0, p0

    return p0

    :cond_3
    :goto_1
    return p1
.end method

.method public static v([BI)I
    .locals 1

    .line 1
    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    .line 2
    aget-byte v0, p0, p1

    if-nez v0, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 3
    :cond_1
    array-length p0, p0

    return p0
.end method

.method public static w(Lf/i/a/a/m1/u;I)I
    .locals 5

    .line 1
    iget-object v0, p0, Lf/i/a/a/m1/u;->a:[B

    .line 2
    iget p0, p0, Lf/i/a/a/m1/u;->b:I

    move v1, p0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    add-int v3, p0, p1

    if-ge v2, v3, :cond_1

    .line 3
    aget-byte v3, v0, v1

    const/16 v4, 0xff

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    aget-byte v3, v0, v2

    if-nez v3, :cond_0

    sub-int v3, v1, p0

    add-int/lit8 v1, v1, 0x2

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, -0x2

    .line 4
    invoke-static {v0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p1, p1, -0x1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    return p1
.end method

.method public static x(Lf/i/a/a/m1/u;IIZ)Z
    .locals 18

    move-object/from16 v1, p0

    move/from16 v0, p1

    .line 1
    iget v2, v1, Lf/i/a/a/m1/u;->b:I

    .line 2
    :goto_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/m1/u;->a()I

    move-result v3

    const/4 v4, 0x1

    move/from16 v5, p2

    if-lt v3, v5, :cond_c

    const/4 v3, 0x3

    const/4 v6, 0x0

    if-lt v0, v3, :cond_0

    .line 3
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/m1/u;->d()I

    move-result v7

    .line 4
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/m1/u;->q()J

    move-result-wide v8

    .line 5
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/m1/u;->u()I

    move-result v10

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/m1/u;->r()I

    move-result v7

    .line 7
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/m1/u;->r()I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v8, v8

    const/4 v10, 0x0

    :goto_1
    const-wide/16 v11, 0x0

    if-nez v7, :cond_1

    cmp-long v7, v8, v11

    if-nez v7, :cond_1

    if-nez v10, :cond_1

    .line 8
    invoke-virtual {v1, v2}, Lf/i/a/a/m1/u;->A(I)V

    return v4

    :cond_1
    const/4 v7, 0x4

    if-ne v0, v7, :cond_3

    if-nez p3, :cond_3

    const-wide/32 v13, 0x808080

    and-long/2addr v13, v8

    cmp-long v15, v13, v11

    if-eqz v15, :cond_2

    invoke-virtual {v1, v2}, Lf/i/a/a/m1/u;->A(I)V

    return v6

    :cond_2
    const-wide/16 v11, 0xff

    and-long v13, v8, v11

    const/16 v15, 0x8

    shr-long v15, v8, v15

    and-long/2addr v15, v11

    const/16 v17, 0x7

    shl-long v15, v15, v17

    or-long/2addr v13, v15

    const/16 v15, 0x10

    shr-long v15, v8, v15

    and-long/2addr v15, v11

    const/16 v17, 0xe

    shl-long v15, v15, v17

    or-long/2addr v13, v15

    const/16 v15, 0x18

    shr-long/2addr v8, v15

    and-long/2addr v8, v11

    const/16 v11, 0x15

    shl-long/2addr v8, v11

    or-long/2addr v8, v13

    :cond_3
    if-ne v0, v7, :cond_5

    and-int/lit8 v3, v10, 0x40

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    and-int/lit8 v7, v10, 0x1

    if-eqz v7, :cond_8

    goto :goto_4

    :cond_5
    if-ne v0, v3, :cond_7

    and-int/lit8 v3, v10, 0x20

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_3
    and-int/lit16 v7, v10, 0x80

    if-eqz v7, :cond_8

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    :cond_8
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_9

    add-int/lit8 v3, v3, 0x4

    :cond_9
    int-to-long v3, v3

    cmp-long v7, v8, v3

    if-gez v7, :cond_a

    invoke-virtual {v1, v2}, Lf/i/a/a/m1/u;->A(I)V

    return v6

    .line 9
    :cond_a
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/m1/u;->a()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v3, v3

    cmp-long v7, v3, v8

    if-gez v7, :cond_b

    .line 10
    invoke-virtual {v1, v2}, Lf/i/a/a/m1/u;->A(I)V

    return v6

    :cond_b
    long-to-int v3, v8

    .line 11
    :try_start_2
    invoke-virtual {v1, v3}, Lf/i/a/a/m1/u;->B(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 12
    :cond_c
    invoke-virtual {v1, v2}, Lf/i/a/a/m1/u;->A(I)V

    return v4

    :catchall_0
    move-exception v0

    invoke-virtual {v1, v2}, Lf/i/a/a/m1/u;->A(I)V

    .line 13
    throw v0
.end method


# virtual methods
.method public a(Lf/i/a/a/d1/d;)Lf/i/a/a/d1/a;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object p1, p1, Lf/i/a/a/y0/e;->c:Ljava/nio/ByteBuffer;

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lf/i/a/a/d1/i/g;->c([BI)Lf/i/a/a/d1/a;

    move-result-object p1

    return-object p1
.end method

.method public c([BI)Lf/i/a/a/d1/a;
    .locals 11
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lf/i/a/a/m1/u;

    invoke-direct {v1, p1, p2}, Lf/i/a/a/m1/u;-><init>([BI)V

    .line 3
    invoke-virtual {v1}, Lf/i/a/a/m1/u;->a()I

    move-result p1

    const/4 p2, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/16 v4, 0xa

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-ge p1, v4, :cond_0

    goto/16 :goto_6

    .line 4
    :cond_0
    invoke-virtual {v1}, Lf/i/a/a/m1/u;->r()I

    move-result p1

    .line 5
    sget v7, Lf/i/a/a/d1/i/g;->b:I

    if-eq p1, v7, :cond_1

    goto/16 :goto_6

    .line 6
    :cond_1
    invoke-virtual {v1}, Lf/i/a/a/m1/u;->p()I

    move-result p1

    .line 7
    invoke-virtual {v1, v2}, Lf/i/a/a/m1/u;->B(I)V

    .line 8
    invoke-virtual {v1}, Lf/i/a/a/m1/u;->p()I

    move-result v7

    .line 9
    invoke-virtual {v1}, Lf/i/a/a/m1/u;->o()I

    move-result v8

    if-ne p1, v3, :cond_3

    and-int/lit8 v9, v7, 0x40

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    :goto_0
    if-eqz v9, :cond_9

    goto :goto_6

    :cond_3
    const/4 v9, 0x3

    if-ne p1, v9, :cond_5

    and-int/lit8 v9, v7, 0x40

    if-eqz v9, :cond_4

    const/4 v9, 0x1

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_9

    .line 10
    invoke-virtual {v1}, Lf/i/a/a/m1/u;->d()I

    move-result v9

    .line 11
    invoke-virtual {v1, v9}, Lf/i/a/a/m1/u;->B(I)V

    add-int/2addr v9, v5

    sub-int/2addr v8, v9

    goto :goto_4

    :cond_5
    if-ne p1, v5, :cond_b

    and-int/lit8 v9, v7, 0x40

    if-eqz v9, :cond_6

    const/4 v9, 0x1

    goto :goto_2

    :cond_6
    const/4 v9, 0x0

    :goto_2
    if-eqz v9, :cond_7

    .line 12
    invoke-virtual {v1}, Lf/i/a/a/m1/u;->o()I

    move-result v9

    add-int/lit8 v10, v9, -0x4

    .line 13
    invoke-virtual {v1, v10}, Lf/i/a/a/m1/u;->B(I)V

    sub-int/2addr v8, v9

    :cond_7
    and-int/lit8 v9, v7, 0x10

    if-eqz v9, :cond_8

    const/4 v9, 0x1

    goto :goto_3

    :cond_8
    const/4 v9, 0x0

    :goto_3
    if-eqz v9, :cond_9

    add-int/lit8 v8, v8, -0xa

    :cond_9
    :goto_4
    if-ge p1, v5, :cond_a

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_a

    const/4 v7, 0x1

    goto :goto_5

    :cond_a
    const/4 v7, 0x0

    .line 14
    :goto_5
    new-instance v9, Lf/i/a/a/d1/i/g$b;

    invoke-direct {v9, p1, v7, v8}, Lf/i/a/a/d1/i/g$b;-><init>(IZI)V

    goto :goto_7

    :cond_b
    :goto_6
    move-object v9, v6

    :goto_7
    if-nez v9, :cond_c

    return-object v6

    .line 15
    :cond_c
    iget p1, v1, Lf/i/a/a/m1/u;->b:I

    .line 16
    iget v7, v9, Lf/i/a/a/d1/i/g$b;->a:I

    if-ne v7, v3, :cond_d

    const/4 v4, 0x6

    .line 17
    :cond_d
    iget v3, v9, Lf/i/a/a/d1/i/g$b;->c:I

    .line 18
    iget-boolean v7, v9, Lf/i/a/a/d1/i/g$b;->b:Z

    if-eqz v7, :cond_e

    .line 19
    invoke-static {v1, v3}, Lf/i/a/a/d1/i/g;->w(Lf/i/a/a/m1/u;I)I

    move-result v3

    :cond_e
    add-int/2addr p1, v3

    .line 20
    invoke-virtual {v1, p1}, Lf/i/a/a/m1/u;->z(I)V

    .line 21
    iget p1, v9, Lf/i/a/a/d1/i/g$b;->a:I

    .line 22
    invoke-static {v1, p1, v4, p2}, Lf/i/a/a/d1/i/g;->x(Lf/i/a/a/m1/u;IIZ)Z

    move-result p1

    if-nez p1, :cond_10

    .line 23
    iget p1, v9, Lf/i/a/a/d1/i/g$b;->a:I

    if-ne p1, v5, :cond_f

    .line 24
    invoke-static {v1, v5, v4, v2}, Lf/i/a/a/d1/i/g;->x(Lf/i/a/a/m1/u;IIZ)Z

    move-result p1

    if-eqz p1, :cond_f

    const/4 p2, 0x1

    goto :goto_8

    :cond_f
    return-object v6

    .line 25
    :cond_10
    :goto_8
    invoke-virtual {v1}, Lf/i/a/a/m1/u;->a()I

    move-result p1

    if-lt p1, v4, :cond_11

    .line 26
    iget p1, v9, Lf/i/a/a/d1/i/g$b;->a:I

    .line 27
    iget-object v2, p0, Lf/i/a/a/d1/i/g;->a:Lf/i/a/a/d1/i/g$a;

    invoke-static {p1, v1, p2, v4, v2}, Lf/i/a/a/d1/i/g;->i(ILf/i/a/a/m1/u;ZILf/i/a/a/d1/i/g$a;)Lf/i/a/a/d1/i/h;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 28
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 29
    :cond_11
    new-instance p1, Lf/i/a/a/d1/a;

    invoke-direct {p1, v0}, Lf/i/a/a/d1/a;-><init>(Ljava/util/List;)V

    return-object p1
.end method
