.class public Lf/j/a/a/i/b;
.super Lf/j/a/a/k/c;
.source "ClassicsHeader.java"

# interfaces
.implements Lf/j/a/a/f/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/j/a/a/k/c<",
        "Lf/j/a/a/i/b;",
        ">;",
        "Lf/j/a/a/f/f;"
    }
.end annotation


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/String;

.field public C:Ljava/lang/String;

.field public D:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/util/Date;

.field public s:Landroid/widget/TextView;

.field public t:Landroid/content/SharedPreferences;

.field public u:Ljava/text/DateFormat;

.field public v:Z

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lf/j/a/a/k/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v2, "LAST_UPDATE_TIME"

    .line 2
    iput-object v2, p0, Lf/j/a/a/i/b;->q:Ljava/lang/String;

    const/4 v2, 0x1

    .line 3
    iput-boolean v2, p0, Lf/j/a/a/i/b;->v:Z

    .line 4
    sget v2, Lf/j/a/a/b;->srl_classics_header:I

    invoke-static {p1, v2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 5
    sget v2, Lf/j/a/a/a;->srl_classics_arrow:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lf/j/a/a/k/c;->e:Landroid/widget/ImageView;

    .line 6
    sget v3, Lf/j/a/a/a;->srl_classics_update:I

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lf/j/a/a/i/b;->s:Landroid/widget/TextView;

    .line 7
    sget v4, Lf/j/a/a/a;->srl_classics_progress:I

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lf/j/a/a/k/c;->f:Landroid/widget/ImageView;

    .line 8
    sget v5, Lf/j/a/a/a;->srl_classics_title:I

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lf/j/a/a/k/c;->d:Landroid/widget/TextView;

    .line 9
    sget-object v5, Lf/j/a/a/d;->ClassicsHeader:[I

    invoke-virtual {p1, v0, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 10
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 11
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 12
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v8, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 13
    sget v9, Lf/j/a/a/d;->ClassicsHeader_srlTextTimeMarginTop:I

    const/4 v10, 0x0

    invoke-static {v10}, Lf/j/a/a/m/b;->d(F)I

    move-result v10

    invoke-virtual {v5, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 14
    sget v8, Lf/j/a/a/d;->ClassicsFooter_srlDrawableMarginRight:I

    const/high16 v9, 0x41a00000    # 20.0f

    invoke-static {v9}, Lf/j/a/a/m/b;->d(F)I

    move-result v9

    invoke-virtual {v5, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v7, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 15
    iput v8, v6, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 16
    sget v8, Lf/j/a/a/d;->ClassicsHeader_srlDrawableArrowSize:I

    iget v9, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v5, v8, v9}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v8

    iput v8, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 17
    sget v8, Lf/j/a/a/d;->ClassicsHeader_srlDrawableArrowSize:I

    iget v9, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v5, v8, v9}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v8

    iput v8, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 18
    sget v8, Lf/j/a/a/d;->ClassicsHeader_srlDrawableProgressSize:I

    iget v9, v7, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v5, v8, v9}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v8

    iput v8, v7, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 19
    sget v8, Lf/j/a/a/d;->ClassicsHeader_srlDrawableProgressSize:I

    iget v9, v7, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v5, v8, v9}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v8

    iput v8, v7, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 20
    sget v8, Lf/j/a/a/d;->ClassicsHeader_srlDrawableSize:I

    iget v9, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v5, v8, v9}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v8

    iput v8, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 21
    sget v8, Lf/j/a/a/d;->ClassicsHeader_srlDrawableSize:I

    iget v9, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v5, v8, v9}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v8

    iput v8, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 22
    sget v6, Lf/j/a/a/d;->ClassicsHeader_srlDrawableSize:I

    iget v8, v7, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v5, v6, v8}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    iput v6, v7, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 23
    sget v6, Lf/j/a/a/d;->ClassicsHeader_srlDrawableSize:I

    iget v8, v7, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v5, v6, v8}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    iput v6, v7, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 24
    sget v6, Lf/j/a/a/d;->ClassicsHeader_srlFinishDuration:I

    iget v7, p0, Lf/j/a/a/k/c;->m:I

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lf/j/a/a/k/c;->m:I

    .line 25
    sget v6, Lf/j/a/a/d;->ClassicsHeader_srlEnableLastTime:I

    iget-boolean v7, p0, Lf/j/a/a/i/b;->v:Z

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lf/j/a/a/i/b;->v:Z

    .line 26
    sget-object v6, Lf/j/a/a/g/c;->i:[Lf/j/a/a/g/c;

    sget v7, Lf/j/a/a/d;->ClassicsHeader_srlClassicsSpinnerStyle:I

    iget-object v8, p0, Lf/j/a/a/k/b;->b:Lf/j/a/a/g/c;

    iget v8, v8, Lf/j/a/a/g/c;->a:I

    invoke-virtual {v5, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    aget-object v6, v6, v7

    iput-object v6, p0, Lf/j/a/a/k/b;->b:Lf/j/a/a/g/c;

    .line 27
    sget v6, Lf/j/a/a/d;->ClassicsHeader_srlDrawableArrow:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    const v7, -0x99999a

    if-eqz v6, :cond_0

    .line 28
    iget-object v6, p0, Lf/j/a/a/k/c;->e:Landroid/widget/ImageView;

    sget v8, Lf/j/a/a/d;->ClassicsHeader_srlDrawableArrow:I

    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 29
    :cond_0
    iget-object v6, p0, Lf/j/a/a/k/c;->e:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-nez v6, :cond_1

    .line 30
    new-instance v6, Lf/j/a/a/k/a;

    invoke-direct {v6}, Lf/j/a/a/k/a;-><init>()V

    iput-object v6, p0, Lf/j/a/a/k/c;->h:Lf/j/a/a/k/d;

    .line 31
    iget-object v6, v6, Lf/j/a/a/k/d;->a:Landroid/graphics/Paint;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    iget-object v6, p0, Lf/j/a/a/k/c;->e:Landroid/widget/ImageView;

    iget-object v8, p0, Lf/j/a/a/k/c;->h:Lf/j/a/a/k/d;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 33
    :cond_1
    :goto_0
    sget v6, Lf/j/a/a/d;->ClassicsHeader_srlDrawableProgress:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 34
    iget-object v6, p0, Lf/j/a/a/k/c;->f:Landroid/widget/ImageView;

    sget v7, Lf/j/a/a/d;->ClassicsHeader_srlDrawableProgress:I

    invoke-virtual {v5, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 35
    :cond_2
    iget-object v6, p0, Lf/j/a/a/k/c;->f:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-nez v6, :cond_3

    .line 36
    new-instance v6, Lf/j/a/a/k/e;

    invoke-direct {v6}, Lf/j/a/a/k/e;-><init>()V

    iput-object v6, p0, Lf/j/a/a/k/c;->i:Lf/j/a/a/k/d;

    .line 37
    iget-object v6, v6, Lf/j/a/a/k/d;->a:Landroid/graphics/Paint;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    iget-object v6, p0, Lf/j/a/a/k/c;->f:Landroid/widget/ImageView;

    iget-object v7, p0, Lf/j/a/a/k/c;->i:Lf/j/a/a/k/d;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 39
    :cond_3
    :goto_1
    sget v6, Lf/j/a/a/d;->ClassicsHeader_srlTextSizeTitle:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 40
    iget-object v6, p0, Lf/j/a/a/k/c;->d:Landroid/widget/TextView;

    sget v7, Lf/j/a/a/d;->ClassicsHeader_srlTextSizeTitle:I

    const/high16 v8, 0x41800000    # 16.0f

    invoke-static {v8}, Lf/j/a/a/m/b;->d(F)I

    move-result v8

    invoke-virtual {v5, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v1, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 41
    :cond_4
    sget v6, Lf/j/a/a/d;->ClassicsHeader_srlTextSizeTime:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 42
    iget-object v6, p0, Lf/j/a/a/i/b;->s:Landroid/widget/TextView;

    sget v7, Lf/j/a/a/d;->ClassicsHeader_srlTextSizeTime:I

    const/high16 v8, 0x41400000    # 12.0f

    invoke-static {v8}, Lf/j/a/a/m/b;->d(F)I

    move-result v8

    invoke-virtual {v5, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v1, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 43
    :cond_5
    sget v6, Lf/j/a/a/d;->ClassicsHeader_srlPrimaryColor:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 44
    sget v6, Lf/j/a/a/d;->ClassicsHeader_srlPrimaryColor:I

    invoke-virtual {v5, v6, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-super {p0, v6}, Lf/j/a/a/k/c;->p(I)Lf/j/a/a/k/c;

    .line 45
    :cond_6
    sget v6, Lf/j/a/a/d;->ClassicsHeader_srlAccentColor:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 46
    sget v6, Lf/j/a/a/d;->ClassicsHeader_srlAccentColor:I

    invoke-virtual {v5, v6, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .line 47
    iget-object v7, p0, Lf/j/a/a/i/b;->s:Landroid/widget/TextView;

    const v8, 0xffffff

    and-int/2addr v8, v6

    const/high16 v9, -0x34000000    # -3.3554432E7f

    or-int/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    invoke-super {p0, v6}, Lf/j/a/a/k/c;->o(I)Lf/j/a/a/k/c;

    .line 49
    :cond_7
    sget v6, Lf/j/a/a/d;->ClassicsHeader_srlTextPulling:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 50
    sget v6, Lf/j/a/a/d;->ClassicsHeader_srlTextPulling:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lf/j/a/a/i/b;->w:Ljava/lang/String;

    goto :goto_2

    .line 51
    :cond_8
    sget v6, Lf/j/a/a/c;->srl_header_pulling:I

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lf/j/a/a/i/b;->w:Ljava/lang/String;

    .line 52
    :goto_2
    sget v6, Lf/j/a/a/d;->ClassicsHeader_srlTextLoading:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 53
    sget v6, Lf/j/a/a/d;->ClassicsHeader_srlTextLoading:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lf/j/a/a/i/b;->y:Ljava/lang/String;

    goto :goto_3

    .line 54
    :cond_9
    sget v6, Lf/j/a/a/c;->srl_header_loading:I

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lf/j/a/a/i/b;->y:Ljava/lang/String;

    .line 55
    :goto_3
    sget v6, Lf/j/a/a/d;->ClassicsHeader_srlTextRelease:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 56
    sget v6, Lf/j/a/a/d;->ClassicsHeader_srlTextRelease:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lf/j/a/a/i/b;->z:Ljava/lang/String;

    goto :goto_4

    .line 57
    :cond_a
    sget v6, Lf/j/a/a/c;->srl_header_release:I

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lf/j/a/a/i/b;->z:Ljava/lang/String;

    .line 58
    :goto_4
    sget v6, Lf/j/a/a/d;->ClassicsHeader_srlTextFinish:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 59
    sget v6, Lf/j/a/a/d;->ClassicsHeader_srlTextFinish:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lf/j/a/a/i/b;->A:Ljava/lang/String;

    goto :goto_5

    .line 60
    :cond_b
    sget v6, Lf/j/a/a/c;->srl_header_finish:I

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lf/j/a/a/i/b;->A:Ljava/lang/String;

    .line 61
    :goto_5
    sget v6, Lf/j/a/a/d;->ClassicsHeader_srlTextFailed:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 62
    sget v6, Lf/j/a/a/d;->ClassicsHeader_srlTextFailed:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lf/j/a/a/i/b;->B:Ljava/lang/String;

    goto :goto_6

    .line 63
    :cond_c
    sget v6, Lf/j/a/a/c;->srl_header_failed:I

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lf/j/a/a/i/b;->B:Ljava/lang/String;

    .line 64
    :goto_6
    sget v6, Lf/j/a/a/d;->ClassicsHeader_srlTextSecondary:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 65
    sget v6, Lf/j/a/a/d;->ClassicsHeader_srlTextSecondary:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lf/j/a/a/i/b;->D:Ljava/lang/String;

    goto :goto_7

    .line 66
    :cond_d
    sget v6, Lf/j/a/a/c;->srl_header_secondary:I

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lf/j/a/a/i/b;->D:Ljava/lang/String;

    .line 67
    :goto_7
    sget v6, Lf/j/a/a/d;->ClassicsHeader_srlTextRefreshing:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 68
    sget v6, Lf/j/a/a/d;->ClassicsHeader_srlTextRefreshing:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lf/j/a/a/i/b;->x:Ljava/lang/String;

    goto :goto_8

    .line 69
    :cond_e
    sget v6, Lf/j/a/a/c;->srl_header_refreshing:I

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lf/j/a/a/i/b;->x:Ljava/lang/String;

    .line 70
    :goto_8
    sget v6, Lf/j/a/a/d;->ClassicsHeader_srlTextUpdate:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 71
    sget v6, Lf/j/a/a/d;->ClassicsHeader_srlTextUpdate:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lf/j/a/a/i/b;->C:Ljava/lang/String;

    goto :goto_9

    .line 72
    :cond_f
    sget v6, Lf/j/a/a/c;->srl_header_update:I

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lf/j/a/a/i/b;->C:Ljava/lang/String;

    .line 73
    :goto_9
    new-instance v6, Ljava/text/SimpleDateFormat;

    iget-object v7, p0, Lf/j/a/a/i/b;->C:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v6, p0, Lf/j/a/a/i/b;->u:Ljava/text/DateFormat;

    .line 74
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 76
    iget-boolean v0, p0, Lf/j/a/a/i/b;->v:Z

    const/16 v5, 0x8

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    goto :goto_a

    :cond_10
    const/16 v0, 0x8

    :goto_a
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lf/j/a/a/k/c;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, p0, Lf/j/a/a/i/b;->x:Ljava/lang/String;

    goto :goto_b

    :cond_11
    iget-object v3, p0, Lf/j/a/a/i/b;->w:Ljava/lang/String;

    :goto_b
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 79
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c

    .line 80
    :cond_12
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 81
    :goto_c
    :try_start_0
    instance-of v0, p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_13

    .line 82
    move-object v0, p1

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 83
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    .line 84
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_13

    .line 85
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lf/j/a/a/i/b;->q(Ljava/util/Date;)Lf/j/a/a/i/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_d

    :catchall_0
    move-exception v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 87
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lf/j/a/a/i/b;->q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf/j/a/a/i/b;->q:Ljava/lang/String;

    const-string v0, "ClassicsHeader"

    .line 88
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lf/j/a/a/i/b;->t:Landroid/content/SharedPreferences;

    .line 89
    new-instance p1, Ljava/util/Date;

    iget-object v0, p0, Lf/j/a/a/i/b;->t:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lf/j/a/a/i/b;->q:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, p1}, Lf/j/a/a/i/b;->q(Ljava/util/Date;)Lf/j/a/a/i/b;

    :goto_d
    return-void
.end method


# virtual methods
.method public a(Lf/j/a/a/f/i;Lf/j/a/a/g/b;Lf/j/a/a/g/b;)V
    .locals 4
    .param p1    # Lf/j/a/a/f/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lf/j/a/a/g/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lf/j/a/a/g/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lf/j/a/a/k/c;->e:Landroid/widget/ImageView;

    .line 2
    iget-object p2, p0, Lf/j/a/a/i/b;->s:Landroid/widget/TextView;

    .line 3
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p3, :cond_5

    const/4 v3, 0x1

    if-eq p3, v3, :cond_7

    const/4 v1, 0x5

    if-eq p3, v1, :cond_4

    const/4 v1, 0x7

    if-eq p3, v1, :cond_3

    const/16 v0, 0x9

    if-eq p3, v0, :cond_2

    const/16 v0, 0xb

    if-eq p3, v0, :cond_2

    const/16 v0, 0xc

    if-eq p3, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-boolean p1, p0, Lf/j/a/a/i/b;->v:Z

    if-eqz p1, :cond_1

    const/4 v2, 0x4

    :cond_1
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lf/j/a/a/k/c;->d:Landroid/widget/TextView;

    iget-object p2, p0, Lf/j/a/a/i/b;->y:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p2, p0, Lf/j/a/a/k/c;->d:Landroid/widget/TextView;

    iget-object p3, p0, Lf/j/a/a/i/b;->x:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_3
    iget-object p2, p0, Lf/j/a/a/k/c;->d:Landroid/widget/TextView;

    iget-object p3, p0, Lf/j/a/a/i/b;->D:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 11
    :cond_4
    iget-object p2, p0, Lf/j/a/a/k/c;->d:Landroid/widget/TextView;

    iget-object p3, p0, Lf/j/a/a/i/b;->z:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x43340000    # 180.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 13
    :cond_5
    iget-boolean p3, p0, Lf/j/a/a/i/b;->v:Z

    if-eqz p3, :cond_6

    const/4 v2, 0x0

    :cond_6
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 14
    :cond_7
    iget-object p2, p0, Lf/j/a/a/k/c;->d:Landroid/widget/TextView;

    iget-object p3, p0, Lf/j/a/a/i/b;->w:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    :goto_0
    return-void
.end method

.method public i(Lf/j/a/a/f/i;Z)I
    .locals 2
    .param p1    # Lf/j/a/a/f/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Lf/j/a/a/k/c;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lf/j/a/a/i/b;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lf/j/a/a/i/b;->r:Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lf/j/a/a/i/b;->q(Ljava/util/Date;)Lf/j/a/a/i/b;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lf/j/a/a/k/c;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lf/j/a/a/i/b;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lf/j/a/a/k/c;->i(Lf/j/a/a/f/i;Z)I

    move-result p1

    return p1
.end method

.method public o(I)Lf/j/a/a/k/c;
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lf/j/a/a/i/b;->s:Landroid/widget/TextView;

    const v1, 0xffffff

    and-int/2addr v1, p1

    const/high16 v2, -0x34000000    # -3.3554432E7f

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2
    invoke-super {p0, p1}, Lf/j/a/a/k/c;->o(I)Lf/j/a/a/k/c;

    return-object p0
.end method

.method public q(Ljava/util/Date;)Lf/j/a/a/i/b;
    .locals 4

    .line 1
    iput-object p1, p0, Lf/j/a/a/i/b;->r:Ljava/util/Date;

    .line 2
    iget-object v0, p0, Lf/j/a/a/i/b;->s:Landroid/widget/TextView;

    iget-object v1, p0, Lf/j/a/a/i/b;->u:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lf/j/a/a/i/b;->t:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lf/j/a/a/i/b;->t:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lf/j/a/a/i/b;->q:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-object p0
.end method
