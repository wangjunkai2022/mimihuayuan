.class public Lf/d/a/o/p/a$a;
.super Ljava/lang/Object;
.source "ImageDecoderResourceDecoder.java"

# interfaces
.implements Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/d/a/o/p/a;->c(Landroid/graphics/ImageDecoder$Source;IILf/d/a/o/h;)Lf/d/a/o/n/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Lf/d/a/o/b;

.field public final synthetic e:Lf/d/a/o/p/c/m;

.field public final synthetic f:Lf/d/a/o/i;

.field public final synthetic g:Lf/d/a/o/p/a;


# direct methods
.method public constructor <init>(Lf/d/a/o/p/a;IIZLf/d/a/o/b;Lf/d/a/o/p/c/m;Lf/d/a/o/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/d/a/o/p/a$a;->g:Lf/d/a/o/p/a;

    iput p2, p0, Lf/d/a/o/p/a$a;->a:I

    iput p3, p0, Lf/d/a/o/p/a$a;->b:I

    iput-boolean p4, p0, Lf/d/a/o/p/a$a;->c:Z

    iput-object p5, p0, Lf/d/a/o/p/a$a;->d:Lf/d/a/o/b;

    iput-object p6, p0, Lf/d/a/o/p/a$a;->e:Lf/d/a/o/p/c/m;

    iput-object p7, p0, Lf/d/a/o/p/a$a;->f:Lf/d/a/o/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Override"
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lf/d/a/o/p/a$a;->g:Lf/d/a/o/p/a;

    iget-object p3, p3, Lf/d/a/o/p/a;->a:Lf/d/a/o/p/c/s;

    iget v0, p0, Lf/d/a/o/p/a$a;->a:I

    iget v1, p0, Lf/d/a/o/p/a$a;->b:I

    iget-boolean v2, p0, Lf/d/a/o/p/a$a;->c:Z

    const/4 v3, 0x0

    invoke-virtual {p3, v0, v1, v2, v3}, Lf/d/a/o/p/c/s;->b(IIZZ)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    const/4 p3, 0x3

    .line 2
    invoke-virtual {p1, p3}, Landroid/graphics/ImageDecoder;->setAllocator(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1, v0}, Landroid/graphics/ImageDecoder;->setAllocator(I)V

    .line 4
    :goto_0
    iget-object p3, p0, Lf/d/a/o/p/a$a;->d:Lf/d/a/o/b;

    sget-object v1, Lf/d/a/o/b;->b:Lf/d/a/o/b;

    if-ne p3, v1, :cond_1

    .line 5
    invoke-virtual {p1, v3}, Landroid/graphics/ImageDecoder;->setMemorySizePolicy(I)V

    .line 6
    :cond_1
    new-instance p3, Lf/d/a/o/p/a$a$a;

    invoke-direct {p3, p0}, Lf/d/a/o/p/a$a$a;-><init>(Lf/d/a/o/p/a$a;)V

    invoke-virtual {p1, p3}, Landroid/graphics/ImageDecoder;->setOnPartialImageListener(Landroid/graphics/ImageDecoder$OnPartialImageListener;)V

    .line 7
    invoke-virtual {p2}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    move-result-object p3

    .line 8
    iget v1, p0, Lf/d/a/o/p/a$a;->a:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_2

    .line 9
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v1

    .line 10
    :cond_2
    iget v4, p0, Lf/d/a/o/p/a$a;->b:I

    if-ne v4, v2, :cond_3

    .line 11
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v4

    .line 12
    :cond_3
    iget-object v2, p0, Lf/d/a/o/p/a$a;->e:Lf/d/a/o/p/c/m;

    .line 13
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v6

    .line 14
    invoke-virtual {v2, v5, v6, v1, v4}, Lf/d/a/o/p/c/m;->b(IIII)F

    move-result v1

    .line 15
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 16
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v1, v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v4, 0x2

    const-string v5, "ImageDecoder"

    .line 17
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 18
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    .line 19
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    .line 20
    :cond_4
    invoke-virtual {p1, v2, v1}, Landroid/graphics/ImageDecoder;->setTargetSize(II)V

    .line 21
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt p3, v1, :cond_7

    .line 22
    iget-object p3, p0, Lf/d/a/o/p/a$a;->f:Lf/d/a/o/i;

    sget-object v1, Lf/d/a/o/i;->b:Lf/d/a/o/i;

    if-ne p3, v1, :cond_5

    .line 23
    invoke-virtual {p2}, Landroid/graphics/ImageDecoder$ImageInfo;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 24
    invoke-virtual {p2}, Landroid/graphics/ImageDecoder$ImageInfo;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/ColorSpace;->isWideGamut()Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 v3, 0x1

    :cond_5
    if-eqz v3, :cond_6

    .line 25
    sget-object p2, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    goto :goto_1

    :cond_6
    sget-object p2, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    .line 26
    :goto_1
    invoke-static {p2}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object p2

    .line 27
    invoke-virtual {p1, p2}, Landroid/graphics/ImageDecoder;->setTargetColorSpace(Landroid/graphics/ColorSpace;)V

    goto :goto_2

    :cond_7
    const/16 p2, 0x1a

    if-lt p3, p2, :cond_8

    .line 28
    sget-object p2, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {p2}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/ImageDecoder;->setTargetColorSpace(Landroid/graphics/ColorSpace;)V

    :cond_8
    :goto_2
    return-void
.end method
