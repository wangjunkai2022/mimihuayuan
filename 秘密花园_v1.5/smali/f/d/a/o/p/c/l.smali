.class public final Lf/d/a/o/p/c/l;
.super Ljava/lang/Object;
.source "DefaultImageHeaderParser.java"

# interfaces
.implements Lcom/bumptech/glide/load/ImageHeaderParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/d/a/o/p/c/l$d;,
        Lf/d/a/o/p/c/l$a;,
        Lf/d/a/o/p/c/l$c;,
        Lf/d/a/o/p/c/l$b;
    }
.end annotation


# static fields
.field public static final a:[B

.field public static final b:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "UTF-8"

    .line 1
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "Exif\u0000\u0000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lf/d/a/o/p/c/l;->a:[B

    const/16 v0, 0xd

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    sput-object v0, Lf/d/a/o/p/c/l;->b:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 2
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lf/d/a/o/p/c/l$a;

    const-string v1, "Argument must not be null"

    .line 2
    invoke-static {p1, v1}, Lc/a/a/b/g/h;->s(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-direct {v0, p1}, Lf/d/a/o/p/c/l$a;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0, v0}, Lf/d/a/o/p/c/l;->d(Lf/d/a/o/p/c/l$c;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/io/InputStream;Lf/d/a/o/n/b0/b;)I
    .locals 8
    .param p1    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lf/d/a/o/n/b0/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lf/d/a/o/p/c/l$d;

    const-string v1, "Argument must not be null"

    .line 2
    invoke-static {p1, v1}, Lc/a/a/b/g/h;->s(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-direct {v0, p1}, Lf/d/a/o/p/c/l$d;-><init>(Ljava/io/InputStream;)V

    .line 4
    invoke-static {p2, v1}, Lc/a/a/b/g/h;->s(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v0}, Lf/d/a/o/p/c/l$d;->b()I

    move-result p1

    const v1, 0xffd8

    and-int v2, p1, v1

    if-eq v2, v1, :cond_1

    const/16 v1, 0x4d4d

    if-eq p1, v1, :cond_1

    const/16 v1, 0x4949

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    const-string v1, "DfltImageHeaderParser"

    const/4 v2, 0x3

    const/4 v3, -0x1

    if-nez p1, :cond_2

    .line 6
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    goto :goto_3

    .line 7
    :cond_2
    invoke-virtual {v0}, Lf/d/a/o/p/c/l$d;->d()S

    move-result p1

    const/16 v4, 0xff

    if-eq p1, v4, :cond_3

    .line 8
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    goto :goto_2

    .line 9
    :cond_3
    invoke-virtual {v0}, Lf/d/a/o/p/c/l$d;->d()S

    move-result p1

    const/16 v4, 0xda

    if-ne p1, v4, :cond_4

    goto :goto_2

    :cond_4
    const/16 v4, 0xd9

    if-ne p1, v4, :cond_5

    .line 10
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    goto :goto_2

    .line 11
    :cond_5
    invoke-virtual {v0}, Lf/d/a/o/p/c/l$d;->b()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    const/16 v5, 0xe1

    if-eq p1, v5, :cond_6

    int-to-long v4, v4

    .line 12
    invoke-virtual {v0, v4, v5}, Lf/d/a/o/p/c/l$d;->skip(J)J

    move-result-wide v6

    cmp-long p1, v6, v4

    if-eqz p1, :cond_2

    .line 13
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    :goto_2
    const/4 v4, -0x1

    :cond_6
    if-ne v4, v3, :cond_7

    .line 14
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    goto :goto_3

    .line 15
    :cond_7
    const-class p1, [B

    invoke-interface {p2, v4, p1}, Lf/d/a/o/n/b0/b;->f(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 16
    :try_start_0
    invoke-virtual {p0, v0, p1, v4}, Lf/d/a/o/p/c/l;->e(Lf/d/a/o/p/c/l$c;[BI)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-interface {p2, p1}, Lf/d/a/o/n/b0/b;->e(Ljava/lang/Object;)V

    :goto_3
    return v3

    :catchall_0
    move-exception v0

    invoke-interface {p2, p1}, Lf/d/a/o/n/b0/b;->e(Ljava/lang/Object;)V

    throw v0
.end method

.method public c(Ljava/io/InputStream;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 2
    .param p1    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lf/d/a/o/p/c/l$d;

    const-string v1, "Argument must not be null"

    .line 2
    invoke-static {p1, v1}, Lc/a/a/b/g/h;->s(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-direct {v0, p1}, Lf/d/a/o/p/c/l$d;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lf/d/a/o/p/c/l;->d(Lf/d/a/o/p/c/l$c;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lf/d/a/o/p/c/l$c;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lf/d/a/o/p/c/l$c;->b()I

    move-result v0

    const v1, 0xffd8

    if-ne v0, v1, :cond_0

    .line 2
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p1

    :cond_0
    shl-int/lit8 v0, v0, 0x10

    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    .line 3
    invoke-interface {p1}, Lf/d/a/o/p/c/l$c;->b()I

    move-result v2

    const v3, 0xffff

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    const v2, -0x76afb1b9

    if-ne v0, v2, :cond_2

    const-wide/16 v0, 0x15

    .line 4
    invoke-interface {p1, v0, v1}, Lf/d/a/o/p/c/l$c;->skip(J)J

    .line 5
    invoke-interface {p1}, Lf/d/a/o/p/c/l$c;->c()I

    move-result p1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_1

    .line 6
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    :goto_0
    return-object p1

    :cond_2
    shr-int/lit8 v2, v0, 0x8

    const v4, 0x474946

    if-ne v2, v4, :cond_3

    .line 7
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p1

    :cond_3
    const v2, 0x52494646

    if-eq v0, v2, :cond_4

    .line 8
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p1

    :cond_4
    const-wide/16 v4, 0x4

    .line 9
    invoke-interface {p1, v4, v5}, Lf/d/a/o/p/c/l$c;->skip(J)J

    .line 10
    invoke-interface {p1}, Lf/d/a/o/p/c/l$c;->b()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    and-int/2addr v0, v1

    invoke-interface {p1}, Lf/d/a/o/p/c/l$c;->b()I

    move-result v2

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    const v2, 0x57454250

    if-eq v0, v2, :cond_5

    .line 11
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p1

    .line 12
    :cond_5
    invoke-interface {p1}, Lf/d/a/o/p/c/l$c;->b()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    and-int/2addr v0, v1

    invoke-interface {p1}, Lf/d/a/o/p/c/l$c;->b()I

    move-result v1

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    and-int/lit16 v1, v0, -0x100

    const v2, 0x56503800

    if-eq v1, v2, :cond_6

    .line 13
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p1

    :cond_6
    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x58

    if-ne v0, v1, :cond_8

    .line 14
    invoke-interface {p1, v4, v5}, Lf/d/a/o/p/c/l$c;->skip(J)J

    .line 15
    invoke-interface {p1}, Lf/d/a/o/p/c/l$c;->c()I

    move-result p1

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_7

    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    goto :goto_1

    :cond_7
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    :goto_1
    return-object p1

    :cond_8
    const/16 v1, 0x4c

    if-ne v0, v1, :cond_a

    .line 16
    invoke-interface {p1, v4, v5}, Lf/d/a/o/p/c/l$c;->skip(J)J

    .line 17
    invoke-interface {p1}, Lf/d/a/o/p/c/l$c;->c()I

    move-result p1

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_9

    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    goto :goto_2

    :cond_9
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    :goto_2
    return-object p1

    .line 18
    :cond_a
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p1
.end method

.method public final e(Lf/d/a/o/p/c/l$c;[BI)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2, p3}, Lf/d/a/o/p/c/l$c;->a([BI)I

    move-result p1

    const/4 v0, -0x1

    const/4 v1, 0x3

    const-string v2, "DfltImageHeaderParser"

    if-eq p1, p3, :cond_0

    .line 2
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    return v0

    :cond_0
    const/4 p1, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_1

    .line 3
    sget-object v4, Lf/d/a/o/p/c/l;->a:[B

    array-length v4, v4

    if-le p3, v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_3

    const/4 v5, 0x0

    .line 4
    :goto_1
    sget-object v6, Lf/d/a/o/p/c/l;->a:[B

    array-length v7, v6

    if-ge v5, v7, :cond_3

    .line 5
    aget-byte v7, p2, v5

    aget-byte v6, v6, v5

    if-eq v7, v6, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz v4, :cond_10

    .line 6
    new-instance v4, Lf/d/a/o/p/c/l$b;

    invoke-direct {v4, p2, p3}, Lf/d/a/o/p/c/l$b;-><init>([BI)V

    const/4 p2, 0x6

    .line 7
    invoke-virtual {v4, p2}, Lf/d/a/o/p/c/l$b;->a(I)S

    move-result p3

    const/16 v5, 0x4949

    if-eq p3, v5, :cond_5

    const/16 v5, 0x4d4d

    if-eq p3, v5, :cond_4

    .line 8
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 9
    sget-object p3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_3

    .line 10
    :cond_4
    sget-object p3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_3

    .line 11
    :cond_5
    sget-object p3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 12
    :goto_3
    iget-object v5, v4, Lf/d/a/o/p/c/l$b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 p3, 0xa

    .line 13
    invoke-virtual {v4, p3}, Lf/d/a/o/p/c/l$b;->b(I)I

    move-result p3

    add-int/2addr p3, p2

    .line 14
    invoke-virtual {v4, p3}, Lf/d/a/o/p/c/l$b;->a(I)S

    move-result p2

    :goto_4
    if-ge p1, p2, :cond_f

    add-int/lit8 v5, p3, 0x2

    mul-int/lit8 v6, p1, 0xc

    add-int/2addr v6, v5

    .line 15
    invoke-virtual {v4, v6}, Lf/d/a/o/p/c/l$b;->a(I)S

    move-result v5

    const/16 v7, 0x112

    if-eq v5, v7, :cond_6

    goto :goto_8

    :cond_6
    add-int/lit8 v5, v6, 0x2

    .line 16
    invoke-virtual {v4, v5}, Lf/d/a/o/p/c/l$b;->a(I)S

    move-result v5

    if-lt v5, v3, :cond_e

    const/16 v7, 0xc

    if-le v5, v7, :cond_7

    goto :goto_7

    :cond_7
    add-int/lit8 v7, v6, 0x4

    .line 17
    invoke-virtual {v4, v7}, Lf/d/a/o/p/c/l$b;->b(I)I

    move-result v7

    if-gez v7, :cond_8

    .line 18
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    goto :goto_8

    .line 19
    :cond_8
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 20
    sget-object v8, Lf/d/a/o/p/c/l;->b:[I

    aget v5, v8, v5

    add-int/2addr v7, v5

    const/4 v5, 0x4

    if-le v7, v5, :cond_9

    .line 21
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    goto :goto_8

    :cond_9
    add-int/lit8 v6, v6, 0x8

    if-ltz v6, :cond_d

    .line 22
    iget-object v5, v4, Lf/d/a/o/p/c/l$b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-le v6, v5, :cond_a

    goto :goto_6

    :cond_a
    if-ltz v7, :cond_c

    add-int/2addr v7, v6

    .line 23
    iget-object v5, v4, Lf/d/a/o/p/c/l$b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-le v7, v5, :cond_b

    goto :goto_5

    .line 24
    :cond_b
    invoke-virtual {v4, v6}, Lf/d/a/o/p/c/l$b;->a(I)S

    move-result v0

    goto :goto_9

    .line 25
    :cond_c
    :goto_5
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    goto :goto_8

    .line 26
    :cond_d
    :goto_6
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    goto :goto_8

    .line 27
    :cond_e
    :goto_7
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    :goto_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_f
    :goto_9
    return v0

    .line 28
    :cond_10
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    return v0
.end method
