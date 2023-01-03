.class public Lf/j/a/a/h/b;
.super Lf/j/a/a/k/c;
.source "ClassicsFooter.java"

# interfaces
.implements Lf/j/a/a/f/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/j/a/a/k/c<",
        "Lf/j/a/a/h/b;",
        ">;",
        "Lf/j/a/a/f/e;"
    }
.end annotation


# instance fields
.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v1, v0}, Lf/j/a/a/k/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    iput-boolean v0, p0, Lf/j/a/a/h/b;->x:Z

    .line 3
    sget v2, Lf/j/a/a/b;->srl_classics_footer:I

    invoke-static {p1, v2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    sget v2, Lf/j/a/a/a;->srl_classics_arrow:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lf/j/a/a/k/c;->e:Landroid/widget/ImageView;

    .line 5
    sget v3, Lf/j/a/a/a;->srl_classics_progress:I

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lf/j/a/a/k/c;->f:Landroid/widget/ImageView;

    .line 6
    sget v4, Lf/j/a/a/a;->srl_classics_title:I

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lf/j/a/a/k/c;->d:Landroid/widget/TextView;

    .line 7
    sget-object v4, Lf/j/a/a/d;->ClassicsFooter:[I

    invoke-virtual {p1, v1, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 8
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 9
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 10
    sget v7, Lf/j/a/a/d;->ClassicsFooter_srlDrawableMarginRight:I

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-static {v8}, Lf/j/a/a/m/b;->d(F)I

    move-result v8

    invoke-virtual {v4, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 11
    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 12
    sget v7, Lf/j/a/a/d;->ClassicsFooter_srlDrawableArrowSize:I

    iget v8, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v4, v7, v8}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v7

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 13
    sget v7, Lf/j/a/a/d;->ClassicsFooter_srlDrawableArrowSize:I

    iget v8, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v4, v7, v8}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v7

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 14
    sget v7, Lf/j/a/a/d;->ClassicsFooter_srlDrawableProgressSize:I

    iget v8, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v4, v7, v8}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v7

    iput v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 15
    sget v7, Lf/j/a/a/d;->ClassicsFooter_srlDrawableProgressSize:I

    iget v8, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v4, v7, v8}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v7

    iput v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 16
    sget v7, Lf/j/a/a/d;->ClassicsFooter_srlDrawableSize:I

    iget v8, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v4, v7, v8}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v7

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 17
    sget v7, Lf/j/a/a/d;->ClassicsFooter_srlDrawableSize:I

    iget v8, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v4, v7, v8}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v7

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 18
    sget v5, Lf/j/a/a/d;->ClassicsFooter_srlDrawableSize:I

    iget v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v4, v5, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v5

    iput v5, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 19
    sget v5, Lf/j/a/a/d;->ClassicsFooter_srlDrawableSize:I

    iget v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v4, v5, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v5

    iput v5, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 20
    sget v5, Lf/j/a/a/d;->ClassicsFooter_srlFinishDuration:I

    iget v6, p0, Lf/j/a/a/k/c;->m:I

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lf/j/a/a/k/c;->m:I

    .line 21
    sget-object v5, Lf/j/a/a/g/c;->i:[Lf/j/a/a/g/c;

    sget v6, Lf/j/a/a/d;->ClassicsFooter_srlClassicsSpinnerStyle:I

    iget-object v7, p0, Lf/j/a/a/k/b;->b:Lf/j/a/a/g/c;

    iget v7, v7, Lf/j/a/a/g/c;->a:I

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    aget-object v5, v5, v6

    iput-object v5, p0, Lf/j/a/a/k/b;->b:Lf/j/a/a/g/c;

    .line 22
    sget v5, Lf/j/a/a/d;->ClassicsFooter_srlDrawableArrow:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    const v6, -0x99999a

    if-eqz v5, :cond_0

    .line 23
    iget-object v5, p0, Lf/j/a/a/k/c;->e:Landroid/widget/ImageView;

    sget v7, Lf/j/a/a/d;->ClassicsFooter_srlDrawableArrow:I

    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 24
    :cond_0
    iget-object v5, p0, Lf/j/a/a/k/c;->e:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_1

    .line 25
    new-instance v5, Lf/j/a/a/k/a;

    invoke-direct {v5}, Lf/j/a/a/k/a;-><init>()V

    iput-object v5, p0, Lf/j/a/a/k/c;->h:Lf/j/a/a/k/d;

    .line 26
    iget-object v5, v5, Lf/j/a/a/k/d;->a:Landroid/graphics/Paint;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 27
    iget-object v5, p0, Lf/j/a/a/k/c;->e:Landroid/widget/ImageView;

    iget-object v7, p0, Lf/j/a/a/k/c;->h:Lf/j/a/a/k/d;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 28
    :cond_1
    :goto_0
    sget v5, Lf/j/a/a/d;->ClassicsFooter_srlDrawableProgress:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 29
    iget-object v5, p0, Lf/j/a/a/k/c;->f:Landroid/widget/ImageView;

    sget v6, Lf/j/a/a/d;->ClassicsFooter_srlDrawableProgress:I

    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 30
    :cond_2
    iget-object v5, p0, Lf/j/a/a/k/c;->f:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_3

    .line 31
    new-instance v5, Lf/j/a/a/k/e;

    invoke-direct {v5}, Lf/j/a/a/k/e;-><init>()V

    iput-object v5, p0, Lf/j/a/a/k/c;->i:Lf/j/a/a/k/d;

    .line 32
    iget-object v5, v5, Lf/j/a/a/k/d;->a:Landroid/graphics/Paint;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 33
    iget-object v5, p0, Lf/j/a/a/k/c;->f:Landroid/widget/ImageView;

    iget-object v6, p0, Lf/j/a/a/k/c;->i:Lf/j/a/a/k/d;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    :cond_3
    :goto_1
    sget v5, Lf/j/a/a/d;->ClassicsFooter_srlTextSizeTitle:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 35
    iget-object v5, p0, Lf/j/a/a/k/c;->d:Landroid/widget/TextView;

    sget v6, Lf/j/a/a/d;->ClassicsFooter_srlTextSizeTitle:I

    const/high16 v7, 0x41800000    # 16.0f

    invoke-static {v7}, Lf/j/a/a/m/b;->d(F)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v0, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 36
    :cond_4
    sget v5, Lf/j/a/a/d;->ClassicsFooter_srlPrimaryColor:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 37
    sget v5, Lf/j/a/a/d;->ClassicsFooter_srlPrimaryColor:I

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-super {p0, v5}, Lf/j/a/a/k/c;->p(I)Lf/j/a/a/k/c;

    .line 38
    :cond_5
    sget v5, Lf/j/a/a/d;->ClassicsFooter_srlAccentColor:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 39
    sget v5, Lf/j/a/a/d;->ClassicsFooter_srlAccentColor:I

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-super {p0, v0}, Lf/j/a/a/k/c;->o(I)Lf/j/a/a/k/c;

    .line 40
    :cond_6
    sget v0, Lf/j/a/a/d;->ClassicsFooter_srlTextPulling:I

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 41
    sget v0, Lf/j/a/a/d;->ClassicsFooter_srlTextPulling:I

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf/j/a/a/h/b;->q:Ljava/lang/String;

    goto :goto_2

    .line 42
    :cond_7
    sget v0, Lf/j/a/a/c;->srl_footer_pulling:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf/j/a/a/h/b;->q:Ljava/lang/String;

    .line 43
    :goto_2
    sget v0, Lf/j/a/a/d;->ClassicsFooter_srlTextRelease:I

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 44
    sget v0, Lf/j/a/a/d;->ClassicsFooter_srlTextRelease:I

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf/j/a/a/h/b;->r:Ljava/lang/String;

    goto :goto_3

    .line 45
    :cond_8
    sget v0, Lf/j/a/a/c;->srl_footer_release:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf/j/a/a/h/b;->r:Ljava/lang/String;

    .line 46
    :goto_3
    sget v0, Lf/j/a/a/d;->ClassicsFooter_srlTextLoading:I

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 47
    sget v0, Lf/j/a/a/d;->ClassicsFooter_srlTextLoading:I

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf/j/a/a/h/b;->s:Ljava/lang/String;

    goto :goto_4

    .line 48
    :cond_9
    sget v0, Lf/j/a/a/c;->srl_footer_loading:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf/j/a/a/h/b;->s:Ljava/lang/String;

    .line 49
    :goto_4
    sget v0, Lf/j/a/a/d;->ClassicsFooter_srlTextRefreshing:I

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 50
    sget v0, Lf/j/a/a/d;->ClassicsFooter_srlTextRefreshing:I

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf/j/a/a/h/b;->t:Ljava/lang/String;

    goto :goto_5

    .line 51
    :cond_a
    sget v0, Lf/j/a/a/c;->srl_footer_refreshing:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf/j/a/a/h/b;->t:Ljava/lang/String;

    .line 52
    :goto_5
    sget v0, Lf/j/a/a/d;->ClassicsFooter_srlTextFinish:I

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 53
    sget v0, Lf/j/a/a/d;->ClassicsFooter_srlTextFinish:I

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf/j/a/a/h/b;->u:Ljava/lang/String;

    goto :goto_6

    .line 54
    :cond_b
    sget v0, Lf/j/a/a/c;->srl_footer_finish:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf/j/a/a/h/b;->u:Ljava/lang/String;

    .line 55
    :goto_6
    sget v0, Lf/j/a/a/d;->ClassicsFooter_srlTextFailed:I

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 56
    sget v0, Lf/j/a/a/d;->ClassicsFooter_srlTextFailed:I

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf/j/a/a/h/b;->v:Ljava/lang/String;

    goto :goto_7

    .line 57
    :cond_c
    sget v0, Lf/j/a/a/c;->srl_footer_failed:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf/j/a/a/h/b;->v:Ljava/lang/String;

    .line 58
    :goto_7
    sget v0, Lf/j/a/a/d;->ClassicsFooter_srlTextNothing:I

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 59
    sget p1, Lf/j/a/a/d;->ClassicsFooter_srlTextNothing:I

    invoke-virtual {v4, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lf/j/a/a/h/b;->w:Ljava/lang/String;

    goto :goto_8

    .line 60
    :cond_d
    sget v0, Lf/j/a/a/c;->srl_footer_nothing:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lf/j/a/a/h/b;->w:Ljava/lang/String;

    .line 61
    :goto_8
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 63
    iget-object p1, p0, Lf/j/a/a/k/c;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lf/j/a/a/h/b;->s:Ljava/lang/String;

    goto :goto_9

    :cond_e
    iget-object v0, p0, Lf/j/a/a/h/b;->q:Ljava/lang/String;

    :goto_9
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    const/16 v0, 0x8

    if-eqz p1, :cond_f

    .line 65
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a

    .line 66
    :cond_f
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_a
    return-void
.end method


# virtual methods
.method public a(Lf/j/a/a/f/i;Lf/j/a/a/g/b;Lf/j/a/a/g/b;)V
    .locals 1
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
    iget-boolean p2, p0, Lf/j/a/a/h/b;->x:Z

    if-nez p2, :cond_3

    .line 3
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eqz p2, :cond_1

    const/4 p3, 0x2

    if-eq p2, p3, :cond_2

    const/4 p3, 0x6

    if-eq p2, p3, :cond_0

    const/16 p3, 0x8

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 4
    :pswitch_0
    iget-object p2, p0, Lf/j/a/a/k/c;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lf/j/a/a/h/b;->t:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 6
    :pswitch_1
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lf/j/a/a/k/c;->d:Landroid/widget/TextView;

    iget-object p2, p0, Lf/j/a/a/h/b;->s:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p2, p0, Lf/j/a/a/k/c;->d:Landroid/widget/TextView;

    iget-object p3, p0, Lf/j/a/a/h/b;->r:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 11
    :cond_2
    iget-object p2, p0, Lf/j/a/a/k/c;->d:Landroid/widget/TextView;

    iget-object p3, p0, Lf/j/a/a/h/b;->q:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x43340000    # 180.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b(Lf/j/a/a/f/i;II)V
    .locals 1
    .param p1    # Lf/j/a/a/f/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lf/j/a/a/h/b;->x:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2, p3}, Lf/j/a/a/k/c;->b(Lf/j/a/a/f/i;II)V

    :cond_0
    return-void
.end method

.method public d(Z)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lf/j/a/a/h/b;->x:Z

    if-eq v0, p1, :cond_1

    .line 2
    iput-boolean p1, p0, Lf/j/a/a/h/b;->x:Z

    .line 3
    iget-object v0, p0, Lf/j/a/a/k/c;->e:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lf/j/a/a/k/c;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lf/j/a/a/h/b;->w:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x8

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lf/j/a/a/k/c;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lf/j/a/a/h/b;->q:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 7
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public i(Lf/j/a/a/f/i;Z)I
    .locals 2
    .param p1    # Lf/j/a/a/f/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lf/j/a/a/h/b;->x:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lf/j/a/a/k/c;->d:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    iget-object v1, p0, Lf/j/a/a/h/b;->u:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lf/j/a/a/h/b;->v:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-super {p0, p1, p2}, Lf/j/a/a/k/c;->i(Lf/j/a/a/f/i;Z)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public varargs setPrimaryColors([I)V
    .locals 2
    .param p1    # [I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lf/j/a/a/k/b;->b:Lf/j/a/a/g/c;

    sget-object v1, Lf/j/a/a/g/c;->f:Lf/j/a/a/g/c;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-super {p0, p1}, Lf/j/a/a/k/c;->setPrimaryColors([I)V

    :cond_0
    return-void
.end method
