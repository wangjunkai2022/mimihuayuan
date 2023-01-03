.class public Lcom/contrarywind/view/WheelView;
.super Landroid/view/View;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/contrarywind/view/WheelView$b;,
        Lcom/contrarywind/view/WheelView$a;
    }
.end annotation


# static fields
.field public static final U:[Ljava/lang/String;


# instance fields
.field public A:F

.field public B:F

.field public C:F

.field public D:F

.field public E:I

.field public F:I

.field public G:I

.field public H:I

.field public I:I

.field public J:I

.field public K:I

.field public L:I

.field public M:F

.field public N:J

.field public O:I

.field public P:I

.field public Q:I

.field public R:I

.field public S:F

.field public T:Z

.field public a:Lcom/contrarywind/view/WheelView$b;

.field public b:Landroid/content/Context;

.field public c:Landroid/os/Handler;

.field public d:Landroid/view/GestureDetector;

.field public e:Lf/f/c/b;

.field public f:Z

.field public g:Z

.field public h:Ljava/util/concurrent/ScheduledExecutorService;

.field public i:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field public j:Landroid/graphics/Paint;

.field public k:Landroid/graphics/Paint;

.field public l:Landroid/graphics/Paint;

.field public m:Lf/f/a/a;

.field public n:Ljava/lang/String;

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:F

.field public t:Landroid/graphics/Typeface;

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:F

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    const-string v0, "00"

    const-string v1, "01"

    const-string v2, "02"

    const-string v3, "03"

    const-string v4, "04"

    const-string v5, "05"

    const-string v6, "06"

    const-string v7, "07"

    const-string v8, "08"

    const-string v9, "09"

    .line 1
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/contrarywind/view/WheelView;->U:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/contrarywind/view/WheelView;->f:Z

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/contrarywind/view/WheelView;->g:Z

    .line 4
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/contrarywind/view/WheelView;->h:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object v2, p0, Lcom/contrarywind/view/WheelView;->t:Landroid/graphics/Typeface;

    const v2, 0x3fcccccd    # 1.6f

    .line 6
    iput v2, p0, Lcom/contrarywind/view/WheelView;->y:F

    const/16 v2, 0xb

    .line 7
    iput v2, p0, Lcom/contrarywind/view/WheelView;->H:I

    .line 8
    iput v0, p0, Lcom/contrarywind/view/WheelView;->L:I

    const/4 v2, 0x0

    .line 9
    iput v2, p0, Lcom/contrarywind/view/WheelView;->M:F

    const-wide/16 v3, 0x0

    .line 10
    iput-wide v3, p0, Lcom/contrarywind/view/WheelView;->N:J

    const/16 v3, 0x11

    .line 11
    iput v3, p0, Lcom/contrarywind/view/WheelView;->P:I

    .line 12
    iput v0, p0, Lcom/contrarywind/view/WheelView;->Q:I

    .line 13
    iput v0, p0, Lcom/contrarywind/view/WheelView;->R:I

    .line 14
    iput-boolean v0, p0, Lcom/contrarywind/view/WheelView;->T:Z

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lf/f/e/a;->pickerview_textsize:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/contrarywind/view/WheelView;->o:I

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 17
    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v6, v4, v5

    if-gez v6, :cond_0

    const v4, 0x4019999a    # 2.4f

    .line 18
    iput v4, p0, Lcom/contrarywind/view/WheelView;->S:F

    goto :goto_0

    :cond_0
    const/high16 v6, 0x40000000    # 2.0f

    cmpg-float v5, v5, v4

    if-gtz v5, :cond_1

    cmpg-float v5, v4, v6

    if-gez v5, :cond_1

    const/high16 v4, 0x40800000    # 4.0f

    .line 19
    iput v4, p0, Lcom/contrarywind/view/WheelView;->S:F

    goto :goto_0

    :cond_1
    const/high16 v5, 0x40400000    # 3.0f

    cmpg-float v6, v6, v4

    if-gtz v6, :cond_2

    cmpg-float v6, v4, v5

    if-gez v6, :cond_2

    const/high16 v4, 0x40c00000    # 6.0f

    .line 20
    iput v4, p0, Lcom/contrarywind/view/WheelView;->S:F

    goto :goto_0

    :cond_2
    cmpl-float v5, v4, v5

    if-ltz v5, :cond_3

    const/high16 v5, 0x40200000    # 2.5f

    mul-float v4, v4, v5

    .line 21
    iput v4, p0, Lcom/contrarywind/view/WheelView;->S:F

    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    .line 22
    sget-object v4, Lf/f/e/b;->pickerview:[I

    invoke-virtual {p1, p2, v4, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 23
    sget v4, Lf/f/e/b;->pickerview_wheelview_gravity:I

    invoke-virtual {p2, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/contrarywind/view/WheelView;->P:I

    .line 24
    sget v3, Lf/f/e/b;->pickerview_wheelview_textColorOut:I

    const v4, -0x575758

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/contrarywind/view/WheelView;->u:I

    .line 25
    sget v3, Lf/f/e/b;->pickerview_wheelview_textColorCenter:I

    const v4, -0xd5d5d6

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/contrarywind/view/WheelView;->v:I

    .line 26
    sget v3, Lf/f/e/b;->pickerview_wheelview_dividerColor:I

    const v4, -0x2a2a2b

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/contrarywind/view/WheelView;->w:I

    .line 27
    sget v3, Lf/f/e/b;->pickerview_wheelview_dividerWidth:I

    const/4 v4, 0x2

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/contrarywind/view/WheelView;->x:I

    .line 28
    sget v3, Lf/f/e/b;->pickerview_wheelview_textSize:I

    iget v4, p0, Lcom/contrarywind/view/WheelView;->o:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Lcom/contrarywind/view/WheelView;->o:I

    .line 29
    sget v3, Lf/f/e/b;->pickerview_wheelview_lineSpacingMultiplier:I

    iget v4, p0, Lcom/contrarywind/view/WheelView;->y:F

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lcom/contrarywind/view/WheelView;->y:F

    .line 30
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 31
    :cond_4
    invoke-virtual {p0}, Lcom/contrarywind/view/WheelView;->d()V

    .line 32
    iput-object p1, p0, Lcom/contrarywind/view/WheelView;->b:Landroid/content/Context;

    .line 33
    new-instance p2, Lf/f/d/b;

    invoke-direct {p2, p0}, Lf/f/d/b;-><init>(Lcom/contrarywind/view/WheelView;)V

    iput-object p2, p0, Lcom/contrarywind/view/WheelView;->c:Landroid/os/Handler;

    .line 34
    new-instance p2, Landroid/view/GestureDetector;

    new-instance v3, Lf/f/c/a;

    invoke-direct {v3, p0}, Lf/f/c/a;-><init>(Lcom/contrarywind/view/WheelView;)V

    invoke-direct {p2, p1, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/contrarywind/view/WheelView;->d:Landroid/view/GestureDetector;

    .line 35
    invoke-virtual {p2, v0}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 36
    iput-boolean v1, p0, Lcom/contrarywind/view/WheelView;->z:Z

    .line 37
    iput v2, p0, Lcom/contrarywind/view/WheelView;->D:F

    const/4 p1, -0x1

    .line 38
    iput p1, p0, Lcom/contrarywind/view/WheelView;->E:I

    .line 39
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/contrarywind/view/WheelView;->j:Landroid/graphics/Paint;

    .line 40
    iget p2, p0, Lcom/contrarywind/view/WheelView;->u:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    iget-object p1, p0, Lcom/contrarywind/view/WheelView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 42
    iget-object p1, p0, Lcom/contrarywind/view/WheelView;->j:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/contrarywind/view/WheelView;->t:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 43
    iget-object p1, p0, Lcom/contrarywind/view/WheelView;->j:Landroid/graphics/Paint;

    iget p2, p0, Lcom/contrarywind/view/WheelView;->o:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 44
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/contrarywind/view/WheelView;->k:Landroid/graphics/Paint;

    .line 45
    iget p2, p0, Lcom/contrarywind/view/WheelView;->v:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    iget-object p1, p0, Lcom/contrarywind/view/WheelView;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 47
    iget-object p1, p0, Lcom/contrarywind/view/WheelView;->k:Landroid/graphics/Paint;

    const p2, 0x3f8ccccd    # 1.1f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 48
    iget-object p1, p0, Lcom/contrarywind/view/WheelView;->k:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/contrarywind/view/WheelView;->t:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 49
    iget-object p1, p0, Lcom/contrarywind/view/WheelView;->k:Landroid/graphics/Paint;

    iget p2, p0, Lcom/contrarywind/view/WheelView;->o:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 50
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/contrarywind/view/WheelView;->l:Landroid/graphics/Paint;

    .line 51
    iget p2, p0, Lcom/contrarywind/view/WheelView;->w:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    iget-object p1, p0, Lcom/contrarywind/view/WheelView;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 p1, 0x0

    .line 53
    invoke-virtual {p0, v1, p1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->i:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->i:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/contrarywind/view/WheelView;->i:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 1
    :cond_0
    instance-of v0, p1, Lf/f/b/a;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lf/f/b/a;

    invoke-interface {p1}, Lf/f/b/a;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 4
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ltz p1, :cond_2

    const/16 v0, 0xa

    if-ge p1, v0, :cond_2

    .line 5
    sget-object v0, Lcom/contrarywind/view/WheelView;->U:[Ljava/lang/String;

    aget-object p1, v0, p1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    .line 6
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final c(I)I
    .locals 1

    if-gez p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->m:Lf/f/a/a;

    check-cast v0, Lf/c/a/f/a;

    invoke-virtual {v0}, Lf/c/a/f/a;->b()I

    move-result v0

    add-int/2addr v0, p1

    .line 2
    invoke-virtual {p0, v0}, Lcom/contrarywind/view/WheelView;->c(I)I

    move-result p1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->m:Lf/f/a/a;

    check-cast v0, Lf/c/a/f/a;

    invoke-virtual {v0}, Lf/c/a/f/a;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->m:Lf/f/a/a;

    check-cast v0, Lf/c/a/f/a;

    invoke-virtual {v0}, Lf/c/a/f/a;->b()I

    move-result v0

    sub-int/2addr p1, v0

    .line 5
    invoke-virtual {p0, p1}, Lcom/contrarywind/view/WheelView;->c(I)I

    move-result p1

    :cond_1
    :goto_0
    return p1
.end method

.method public final d()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/contrarywind/view/WheelView;->y:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    .line 2
    iput v1, p0, Lcom/contrarywind/view/WheelView;->y:F

    goto :goto_0

    :cond_0
    const/high16 v1, 0x40800000    # 4.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 3
    iput v1, p0, Lcom/contrarywind/view/WheelView;->y:F

    :cond_1
    :goto_0
    return-void
.end method

.method public final e()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->m:Lf/f/a/a;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/contrarywind/view/WheelView;->m:Lf/f/a/a;

    check-cast v3, Lf/c/a/f/a;

    invoke-virtual {v3}, Lf/c/a/f/a;->b()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 4
    iget-object v3, p0, Lcom/contrarywind/view/WheelView;->m:Lf/f/a/a;

    check-cast v3, Lf/c/a/f/a;

    invoke-virtual {v3, v2}, Lf/c/a/f/a;->a(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/contrarywind/view/WheelView;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 5
    iget-object v4, p0, Lcom/contrarywind/view/WheelView;->k:Landroid/graphics/Paint;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v3, v1, v5, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 6
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 7
    iget v4, p0, Lcom/contrarywind/view/WheelView;->p:I

    if-le v3, v4, :cond_1

    .line 8
    iput v3, p0, Lcom/contrarywind/view/WheelView;->p:I

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_2
    iget-object v2, p0, Lcom/contrarywind/view/WheelView;->k:Landroid/graphics/Paint;

    const-string v3, "\u661f\u671f"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 10
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/2addr v0, v4

    iput v0, p0, Lcom/contrarywind/view/WheelView;->q:I

    .line 11
    iget v2, p0, Lcom/contrarywind/view/WheelView;->y:F

    int-to-float v0, v0

    mul-float v2, v2, v0

    iput v2, p0, Lcom/contrarywind/view/WheelView;->s:F

    .line 12
    iget v0, p0, Lcom/contrarywind/view/WheelView;->H:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    mul-float v2, v2, v0

    float-to-int v0, v2

    mul-int/lit8 v2, v0, 0x2

    int-to-double v2, v2

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v5

    double-to-int v2, v2

    .line 13
    iput v2, p0, Lcom/contrarywind/view/WheelView;->I:I

    int-to-double v2, v0

    div-double/2addr v2, v5

    double-to-int v0, v2

    .line 14
    iput v0, p0, Lcom/contrarywind/view/WheelView;->K:I

    .line 15
    iget v0, p0, Lcom/contrarywind/view/WheelView;->O:I

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/contrarywind/view/WheelView;->J:I

    .line 16
    iget v0, p0, Lcom/contrarywind/view/WheelView;->I:I

    int-to-float v2, v0

    iget v3, p0, Lcom/contrarywind/view/WheelView;->s:F

    sub-float/2addr v2, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    iput v2, p0, Lcom/contrarywind/view/WheelView;->A:F

    int-to-float v0, v0

    add-float/2addr v0, v3

    div-float/2addr v0, v5

    .line 17
    iput v0, p0, Lcom/contrarywind/view/WheelView;->B:F

    .line 18
    iget v2, p0, Lcom/contrarywind/view/WheelView;->q:I

    int-to-float v2, v2

    sub-float/2addr v3, v2

    div-float/2addr v3, v5

    sub-float/2addr v0, v3

    iget v2, p0, Lcom/contrarywind/view/WheelView;->S:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/contrarywind/view/WheelView;->C:F

    .line 19
    iget v0, p0, Lcom/contrarywind/view/WheelView;->E:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_4

    .line 20
    iget-boolean v0, p0, Lcom/contrarywind/view/WheelView;->z:Z

    if-eqz v0, :cond_3

    .line 21
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->m:Lf/f/a/a;

    check-cast v0, Lf/c/a/f/a;

    invoke-virtual {v0}, Lf/c/a/f/a;->b()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    div-int/2addr v0, v4

    iput v0, p0, Lcom/contrarywind/view/WheelView;->E:I

    goto :goto_1

    .line 22
    :cond_3
    iput v1, p0, Lcom/contrarywind/view/WheelView;->E:I

    .line 23
    :cond_4
    :goto_1
    iget v0, p0, Lcom/contrarywind/view/WheelView;->E:I

    iput v0, p0, Lcom/contrarywind/view/WheelView;->G:I

    return-void
.end method

.method public final f(FF)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/contrarywind/view/WheelView;->r:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/contrarywind/view/WheelView;->j:Landroid/graphics/Paint;

    const/4 v4, 0x0

    cmpl-float v4, p2, v4

    if-lez v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    :goto_1
    mul-int v0, v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    mul-float v0, v0, p1

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 3
    iget-boolean p1, p0, Lcom/contrarywind/view/WheelView;->T:Z

    if-eqz p1, :cond_3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x42b40000    # 90.0f

    sub-float p1, p2, p1

    div-float/2addr p1, p2

    const/high16 p2, 0x437f0000    # 255.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    goto :goto_2

    :cond_3
    const/16 p1, 0xff

    .line 4
    :goto_2
    iget-object p2, p0, Lcom/contrarywind/view/WheelView;->j:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public g(Lcom/contrarywind/view/WheelView$a;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/contrarywind/view/WheelView;->a()V

    .line 2
    sget-object v0, Lcom/contrarywind/view/WheelView$a;->b:Lcom/contrarywind/view/WheelView$a;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/contrarywind/view/WheelView$a;->c:Lcom/contrarywind/view/WheelView$a;

    if-ne p1, v0, :cond_2

    .line 3
    :cond_0
    iget p1, p0, Lcom/contrarywind/view/WheelView;->D:F

    iget v0, p0, Lcom/contrarywind/view/WheelView;->s:F

    rem-float/2addr p1, v0

    add-float/2addr p1, v0

    rem-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/contrarywind/view/WheelView;->L:I

    int-to-float v1, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v0, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    sub-float/2addr v0, v1

    float-to-int p1, v0

    .line 4
    iput p1, p0, Lcom/contrarywind/view/WheelView;->L:I

    goto :goto_0

    :cond_1
    neg-int p1, p1

    .line 5
    iput p1, p0, Lcom/contrarywind/view/WheelView;->L:I

    .line 6
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->h:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lf/f/d/c;

    iget p1, p0, Lcom/contrarywind/view/WheelView;->L:I

    invoke-direct {v1, p0, p1}, Lf/f/d/c;-><init>(Lcom/contrarywind/view/WheelView;I)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/contrarywind/view/WheelView;->i:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public final getAdapter()Lf/f/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->m:Lf/f/a/a;

    return-object v0
.end method

.method public final getCurrentItem()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->m:Lf/f/a/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v2, p0, Lcom/contrarywind/view/WheelView;->z:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/contrarywind/view/WheelView;->F:I

    if-ltz v2, :cond_1

    check-cast v0, Lf/c/a/f/a;

    invoke-virtual {v0}, Lf/c/a/f/a;->b()I

    move-result v0

    if-lt v2, v0, :cond_2

    .line 3
    :cond_1
    iget v0, p0, Lcom/contrarywind/view/WheelView;->F:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v2, p0, Lcom/contrarywind/view/WheelView;->m:Lf/f/a/a;

    check-cast v2, Lf/c/a/f/a;

    invoke-virtual {v2}, Lf/c/a/f/a;->b()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v2, p0, Lcom/contrarywind/view/WheelView;->m:Lf/f/a/a;

    check-cast v2, Lf/c/a/f/a;

    invoke-virtual {v2}, Lf/c/a/f/a;->b()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 4
    :cond_2
    iget v0, p0, Lcom/contrarywind/view/WheelView;->F:I

    iget-object v2, p0, Lcom/contrarywind/view/WheelView;->m:Lf/f/a/a;

    check-cast v2, Lf/c/a/f/a;

    invoke-virtual {v2}, Lf/c/a/f/a;->b()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->c:Landroid/os/Handler;

    return-object v0
.end method

.method public getInitPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/contrarywind/view/WheelView;->E:I

    return v0
.end method

.method public getItemHeight()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/contrarywind/view/WheelView;->s:F

    return v0
.end method

.method public getItemsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->m:Lf/f/a/a;

    if-eqz v0, :cond_0

    check-cast v0, Lf/c/a/f/a;

    invoke-virtual {v0}, Lf/c/a/f/a;->b()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTotalScrollY()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/contrarywind/view/WheelView;->D:F

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 1
    iget-object v1, v0, Lcom/contrarywind/view/WheelView;->m:Lf/f/a/a;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, v0, Lcom/contrarywind/view/WheelView;->E:I

    const/4 v8, 0x0

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, v0, Lcom/contrarywind/view/WheelView;->m:Lf/f/a/a;

    check-cast v2, Lf/c/a/f/a;

    invoke-virtual {v2}, Lf/c/a/f/a;->b()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/contrarywind/view/WheelView;->E:I

    .line 3
    iget v2, v0, Lcom/contrarywind/view/WheelView;->D:F

    iget v3, v0, Lcom/contrarywind/view/WheelView;->s:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 4
    :try_start_0
    iget-object v3, v0, Lcom/contrarywind/view/WheelView;->m:Lf/f/a/a;
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    check-cast v3, Lf/c/a/f/a;

    :try_start_1
    invoke-virtual {v3}, Lf/c/a/f/a;->b()I

    move-result v3

    rem-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Lcom/contrarywind/view/WheelView;->G:I
    :try_end_1
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 5
    :goto_0
    iget-boolean v1, v0, Lcom/contrarywind/view/WheelView;->z:Z

    if-nez v1, :cond_2

    .line 6
    iget v1, v0, Lcom/contrarywind/view/WheelView;->G:I

    if-gez v1, :cond_1

    .line 7
    iput v8, v0, Lcom/contrarywind/view/WheelView;->G:I

    .line 8
    :cond_1
    iget v1, v0, Lcom/contrarywind/view/WheelView;->G:I

    iget-object v2, v0, Lcom/contrarywind/view/WheelView;->m:Lf/f/a/a;

    check-cast v2, Lf/c/a/f/a;

    invoke-virtual {v2}, Lf/c/a/f/a;->b()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_4

    .line 9
    iget-object v1, v0, Lcom/contrarywind/view/WheelView;->m:Lf/f/a/a;

    check-cast v1, Lf/c/a/f/a;

    invoke-virtual {v1}, Lf/c/a/f/a;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/contrarywind/view/WheelView;->G:I

    goto :goto_1

    .line 10
    :cond_2
    iget v1, v0, Lcom/contrarywind/view/WheelView;->G:I

    if-gez v1, :cond_3

    .line 11
    iget-object v1, v0, Lcom/contrarywind/view/WheelView;->m:Lf/f/a/a;

    check-cast v1, Lf/c/a/f/a;

    invoke-virtual {v1}, Lf/c/a/f/a;->b()I

    move-result v1

    iget v2, v0, Lcom/contrarywind/view/WheelView;->G:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/contrarywind/view/WheelView;->G:I

    .line 12
    :cond_3
    iget v1, v0, Lcom/contrarywind/view/WheelView;->G:I

    iget-object v2, v0, Lcom/contrarywind/view/WheelView;->m:Lf/f/a/a;

    check-cast v2, Lf/c/a/f/a;

    invoke-virtual {v2}, Lf/c/a/f/a;->b()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_4

    .line 13
    iget v1, v0, Lcom/contrarywind/view/WheelView;->G:I

    iget-object v2, v0, Lcom/contrarywind/view/WheelView;->m:Lf/f/a/a;

    check-cast v2, Lf/c/a/f/a;

    invoke-virtual {v2}, Lf/c/a/f/a;->b()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/contrarywind/view/WheelView;->G:I

    .line 14
    :cond_4
    :goto_1
    iget v1, v0, Lcom/contrarywind/view/WheelView;->D:F

    iget v2, v0, Lcom/contrarywind/view/WheelView;->s:F

    rem-float v9, v1, v2

    .line 15
    iget-object v1, v0, Lcom/contrarywind/view/WheelView;->a:Lcom/contrarywind/view/WheelView$b;

    sget-object v2, Lcom/contrarywind/view/WheelView$b;->b:Lcom/contrarywind/view/WheelView$b;

    const/high16 v3, 0x41200000    # 10.0f

    const/4 v10, 0x0

    if-ne v1, v2, :cond_7

    .line 16
    iget-object v1, v0, Lcom/contrarywind/view/WheelView;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 17
    iget v1, v0, Lcom/contrarywind/view/WheelView;->J:I

    iget v2, v0, Lcom/contrarywind/view/WheelView;->p:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    goto :goto_2

    .line 18
    :cond_5
    iget v1, v0, Lcom/contrarywind/view/WheelView;->J:I

    iget v2, v0, Lcom/contrarywind/view/WheelView;->p:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x4

    :goto_2
    add-int/lit8 v1, v1, -0xc

    int-to-float v1, v1

    cmpg-float v2, v1, v10

    if-gtz v2, :cond_6

    const/high16 v11, 0x41200000    # 10.0f

    goto :goto_3

    :cond_6
    move v11, v1

    .line 19
    :goto_3
    iget v1, v0, Lcom/contrarywind/view/WheelView;->J:I

    int-to-float v1, v1

    sub-float v12, v1, v11

    .line 20
    iget v5, v0, Lcom/contrarywind/view/WheelView;->A:F

    iget-object v6, v0, Lcom/contrarywind/view/WheelView;->l:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v11

    move v3, v5

    move v4, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 21
    iget v5, v0, Lcom/contrarywind/view/WheelView;->B:F

    iget-object v6, v0, Lcom/contrarywind/view/WheelView;->l:Landroid/graphics/Paint;

    move v3, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    .line 22
    :cond_7
    sget-object v2, Lcom/contrarywind/view/WheelView$b;->c:Lcom/contrarywind/view/WheelView$b;

    if-ne v1, v2, :cond_a

    .line 23
    iget-object v1, v0, Lcom/contrarywind/view/WheelView;->l:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 24
    iget-object v1, v0, Lcom/contrarywind/view/WheelView;->l:Landroid/graphics/Paint;

    iget v2, v0, Lcom/contrarywind/view/WheelView;->x:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 25
    iget-object v1, v0, Lcom/contrarywind/view/WheelView;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/high16 v2, 0x41400000    # 12.0f

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v1, :cond_8

    .line 26
    iget v1, v0, Lcom/contrarywind/view/WheelView;->J:I

    iget v5, v0, Lcom/contrarywind/view/WheelView;->p:I

    sub-int/2addr v1, v5

    int-to-float v1, v1

    div-float/2addr v1, v4

    goto :goto_4

    .line 27
    :cond_8
    iget v1, v0, Lcom/contrarywind/view/WheelView;->J:I

    iget v5, v0, Lcom/contrarywind/view/WheelView;->p:I

    sub-int/2addr v1, v5

    int-to-float v1, v1

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v1, v5

    :goto_4
    sub-float/2addr v1, v2

    cmpg-float v2, v1, v10

    if-gtz v2, :cond_9

    goto :goto_5

    :cond_9
    move v3, v1

    .line 28
    :goto_5
    iget v1, v0, Lcom/contrarywind/view/WheelView;->J:I

    int-to-float v1, v1

    sub-float/2addr v1, v3

    sub-float/2addr v1, v3

    .line 29
    iget v2, v0, Lcom/contrarywind/view/WheelView;->s:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const v2, 0x3fe66666    # 1.8f

    div-float/2addr v1, v2

    .line 30
    iget v2, v0, Lcom/contrarywind/view/WheelView;->J:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    iget v3, v0, Lcom/contrarywind/view/WheelView;->I:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    iget-object v4, v0, Lcom/contrarywind/view/WheelView;->l:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_6

    :cond_a
    const/4 v2, 0x0

    .line 31
    iget v5, v0, Lcom/contrarywind/view/WheelView;->A:F

    iget v1, v0, Lcom/contrarywind/view/WheelView;->J:I

    int-to-float v4, v1

    iget-object v6, v0, Lcom/contrarywind/view/WheelView;->l:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 32
    iget v5, v0, Lcom/contrarywind/view/WheelView;->B:F

    iget v1, v0, Lcom/contrarywind/view/WheelView;->J:I

    int-to-float v4, v1

    iget-object v6, v0, Lcom/contrarywind/view/WheelView;->l:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 33
    :goto_6
    iget-object v1, v0, Lcom/contrarywind/view/WheelView;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-boolean v1, v0, Lcom/contrarywind/view/WheelView;->g:Z

    if-eqz v1, :cond_d

    .line 34
    iget v1, v0, Lcom/contrarywind/view/WheelView;->J:I

    iget-object v2, v0, Lcom/contrarywind/view/WheelView;->k:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/contrarywind/view/WheelView;->n:Ljava/lang/String;

    if-eqz v3, :cond_b

    .line 35
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_b

    .line 36
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 37
    new-array v5, v4, [F

    .line 38
    invoke-virtual {v2, v3, v5}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    if-ge v2, v4, :cond_c

    .line 39
    aget v6, v5, v2

    float-to-double v11, v6

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v6, v11

    add-int/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_b
    const/4 v3, 0x0

    :cond_c
    sub-int/2addr v1, v3

    .line 40
    iget-object v2, v0, Lcom/contrarywind/view/WheelView;->n:Ljava/lang/String;

    int-to-float v1, v1

    iget v3, v0, Lcom/contrarywind/view/WheelView;->S:F

    sub-float/2addr v1, v3

    iget v3, v0, Lcom/contrarywind/view/WheelView;->C:F

    iget-object v4, v0, Lcom/contrarywind/view/WheelView;->k:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_d
    const/4 v1, 0x0

    .line 41
    :goto_8
    iget v2, v0, Lcom/contrarywind/view/WheelView;->H:I

    if-ge v1, v2, :cond_22

    .line 42
    iget v3, v0, Lcom/contrarywind/view/WheelView;->G:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, v1

    sub-int/2addr v3, v2

    .line 43
    iget-boolean v2, v0, Lcom/contrarywind/view/WheelView;->z:Z

    const-string v4, ""

    if-eqz v2, :cond_e

    .line 44
    invoke-virtual {v0, v3}, Lcom/contrarywind/view/WheelView;->c(I)I

    move-result v2

    .line 45
    iget-object v3, v0, Lcom/contrarywind/view/WheelView;->m:Lf/f/a/a;

    check-cast v3, Lf/c/a/f/a;

    invoke-virtual {v3, v2}, Lf/c/a/f/a;->a(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_a

    :cond_e
    if-gez v3, :cond_f

    :goto_9
    move-object v2, v4

    goto :goto_a

    .line 46
    :cond_f
    iget-object v2, v0, Lcom/contrarywind/view/WheelView;->m:Lf/f/a/a;

    check-cast v2, Lf/c/a/f/a;

    invoke-virtual {v2}, Lf/c/a/f/a;->b()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v3, v2, :cond_10

    goto :goto_9

    .line 47
    :cond_10
    iget-object v2, v0, Lcom/contrarywind/view/WheelView;->m:Lf/f/a/a;

    check-cast v2, Lf/c/a/f/a;

    invoke-virtual {v2, v3}, Lf/c/a/f/a;->a(I)Ljava/lang/Object;

    move-result-object v2

    .line 48
    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 49
    iget v3, v0, Lcom/contrarywind/view/WheelView;->s:F

    int-to-float v5, v1

    mul-float v3, v3, v5

    sub-float/2addr v3, v9

    iget v5, v0, Lcom/contrarywind/view/WheelView;->K:I

    int-to-float v5, v5

    div-float/2addr v3, v5

    float-to-double v5, v3

    const-wide v11, 0x4056800000000000L    # 90.0

    const-wide v13, 0x400921fb54442d18L    # Math.PI

    div-double v13, v5, v13

    const-wide v15, 0x4066800000000000L    # 180.0

    mul-double v13, v13, v15

    sub-double/2addr v11, v13

    double-to-float v3, v11

    const/high16 v11, 0x42b40000    # 90.0f

    cmpl-float v12, v3, v11

    if-gtz v12, :cond_21

    const/high16 v12, -0x3d4c0000    # -90.0f

    cmpg-float v12, v3, v12

    if-gez v12, :cond_11

    goto/16 :goto_14

    .line 50
    :cond_11
    iget-boolean v12, v0, Lcom/contrarywind/view/WheelView;->g:Z

    if-nez v12, :cond_12

    iget-object v12, v0, Lcom/contrarywind/view/WheelView;->n:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_12

    invoke-virtual {v0, v2}, Lcom/contrarywind/view/WheelView;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_12

    .line 51
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Lcom/contrarywind/view/WheelView;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/contrarywind/view/WheelView;->n:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    .line 52
    :cond_12
    invoke-virtual {v0, v2}, Lcom/contrarywind/view/WheelView;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 53
    :goto_b
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v12

    div-float/2addr v12, v11

    float-to-double v11, v12

    const-wide v13, 0x400199999999999aL    # 2.2

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-float v11, v11

    .line 54
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 55
    iget-object v13, v0, Lcom/contrarywind/view/WheelView;->k:Landroid/graphics/Paint;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v13, v2, v8, v14, v12}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 56
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v13

    .line 57
    iget v14, v0, Lcom/contrarywind/view/WheelView;->o:I

    .line 58
    :goto_c
    iget v15, v0, Lcom/contrarywind/view/WheelView;->J:I

    if-le v13, v15, :cond_13

    add-int/lit8 v14, v14, -0x1

    .line 59
    iget-object v13, v0, Lcom/contrarywind/view/WheelView;->k:Landroid/graphics/Paint;

    int-to-float v15, v14

    invoke-virtual {v13, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 60
    iget-object v13, v0, Lcom/contrarywind/view/WheelView;->k:Landroid/graphics/Paint;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v13, v2, v8, v15, v12}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 61
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v13

    goto :goto_c

    .line 62
    :cond_13
    iget-object v12, v0, Lcom/contrarywind/view/WheelView;->j:Landroid/graphics/Paint;

    int-to-float v13, v14

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 63
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 64
    iget-object v13, v0, Lcom/contrarywind/view/WheelView;->k:Landroid/graphics/Paint;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v13, v2, v8, v14, v12}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 65
    iget v13, v0, Lcom/contrarywind/view/WheelView;->P:I

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    const/16 v10, 0x11

    const/4 v8, 0x5

    const/4 v14, 0x3

    if-eq v13, v14, :cond_18

    if-eq v13, v8, :cond_17

    if-eq v13, v10, :cond_14

    goto :goto_e

    .line 66
    :cond_14
    iget-boolean v13, v0, Lcom/contrarywind/view/WheelView;->f:Z

    if-nez v13, :cond_16

    iget-object v13, v0, Lcom/contrarywind/view/WheelView;->n:Ljava/lang/String;

    if-eqz v13, :cond_16

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_16

    iget-boolean v13, v0, Lcom/contrarywind/view/WheelView;->g:Z

    if-nez v13, :cond_15

    goto :goto_d

    .line 67
    :cond_15
    iget v13, v0, Lcom/contrarywind/view/WheelView;->J:I

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    sub-int/2addr v13, v12

    int-to-double v12, v13

    const-wide/high16 v18, 0x3fd0000000000000L    # 0.25

    mul-double v12, v12, v18

    double-to-int v12, v12

    iput v12, v0, Lcom/contrarywind/view/WheelView;->Q:I

    goto :goto_e

    .line 68
    :cond_16
    :goto_d
    iget v13, v0, Lcom/contrarywind/view/WheelView;->J:I

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    sub-int/2addr v13, v12

    int-to-double v12, v13

    mul-double v12, v12, v16

    double-to-int v12, v12

    iput v12, v0, Lcom/contrarywind/view/WheelView;->Q:I

    goto :goto_e

    .line 69
    :cond_17
    iget v13, v0, Lcom/contrarywind/view/WheelView;->J:I

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    sub-int/2addr v13, v12

    iget v12, v0, Lcom/contrarywind/view/WheelView;->S:F

    float-to-int v12, v12

    sub-int/2addr v13, v12

    iput v13, v0, Lcom/contrarywind/view/WheelView;->Q:I

    :goto_e
    const/4 v12, 0x0

    goto :goto_f

    :cond_18
    const/4 v12, 0x0

    .line 70
    iput v12, v0, Lcom/contrarywind/view/WheelView;->Q:I

    .line 71
    :goto_f
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 72
    iget-object v15, v0, Lcom/contrarywind/view/WheelView;->j:Landroid/graphics/Paint;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v15, v2, v12, v10, v13}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 73
    iget v10, v0, Lcom/contrarywind/view/WheelView;->P:I

    if-eq v10, v14, :cond_1d

    if-eq v10, v8, :cond_1c

    const/16 v8, 0x11

    if-eq v10, v8, :cond_19

    goto :goto_11

    .line 74
    :cond_19
    iget-boolean v8, v0, Lcom/contrarywind/view/WheelView;->f:Z

    if-nez v8, :cond_1b

    iget-object v8, v0, Lcom/contrarywind/view/WheelView;->n:Ljava/lang/String;

    if-eqz v8, :cond_1b

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    iget-boolean v4, v0, Lcom/contrarywind/view/WheelView;->g:Z

    if-nez v4, :cond_1a

    goto :goto_10

    .line 75
    :cond_1a
    iget v4, v0, Lcom/contrarywind/view/WheelView;->J:I

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v8

    sub-int/2addr v4, v8

    int-to-double v12, v4

    const-wide/high16 v14, 0x3fd0000000000000L    # 0.25

    mul-double v12, v12, v14

    double-to-int v4, v12

    iput v4, v0, Lcom/contrarywind/view/WheelView;->R:I

    goto :goto_11

    .line 76
    :cond_1b
    :goto_10
    iget v4, v0, Lcom/contrarywind/view/WheelView;->J:I

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v8

    sub-int/2addr v4, v8

    int-to-double v12, v4

    mul-double v12, v12, v16

    double-to-int v4, v12

    iput v4, v0, Lcom/contrarywind/view/WheelView;->R:I

    goto :goto_11

    .line 77
    :cond_1c
    iget v4, v0, Lcom/contrarywind/view/WheelView;->J:I

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v8

    sub-int/2addr v4, v8

    iget v8, v0, Lcom/contrarywind/view/WheelView;->S:F

    float-to-int v8, v8

    sub-int/2addr v4, v8

    iput v4, v0, Lcom/contrarywind/view/WheelView;->R:I

    goto :goto_11

    :cond_1d
    const/4 v4, 0x0

    .line 78
    iput v4, v0, Lcom/contrarywind/view/WheelView;->R:I

    .line 79
    :goto_11
    iget v4, v0, Lcom/contrarywind/view/WheelView;->K:I

    int-to-double v12, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    iget v4, v0, Lcom/contrarywind/view/WheelView;->K:I

    move v10, v9

    int-to-double v8, v4

    mul-double v14, v14, v8

    sub-double/2addr v12, v14

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    iget v4, v0, Lcom/contrarywind/view/WheelView;->q:I

    int-to-double v14, v4

    mul-double v8, v8, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v14

    sub-double/2addr v12, v8

    double-to-float v4, v12

    const/4 v8, 0x0

    .line 80
    invoke-virtual {v7, v8, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 81
    iget v8, v0, Lcom/contrarywind/view/WheelView;->A:F

    const v9, 0x3f4ccccd    # 0.8f

    const/high16 v12, 0x3f800000    # 1.0f

    cmpg-float v13, v4, v8

    if-gtz v13, :cond_1e

    iget v13, v0, Lcom/contrarywind/view/WheelView;->q:I

    int-to-float v13, v13

    add-float/2addr v13, v4

    cmpl-float v8, v13, v8

    if-ltz v8, :cond_1e

    .line 82
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 83
    iget v8, v0, Lcom/contrarywind/view/WheelView;->J:I

    int-to-float v8, v8

    iget v13, v0, Lcom/contrarywind/view/WheelView;->A:F

    sub-float/2addr v13, v4

    const/4 v14, 0x0

    invoke-virtual {v7, v14, v14, v8, v13}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 84
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    double-to-float v8, v13

    mul-float v8, v8, v9

    invoke-virtual {v7, v12, v8}, Landroid/graphics/Canvas;->scale(FF)V

    .line 85
    invoke-virtual {v0, v11, v3}, Lcom/contrarywind/view/WheelView;->f(FF)V

    .line 86
    iget v3, v0, Lcom/contrarywind/view/WheelView;->R:I

    int-to-float v3, v3

    iget v8, v0, Lcom/contrarywind/view/WheelView;->q:I

    int-to-float v8, v8

    iget-object v9, v0, Lcom/contrarywind/view/WheelView;->j:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v3, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 87
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 88
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 89
    iget v3, v0, Lcom/contrarywind/view/WheelView;->A:F

    sub-float/2addr v3, v4

    iget v4, v0, Lcom/contrarywind/view/WheelView;->J:I

    int-to-float v4, v4

    iget v8, v0, Lcom/contrarywind/view/WheelView;->s:F

    float-to-int v8, v8

    int-to-float v8, v8

    const/4 v9, 0x0

    invoke-virtual {v7, v9, v3, v4, v8}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 90
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v3, v3, v12

    invoke-virtual {v7, v12, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 91
    iget v3, v0, Lcom/contrarywind/view/WheelView;->Q:I

    int-to-float v3, v3

    iget v4, v0, Lcom/contrarywind/view/WheelView;->q:I

    int-to-float v4, v4

    iget v5, v0, Lcom/contrarywind/view/WheelView;->S:F

    sub-float/2addr v4, v5

    iget-object v5, v0, Lcom/contrarywind/view/WheelView;->k:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 92
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    const/4 v13, 0x0

    const/4 v14, 0x0

    goto/16 :goto_13

    .line 93
    :cond_1e
    iget v8, v0, Lcom/contrarywind/view/WheelView;->B:F

    cmpg-float v13, v4, v8

    if-gtz v13, :cond_1f

    iget v13, v0, Lcom/contrarywind/view/WheelView;->q:I

    int-to-float v13, v13

    add-float/2addr v13, v4

    cmpl-float v8, v13, v8

    if-ltz v8, :cond_1f

    .line 94
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 95
    iget v8, v0, Lcom/contrarywind/view/WheelView;->J:I

    int-to-float v8, v8

    iget v13, v0, Lcom/contrarywind/view/WheelView;->B:F

    sub-float/2addr v13, v4

    const/4 v14, 0x0

    invoke-virtual {v7, v14, v14, v8, v13}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 96
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    double-to-float v8, v13

    mul-float v8, v8, v12

    invoke-virtual {v7, v12, v8}, Landroid/graphics/Canvas;->scale(FF)V

    .line 97
    iget v8, v0, Lcom/contrarywind/view/WheelView;->Q:I

    int-to-float v8, v8

    iget v13, v0, Lcom/contrarywind/view/WheelView;->q:I

    int-to-float v13, v13

    iget v14, v0, Lcom/contrarywind/view/WheelView;->S:F

    sub-float/2addr v13, v14

    iget-object v14, v0, Lcom/contrarywind/view/WheelView;->k:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v8, v13, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 98
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 99
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 100
    iget v8, v0, Lcom/contrarywind/view/WheelView;->B:F

    sub-float/2addr v8, v4

    iget v4, v0, Lcom/contrarywind/view/WheelView;->J:I

    int-to-float v4, v4

    iget v13, v0, Lcom/contrarywind/view/WheelView;->s:F

    float-to-int v13, v13

    int-to-float v13, v13

    const/4 v14, 0x0

    invoke-virtual {v7, v14, v8, v4, v13}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 101
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v4, v4, v9

    invoke-virtual {v7, v12, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 102
    invoke-virtual {v0, v11, v3}, Lcom/contrarywind/view/WheelView;->f(FF)V

    .line 103
    iget v3, v0, Lcom/contrarywind/view/WheelView;->R:I

    int-to-float v3, v3

    iget v4, v0, Lcom/contrarywind/view/WheelView;->q:I

    int-to-float v4, v4

    iget-object v5, v0, Lcom/contrarywind/view/WheelView;->j:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 104
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :goto_12
    const/4 v13, 0x0

    goto :goto_13

    :cond_1f
    const/4 v14, 0x0

    .line 105
    iget v8, v0, Lcom/contrarywind/view/WheelView;->A:F

    cmpl-float v8, v4, v8

    if-ltz v8, :cond_20

    iget v8, v0, Lcom/contrarywind/view/WheelView;->q:I

    int-to-float v13, v8

    add-float/2addr v13, v4

    iget v4, v0, Lcom/contrarywind/view/WheelView;->B:F

    cmpg-float v4, v13, v4

    if-gtz v4, :cond_20

    int-to-float v3, v8

    .line 106
    iget v4, v0, Lcom/contrarywind/view/WheelView;->S:F

    sub-float/2addr v3, v4

    .line 107
    iget v4, v0, Lcom/contrarywind/view/WheelView;->Q:I

    int-to-float v4, v4

    iget-object v5, v0, Lcom/contrarywind/view/WheelView;->k:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v4, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 108
    iget v2, v0, Lcom/contrarywind/view/WheelView;->G:I

    iget v3, v0, Lcom/contrarywind/view/WheelView;->H:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, v1

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/contrarywind/view/WheelView;->F:I

    goto :goto_12

    .line 109
    :cond_20
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 110
    iget v4, v0, Lcom/contrarywind/view/WheelView;->J:I

    iget v8, v0, Lcom/contrarywind/view/WheelView;->s:F

    float-to-int v8, v8

    const/4 v13, 0x0

    invoke-virtual {v7, v13, v13, v4, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 111
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v4, v4, v9

    invoke-virtual {v7, v12, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 112
    invoke-virtual {v0, v11, v3}, Lcom/contrarywind/view/WheelView;->f(FF)V

    .line 113
    iget v3, v0, Lcom/contrarywind/view/WheelView;->R:I

    int-to-float v3, v3

    iget v4, v0, Lcom/contrarywind/view/WheelView;->r:I

    int-to-float v4, v4

    mul-float v4, v4, v11

    add-float/2addr v4, v3

    iget v3, v0, Lcom/contrarywind/view/WheelView;->q:I

    int-to-float v3, v3

    iget-object v5, v0, Lcom/contrarywind/view/WheelView;->j:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v4, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 114
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 115
    :goto_13
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 116
    iget-object v2, v0, Lcom/contrarywind/view/WheelView;->k:Landroid/graphics/Paint;

    iget v3, v0, Lcom/contrarywind/view/WheelView;->o:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_15

    :cond_21
    :goto_14
    move v10, v9

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 117
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :goto_15
    add-int/lit8 v1, v1, 0x1

    move v9, v10

    const/4 v8, 0x0

    const/4 v10, 0x0

    goto/16 :goto_8

    :cond_22
    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/contrarywind/view/WheelView;->O:I

    .line 2
    invoke-virtual {p0}, Lcom/contrarywind/view/WheelView;->e()V

    .line 3
    iget p1, p0, Lcom/contrarywind/view/WheelView;->J:I

    iget p2, p0, Lcom/contrarywind/view/WheelView;->I:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->d:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2
    iget v1, p0, Lcom/contrarywind/view/WheelView;->E:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/contrarywind/view/WheelView;->s:F

    mul-float v1, v1, v2

    .line 3
    iget-object v2, p0, Lcom/contrarywind/view/WheelView;->m:Lf/f/a/a;

    check-cast v2, Lf/c/a/f/a;

    invoke-virtual {v2}, Lf/c/a/f/a;->b()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iget v4, p0, Lcom/contrarywind/view/WheelView;->E:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    iget v4, p0, Lcom/contrarywind/view/WheelView;->s:F

    mul-float v2, v2, v4

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    const/4 v6, 0x2

    if-eq v4, v6, :cond_1

    if-nez v0, :cond_5

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 6
    iget v1, p0, Lcom/contrarywind/view/WheelView;->K:I

    int-to-float v2, v1

    sub-float/2addr v2, v0

    int-to-float v0, v1

    div-float/2addr v2, v0

    float-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    iget v2, p0, Lcom/contrarywind/view/WheelView;->K:I

    int-to-double v7, v2

    mul-double v0, v0, v7

    .line 7
    iget v2, p0, Lcom/contrarywind/view/WheelView;->s:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v2, v4

    float-to-double v7, v4

    add-double/2addr v0, v7

    float-to-double v7, v2

    div-double/2addr v0, v7

    double-to-int v0, v0

    .line 8
    iget v1, p0, Lcom/contrarywind/view/WheelView;->D:F

    rem-float/2addr v1, v2

    add-float/2addr v1, v2

    rem-float/2addr v1, v2

    .line 9
    iget v4, p0, Lcom/contrarywind/view/WheelView;->H:I

    div-int/2addr v4, v6

    sub-int/2addr v0, v4

    int-to-float v0, v0

    mul-float v0, v0, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/contrarywind/view/WheelView;->L:I

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v6, p0, Lcom/contrarywind/view/WheelView;->N:J

    sub-long/2addr v0, v6

    const-wide/16 v6, 0x78

    cmp-long v2, v0, v6

    if-lez v2, :cond_0

    .line 11
    sget-object v0, Lcom/contrarywind/view/WheelView$a;->c:Lcom/contrarywind/view/WheelView$a;

    invoke-virtual {p0, v0}, Lcom/contrarywind/view/WheelView;->g(Lcom/contrarywind/view/WheelView$a;)V

    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, Lcom/contrarywind/view/WheelView$a;->a:Lcom/contrarywind/view/WheelView$a;

    invoke-virtual {p0, v0}, Lcom/contrarywind/view/WheelView;->g(Lcom/contrarywind/view/WheelView$a;)V

    goto :goto_0

    .line 13
    :cond_1
    iget v0, p0, Lcom/contrarywind/view/WheelView;->M:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    sub-float/2addr v0, v4

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iput v4, p0, Lcom/contrarywind/view/WheelView;->M:F

    .line 15
    iget v4, p0, Lcom/contrarywind/view/WheelView;->D:F

    add-float/2addr v4, v0

    iput v4, p0, Lcom/contrarywind/view/WheelView;->D:F

    .line 16
    iget-boolean v6, p0, Lcom/contrarywind/view/WheelView;->z:Z

    if-nez v6, :cond_5

    .line 17
    iget v6, p0, Lcom/contrarywind/view/WheelView;->s:F

    const/high16 v7, 0x3e800000    # 0.25f

    mul-float v6, v6, v7

    sub-float/2addr v4, v6

    const/4 v6, 0x0

    cmpg-float v1, v4, v1

    if-gez v1, :cond_2

    cmpg-float v1, v0, v6

    if-ltz v1, :cond_3

    :cond_2
    iget v1, p0, Lcom/contrarywind/view/WheelView;->D:F

    iget v4, p0, Lcom/contrarywind/view/WheelView;->s:F

    mul-float v4, v4, v7

    add-float/2addr v4, v1

    cmpl-float v1, v4, v2

    if-lez v1, :cond_5

    cmpl-float v1, v0, v6

    if-lez v1, :cond_5

    .line 18
    :cond_3
    iget v1, p0, Lcom/contrarywind/view/WheelView;->D:F

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/contrarywind/view/WheelView;->D:F

    const/4 v5, 0x1

    goto :goto_0

    .line 19
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/contrarywind/view/WheelView;->N:J

    .line 20
    invoke-virtual {p0}, Lcom/contrarywind/view/WheelView;->a()V

    .line 21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/contrarywind/view/WheelView;->M:F

    :cond_5
    :goto_0
    if-nez v5, :cond_6

    .line 22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_6

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_6
    return v3
.end method

.method public final setAdapter(Lf/f/a/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/contrarywind/view/WheelView;->m:Lf/f/a/a;

    .line 2
    invoke-virtual {p0}, Lcom/contrarywind/view/WheelView;->e()V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setAlphaGradient(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/contrarywind/view/WheelView;->T:Z

    return-void
.end method

.method public final setCurrentItem(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/contrarywind/view/WheelView;->F:I

    .line 2
    iput p1, p0, Lcom/contrarywind/view/WheelView;->E:I

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/contrarywind/view/WheelView;->D:F

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setCyclic(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/contrarywind/view/WheelView;->z:Z

    return-void
.end method

.method public setDividerColor(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/contrarywind/view/WheelView;->w:I

    .line 2
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setDividerType(Lcom/contrarywind/view/WheelView$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/contrarywind/view/WheelView;->a:Lcom/contrarywind/view/WheelView$b;

    return-void
.end method

.method public setDividerWidth(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/contrarywind/view/WheelView;->x:I

    .line 2
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->l:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setGravity(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/contrarywind/view/WheelView;->P:I

    return-void
.end method

.method public setIsOptions(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/contrarywind/view/WheelView;->f:Z

    return-void
.end method

.method public setItemsVisibleCount(I)V
    .locals 1

    .line 1
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    add-int/lit8 p1, p1, 0x2

    .line 2
    iput p1, p0, Lcom/contrarywind/view/WheelView;->H:I

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/contrarywind/view/WheelView;->n:Ljava/lang/String;

    return-void
.end method

.method public setLineSpacingMultiplier(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1
    iput p1, p0, Lcom/contrarywind/view/WheelView;->y:F

    .line 2
    invoke-virtual {p0}, Lcom/contrarywind/view/WheelView;->d()V

    :cond_0
    return-void
.end method

.method public final setOnItemSelectedListener(Lf/f/c/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/contrarywind/view/WheelView;->e:Lf/f/c/b;

    return-void
.end method

.method public setTextColorCenter(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/contrarywind/view/WheelView;->v:I

    .line 2
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setTextColorOut(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/contrarywind/view/WheelView;->u:I

    .line 2
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public final setTextSize(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/contrarywind/view/WheelView;->o:I

    .line 2
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->j:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3
    iget-object p1, p0, Lcom/contrarywind/view/WheelView;->k:Landroid/graphics/Paint;

    iget v0, p0, Lcom/contrarywind/view/WheelView;->o:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_0
    return-void
.end method

.method public setTextXOffset(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/contrarywind/view/WheelView;->r:I

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/contrarywind/view/WheelView;->k:Landroid/graphics/Paint;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextScaleX(F)V

    :cond_0
    return-void
.end method

.method public setTotalScrollY(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/contrarywind/view/WheelView;->D:F

    return-void
.end method

.method public final setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/contrarywind/view/WheelView;->t:Landroid/graphics/Typeface;

    .line 2
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 3
    iget-object p1, p0, Lcom/contrarywind/view/WheelView;->k:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->t:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method
