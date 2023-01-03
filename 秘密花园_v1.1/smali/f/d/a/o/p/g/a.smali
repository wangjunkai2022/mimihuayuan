.class public Lf/d/a/o/p/g/a;
.super Ljava/lang/Object;
.source "ByteBufferGifDecoder.java"

# interfaces
.implements Lf/d/a/o/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/d/a/o/p/g/a$b;,
        Lf/d/a/o/p/g/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/d/a/o/j<",
        "Ljava/nio/ByteBuffer;",
        "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lf/d/a/o/p/g/a$a;

.field public static final g:Lf/d/a/o/p/g/a$b;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lf/d/a/o/p/g/a$b;

.field public final d:Lf/d/a/o/p/g/a$a;

.field public final e:Lf/d/a/o/p/g/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf/d/a/o/p/g/a$a;

    invoke-direct {v0}, Lf/d/a/o/p/g/a$a;-><init>()V

    sput-object v0, Lf/d/a/o/p/g/a;->f:Lf/d/a/o/p/g/a$a;

    .line 2
    new-instance v0, Lf/d/a/o/p/g/a$b;

    invoke-direct {v0}, Lf/d/a/o/p/g/a$b;-><init>()V

    sput-object v0, Lf/d/a/o/p/g/a;->g:Lf/d/a/o/p/g/a$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lf/d/a/o/n/b0/d;Lf/d/a/o/n/b0/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lf/d/a/o/n/b0/d;",
            "Lf/d/a/o/n/b0/b;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lf/d/a/o/p/g/a;->g:Lf/d/a/o/p/g/a$b;

    sget-object v1, Lf/d/a/o/p/g/a;->f:Lf/d/a/o/p/g/a$a;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lf/d/a/o/p/g/a;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lf/d/a/o/p/g/a;->b:Ljava/util/List;

    .line 5
    iput-object v1, p0, Lf/d/a/o/p/g/a;->d:Lf/d/a/o/p/g/a$a;

    .line 6
    new-instance p1, Lf/d/a/o/p/g/b;

    invoke-direct {p1, p3, p4}, Lf/d/a/o/p/g/b;-><init>(Lf/d/a/o/n/b0/d;Lf/d/a/o/n/b0/b;)V

    iput-object p1, p0, Lf/d/a/o/p/g/a;->e:Lf/d/a/o/p/g/b;

    .line 7
    iput-object v0, p0, Lf/d/a/o/p/g/a;->c:Lf/d/a/o/p/g/a$b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;IILf/d/a/o/h;)Lf/d/a/o/n/w;
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lf/d/a/o/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object v1, p1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 2
    iget-object p1, p0, Lf/d/a/o/p/g/a;->c:Lf/d/a/o/p/g/a$b;

    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p1, Lf/d/a/o/p/g/a$b;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/d/a/m/d;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lf/d/a/m/d;

    invoke-direct {v0}, Lf/d/a/m/d;-><init>()V

    :cond_0
    move-object v6, v0

    const/4 v0, 0x0

    .line 6
    iput-object v0, v6, Lf/d/a/m/d;->b:Ljava/nio/ByteBuffer;

    .line 7
    iget-object v0, v6, Lf/d/a/m/d;->a:[B

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 8
    new-instance v0, Lf/d/a/m/c;

    invoke-direct {v0}, Lf/d/a/m/c;-><init>()V

    iput-object v0, v6, Lf/d/a/m/d;->c:Lf/d/a/m/c;

    .line 9
    iput v2, v6, Lf/d/a/m/d;->d:I

    .line 10
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v6, Lf/d/a/m/d;->b:Ljava/nio/ByteBuffer;

    .line 11
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 12
    iget-object v0, v6, Lf/d/a/m/d;->b:Ljava/nio/ByteBuffer;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    monitor-exit p1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v4, v6

    move-object v5, p4

    .line 14
    :try_start_1
    invoke-virtual/range {v0 .. v5}, Lf/d/a/o/p/g/a;->c(Ljava/nio/ByteBuffer;IILf/d/a/m/d;Lf/d/a/o/h;)Lf/d/a/o/p/g/d;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    iget-object p2, p0, Lf/d/a/o/p/g/a;->c:Lf/d/a/o/p/g/a$b;

    invoke-virtual {p2, v6}, Lf/d/a/o/p/g/a$b;->a(Lf/d/a/m/d;)V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lf/d/a/o/p/g/a;->c:Lf/d/a/o/p/g/a$b;

    invoke-virtual {p2, v6}, Lf/d/a/o/p/g/a$b;->a(Lf/d/a/m/d;)V

    throw p1

    :catchall_1
    move-exception p2

    .line 16
    monitor-exit p1

    throw p2
.end method

.method public b(Ljava/lang/Object;Lf/d/a/o/h;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lf/d/a/o/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 2
    sget-object v0, Lf/d/a/o/p/g/h;->b:Lf/d/a/o/g;

    invoke-virtual {p2, v0}, Lf/d/a/o/h;->c(Lf/d/a/o/g;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_3

    iget-object p2, p0, Lf/d/a/o/p/g/a;->b:Ljava/util/List;

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    goto :goto_1

    .line 4
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 5
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/load/ImageHeaderParser;

    .line 6
    invoke-interface {v3, p1}, Lcom/bumptech/glide/load/ImageHeaderParser;->a(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v3

    .line 7
    sget-object v4, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-eq v3, v4, :cond_1

    move-object p1, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_2
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 9
    :goto_1
    sget-object p2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne p1, p2, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public final c(Ljava/nio/ByteBuffer;IILf/d/a/m/d;Lf/d/a/o/h;)Lf/d/a/o/p/g/d;
    .locals 16
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "BufferGifDecoder"

    .line 1
    invoke-static {}, Lf/d/a/u/e;->b()J

    move-result-wide v3

    const/4 v5, 0x2

    .line 2
    :try_start_0
    invoke-virtual/range {p4 .. p4}, Lf/d/a/m/d;->b()Lf/d/a/m/c;

    move-result-object v0

    .line 3
    iget v6, v0, Lf/d/a/m/c;->c:I

    const/4 v7, 0x0

    if-lez v6, :cond_7

    .line 4
    iget v6, v0, Lf/d/a/m/c;->b:I

    if-eqz v6, :cond_0

    goto/16 :goto_2

    .line 5
    :cond_0
    sget-object v6, Lf/d/a/o/p/g/h;->a:Lf/d/a/o/g;

    move-object/from16 v8, p5

    invoke-virtual {v8, v6}, Lf/d/a/o/h;->c(Lf/d/a/o/g;)Ljava/lang/Object;

    move-result-object v6

    sget-object v8, Lf/d/a/o/b;->b:Lf/d/a/o/b;

    if-ne v6, v8, :cond_1

    .line 6
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 7
    :cond_1
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 8
    :goto_0
    iget v8, v0, Lf/d/a/m/c;->g:I

    .line 9
    div-int v8, v8, p3

    .line 10
    iget v9, v0, Lf/d/a/m/c;->f:I

    .line 11
    div-int v9, v9, p2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-nez v8, :cond_2

    const/4 v8, 0x0

    goto :goto_1

    .line 12
    :cond_2
    invoke-static {v8}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v8

    :goto_1
    const/4 v9, 0x1

    .line 13
    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 14
    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 15
    iget-object v10, v1, Lf/d/a/o/p/g/a;->d:Lf/d/a/o/p/g/a$a;

    iget-object v11, v1, Lf/d/a/o/p/g/a;->e:Lf/d/a/o/p/g/b;

    if-eqz v10, :cond_6

    .line 16
    new-instance v12, Lf/d/a/m/e;

    move-object/from16 v10, p1

    invoke-direct {v12, v11, v0, v10, v8}, Lf/d/a/m/e;-><init>(Lf/d/a/m/a$a;Lf/d/a/m/c;Ljava/nio/ByteBuffer;I)V

    .line 17
    invoke-virtual {v12, v6}, Lf/d/a/m/e;->j(Landroid/graphics/Bitmap$Config;)V

    .line 18
    iget v0, v12, Lf/d/a/m/e;->k:I

    add-int/2addr v0, v9

    iget-object v6, v12, Lf/d/a/m/e;->l:Lf/d/a/m/c;

    iget v6, v6, Lf/d/a/m/c;->c:I

    rem-int/2addr v0, v6

    iput v0, v12, Lf/d/a/m/e;->k:I

    .line 19
    invoke-virtual {v12}, Lf/d/a/m/e;->b()Landroid/graphics/Bitmap;

    move-result-object v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v15, :cond_4

    .line 20
    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 21
    invoke-static {v3, v4}, Lf/d/a/u/e;->a(J)D

    :cond_3
    return-object v7

    .line 22
    :cond_4
    :try_start_1
    sget-object v0, Lf/d/a/o/p/b;->b:Lf/d/a/o/l;

    check-cast v0, Lf/d/a/o/p/b;

    .line 23
    new-instance v6, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    iget-object v10, v1, Lf/d/a/o/p/g/a;->a:Landroid/content/Context;

    move-object v9, v6

    move-object v11, v12

    move-object v12, v0

    move/from16 v13, p2

    move/from16 v14, p3

    invoke-direct/range {v9 .. v15}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;-><init>(Landroid/content/Context;Lf/d/a/m/a;Lf/d/a/o/l;IILandroid/graphics/Bitmap;)V

    .line 24
    new-instance v0, Lf/d/a/o/p/g/d;

    invoke-direct {v0, v6}, Lf/d/a/o/p/g/d;-><init>(Lcom/bumptech/glide/load/resource/gif/GifDrawable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 26
    invoke-static {v3, v4}, Lf/d/a/u/e;->a(J)D

    :cond_5
    return-object v0

    .line 27
    :cond_6
    :try_start_2
    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    :cond_7
    :goto_2
    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 29
    invoke-static {v3, v4}, Lf/d/a/u/e;->a(J)D

    :cond_8
    return-object v7

    :catchall_0
    move-exception v0

    .line 30
    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 31
    invoke-static {v3, v4}, Lf/d/a/u/e;->a(J)D

    :cond_9
    throw v0
.end method
