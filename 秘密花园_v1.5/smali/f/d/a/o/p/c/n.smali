.class public final Lf/d/a/o/p/c/n;
.super Ljava/lang/Object;
.source "Downsampler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/d/a/o/p/c/n$b;
    }
.end annotation


# static fields
.field public static final f:Lf/d/a/o/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/o/g<",
            "Lf/d/a/o/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Lf/d/a/o/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/o/g<",
            "Lf/d/a/o/i;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Lf/d/a/o/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/o/g<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Lf/d/a/o/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/o/g<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final k:Lf/d/a/o/p/c/n$b;

.field public static final l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;",
            ">;"
        }
    .end annotation
.end field

.field public static final m:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/graphics/BitmapFactory$Options;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lf/d/a/o/n/b0/d;

.field public final b:Landroid/util/DisplayMetrics;

.field public final c:Lf/d/a/o/n/b0/b;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lf/d/a/o/p/c/s;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lf/d/a/o/b;->c:Lf/d/a/o/b;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat"

    .line 2
    invoke-static {v1, v0}, Lf/d/a/o/g;->a(Ljava/lang/String;Ljava/lang/Object;)Lf/d/a/o/g;

    move-result-object v0

    sput-object v0, Lf/d/a/o/p/c/n;->f:Lf/d/a/o/g;

    .line 3
    sget-object v0, Lf/d/a/o/i;->a:Lf/d/a/o/i;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.PreferredColorSpace"

    .line 4
    invoke-static {v1, v0}, Lf/d/a/o/g;->a(Ljava/lang/String;Ljava/lang/Object;)Lf/d/a/o/g;

    move-result-object v0

    sput-object v0, Lf/d/a/o/p/c/n;->g:Lf/d/a/o/g;

    .line 5
    sget-object v0, Lf/d/a/o/p/c/m;->f:Lf/d/a/o/g;

    .line 6
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize"

    invoke-static {v1, v0}, Lf/d/a/o/g;->a(Ljava/lang/String;Ljava/lang/Object;)Lf/d/a/o/g;

    move-result-object v0

    sput-object v0, Lf/d/a/o/p/c/n;->h:Lf/d/a/o/g;

    .line 7
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode"

    .line 8
    invoke-static {v1, v0}, Lf/d/a/o/g;->a(Ljava/lang/String;Ljava/lang/Object;)Lf/d/a/o/g;

    move-result-object v0

    sput-object v0, Lf/d/a/o/p/c/n;->i:Lf/d/a/o/g;

    .line 9
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "image/vnd.wap.wbmp"

    const-string v2, "image/x-ico"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lf/d/a/o/p/c/n;->j:Ljava/util/Set;

    .line 11
    new-instance v0, Lf/d/a/o/p/c/n$a;

    invoke-direct {v0}, Lf/d/a/o/p/c/n$a;-><init>()V

    sput-object v0, Lf/d/a/o/p/c/n;->k:Lf/d/a/o/p/c/n$b;

    .line 12
    sget-object v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    sget-object v1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    sget-object v2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 13
    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 14
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lf/d/a/o/p/c/n;->l:Ljava/util/Set;

    const/4 v0, 0x0

    .line 15
    invoke-static {v0}, Lf/d/a/u/i;->d(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lf/d/a/o/p/c/n;->m:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/util/DisplayMetrics;Lf/d/a/o/n/b0/d;Lf/d/a/o/n/b0/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Landroid/util/DisplayMetrics;",
            "Lf/d/a/o/n/b0/d;",
            "Lf/d/a/o/n/b0/b;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lf/d/a/o/p/c/s;->a()Lf/d/a/o/p/c/s;

    move-result-object v0

    iput-object v0, p0, Lf/d/a/o/p/c/n;->e:Lf/d/a/o/p/c/s;

    .line 3
    iput-object p1, p0, Lf/d/a/o/p/c/n;->d:Ljava/util/List;

    const-string p1, "Argument must not be null"

    .line 4
    invoke-static {p2, p1}, Lc/a/a/b/g/h;->s(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Lf/d/a/o/p/c/n;->b:Landroid/util/DisplayMetrics;

    .line 6
    invoke-static {p3, p1}, Lc/a/a/b/g/h;->s(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iput-object p3, p0, Lf/d/a/o/p/c/n;->a:Lf/d/a/o/n/b0/d;

    .line 8
    invoke-static {p4, p1}, Lc/a/a/b/g/h;->s(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iput-object p4, p0, Lf/d/a/o/p/c/n;->c:Lf/d/a/o/n/b0/b;

    return-void
.end method

.method public static c(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lf/d/a/o/p/c/n$b;Lf/d/a/o/n/b0/d;)Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0xa00000

    .line 2
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p2}, Lf/d/a/o/p/c/n$b;->b()V

    .line 4
    :goto_0
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 5
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 6
    iget-object v2, p1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 7
    sget-object v3, Lf/d/a/o/p/c/z;->e:Ljava/util/concurrent/locks/Lock;

    .line 8
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v3, 0x0

    .line 9
    :try_start_0
    invoke-static {p0, v3, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    sget-object p3, Lf/d/a/o/p/c/z;->e:Ljava/util/concurrent/locks/Lock;

    .line 11
    invoke-interface {p3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 12
    iget-boolean p1, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz p1, :cond_1

    .line 13
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    :cond_1
    return-object p2

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 14
    :try_start_1
    invoke-static {v4, v0, v1, v2, p1}, Lf/d/a/o/p/c/n;->h(Ljava/lang/IllegalArgumentException;IILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Ljava/io/IOException;

    move-result-object v0

    const-string v1, "Downsampler"

    const/4 v2, 0x3

    .line 15
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 16
    iget-object v1, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 17
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 18
    iget-object v1, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-interface {p3, v1}, Lf/d/a/o/n/b0/d;->b(Landroid/graphics/Bitmap;)V

    .line 19
    iput-object v3, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 20
    invoke-static {p0, p1, p2, p3}, Lf/d/a/o/p/c/n;->c(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lf/d/a/o/p/c/n$b;Lf/d/a/o/n/b0/d;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 21
    sget-object p1, Lf/d/a/o/p/c/z;->e:Ljava/util/concurrent/locks/Lock;

    .line 22
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0

    .line 23
    :catch_1
    :try_start_3
    throw v0

    .line 24
    :cond_2
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 25
    :goto_1
    sget-object p1, Lf/d/a/o/p/c/z;->e:Ljava/util/concurrent/locks/Lock;

    .line 26
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public static d(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, " ("

    .line 1
    invoke-static {v0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "["

    .line 2
    invoke-static {v1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(D)I
    .locals 3

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, p0, v0

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    div-double p0, v0, p0

    :goto_0
    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double p0, p0, v0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p1, p0

    return p1
.end method

.method public static f(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lf/d/a/o/p/c/n$b;Lf/d/a/o/n/b0/d;)[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2
    invoke-static {p0, p1, p2, p3}, Lf/d/a/o/p/c/n;->c(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lf/d/a/o/p/c/n$b;Lf/d/a/o/n/b0/d;)Landroid/graphics/Bitmap;

    const/4 p0, 0x0

    .line 3
    iput-boolean p0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 4
    iget p3, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput p3, p2, p0

    iget p0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput p0, p2, v0

    return-object p2
.end method

.method public static g(I)Z
    .locals 1

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10e

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static h(Ljava/lang/IllegalArgumentException;IILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Ljava/io/IOException;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception decoding bitmap, outWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", outHeight: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", outMimeType: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", inBitmap: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object p1, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static {p1}, Lf/d/a/o/p/c/n;->d(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static i(Landroid/graphics/BitmapFactory$Options;)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 3
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    const/4 v2, 0x1

    .line 4
    iput v2, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 5
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 6
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 7
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 8
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 9
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_0

    .line 10
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    .line 11
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outColorSpace:Landroid/graphics/ColorSpace;

    .line 12
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outConfig:Landroid/graphics/Bitmap$Config;

    .line 13
    :cond_0
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 14
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 15
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 17
    iput-boolean v2, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    return-void
.end method

.method public static j(D)I
    .locals 2

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method


# virtual methods
.method public a(Ljava/io/InputStream;IILf/d/a/o/h;Lf/d/a/o/p/c/n$b;)Lf/d/a/o/n/w;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II",
            "Lf/d/a/o/h;",
            "Lf/d/a/o/p/c/n$b;",
            ")",
            "Lf/d/a/o/n/w<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v12, p0

    move-object/from16 v0, p4

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    const-string v2, "You must provide an InputStream that supports mark()"

    .line 2
    invoke-static {v1, v2}, Lc/a/a/b/g/h;->o(ZLjava/lang/String;)V

    .line 3
    iget-object v1, v12, Lf/d/a/o/p/c/n;->c:Lf/d/a/o/n/b0/b;

    const-class v2, [B

    const/high16 v3, 0x10000

    invoke-interface {v1, v3, v2}, Lf/d/a/o/n/b0/b;->f(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, [B

    .line 4
    const-class v1, Lf/d/a/o/p/c/n;

    monitor-enter v1

    .line 5
    :try_start_0
    sget-object v2, Lf/d/a/o/p/c/n;->m:Ljava/util/Queue;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 6
    :try_start_1
    sget-object v3, Lf/d/a/o/p/c/n;->m:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/BitmapFactory$Options;

    .line 7
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-nez v3, :cond_0

    .line 8
    :try_start_2
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 9
    invoke-static {v3}, Lf/d/a/o/p/c/n;->i(Landroid/graphics/BitmapFactory$Options;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :cond_0
    move-object v14, v3

    .line 10
    monitor-exit v1

    .line 11
    iput-object v13, v14, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 12
    sget-object v1, Lf/d/a/o/p/c/n;->f:Lf/d/a/o/g;

    invoke-virtual {v0, v1}, Lf/d/a/o/h;->c(Lf/d/a/o/g;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lf/d/a/o/b;

    .line 13
    sget-object v1, Lf/d/a/o/p/c/n;->g:Lf/d/a/o/g;

    invoke-virtual {v0, v1}, Lf/d/a/o/h;->c(Lf/d/a/o/g;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lf/d/a/o/i;

    .line 14
    sget-object v1, Lf/d/a/o/p/c/m;->f:Lf/d/a/o/g;

    invoke-virtual {v0, v1}, Lf/d/a/o/h;->c(Lf/d/a/o/g;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lf/d/a/o/p/c/m;

    .line 15
    sget-object v1, Lf/d/a/o/p/c/n;->h:Lf/d/a/o/g;

    invoke-virtual {v0, v1}, Lf/d/a/o/h;->c(Lf/d/a/o/g;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 16
    sget-object v1, Lf/d/a/o/p/c/n;->i:Lf/d/a/o/g;

    .line 17
    invoke-virtual {v0, v1}, Lf/d/a/o/h;->c(Lf/d/a/o/g;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Lf/d/a/o/p/c/n;->i:Lf/d/a/o/g;

    invoke-virtual {v0, v1}, Lf/d/a/o/h;->c(Lf/d/a/o/g;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v7, 0x0

    :goto_0
    move-object v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v11, p5

    .line 18
    :try_start_3
    invoke-virtual/range {v1 .. v11}, Lf/d/a/o/p/c/n;->b(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lf/d/a/o/p/c/m;Lf/d/a/o/b;Lf/d/a/o/i;ZIIZLf/d/a/o/p/c/n$b;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 19
    iget-object v1, v12, Lf/d/a/o/p/c/n;->a:Lf/d/a/o/n/b0/d;

    invoke-static {v0, v1}, Lf/d/a/o/p/c/e;->c(Landroid/graphics/Bitmap;Lf/d/a/o/n/b0/d;)Lf/d/a/o/p/c/e;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 20
    invoke-static {v14}, Lf/d/a/o/p/c/n;->i(Landroid/graphics/BitmapFactory$Options;)V

    .line 21
    sget-object v1, Lf/d/a/o/p/c/n;->m:Ljava/util/Queue;

    monitor-enter v1

    .line 22
    :try_start_4
    sget-object v2, Lf/d/a/o/p/c/n;->m:Ljava/util/Queue;

    invoke-interface {v2, v14}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 23
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 24
    iget-object v1, v12, Lf/d/a/o/p/c/n;->c:Lf/d/a/o/n/b0/b;

    invoke-interface {v1, v13}, Lf/d/a/o/n/b0/b;->e(Ljava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception v0

    .line 25
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 26
    invoke-static {v14}, Lf/d/a/o/p/c/n;->i(Landroid/graphics/BitmapFactory$Options;)V

    .line 27
    sget-object v3, Lf/d/a/o/p/c/n;->m:Ljava/util/Queue;

    monitor-enter v3

    .line 28
    :try_start_6
    sget-object v1, Lf/d/a/o/p/c/n;->m:Ljava/util/Queue;

    invoke-interface {v1, v14}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 29
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 30
    iget-object v1, v12, Lf/d/a/o/p/c/n;->c:Lf/d/a/o/n/b0/b;

    invoke-interface {v1, v13}, Lf/d/a/o/n/b0/b;->e(Ljava/lang/Object;)V

    throw v0

    :catchall_2
    move-exception v0

    .line 31
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    .line 32
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_4
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lf/d/a/o/p/c/m;Lf/d/a/o/b;Lf/d/a/o/i;ZIIZLf/d/a/o/p/c/n$b;)Landroid/graphics/Bitmap;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p10

    .line 1
    invoke-static {}, Lf/d/a/u/e;->b()J

    move-result-wide v6

    .line 2
    iget-object v8, v0, Lf/d/a/o/p/c/n;->a:Lf/d/a/o/n/b0/d;

    invoke-static {v1, v2, v5, v8}, Lf/d/a/o/p/c/n;->f(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lf/d/a/o/p/c/n$b;Lf/d/a/o/n/b0/d;)[I

    move-result-object v8

    const/4 v9, 0x0

    .line 3
    aget v10, v8, v9

    const/4 v11, 0x1

    .line 4
    aget v8, v8, v11

    const/4 v12, -0x1

    if-eq v10, v12, :cond_1

    if-ne v8, v12, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v12, p6

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v12, 0x0

    .line 5
    :goto_1
    iget-object v13, v0, Lf/d/a/o/p/c/n;->d:Ljava/util/List;

    iget-object v14, v0, Lf/d/a/o/p/c/n;->c:Lf/d/a/o/n/b0/b;

    invoke-static {v13, v1, v14}, Lc/a/a/b/g/h;->W(Ljava/util/List;Ljava/io/InputStream;Lf/d/a/o/n/b0/b;)I

    move-result v13

    packed-switch v13, :pswitch_data_0

    const/4 v14, 0x0

    goto :goto_2

    :pswitch_0
    const/16 v14, 0x10e

    goto :goto_2

    :pswitch_1
    const/16 v14, 0x5a

    goto :goto_2

    :pswitch_2
    const/16 v14, 0xb4

    :goto_2
    packed-switch v13, :pswitch_data_1

    const/4 v15, 0x0

    goto :goto_3

    :pswitch_3
    const/4 v15, 0x1

    :goto_3
    const/high16 v9, -0x80000000

    move/from16 v11, p7

    if-ne v11, v9, :cond_3

    .line 6
    invoke-static {v14}, Lf/d/a/o/p/c/n;->g(I)Z

    move-result v11

    if-eqz v11, :cond_2

    move v11, v8

    goto :goto_4

    :cond_2
    move v11, v10

    :cond_3
    :goto_4
    move/from16 p6, v13

    move/from16 v13, p8

    if-ne v13, v9, :cond_5

    .line 7
    invoke-static {v14}, Lf/d/a/o/p/c/n;->g(I)Z

    move-result v9

    if-eqz v9, :cond_4

    move v13, v10

    goto :goto_5

    :cond_4
    move v13, v8

    .line 8
    :cond_5
    :goto_5
    iget-object v9, v0, Lf/d/a/o/p/c/n;->d:Ljava/util/List;

    move-wide/from16 v16, v6

    iget-object v6, v0, Lf/d/a/o/p/c/n;->c:Lf/d/a/o/n/b0/b;

    invoke-static {v9, v1, v6}, Lc/a/a/b/g/h;->X(Ljava/util/List;Ljava/io/InputStream;Lf/d/a/o/n/b0/b;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v6

    .line 9
    iget-object v7, v0, Lf/d/a/o/p/c/n;->a:Lf/d/a/o/n/b0/d;

    .line 10
    sget-object v9, Lf/d/a/o/p/c/m$e;->a:Lf/d/a/o/p/c/m$e;

    const-string v4, "]"

    move/from16 v18, v12

    const-string v12, "x"

    move/from16 v19, v15

    const-string v15, "Downsampler"

    if-lez v10, :cond_18

    if-gtz v8, :cond_6

    move-object v7, v4

    move v4, v8

    move v3, v10

    move v8, v11

    move-object v0, v15

    const/4 v9, 0x3

    const/16 v21, 0x0

    goto/16 :goto_11

    .line 11
    :cond_6
    invoke-static {v14}, Lf/d/a/o/p/c/n;->g(I)Z

    move-result v14

    move-object/from16 v20, v4

    if-eqz v14, :cond_7

    move v14, v8

    move v0, v10

    goto :goto_6

    :cond_7
    move v0, v8

    move v14, v10

    .line 12
    :goto_6
    invoke-virtual {v3, v14, v0, v11, v13}, Lf/d/a/o/p/c/m;->b(IIII)F

    move-result v4

    const/16 v21, 0x0

    cmpg-float v22, v4, v21

    if-lez v22, :cond_17

    .line 13
    invoke-virtual {v3, v14, v0, v11, v13}, Lf/d/a/o/p/c/m;->a(IIII)Lf/d/a/o/p/c/m$e;

    move-result-object v12

    if-eqz v12, :cond_16

    move/from16 v22, v8

    int-to-float v8, v14

    move/from16 v23, v10

    mul-float v10, v4, v8

    move/from16 p7, v11

    float-to-double v10, v10

    .line 14
    invoke-static {v10, v11}, Lf/d/a/o/p/c/n;->j(D)I

    move-result v10

    int-to-float v11, v0

    move-object/from16 v24, v15

    mul-float v15, v4, v11

    move-object/from16 v25, v7

    move/from16 v20, v8

    float-to-double v7, v15

    .line 15
    invoke-static {v7, v8}, Lf/d/a/o/p/c/n;->j(D)I

    move-result v7

    .line 16
    div-int v8, v14, v10

    .line 17
    div-int v7, v0, v7

    if-ne v12, v9, :cond_8

    .line 18
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_7

    .line 19
    :cond_8
    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 20
    :goto_7
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x17

    if-gt v8, v10, :cond_9

    sget-object v8, Lf/d/a/o/p/c/n;->j:Ljava/util/Set;

    iget-object v10, v2, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 21
    invoke-interface {v8, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    const/4 v7, 0x1

    goto :goto_8

    .line 22
    :cond_9
    invoke-static {v7}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v7

    const/4 v8, 0x1

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    if-ne v12, v9, :cond_a

    int-to-float v8, v7

    const/high16 v9, 0x3f800000    # 1.0f

    div-float v4, v9, v4

    cmpg-float v4, v8, v4

    if-gez v4, :cond_a

    shl-int/lit8 v4, v7, 0x1

    move v7, v4

    .line 23
    :cond_a
    :goto_8
    iput v7, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 24
    sget-object v4, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne v6, v4, :cond_b

    const/16 v0, 0x8

    .line 25
    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    div-float v8, v20, v4

    float-to-double v8, v8

    .line 26
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v6, v8

    div-float/2addr v11, v4

    float-to-double v8, v11

    .line 27
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v4, v8

    .line 28
    div-int/2addr v7, v0

    if-lez v7, :cond_11

    .line 29
    div-int/2addr v6, v7

    .line 30
    div-int/2addr v4, v7

    goto :goto_b

    .line 31
    :cond_b
    sget-object v4, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-eq v6, v4, :cond_13

    sget-object v4, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne v6, v4, :cond_c

    goto :goto_c

    .line 32
    :cond_c
    sget-object v4, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-eq v6, v4, :cond_10

    sget-object v4, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne v6, v4, :cond_d

    goto :goto_a

    .line 33
    :cond_d
    rem-int v4, v14, v7

    if-nez v4, :cond_f

    rem-int v4, v0, v7

    if-eqz v4, :cond_e

    goto :goto_9

    .line 34
    :cond_e
    div-int v6, v14, v7

    .line 35
    div-int v4, v0, v7

    goto :goto_b

    :cond_f
    :goto_9
    move-object/from16 v0, v25

    .line 36
    invoke-static {v1, v2, v5, v0}, Lf/d/a/o/p/c/n;->f(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lf/d/a/o/p/c/n$b;Lf/d/a/o/n/b0/d;)[I

    move-result-object v0

    const/4 v4, 0x0

    .line 37
    aget v6, v0, v4

    const/4 v4, 0x1

    .line 38
    aget v0, v0, v4

    move v4, v0

    goto :goto_b

    .line 39
    :cond_10
    :goto_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v0, v4, :cond_12

    int-to-float v0, v7

    div-float v8, v20, v0

    .line 40
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v6

    div-float/2addr v11, v0

    .line 41
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v4

    :cond_11
    :goto_b
    move/from16 v8, p7

    goto :goto_e

    :cond_12
    int-to-float v0, v7

    div-float v8, v20, v0

    float-to-double v6, v8

    .line 42
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v4, v6

    div-float/2addr v11, v0

    float-to-double v6, v11

    .line 43
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    goto :goto_d

    :cond_13
    :goto_c
    int-to-float v0, v7

    div-float v8, v20, v0

    float-to-double v6, v8

    .line 44
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v4, v6

    div-float/2addr v11, v0

    float-to-double v6, v11

    .line 45
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    :goto_d
    double-to-int v0, v6

    move/from16 v8, p7

    move v6, v4

    move v4, v0

    .line 46
    :goto_e
    invoke-virtual {v3, v6, v4, v8, v13}, Lf/d/a/o/p/c/m;->b(IIII)F

    move-result v0

    float-to-double v3, v0

    .line 47
    invoke-static {v3, v4}, Lf/d/a/o/p/c/n;->e(D)I

    move-result v0

    int-to-double v6, v0

    mul-double v6, v6, v3

    .line 48
    invoke-static {v6, v7}, Lf/d/a/o/p/c/n;->j(D)I

    move-result v6

    int-to-float v7, v6

    int-to-float v0, v0

    div-float/2addr v7, v0

    float-to-double v9, v7

    div-double v9, v3, v9

    int-to-double v6, v6

    mul-double v9, v9, v6

    .line 49
    invoke-static {v9, v10}, Lf/d/a/o/p/c/n;->j(D)I

    move-result v0

    .line 50
    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 51
    invoke-static {v3, v4}, Lf/d/a/o/p/c/n;->e(D)I

    move-result v0

    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 52
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-lez v3, :cond_14

    if-lez v0, :cond_14

    if-eq v3, v0, :cond_14

    const/4 v0, 0x1

    goto :goto_f

    :cond_14
    const/4 v0, 0x0

    :goto_f
    if-eqz v0, :cond_15

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    goto :goto_10

    :cond_15
    const/4 v0, 0x0

    .line 54
    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    :goto_10
    move-object/from16 v0, v24

    const/4 v3, 0x2

    .line 55
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    const/4 v7, 0x0

    move-object/from16 v6, p0

    move/from16 v4, v22

    move/from16 v3, v23

    goto/16 :goto_12

    .line 56
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot round with null rounding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    move/from16 v22, v8

    move/from16 v23, v10

    move v8, v11

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot scale with factor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", source: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v23

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, v22

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], target: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v7, v20

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    move-object v7, v4

    move v4, v8

    move v3, v10

    move v8, v11

    move-object v0, v15

    const/16 v21, 0x0

    const/4 v9, 0x3

    .line 58
    :goto_11
    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_19

    .line 59
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to determine dimensions for: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " with target ["

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_19
    const/4 v7, 0x0

    move-object/from16 v6, p0

    .line 60
    :goto_12
    iget-object v9, v6, Lf/d/a/o/p/c/n;->e:Lf/d/a/o/p/c/s;

    move/from16 v10, v18

    move/from16 v11, v19

    .line 61
    invoke-virtual {v9, v8, v13, v10, v11}, Lf/d/a/o/p/c/s;->b(IIZZ)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 62
    sget-object v10, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    iput-object v10, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v10, 0x0

    .line 63
    iput-boolean v10, v2, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    goto :goto_13

    :cond_1a
    const/4 v10, 0x0

    :goto_13
    if-eqz v9, :cond_1c

    :cond_1b
    const/4 v9, 0x1

    goto :goto_16

    .line 64
    :cond_1c
    sget-object v9, Lf/d/a/o/b;->a:Lf/d/a/o/b;

    move-object/from16 v11, p4

    if-eq v11, v9, :cond_1f

    .line 65
    :try_start_0
    iget-object v9, v6, Lf/d/a/o/p/c/n;->d:Ljava/util/List;

    iget-object v12, v6, Lf/d/a/o/p/c/n;->c:Lf/d/a/o/n/b0/b;

    invoke-static {v9, v1, v12}, Lc/a/a/b/g/h;->X(Ljava/util/List;Ljava/io/InputStream;Lf/d/a/o/n/b0/b;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->hasAlpha()Z

    move-result v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_14

    :catch_0
    const/4 v9, 0x3

    .line 66
    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_1d

    .line 67
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot determine whether the image has alpha or not from header, format "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1d
    const/4 v9, 0x0

    :goto_14
    if-eqz v9, :cond_1e

    .line 68
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_15

    :cond_1e
    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_15
    iput-object v9, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 69
    sget-object v11, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v9, v11, :cond_1b

    const/4 v9, 0x1

    .line 70
    iput-boolean v9, v2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    goto :goto_16

    :cond_1f
    const/4 v9, 0x1

    .line 71
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v11, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 72
    :goto_16
    iget v11, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v12, 0x0

    const/16 v14, 0x1a

    if-ltz v3, :cond_20

    if-ltz v4, :cond_20

    if-eqz p9, :cond_20

    move v11, v8

    goto :goto_19

    .line 73
    :cond_20
    iget v8, v2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-lez v8, :cond_21

    iget v11, v2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-lez v11, :cond_21

    if-eq v8, v11, :cond_21

    const/4 v8, 0x1

    goto :goto_17

    :cond_21
    const/4 v8, 0x0

    :goto_17
    if-eqz v8, :cond_22

    .line 74
    iget v8, v2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    int-to-float v8, v8

    iget v11, v2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    int-to-float v11, v11

    div-float/2addr v8, v11

    goto :goto_18

    :cond_22
    const/high16 v8, 0x3f800000    # 1.0f

    .line 75
    :goto_18
    iget v11, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-float v3, v3

    int-to-float v11, v11

    div-float/2addr v3, v11

    float-to-double v9, v3

    .line 76
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v3, v9

    int-to-float v4, v4

    div-float/2addr v4, v11

    float-to-double v9, v4

    .line 77
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v4, v9

    int-to-float v3, v3

    mul-float v3, v3, v8

    .line 78
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    int-to-float v3, v4

    mul-float v3, v3, v8

    .line 79
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v13

    const/4 v3, 0x2

    .line 80
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    :goto_19
    if-lez v11, :cond_26

    if-lez v13, :cond_26

    .line 81
    iget-object v3, v6, Lf/d/a/o/p/c/n;->a:Lf/d/a/o/n/b0/d;

    .line 82
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v14, :cond_24

    .line 83
    iget-object v4, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v8, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v4, v8, :cond_23

    goto :goto_1b

    .line 84
    :cond_23
    iget-object v4, v2, Landroid/graphics/BitmapFactory$Options;->outConfig:Landroid/graphics/Bitmap$Config;

    goto :goto_1a

    :cond_24
    move-object v4, v12

    :goto_1a
    if-nez v4, :cond_25

    .line 85
    iget-object v4, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 86
    :cond_25
    invoke-interface {v3, v11, v13, v4}, Lf/d/a/o/n/b0/d;->d(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 87
    :cond_26
    :goto_1b
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_29

    .line 88
    sget-object v3, Lf/d/a/o/i;->b:Lf/d/a/o/i;

    move-object/from16 v4, p5

    if-ne v4, v3, :cond_27

    iget-object v3, v2, Landroid/graphics/BitmapFactory$Options;->outColorSpace:Landroid/graphics/ColorSpace;

    if-eqz v3, :cond_27

    .line 89
    invoke-virtual {v3}, Landroid/graphics/ColorSpace;->isWideGamut()Z

    move-result v3

    if-eqz v3, :cond_27

    const/4 v8, 0x1

    goto :goto_1c

    :cond_27
    const/4 v8, 0x0

    :goto_1c
    if-eqz v8, :cond_28

    .line 90
    sget-object v3, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    goto :goto_1d

    :cond_28
    sget-object v3, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    :goto_1d
    invoke-static {v3}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v3

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    goto :goto_1e

    :cond_29
    if-lt v3, v14, :cond_2a

    .line 91
    sget-object v3, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v3}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v3

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    .line 92
    :cond_2a
    :goto_1e
    iget-object v3, v6, Lf/d/a/o/p/c/n;->a:Lf/d/a/o/n/b0/d;

    invoke-static {v1, v2, v5, v3}, Lf/d/a/o/p/c/n;->c(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lf/d/a/o/p/c/n$b;Lf/d/a/o/n/b0/d;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 93
    iget-object v3, v6, Lf/d/a/o/p/c/n;->a:Lf/d/a/o/n/b0/d;

    invoke-interface {v5, v3, v1}, Lf/d/a/o/p/c/n$b;->a(Lf/d/a/o/n/b0/d;Landroid/graphics/Bitmap;)V

    const/4 v3, 0x2

    .line 94
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 95
    invoke-static {v1}, Lf/d/a/o/p/c/n;->d(Landroid/graphics/Bitmap;)Ljava/lang/String;

    .line 96
    iget-object v0, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lf/d/a/o/p/c/n;->d(Landroid/graphics/Bitmap;)Ljava/lang/String;

    .line 97
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 98
    invoke-static/range {v16 .. v17}, Lf/d/a/u/e;->a(J)D

    :cond_2b
    if-eqz v1, :cond_2d

    .line 99
    iget-object v0, v6, Lf/d/a/o/p/c/n;->b:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 100
    iget-object v0, v6, Lf/d/a/o/p/c/n;->a:Lf/d/a/o/n/b0/d;

    packed-switch p6, :pswitch_data_2

    const/4 v9, 0x0

    goto :goto_1f

    :pswitch_4
    const/4 v9, 0x1

    :goto_1f
    if-nez v9, :cond_2c

    move-object v12, v1

    goto/16 :goto_21

    .line 101
    :cond_2c
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v3, -0x3d4c0000    # -90.0f

    const/high16 v4, 0x42b40000    # 90.0f

    const/high16 v5, 0x43340000    # 180.0f

    const/high16 v8, -0x40800000    # -1.0f

    packed-switch p6, :pswitch_data_3

    goto :goto_20

    .line 102
    :pswitch_5
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_20

    .line 103
    :pswitch_6
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 104
    invoke-virtual {v2, v8, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_20

    .line 105
    :pswitch_7
    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_20

    :pswitch_8
    const/high16 v3, 0x3f800000    # 1.0f

    .line 106
    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 107
    invoke-virtual {v2, v8, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_20

    :pswitch_9
    const/high16 v3, 0x3f800000    # 1.0f

    .line 108
    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 109
    invoke-virtual {v2, v8, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_20

    .line 110
    :pswitch_a
    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_20

    :pswitch_b
    const/high16 v3, 0x3f800000    # 1.0f

    .line 111
    invoke-virtual {v2, v8, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 112
    :goto_20
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v3, v7, v7, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 113
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 114
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 115
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 116
    invoke-static {v1}, Lf/d/a/o/p/c/z;->h(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v7

    .line 117
    invoke-interface {v0, v4, v5, v7}, Lf/d/a/o/n/b0/d;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 118
    iget v4, v3, Landroid/graphics/RectF;->left:F

    neg-float v4, v4

    iget v3, v3, Landroid/graphics/RectF;->top:F

    neg-float v3, v3

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 119
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 120
    invoke-static {v1, v0, v2}, Lf/d/a/o/p/c/z;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    move-object v12, v0

    .line 121
    :goto_21
    invoke-virtual {v1, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 122
    iget-object v0, v6, Lf/d/a/o/p/c/n;->a:Lf/d/a/o/n/b0/d;

    invoke-interface {v0, v1}, Lf/d/a/o/n/b0/d;->b(Landroid/graphics/Bitmap;)V

    :cond_2d
    return-object v12

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method
