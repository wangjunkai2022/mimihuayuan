.class public Lf/d/a/o/n/b0/j;
.super Ljava/lang/Object;
.source "LruBitmapPool.java"

# interfaces
.implements Lf/d/a/o/n/b0/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/d/a/o/n/b0/j$b;,
        Lf/d/a/o/n/b0/j$a;
    }
.end annotation


# static fields
.field public static final j:Landroid/graphics/Bitmap$Config;


# instance fields
.field public final a:Lf/d/a/o/n/b0/k;

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/graphics/Bitmap$Config;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lf/d/a/o/n/b0/j$a;

.field public d:J

.field public e:J

.field public f:I

.field public g:I

.field public h:I

.field public i:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lf/d/a/o/n/b0/j;->j:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 4

    .line 1
    new-instance v0, Lf/d/a/o/n/b0/m;

    invoke-direct {v0}, Lf/d/a/o/n/b0/m;-><init>()V

    .line 2
    new-instance v1, Ljava/util/HashSet;

    invoke-static {}, Landroid/graphics/Bitmap$Config;->values()[Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 5
    sget-object v2, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 6
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-wide p1, p0, Lf/d/a/o/n/b0/j;->d:J

    .line 9
    iput-object v0, p0, Lf/d/a/o/n/b0/j;->a:Lf/d/a/o/n/b0/k;

    .line 10
    iput-object v1, p0, Lf/d/a/o/n/b0/j;->b:Ljava/util/Set;

    .line 11
    new-instance p1, Lf/d/a/o/n/b0/j$b;

    invoke-direct {p1}, Lf/d/a/o/n/b0/j$b;-><init>()V

    iput-object p1, p0, Lf/d/a/o/n/b0/j;->c:Lf/d/a/o/n/b0/j$a;

    return-void
.end method


# virtual methods
.method public a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lf/d/a/o/n/b0/j;->g(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    sget-object p3, Lf/d/a/o/n/b0/j;->j:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public declared-synchronized b(Landroid/graphics/Bitmap;)V
    .locals 6

    monitor-enter p0

    if-eqz p1, :cond_6

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lf/d/a/o/n/b0/j;->a:Lf/d/a/o/n/b0/k;

    .line 3
    invoke-interface {v0, p1}, Lf/d/a/o/n/b0/k;->d(Landroid/graphics/Bitmap;)I

    move-result v0

    int-to-long v2, v0

    iget-wide v4, p0, Lf/d/a/o/n/b0/j;->d:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_3

    iget-object v0, p0, Lf/d/a/o/n/b0/j;->b:Ljava/util/Set;

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lf/d/a/o/n/b0/j;->a:Lf/d/a/o/n/b0/k;

    invoke-interface {v0, p1}, Lf/d/a/o/n/b0/k;->d(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 6
    iget-object v2, p0, Lf/d/a/o/n/b0/j;->a:Lf/d/a/o/n/b0/k;

    invoke-interface {v2, p1}, Lf/d/a/o/n/b0/k;->b(Landroid/graphics/Bitmap;)V

    .line 7
    iget-object v2, p0, Lf/d/a/o/n/b0/j;->c:Lf/d/a/o/n/b0/j$a;

    check-cast v2, Lf/d/a/o/n/b0/j$b;

    if-eqz v2, :cond_2

    .line 8
    iget v2, p0, Lf/d/a/o/n/b0/j;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lf/d/a/o/n/b0/j;->h:I

    .line 9
    iget-wide v2, p0, Lf/d/a/o/n/b0/j;->e:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lf/d/a/o/n/b0/j;->e:J

    const-string v0, "LruBitmapPool"

    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lf/d/a/o/n/b0/j;->a:Lf/d/a/o/n/b0/k;

    invoke-interface {v0, p1}, Lf/d/a/o/n/b0/k;->f(Landroid/graphics/Bitmap;)Ljava/lang/String;

    .line 12
    :cond_1
    invoke-virtual {p0}, Lf/d/a/o/n/b0/j;->e()V

    .line 13
    iget-wide v0, p0, Lf/d/a/o/n/b0/j;->d:J

    invoke-virtual {p0, v0, v1}, Lf/d/a/o/n/b0/j;->h(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p0

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 15
    :try_start_1
    throw p1

    :cond_3
    :goto_0
    const-string v0, "LruBitmapPool"

    .line 16
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17
    iget-object v0, p0, Lf/d/a/o/n/b0/j;->a:Lf/d/a/o/n/b0/k;

    .line 18
    invoke-interface {v0, p1}, Lf/d/a/o/n/b0/k;->f(Landroid/graphics/Bitmap;)Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    iget-object v0, p0, Lf/d/a/o/n/b0/j;->b:Ljava/util/Set;

    .line 20
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 21
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    monitor-exit p0

    return-void

    .line 23
    :cond_5
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot pool recycled bitmap"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 24
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Bitmap must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public c()V
    .locals 2

    const-string v0, "LruBitmapPool"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    const-wide/16 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Lf/d/a/o/n/b0/j;->h(J)V

    return-void
.end method

.method public d(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lf/d/a/o/n/b0/j;->g(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p3, Lf/d/a/o/n/b0/j;->j:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final e()V
    .locals 2

    const-string v0, "LruBitmapPool"

    const/4 v1, 0x2

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lf/d/a/o/n/b0/j;->f()V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 3

    const-string v0, "Hits="

    .line 1
    invoke-static {v0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lf/d/a/o/n/b0/j;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", misses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf/d/a/o/n/b0/j;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", puts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf/d/a/o/n/b0/j;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", evictions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf/d/a/o/n/b0/j;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lf/d/a/o/n/b0/j;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", maxSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lf/d/a/o/n/b0/j;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\nStrategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/d/a/o/n/b0/j;->a:Lf/d/a/o/n/b0/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public final declared-synchronized g(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 6
    .param p3    # Landroid/graphics/Bitmap$Config;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq p3, v0, :cond_6

    .line 3
    :goto_0
    iget-object v0, p0, Lf/d/a/o/n/b0/j;->a:Lf/d/a/o/n/b0/k;

    if-eqz p3, :cond_1

    move-object v1, p3

    goto :goto_1

    :cond_1
    sget-object v1, Lf/d/a/o/n/b0/j;->j:Landroid/graphics/Bitmap$Config;

    :goto_1
    invoke-interface {v0, p1, p2, v1}, Lf/d/a/o/n/b0/k;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    const-string v2, "LruBitmapPool"

    const/4 v3, 0x3

    .line 4
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    iget-object v2, p0, Lf/d/a/o/n/b0/j;->a:Lf/d/a/o/n/b0/k;

    invoke-interface {v2, p1, p2, p3}, Lf/d/a/o/n/b0/k;->c(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    .line 6
    :cond_2
    iget v2, p0, Lf/d/a/o/n/b0/j;->g:I

    add-int/2addr v2, v1

    iput v2, p0, Lf/d/a/o/n/b0/j;->g:I

    goto :goto_2

    .line 7
    :cond_3
    iget v2, p0, Lf/d/a/o/n/b0/j;->f:I

    add-int/2addr v2, v1

    iput v2, p0, Lf/d/a/o/n/b0/j;->f:I

    .line 8
    iget-wide v2, p0, Lf/d/a/o/n/b0/j;->e:J

    iget-object v4, p0, Lf/d/a/o/n/b0/j;->a:Lf/d/a/o/n/b0/k;

    invoke-interface {v4, v0}, Lf/d/a/o/n/b0/k;->d(Landroid/graphics/Bitmap;)I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lf/d/a/o/n/b0/j;->e:J

    .line 9
    iget-object v2, p0, Lf/d/a/o/n/b0/j;->c:Lf/d/a/o/n/b0/j$a;

    check-cast v2, Lf/d/a/o/n/b0/j$b;

    if-eqz v2, :cond_5

    .line 10
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 11
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    :goto_2
    const-string v1, "LruBitmapPool"

    const/4 v2, 0x2

    .line 12
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 13
    iget-object v1, p0, Lf/d/a/o/n/b0/j;->a:Lf/d/a/o/n/b0/k;

    invoke-interface {v1, p1, p2, p3}, Lf/d/a/o/n/b0/k;->c(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    .line 14
    :cond_4
    invoke-virtual {p0}, Lf/d/a/o/n/b0/j;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit p0

    return-object v0

    :cond_5
    const/4 p1, 0x0

    .line 16
    :try_start_1
    throw p1

    .line 17
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot create a mutable Bitmap with config: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ". Consider setting Downsampler#ALLOW_HARDWARE_CONFIG to false in your RequestOptions and/or in GlideBuilder.setDefaultRequestOptions"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized h(J)V
    .locals 5

    monitor-enter p0

    .line 1
    :goto_0
    :try_start_0
    iget-wide v0, p0, Lf/d/a/o/n/b0/j;->e:J

    cmp-long v2, v0, p1

    if-lez v2, :cond_4

    .line 2
    iget-object v0, p0, Lf/d/a/o/n/b0/j;->a:Lf/d/a/o/n/b0/k;

    invoke-interface {v0}, Lf/d/a/o/n/b0/k;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "LruBitmapPool"

    const/4 p2, 0x5

    .line 3
    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lf/d/a/o/n/b0/j;->f()V

    :cond_0
    const-wide/16 p1, 0x0

    .line 5
    iput-wide p1, p0, Lf/d/a/o/n/b0/j;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_1
    :try_start_1
    iget-object v1, p0, Lf/d/a/o/n/b0/j;->c:Lf/d/a/o/n/b0/j$a;

    check-cast v1, Lf/d/a/o/n/b0/j$b;

    if-eqz v1, :cond_3

    .line 8
    iget-wide v1, p0, Lf/d/a/o/n/b0/j;->e:J

    iget-object v3, p0, Lf/d/a/o/n/b0/j;->a:Lf/d/a/o/n/b0/k;

    invoke-interface {v3, v0}, Lf/d/a/o/n/b0/k;->d(Landroid/graphics/Bitmap;)I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lf/d/a/o/n/b0/j;->e:J

    .line 9
    iget v1, p0, Lf/d/a/o/n/b0/j;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lf/d/a/o/n/b0/j;->i:I

    const-string v1, "LruBitmapPool"

    const/4 v2, 0x3

    .line 10
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    iget-object v1, p0, Lf/d/a/o/n/b0/j;->a:Lf/d/a/o/n/b0/k;

    invoke-interface {v1, v0}, Lf/d/a/o/n/b0/k;->f(Landroid/graphics/Bitmap;)Ljava/lang/String;

    .line 12
    :cond_2
    invoke-virtual {p0}, Lf/d/a/o/n/b0/j;->e()V

    .line 13
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 14
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public trimMemory(I)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const-string v0, "LruBitmapPool"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    const/16 v2, 0x28

    if-ge p1, v2, :cond_2

    .line 2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const/16 v4, 0x14

    if-lt v2, v3, :cond_0

    if-lt p1, v4, :cond_0

    goto :goto_0

    :cond_0
    if-ge p1, v4, :cond_1

    const/16 v0, 0xf

    if-ne p1, v0, :cond_3

    .line 3
    :cond_1
    iget-wide v0, p0, Lf/d/a/o/n/b0/j;->d:J

    const-wide/16 v2, 0x2

    .line 4
    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lf/d/a/o/n/b0/j;->h(J)V

    goto :goto_1

    .line 5
    :cond_2
    :goto_0
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    const-wide/16 v0, 0x0

    .line 6
    invoke-virtual {p0, v0, v1}, Lf/d/a/o/n/b0/j;->h(J)V

    :cond_3
    :goto_1
    return-void
.end method
