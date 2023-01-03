.class public Lchuangyuan/ycj/videolibrary/utils/ParamsCreator;
.super Ljava/lang/Object;
.source "ParamsCreator.java"


# instance fields
.field public densityDpi:I

.field public screenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "window"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 3
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lchuangyuan/ycj/videolibrary/utils/ParamsCreator;->screenWidth:I

    .line 4
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 5
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 6
    iget p1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput p1, p0, Lchuangyuan/ycj/videolibrary/utils/ParamsCreator;->densityDpi:I

    return-void
.end method


# virtual methods
.method public getDefaultCircleRadius()I
    .locals 6

    .line 1
    iget v0, p0, Lchuangyuan/ycj/videolibrary/utils/ParamsCreator;->screenWidth:I

    const/16 v1, 0x578

    if-lt v0, v1, :cond_0

    const/16 v0, 0x32

    return v0

    :cond_0
    const/16 v1, 0x3e8

    const/16 v2, 0x140

    if-lt v0, v1, :cond_3

    .line 2
    iget v0, p0, Lchuangyuan/ycj/videolibrary/utils/ParamsCreator;->densityDpi:I

    const/16 v1, 0x1e0

    const/16 v3, 0x30

    if-lt v0, v1, :cond_1

    return v3

    :cond_1
    if-lt v0, v2, :cond_2

    :cond_2
    return v3

    :cond_3
    const/16 v1, 0x2bc

    const/16 v3, 0xa0

    const/16 v4, 0xf0

    if-lt v0, v1, :cond_7

    .line 3
    iget v0, p0, Lchuangyuan/ycj/videolibrary/utils/ParamsCreator;->densityDpi:I

    const/16 v1, 0x22

    if-lt v0, v2, :cond_4

    return v1

    :cond_4
    if-lt v0, v4, :cond_5

    return v1

    :cond_5
    if-lt v0, v3, :cond_6

    :cond_6
    return v1

    :cond_7
    const/16 v1, 0x1f4

    const/16 v5, 0x1e

    if-lt v0, v1, :cond_a

    .line 4
    iget v0, p0, Lchuangyuan/ycj/videolibrary/utils/ParamsCreator;->densityDpi:I

    if-lt v0, v2, :cond_8

    return v5

    :cond_8
    if-lt v0, v4, :cond_9

    return v5

    :cond_9
    if-lt v0, v3, :cond_a

    :cond_a
    return v5
.end method

.method public getDefaultCircleSpacing()I
    .locals 6

    .line 1
    iget v0, p0, Lchuangyuan/ycj/videolibrary/utils/ParamsCreator;->screenWidth:I

    const/16 v1, 0xc

    const/16 v2, 0x578

    if-lt v0, v2, :cond_0

    return v1

    :cond_0
    const/16 v2, 0x3e8

    const/16 v3, 0x140

    if-lt v0, v2, :cond_3

    .line 2
    iget v0, p0, Lchuangyuan/ycj/videolibrary/utils/ParamsCreator;->densityDpi:I

    const/16 v2, 0x1e0

    if-lt v0, v2, :cond_1

    return v1

    :cond_1
    if-lt v0, v3, :cond_2

    :cond_2
    return v1

    :cond_3
    const/16 v1, 0x2bc

    const/16 v2, 0xa0

    const/16 v4, 0xf0

    if-lt v0, v1, :cond_7

    .line 3
    iget v0, p0, Lchuangyuan/ycj/videolibrary/utils/ParamsCreator;->densityDpi:I

    const/16 v1, 0x8

    if-lt v0, v3, :cond_4

    return v1

    :cond_4
    if-lt v0, v4, :cond_5

    return v1

    :cond_5
    if-lt v0, v2, :cond_6

    :cond_6
    return v1

    :cond_7
    const/16 v1, 0x1f4

    const/4 v5, 0x5

    if-lt v0, v1, :cond_a

    .line 4
    iget v0, p0, Lchuangyuan/ycj/videolibrary/utils/ParamsCreator;->densityDpi:I

    if-lt v0, v3, :cond_8

    return v5

    :cond_8
    if-lt v0, v4, :cond_9

    return v5

    :cond_9
    if-lt v0, v2, :cond_a

    :cond_a
    return v5
.end method
