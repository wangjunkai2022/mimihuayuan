.class public Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;
.super Landroid/view/View;
.source "ExoVideoAnim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;
    }
.end annotation


# instance fields
.field public circleRadius:I

.field public circleSpacing:I

.field public colors:[I

.field public increment:I

.field public oval:Landroid/graphics/RectF;

.field public paint:Landroid/graphics/Paint;

.field public wrappers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x3

    new-array p1, p1, [I

    .line 2
    fill-array-data p1, :array_0

    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->colors:[I

    .line 3
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->paint:Landroid/graphics/Paint;

    .line 4
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->oval:Landroid/graphics/RectF;

    const/4 p1, 0x2

    .line 5
    iput p1, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->increment:I

    return-void

    nop

    :array_0
    .array-data 4
        -0x3a00
        -0xeb3788
        -0xfd2601
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 7
    fill-array-data v0, :array_0

    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->colors:[I

    .line 8
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->paint:Landroid/graphics/Paint;

    .line 9
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->oval:Landroid/graphics/RectF;

    const/4 v0, 0x2

    .line 10
    iput v0, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->increment:I

    .line 11
    new-instance v1, Lchuangyuan/ycj/videolibrary/utils/ParamsCreator;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lchuangyuan/ycj/videolibrary/utils/ParamsCreator;-><init>(Landroid/content/Context;)V

    .line 12
    sget-object v2, Lchuangyuan/ycj/videolibrary/R$styleable;->exoVideoAnim:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 13
    sget p2, Lchuangyuan/ycj/videolibrary/R$styleable;->exoVideoAnim_circleRadius:I

    invoke-virtual {v1}, Lchuangyuan/ycj/videolibrary/utils/ParamsCreator;->getDefaultCircleRadius()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->circleRadius:I

    .line 14
    sget p2, Lchuangyuan/ycj/videolibrary/R$styleable;->exoVideoAnim_circleSpacing:I

    invoke-virtual {v1}, Lchuangyuan/ycj/videolibrary/utils/ParamsCreator;->getDefaultCircleSpacing()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->circleSpacing:I

    .line 15
    sget p2, Lchuangyuan/ycj/videolibrary/R$styleable;->exoVideoAnim_cycle:I

    const/16 v1, 0x7d0

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 16
    div-int/2addr p1, v0

    int-to-double p1, p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    mul-double p1, p1, v0

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v0

    const-wide v0, 0x4054c00000000000L    # 83.0

    mul-double p1, p1, v0

    double-to-int p1, p1

    .line 17
    iget p2, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->circleRadius:I

    int-to-double v0, p2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double v0, v0, v2

    int-to-double p1, p1

    div-double/2addr v0, p1

    double-to-int p1, v0

    iput p1, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->increment:I

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    .line 18
    :cond_0
    iput p1, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->increment:I

    .line 19
    invoke-direct {p0}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->createWrappers()V

    return-void

    :array_0
    .array-data 4
        -0x3a00
        -0xeb3788
        -0xfd2601
    .end array-data
.end method

.method private createWrappers()V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->wrappers:Ljava/util/List;

    .line 2
    iget v0, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->circleRadius:I

    mul-int/lit8 v0, v0, 0x2

    .line 3
    new-instance v1, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;-><init>(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$1;)V

    .line 4
    invoke-static {v1, v0}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$102(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;I)I

    .line 5
    invoke-static {v1, v0}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$202(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;I)I

    .line 6
    invoke-static {v1}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$200(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;)I

    move-result v3

    invoke-static {v1, v3}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$302(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;I)I

    const/4 v3, -0x1

    .line 7
    invoke-static {v1, v3}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$402(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;I)I

    .line 8
    iget-object v3, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->wrappers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v1, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;

    invoke-direct {v1, p0, v2}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;-><init>(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$1;)V

    .line 10
    invoke-static {v1, v0}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$102(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;I)I

    int-to-double v3, v0

    const-wide/high16 v5, 0x3fe8000000000000L    # 0.75

    mul-double v5, v5, v3

    double-to-int v5, v5

    .line 11
    invoke-static {v1, v5}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$202(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;I)I

    .line 12
    invoke-static {v1}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$200(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;)I

    move-result v5

    invoke-static {v1, v5}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$302(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;I)I

    const/4 v5, 0x1

    .line 13
    invoke-static {v1, v5}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$402(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;I)I

    .line 14
    iget-object v6, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->wrappers:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance v1, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;

    invoke-direct {v1, p0, v2}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;-><init>(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$1;)V

    .line 16
    invoke-static {v1, v0}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$102(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;I)I

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double v3, v3, v6

    double-to-int v0, v3

    .line 17
    invoke-static {v1, v0}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$202(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;I)I

    .line 18
    invoke-static {v1}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$200(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;)I

    move-result v0

    invoke-static {v1, v0}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$302(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;I)I

    .line 19
    invoke-static {v1, v5}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$402(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;I)I

    .line 20
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->wrappers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private drawCircle01(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->colors:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->wrappers:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;

    .line 3
    invoke-static {v0}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$300(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;)I

    move-result v1

    invoke-static {v0}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$400(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;)I

    move-result v3

    iget v4, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->increment:I

    mul-int v3, v3, v4

    add-int/2addr v3, v1

    invoke-static {v0, v3}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$302(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;I)I

    .line 4
    invoke-static {v0}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$300(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;)I

    move-result v1

    invoke-static {v0}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$100(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;)I

    move-result v3

    if-lt v1, v3, :cond_0

    const/4 v1, -0x1

    .line 5
    invoke-static {v0, v1}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$402(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;I)I

    .line 6
    invoke-static {v0}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$100(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;)I

    move-result v1

    invoke-static {v0, v1}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$302(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;I)I

    .line 7
    :cond_0
    invoke-static {v0}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$300(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;)I

    move-result v1

    const/4 v3, 0x1

    if-gtz v1, :cond_1

    .line 8
    invoke-static {v0, v3}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$402(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;I)I

    .line 9
    invoke-static {v0, v2}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$302(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;I)I

    .line 10
    :cond_1
    iget v1, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->circleRadius:I

    mul-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->wrappers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int v2, v2, v1

    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->wrappers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    iget v3, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->circleSpacing:I

    mul-int v1, v1, v3

    add-int/2addr v1, v2

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v2, v1

    iget v1, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->circleRadius:I

    add-int/2addr v2, v1

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 13
    iget-object v3, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->oval:Landroid/graphics/RectF;

    invoke-static {v0}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$300(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    int-to-float v2, v2

    iput v2, v3, Landroid/graphics/RectF;->left:F

    .line 14
    iget-object v2, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->oval:Landroid/graphics/RectF;

    invoke-static {v0}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$300(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iput v1, v2, Landroid/graphics/RectF;->top:F

    .line 15
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->oval:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$300(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 16
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->oval:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$300(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 17
    iget-object v4, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->oval:Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/high16 v6, 0x43b40000    # 360.0f

    const/4 v7, 0x0

    iget-object v8, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->paint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawCircle02(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->colors:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->wrappers:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;

    .line 3
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->wrappers:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;

    .line 4
    invoke-static {v1}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$300(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;)I

    move-result v4

    invoke-static {v1}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$200(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;)I

    move-result v1

    if-ne v4, v1, :cond_0

    .line 5
    invoke-static {v0}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$200(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;)I

    move-result v1

    invoke-static {v0, v1}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$302(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;I)I

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v0}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$300(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;)I

    move-result v1

    invoke-static {v0}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$400(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;)I

    move-result v4

    iget v5, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->increment:I

    mul-int v4, v4, v5

    add-int/2addr v4, v1

    invoke-static {v0, v4}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$302(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;I)I

    .line 7
    invoke-static {v0}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$300(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;)I

    move-result v1

    invoke-static {v0}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$100(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;)I

    move-result v4

    if-lt v1, v4, :cond_1

    const/4 v1, -0x1

    .line 8
    invoke-static {v0, v1}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$402(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;I)I

    .line 9
    invoke-static {v0}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$100(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;)I

    move-result v1

    invoke-static {v0, v1}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$302(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;I)I

    .line 10
    :cond_1
    invoke-static {v0}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$300(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;)I

    move-result v1

    if-gtz v1, :cond_2

    .line 11
    invoke-static {v0, v2}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$402(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;I)I

    .line 12
    invoke-static {v0, v3}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$302(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;I)I

    .line 13
    :cond_2
    :goto_0
    iget v1, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->circleRadius:I

    mul-int/lit8 v1, v1, 0x2

    iget-object v3, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->wrappers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int v3, v3, v1

    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->wrappers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    iget v4, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->circleSpacing:I

    mul-int v1, v1, v4

    add-int/2addr v1, v3

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v3, v1

    invoke-static {v0}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$100(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;)I

    move-result v1

    iget v4, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->circleSpacing:I

    add-int/2addr v1, v4

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v3

    iget v2, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->circleRadius:I

    add-int/2addr v1, v2

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 16
    iget-object v3, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->oval:Landroid/graphics/RectF;

    invoke-static {v0}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$300(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    int-to-float v1, v1

    iput v1, v3, Landroid/graphics/RectF;->left:F

    .line 17
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->oval:Landroid/graphics/RectF;

    invoke-static {v0}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$300(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 18
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->oval:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$300(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 19
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->oval:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$300(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 20
    iget-object v4, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->oval:Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/high16 v6, 0x43b40000    # 360.0f

    const/4 v7, 0x0

    iget-object v8, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->paint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawCircle03(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->colors:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->wrappers:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;

    .line 3
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->wrappers:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;

    .line 4
    invoke-static {v1}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$300(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;)I

    move-result v4

    invoke-static {v1}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$200(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;)I

    move-result v1

    const/4 v5, 0x1

    if-ne v4, v1, :cond_0

    .line 5
    invoke-static {v0}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$200(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;)I

    move-result v1

    invoke-static {v0, v1}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$302(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;I)I

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v0}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$300(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;)I

    move-result v1

    invoke-static {v0}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$400(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;)I

    move-result v4

    iget v6, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->increment:I

    mul-int v4, v4, v6

    add-int/2addr v4, v1

    invoke-static {v0, v4}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$302(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;I)I

    .line 7
    invoke-static {v0}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$300(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;)I

    move-result v1

    invoke-static {v0}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$100(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;)I

    move-result v4

    if-lt v1, v4, :cond_1

    const/4 v1, -0x1

    .line 8
    invoke-static {v0, v1}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$402(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;I)I

    .line 9
    invoke-static {v0}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$100(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;)I

    move-result v1

    invoke-static {v0, v1}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$302(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;I)I

    .line 10
    :cond_1
    invoke-static {v0}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$300(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;)I

    move-result v1

    if-gtz v1, :cond_2

    .line 11
    invoke-static {v0, v5}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$402(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;I)I

    .line 12
    invoke-static {v0, v3}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$302(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;I)I

    .line 13
    :cond_2
    :goto_0
    iget v1, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->circleRadius:I

    mul-int/lit8 v1, v1, 0x2

    iget-object v3, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->wrappers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int v3, v3, v1

    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->wrappers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v5

    iget v4, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->circleSpacing:I

    mul-int v1, v1, v4

    add-int/2addr v1, v3

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/2addr v3, v2

    div-int/2addr v1, v2

    sub-int/2addr v3, v1

    invoke-static {v0}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$100(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;)I

    move-result v1

    iget v4, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->circleSpacing:I

    add-int/2addr v1, v4

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v3

    iget v3, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->circleRadius:I

    add-int/2addr v1, v3

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/2addr v3, v2

    .line 16
    iget-object v4, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->oval:Landroid/graphics/RectF;

    invoke-static {v0}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$300(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;)I

    move-result v5

    div-int/2addr v5, v2

    sub-int/2addr v1, v5

    int-to-float v1, v1

    iput v1, v4, Landroid/graphics/RectF;->left:F

    .line 17
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->oval:Landroid/graphics/RectF;

    invoke-static {v0}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$300(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;)I

    move-result v4

    div-int/2addr v4, v2

    sub-int/2addr v3, v4

    int-to-float v2, v3

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 18
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->oval:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$300(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 19
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->oval:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;->access$300(Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim$CircleWrapper;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 20
    iget-object v4, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->oval:Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/high16 v6, 0x43b40000    # 360.0f

    const/4 v7, 0x0

    iget-object v8, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->paint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method private getDefaultHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->circleRadius:I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private getDefaultWidth()I
    .locals 3

    .line 1
    iget v0, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->circleRadius:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->wrappers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int v1, v1, v0

    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->wrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->circleSpacing:I

    mul-int v0, v0, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private measureHeight(I)I
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->getDefaultHeight()I

    move-result v1

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    .line 4
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    return p1
.end method

.method private measureWidth(I)I
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->getDefaultWidth()I

    move-result v1

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    .line 4
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    return p1
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4
    invoke-direct {p0, p1}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->drawCircle01(Landroid/graphics/Canvas;)V

    .line 5
    invoke-direct {p0, p1}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->drawCircle02(Landroid/graphics/Canvas;)V

    .line 6
    invoke-direct {p0, p1}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->drawCircle03(Landroid/graphics/Canvas;)V

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->measureWidth(I)I

    move-result p1

    invoke-direct {p0, p2}, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->measureHeight(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setColors([I)V
    .locals 3
    .param p1    # [I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    .line 1
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/widget/ExoVideoAnim;->colors:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 3
    aget v2, p1, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
