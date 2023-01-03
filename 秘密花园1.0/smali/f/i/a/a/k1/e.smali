.class public Lf/i/a/a/k1/e;
.super Landroid/widget/FrameLayout;
.source "PlayerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/k1/e$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/widget/FrameLayout;

.field public final b:Landroid/view/View;

.field public final c:Lf/i/a/a/f1/a;

.field public final d:Landroidx/appcompat/widget/AppCompatImageView;

.field public final e:Lcom/google/android/exoplayer2/ui/SubtitleView;

.field public final f:Lf/i/a/a/k1/d;

.field public final g:Lf/i/a/a/k1/e$b;

.field public final h:Landroid/widget/FrameLayout;

.field public i:Lf/i/a/a/l0;

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:I

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 1
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v3, 0x0

    .line 2
    iput-boolean v3, v1, Lf/i/a/a/k1/e;->p:Z

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->isInEditMode()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 4
    iput-object v5, v1, Lf/i/a/a/k1/e;->a:Landroid/widget/FrameLayout;

    .line 5
    iput-object v5, v1, Lf/i/a/a/k1/e;->b:Landroid/view/View;

    .line 6
    iput-object v5, v1, Lf/i/a/a/k1/e;->c:Lf/i/a/a/f1/a;

    .line 7
    iput-object v5, v1, Lf/i/a/a/k1/e;->d:Landroidx/appcompat/widget/AppCompatImageView;

    .line 8
    iput-object v5, v1, Lf/i/a/a/k1/e;->e:Lcom/google/android/exoplayer2/ui/SubtitleView;

    .line 9
    iput-object v5, v1, Lf/i/a/a/k1/e;->f:Lf/i/a/a/k1/d;

    .line 10
    iput-object v5, v1, Lf/i/a/a/k1/e;->g:Lf/i/a/a/k1/e$b;

    .line 11
    iput-object v5, v1, Lf/i/a/a/k1/e;->h:Landroid/widget/FrameLayout;

    .line 12
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 13
    sget v0, Lf/i/a/a/m1/h0;->a:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_0

    .line 14
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 15
    sget v3, Lchuangyuan/ycj/videolibrary/R$drawable;->exo_edit_mode_logo:I

    invoke-virtual {v0, v3, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 16
    sget v3, Lchuangyuan/ycj/videolibrary/R$color;->exo_edit_mode_background_color:I

    invoke-virtual {v0, v3, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 18
    sget v3, Lchuangyuan/ycj/videolibrary/R$drawable;->exo_edit_mode_logo:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 19
    sget v3, Lchuangyuan/ycj/videolibrary/R$color;->exo_edit_mode_background_color:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 20
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void

    .line 21
    :cond_1
    sget v4, Lchuangyuan/ycj/videolibrary/R$layout;->simple_exo_view:I

    const/4 v6, 0x4

    const/16 v7, 0x1388

    const/4 v8, 0x1

    if-eqz v2, :cond_2

    .line 22
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    sget-object v10, Lchuangyuan/ycj/videolibrary/R$styleable;->PlayerView:[I

    invoke-virtual {v9, v2, v10, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 23
    :try_start_0
    sget v10, Lchuangyuan/ycj/videolibrary/R$styleable;->PlayerView_shutter_background_color:I

    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v10

    .line 24
    sget v11, Lchuangyuan/ycj/videolibrary/R$styleable;->PlayerView_shutter_background_color:I

    invoke-virtual {v9, v11, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    .line 25
    sget v12, Lchuangyuan/ycj/videolibrary/R$styleable;->PlayerView_player_layout_id:I

    invoke-virtual {v9, v12, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 26
    sget v12, Lchuangyuan/ycj/videolibrary/R$styleable;->PlayerView_use_artwork:I

    invoke-virtual {v9, v12, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    .line 27
    sget v13, Lchuangyuan/ycj/videolibrary/R$styleable;->PlayerView_use_controller:I

    invoke-virtual {v9, v13, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    .line 28
    sget v14, Lchuangyuan/ycj/videolibrary/R$styleable;->PlayerView_surface_type:I

    invoke-virtual {v9, v14, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    .line 29
    sget v15, Lchuangyuan/ycj/videolibrary/R$styleable;->PlayerView_resize_mode:I

    invoke-virtual {v9, v15, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 30
    sget v15, Lchuangyuan/ycj/videolibrary/R$styleable;->PlayerView_show_timeout:I

    .line 31
    invoke-virtual {v9, v15, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 32
    sget v15, Lchuangyuan/ycj/videolibrary/R$styleable;->PlayerView_hide_on_touch:I

    .line 33
    invoke-virtual {v9, v15, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    .line 34
    sget v3, Lchuangyuan/ycj/videolibrary/R$styleable;->PlayerView_auto_show:I

    invoke-virtual {v9, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 35
    sget v5, Lchuangyuan/ycj/videolibrary/R$styleable;->PlayerView_keep_content_on_player_reset:I

    iget-boolean v8, v1, Lf/i/a/a/k1/e;->l:Z

    .line 36
    invoke-virtual {v9, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v1, Lf/i/a/a/k1/e;->l:Z

    .line 37
    sget v5, Lchuangyuan/ycj/videolibrary/R$styleable;->PlayerView_hide_during_ads:I

    const/4 v8, 0x1

    .line 38
    invoke-virtual {v9, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    move v8, v5

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 40
    throw v0

    :cond_2
    const/4 v3, 0x1

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x1

    .line 41
    :goto_1
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v5, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, v1, Lf/i/a/a/k1/e;->q:Landroid/widget/FrameLayout;

    .line 42
    new-instance v4, Lf/i/a/a/k1/e$b;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lf/i/a/a/k1/e$b;-><init>(Lf/i/a/a/k1/e;Lf/i/a/a/k1/e$a;)V

    iput-object v4, v1, Lf/i/a/a/k1/e;->g:Lf/i/a/a/k1/e$b;

    const/high16 v4, 0x40000

    .line 43
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    .line 44
    sget v4, Lchuangyuan/ycj/videolibrary/R$id;->exo_content_frame:I

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, v1, Lf/i/a/a/k1/e;->a:Landroid/widget/FrameLayout;

    .line 45
    sget v4, Lchuangyuan/ycj/videolibrary/R$id;->exo_shutter:I

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v1, Lf/i/a/a/k1/e;->b:Landroid/view/View;

    if-eqz v4, :cond_3

    if-eqz v10, :cond_3

    .line 46
    invoke-virtual {v4, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 47
    :cond_3
    iget-object v4, v1, Lf/i/a/a/k1/e;->a:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_6

    if-eqz v14, :cond_6

    .line 48
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x11

    const/4 v9, -0x2

    invoke-direct {v4, v9, v9, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/4 v5, 0x2

    if-ne v14, v5, :cond_4

    .line 49
    new-instance v9, Lf/i/a/a/f1/d;

    invoke-direct {v9, v0}, Lf/i/a/a/f1/d;-><init>(Landroid/content/Context;)V

    goto :goto_2

    :cond_4
    new-instance v9, Lf/i/a/a/f1/c;

    invoke-direct {v9, v0}, Lf/i/a/a/f1/c;-><init>(Landroid/content/Context;)V

    :goto_2
    iput-object v9, v1, Lf/i/a/a/k1/e;->c:Lf/i/a/a/f1/a;

    if-ne v14, v5, :cond_5

    .line 50
    check-cast v9, Lf/i/a/a/f1/d;

    const/4 v5, 0x1

    invoke-virtual {v9, v5}, Lf/i/a/a/f1/d;->setTakeOverSurfaceTexture(Z)V

    goto :goto_3

    :cond_5
    const/4 v5, 0x1

    .line 51
    :goto_3
    iget-object v9, v1, Lf/i/a/a/k1/e;->c:Lf/i/a/a/f1/a;

    invoke-interface {v9}, Lf/i/a/a/f1/a;->getRenderView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    iget-object v4, v1, Lf/i/a/a/k1/e;->a:Landroid/widget/FrameLayout;

    iget-object v9, v1, Lf/i/a/a/k1/e;->c:Lf/i/a/a/f1/a;

    invoke-interface {v9}, Lf/i/a/a/f1/a;->getRenderView()Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 53
    iget-object v4, v1, Lf/i/a/a/k1/e;->c:Lf/i/a/a/f1/a;

    invoke-interface {v4, v6}, Lf/i/a/a/f1/a;->b(I)V

    goto :goto_4

    :cond_6
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 54
    iput-object v4, v1, Lf/i/a/a/k1/e;->c:Lf/i/a/a/f1/a;

    .line 55
    :goto_4
    sget v4, Lchuangyuan/ycj/videolibrary/R$id;->exo_overlay:I

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, v1, Lf/i/a/a/k1/e;->h:Landroid/widget/FrameLayout;

    .line 56
    sget v4, Lchuangyuan/ycj/videolibrary/R$id;->exo_artwork:I

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v4, v1, Lf/i/a/a/k1/e;->d:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v12, :cond_7

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    goto :goto_5

    :cond_7
    const/4 v4, 0x0

    .line 57
    :goto_5
    iput-boolean v4, v1, Lf/i/a/a/k1/e;->k:Z

    .line 58
    sget v4, Lchuangyuan/ycj/videolibrary/R$id;->exo_subtitles:I

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/ui/SubtitleView;

    iput-object v4, v1, Lf/i/a/a/k1/e;->e:Lcom/google/android/exoplayer2/ui/SubtitleView;

    if-eqz v4, :cond_8

    .line 59
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/ui/SubtitleView;->b()V

    .line 60
    iget-object v4, v1, Lf/i/a/a/k1/e;->e:Lcom/google/android/exoplayer2/ui/SubtitleView;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/ui/SubtitleView;->c()V

    .line 61
    :cond_8
    sget v4, Lchuangyuan/ycj/videolibrary/R$id;->exo_controller:I

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lf/i/a/a/k1/d;

    .line 62
    sget v6, Lchuangyuan/ycj/videolibrary/R$id;->exo_controller_placeholder:I

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v4, :cond_9

    .line 63
    iput-object v4, v1, Lf/i/a/a/k1/e;->f:Lf/i/a/a/k1/d;

    const/4 v10, 0x0

    goto :goto_6

    :cond_9
    if-eqz v6, :cond_a

    .line 64
    new-instance v4, Lf/i/a/a/k1/d;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v4, v0, v9, v10, v2}, Lf/i/a/a/k1/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V

    iput-object v4, v1, Lf/i/a/a/k1/e;->f:Lf/i/a/a/k1/d;

    .line 65
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 67
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 68
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 69
    iget-object v4, v1, Lf/i/a/a/k1/e;->f:Lf/i/a/a/k1/d;

    invoke-virtual {v0, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_6

    :cond_a
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 70
    iput-object v9, v1, Lf/i/a/a/k1/e;->f:Lf/i/a/a/k1/d;

    .line 71
    :goto_6
    iget-object v0, v1, Lf/i/a/a/k1/e;->f:Lf/i/a/a/k1/d;

    if-eqz v0, :cond_b

    goto :goto_7

    :cond_b
    const/4 v7, 0x0

    :goto_7
    iput v7, v1, Lf/i/a/a/k1/e;->m:I

    .line 72
    iput-boolean v15, v1, Lf/i/a/a/k1/e;->p:Z

    .line 73
    iput-boolean v3, v1, Lf/i/a/a/k1/e;->n:Z

    .line 74
    iput-boolean v8, v1, Lf/i/a/a/k1/e;->o:Z

    if-eqz v13, :cond_c

    .line 75
    iget-object v0, v1, Lf/i/a/a/k1/e;->f:Lf/i/a/a/k1/d;

    if-eqz v0, :cond_c

    const/4 v3, 0x1

    goto :goto_8

    :cond_c
    const/4 v3, 0x0

    :goto_8
    iput-boolean v3, v1, Lf/i/a/a/k1/e;->j:Z

    .line 76
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/k1/e;->d()V

    return-void
.end method

.method public static synthetic a(Lf/i/a/a/k1/e;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/k1/e;->e()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/e;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/e;->d:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_0

    const v1, 0x106000d

    .line 2
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 3
    iget-object v0, p0, Lf/i/a/a/k1/e;->d:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/e;->f:Lf/i/a/a/k1/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lf/i/a/a/k1/d;->g()V

    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/e;->i:Lf/i/a/a/l0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lf/i/a/a/l0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/i/a/a/k1/e;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x13

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_2

    const/16 v1, 0x16

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x14

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10d

    if-eq v0, v1, :cond_2

    const/16 v1, 0x15

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10c

    if-eq v0, v1, :cond_2

    const/16 v1, 0x17

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lf/i/a/a/k1/e;->j:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lf/i/a/a/k1/e;->f:Lf/i/a/a/k1/d;

    invoke-virtual {v0}, Lf/i/a/a/k1/d;->k()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 5
    :goto_2
    invoke-virtual {p0, v3}, Lf/i/a/a/k1/e;->f(Z)V

    if-nez v0, :cond_5

    .line 6
    iget-boolean v0, p0, Lf/i/a/a/k1/e;->j:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lf/i/a/a/k1/e;->f:Lf/i/a/a/k1/d;

    invoke-virtual {v0, p1}, Lf/i/a/a/k1/d;->e(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_5

    .line 7
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    const/4 v2, 0x1

    :cond_6
    return v2
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/e;->i:Lf/i/a/a/l0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lf/i/a/a/l0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/i/a/a/k1/e;->i:Lf/i/a/a/l0;

    invoke-interface {v0}, Lf/i/a/a/l0;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/k1/e;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lf/i/a/a/k1/e;->o:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lf/i/a/a/k1/e;->j:Z

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Lf/i/a/a/k1/e;->f:Lf/i/a/a/k1/d;

    invoke-virtual {v0}, Lf/i/a/a/k1/d;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lf/i/a/a/k1/e;->f:Lf/i/a/a/k1/d;

    invoke-virtual {v0}, Lf/i/a/a/k1/d;->getShowTimeoutMs()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Lf/i/a/a/k1/e;->g()Z

    move-result v1

    if-nez p1, :cond_2

    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 5
    :cond_2
    invoke-virtual {p0, v1}, Lf/i/a/a/k1/e;->i(Z)V

    :cond_3
    return-void
.end method

.method public g()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/e;->i:Lf/i/a/a/l0;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-interface {v0}, Lf/i/a/a/l0;->o()I

    move-result v0

    .line 3
    iget-boolean v2, p0, Lf/i/a/a/k1/e;->n:Z

    if-eqz v2, :cond_1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lf/i/a/a/k1/e;->i:Lf/i/a/a/l0;

    .line 4
    invoke-interface {v0}, Lf/i/a/a/l0;->m()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public getControllerAutoShow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf/i/a/a/k1/e;->n:Z

    return v0
.end method

.method public getControllerHideOnTouch()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf/i/a/a/k1/e;->p:Z

    return v0
.end method

.method public getControllerShowTimeoutMs()I
    .locals 1

    .line 1
    iget v0, p0, Lf/i/a/a/k1/e;->m:I

    return v0
.end method

.method public getPlayer()Lf/i/a/a/l0;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/e;->i:Lf/i/a/a/l0;

    return-object v0
.end method

.method public getResizeMode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/e;->a:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lc/a/a/b/g/h;->v(Z)V

    .line 2
    iget-object v0, p0, Lf/i/a/a/k1/e;->c:Lf/i/a/a/f1/a;

    invoke-interface {v0}, Lf/i/a/a/f1/a;->getResizeMode()I

    move-result v0

    return v0
.end method

.method public getSubtitleView()Lcom/google/android/exoplayer2/ui/SubtitleView;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/e;->e:Lcom/google/android/exoplayer2/ui/SubtitleView;

    return-object v0
.end method

.method public getUseController()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf/i/a/a/k1/e;->j:Z

    return v0
.end method

.method public getVideoSurfaceView()Lf/i/a/a/f1/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/e;->c:Lf/i/a/a/f1/a;

    return-object v0
.end method

.method public h()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/k1/e;->g()Z

    move-result v0

    invoke-virtual {p0, v0}, Lf/i/a/a/k1/e;->i(Z)V

    return-void
.end method

.method public final i(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lf/i/a/a/k1/e;->j:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lf/i/a/a/k1/e;->f:Lf/i/a/a/k1/d;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget p1, p0, Lf/i/a/a/k1/e;->m:I

    :goto_0
    invoke-virtual {v0, p1}, Lf/i/a/a/k1/d;->setShowTimeoutMs(I)V

    .line 3
    iget-object p1, p0, Lf/i/a/a/k1/e;->f:Lf/i/a/a/k1/d;

    .line 4
    invoke-virtual {p1}, Lf/i/a/a/k1/d;->k()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 6
    iget-object v0, p1, Lf/i/a/a/k1/d;->G:Lf/i/a/a/k1/d$e;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    invoke-interface {v0, v1}, Lf/i/a/a/k1/d$e;->onVisibilityChange(I)V

    .line 8
    :cond_2
    invoke-virtual {p1}, Lf/i/a/a/k1/d;->r()V

    .line 9
    invoke-virtual {p1}, Lf/i/a/a/k1/d;->l()V

    .line 10
    :cond_3
    invoke-virtual {p1}, Lf/i/a/a/k1/d;->h()V

    return-void
.end method

.method public j(Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/e;->i:Lf/i/a/a/l0;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lf/i/a/a/l0;->t()Lf/i/a/a/h1/p0;

    move-result-object v0

    .line 2
    iget v0, v0, Lf/i/a/a/h1/p0;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto/16 :goto_6

    :cond_1
    if-eqz p1, :cond_2

    .line 3
    iget-boolean p1, p0, Lf/i/a/a/k1/e;->l:Z

    if-nez p1, :cond_2

    .line 4
    invoke-virtual {p0}, Lf/i/a/a/k1/e;->b()V

    .line 5
    :cond_2
    iget-object p1, p0, Lf/i/a/a/k1/e;->i:Lf/i/a/a/l0;

    invoke-interface {p1}, Lf/i/a/a/l0;->A()Lf/i/a/a/j1/k;

    move-result-object p1

    const/4 v0, 0x0

    .line 6
    :goto_1
    iget v3, p1, Lf/i/a/a/j1/k;->a:I

    if-ge v0, v3, :cond_4

    .line 7
    iget-object v3, p0, Lf/i/a/a/k1/e;->i:Lf/i/a/a/l0;

    invoke-interface {v3, v0}, Lf/i/a/a/l0;->B(I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 8
    iget-object v3, p1, Lf/i/a/a/j1/k;->b:[Lf/i/a/a/j1/j;

    aget-object v3, v3, v0

    if-eqz v3, :cond_3

    .line 9
    invoke-virtual {p0}, Lf/i/a/a/k1/e;->c()V

    return-void

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 10
    :cond_4
    invoke-virtual {p0}, Lf/i/a/a/k1/e;->b()V

    .line 11
    iput-boolean v2, p0, Lf/i/a/a/k1/e;->k:Z

    if-eqz v2, :cond_9

    const/4 v0, 0x0

    .line 12
    :goto_2
    iget v3, p1, Lf/i/a/a/j1/k;->a:I

    if-ge v0, v3, :cond_9

    .line 13
    iget-object v3, p1, Lf/i/a/a/j1/k;->b:[Lf/i/a/a/j1/j;

    aget-object v3, v3, v0

    if-eqz v3, :cond_8

    const/4 v4, 0x0

    .line 14
    :goto_3
    invoke-interface {v3}, Lf/i/a/a/j1/j;->length()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 15
    invoke-interface {v3, v4}, Lf/i/a/a/j1/j;->c(I)Lf/i/a/a/b0;

    move-result-object v5

    iget-object v5, v5, Lf/i/a/a/b0;->g:Lf/i/a/a/d1/a;

    if-eqz v5, :cond_7

    const/4 v6, 0x0

    .line 16
    :goto_4
    iget-object v7, v5, Lf/i/a/a/d1/a;->a:[Lf/i/a/a/d1/a$b;

    array-length v8, v7

    if-ge v6, v8, :cond_5

    .line 17
    aget-object v7, v7, v6

    .line 18
    instance-of v8, v7, Lf/i/a/a/d1/i/a;

    if-eqz v8, :cond_6

    .line 19
    check-cast v7, Lf/i/a/a/d1/i/a;

    iget-object v5, v7, Lf/i/a/a/d1/i/a;->e:[B

    .line 20
    array-length v6, v5

    invoke-static {v5, v1, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 21
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 22
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-lez v6, :cond_5

    if-lez v7, :cond_5

    .line 23
    iget-object v6, p0, Lf/i/a/a/k1/e;->d:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v6, v5}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 24
    iget-object v5, p0, Lf/i/a/a/k1/e;->d:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v5, 0x1

    goto :goto_5

    :cond_5
    const/4 v5, 0x0

    goto :goto_5

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :goto_5
    if-eqz v5, :cond_7

    return-void

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 25
    :cond_9
    invoke-virtual {p0}, Lf/i/a/a/k1/e;->c()V

    return-void

    .line 26
    :cond_a
    :goto_6
    iget-boolean p1, p0, Lf/i/a/a/k1/e;->l:Z

    if-nez p1, :cond_b

    .line 27
    invoke-virtual {p0}, Lf/i/a/a/k1/e;->c()V

    .line 28
    invoke-virtual {p0}, Lf/i/a/a/k1/e;->b()V

    :cond_b
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf/i/a/a/k1/e;->j:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lf/i/a/a/k1/e;->i:Lf/i/a/a/l0;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object p1, p0, Lf/i/a/a/k1/e;->f:Lf/i/a/a/k1/d;

    invoke-virtual {p1}, Lf/i/a/a/k1/d;->k()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 3
    invoke-virtual {p0, v0}, Lf/i/a/a/k1/e;->f(Z)V

    goto :goto_0

    .line 4
    :cond_1
    iget-boolean p1, p0, Lf/i/a/a/k1/e;->p:Z

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lf/i/a/a/k1/e;->f:Lf/i/a/a/k1/d;

    invoke-virtual {p1}, Lf/i/a/a/k1/d;->g()V

    :cond_2
    :goto_0
    return v0

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-boolean p1, p0, Lf/i/a/a/k1/e;->j:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lf/i/a/a/k1/e;->i:Lf/i/a/a/l0;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lf/i/a/a/k1/e;->f(Z)V

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public setControlDispatcher(Lf/i/a/a/r;)V
    .locals 1
    .param p1    # Lf/i/a/a/r;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/e;->f:Lf/i/a/a/k1/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lc/a/a/b/g/h;->v(Z)V

    .line 2
    iget-object v0, p0, Lf/i/a/a/k1/e;->f:Lf/i/a/a/k1/d;

    invoke-virtual {v0, p1}, Lf/i/a/a/k1/d;->setControlDispatcher(Lf/i/a/a/r;)V

    return-void
.end method

.method public setControllerAutoShow(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lf/i/a/a/k1/e;->n:Z

    return-void
.end method

.method public setControllerHideDuringAds(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lf/i/a/a/k1/e;->o:Z

    return-void
.end method

.method public setControllerHideOnTouch(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/e;->f:Lf/i/a/a/k1/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lc/a/a/b/g/h;->v(Z)V

    .line 2
    iput-boolean p1, p0, Lf/i/a/a/k1/e;->p:Z

    return-void
.end method

.method public setControllerShowTimeoutMs(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/e;->f:Lf/i/a/a/k1/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lc/a/a/b/g/h;->v(Z)V

    .line 2
    iput p1, p0, Lf/i/a/a/k1/e;->m:I

    .line 3
    iget-object p1, p0, Lf/i/a/a/k1/e;->f:Lf/i/a/a/k1/d;

    invoke-virtual {p1}, Lf/i/a/a/k1/d;->k()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Lf/i/a/a/k1/e;->h()V

    :cond_1
    return-void
.end method

.method public setControllerVisibilityListener(Lf/i/a/a/k1/d$e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/e;->f:Lf/i/a/a/k1/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lc/a/a/b/g/h;->v(Z)V

    .line 2
    iget-object v0, p0, Lf/i/a/a/k1/e;->f:Lf/i/a/a/k1/d;

    invoke-virtual {v0, p1}, Lf/i/a/a/k1/d;->setVisibilityListener(Lf/i/a/a/k1/d$e;)V

    return-void
.end method

.method public setFastForwardIncrementMs(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/e;->f:Lf/i/a/a/k1/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lc/a/a/b/g/h;->v(Z)V

    .line 2
    iget-object v0, p0, Lf/i/a/a/k1/e;->f:Lf/i/a/a/k1/d;

    invoke-virtual {v0, p1}, Lf/i/a/a/k1/d;->setFastForwardIncrementMs(I)V

    return-void
.end method

.method public setKeepContentOnPlayerReset(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf/i/a/a/k1/e;->l:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lf/i/a/a/k1/e;->l:Z

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lf/i/a/a/k1/e;->j(Z)V

    :cond_0
    return-void
.end method

.method public setPlaybackPreparer(Lf/i/a/a/k0;)V
    .locals 1
    .param p1    # Lf/i/a/a/k0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/e;->f:Lf/i/a/a/k1/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lc/a/a/b/g/h;->v(Z)V

    .line 2
    iget-object v0, p0, Lf/i/a/a/k1/e;->f:Lf/i/a/a/k1/d;

    invoke-virtual {v0, p1}, Lf/i/a/a/k1/d;->setPlaybackPreparer(Lf/i/a/a/k0;)V

    return-void
.end method

.method public setPlayer(Lf/i/a/a/l0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/e;->i:Lf/i/a/a/l0;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 2
    iget-object v2, p0, Lf/i/a/a/k1/e;->g:Lf/i/a/a/k1/e$b;

    invoke-interface {v0, v2}, Lf/i/a/a/l0;->y(Lf/i/a/a/l0$b;)V

    .line 3
    iget-object v0, p0, Lf/i/a/a/k1/e;->i:Lf/i/a/a/l0;

    invoke-interface {v0}, Lf/i/a/a/l0;->g()Lf/i/a/a/l0$d;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4
    iget-object v2, p0, Lf/i/a/a/k1/e;->g:Lf/i/a/a/k1/e$b;

    check-cast v0, Lf/i/a/a/t0;

    .line 5
    iget-object v3, v0, Lf/i/a/a/t0;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 6
    iget-object v2, p0, Lf/i/a/a/k1/e;->c:Lf/i/a/a/f1/a;

    instance-of v3, v2, Landroid/view/TextureView;

    if-eqz v3, :cond_1

    .line 7
    check-cast v2, Landroid/view/TextureView;

    .line 8
    invoke-virtual {v0}, Lf/i/a/a/t0;->O()V

    if-eqz v2, :cond_3

    .line 9
    iget-object v3, v0, Lf/i/a/a/t0;->t:Landroid/view/TextureView;

    if-ne v2, v3, :cond_3

    .line 10
    invoke-virtual {v0, v1}, Lf/i/a/a/t0;->L(Landroid/view/TextureView;)V

    goto :goto_1

    .line 11
    :cond_1
    instance-of v3, v2, Landroid/view/SurfaceView;

    if-eqz v3, :cond_3

    .line 12
    check-cast v2, Landroid/view/SurfaceView;

    if-nez v2, :cond_2

    move-object v2, v1

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    .line 14
    :goto_0
    invoke-virtual {v0}, Lf/i/a/a/t0;->O()V

    if-eqz v2, :cond_3

    .line 15
    iget-object v3, v0, Lf/i/a/a/t0;->s:Landroid/view/SurfaceHolder;

    if-ne v2, v3, :cond_3

    .line 16
    invoke-virtual {v0, v1}, Lf/i/a/a/t0;->J(Landroid/view/SurfaceHolder;)V

    .line 17
    :cond_3
    :goto_1
    iget-object v0, p0, Lf/i/a/a/k1/e;->i:Lf/i/a/a/l0;

    invoke-interface {v0}, Lf/i/a/a/l0;->D()Lf/i/a/a/l0$c;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 18
    iget-object v2, p0, Lf/i/a/a/k1/e;->g:Lf/i/a/a/k1/e$b;

    check-cast v0, Lf/i/a/a/t0;

    .line 19
    iget-object v0, v0, Lf/i/a/a/t0;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 20
    :cond_4
    iput-object p1, p0, Lf/i/a/a/k1/e;->i:Lf/i/a/a/l0;

    .line 21
    iget-boolean v0, p0, Lf/i/a/a/k1/e;->j:Z

    if-eqz v0, :cond_5

    .line 22
    iget-object v0, p0, Lf/i/a/a/k1/e;->f:Lf/i/a/a/k1/d;

    invoke-virtual {v0, p1}, Lf/i/a/a/k1/d;->setPlayer(Lf/i/a/a/l0;)V

    .line 23
    :cond_5
    iget-object v0, p0, Lf/i/a/a/k1/e;->e:Lcom/google/android/exoplayer2/ui/SubtitleView;

    if-eqz v0, :cond_6

    .line 24
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setCues(Ljava/util/List;)V

    :cond_6
    const/4 v0, 0x1

    .line 25
    invoke-virtual {p0, v0}, Lf/i/a/a/k1/e;->j(Z)V

    if-eqz p1, :cond_d

    .line 26
    invoke-interface {p1}, Lf/i/a/a/l0;->g()Lf/i/a/a/l0$d;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 27
    iget-object v2, p0, Lf/i/a/a/k1/e;->c:Lf/i/a/a/f1/a;

    instance-of v3, v2, Landroid/view/TextureView;

    if-eqz v3, :cond_7

    .line 28
    check-cast v2, Landroid/view/TextureView;

    move-object v1, v0

    check-cast v1, Lf/i/a/a/t0;

    invoke-virtual {v1, v2}, Lf/i/a/a/t0;->L(Landroid/view/TextureView;)V

    goto :goto_3

    .line 29
    :cond_7
    instance-of v3, v2, Landroid/view/SurfaceView;

    if-eqz v3, :cond_9

    .line 30
    check-cast v2, Landroid/view/SurfaceView;

    move-object v3, v0

    check-cast v3, Lf/i/a/a/t0;

    if-nez v2, :cond_8

    goto :goto_2

    .line 31
    :cond_8
    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    :goto_2
    invoke-virtual {v3, v1}, Lf/i/a/a/t0;->J(Landroid/view/SurfaceHolder;)V

    .line 32
    :cond_9
    :goto_3
    iget-object v1, p0, Lf/i/a/a/k1/e;->g:Lf/i/a/a/k1/e$b;

    check-cast v0, Lf/i/a/a/t0;

    .line 33
    iget-object v0, v0, Lf/i/a/a/t0;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_a
    invoke-interface {p1}, Lf/i/a/a/l0;->D()Lf/i/a/a/l0$c;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 35
    iget-object v1, p0, Lf/i/a/a/k1/e;->g:Lf/i/a/a/k1/e$b;

    check-cast v0, Lf/i/a/a/t0;

    .line 36
    iget-object v2, v0, Lf/i/a/a/t0;->B:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    .line 37
    iget-object v2, v0, Lf/i/a/a/t0;->B:Ljava/util/List;

    invoke-virtual {v1, v2}, Lf/i/a/a/k1/e$b;->e(Ljava/util/List;)V

    .line 38
    :cond_b
    iget-object v0, v0, Lf/i/a/a/t0;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_c
    iget-object v0, p0, Lf/i/a/a/k1/e;->g:Lf/i/a/a/k1/e$b;

    invoke-interface {p1, v0}, Lf/i/a/a/l0;->r(Lf/i/a/a/l0$b;)V

    const/4 p1, 0x0

    .line 40
    invoke-virtual {p0, p1}, Lf/i/a/a/k1/e;->f(Z)V

    .line 41
    invoke-virtual {p0, p1}, Lf/i/a/a/k1/e;->j(Z)V

    goto :goto_4

    .line 42
    :cond_d
    invoke-virtual {p0}, Lf/i/a/a/k1/e;->d()V

    .line 43
    invoke-virtual {p0}, Lf/i/a/a/k1/e;->c()V

    :goto_4
    return-void
.end method

.method public setRepeatToggleModes(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/e;->f:Lf/i/a/a/k1/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lc/a/a/b/g/h;->v(Z)V

    .line 2
    iget-object v0, p0, Lf/i/a/a/k1/e;->f:Lf/i/a/a/k1/d;

    invoke-virtual {v0, p1}, Lf/i/a/a/k1/d;->setRepeatToggleModes(I)V

    return-void
.end method

.method public setResizeMode(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/e;->a:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lc/a/a/b/g/h;->v(Z)V

    .line 2
    iget-object v0, p0, Lf/i/a/a/k1/e;->c:Lf/i/a/a/f1/a;

    invoke-interface {v0, p1}, Lf/i/a/a/f1/a;->b(I)V

    return-void
.end method

.method public setRewindIncrementMs(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/e;->f:Lf/i/a/a/k1/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lc/a/a/b/g/h;->v(Z)V

    .line 2
    iget-object v0, p0, Lf/i/a/a/k1/e;->f:Lf/i/a/a/k1/d;

    invoke-virtual {v0, p1}, Lf/i/a/a/k1/d;->setRewindIncrementMs(I)V

    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/e;->f:Lf/i/a/a/k1/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lc/a/a/b/g/h;->v(Z)V

    .line 2
    iget-object v0, p0, Lf/i/a/a/k1/e;->f:Lf/i/a/a/k1/d;

    invoke-virtual {v0, p1}, Lf/i/a/a/k1/d;->setShowMultiWindowTimeBar(Z)V

    return-void
.end method

.method public setShowShuffleButton(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/e;->f:Lf/i/a/a/k1/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lc/a/a/b/g/h;->v(Z)V

    .line 2
    iget-object v0, p0, Lf/i/a/a/k1/e;->f:Lf/i/a/a/k1/d;

    invoke-virtual {v0, p1}, Lf/i/a/a/k1/d;->setShowShuffleButton(Z)V

    return-void
.end method

.method public setShutterBackgroundColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/e;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setUseController(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/e;->f:Lf/i/a/a/k1/d;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lc/a/a/b/g/h;->v(Z)V

    .line 2
    iget-boolean v0, p0, Lf/i/a/a/k1/e;->j:Z

    if-ne v0, p1, :cond_2

    return-void

    .line 3
    :cond_2
    iput-boolean p1, p0, Lf/i/a/a/k1/e;->j:Z

    if-eqz p1, :cond_3

    .line 4
    iget-object p1, p0, Lf/i/a/a/k1/e;->f:Lf/i/a/a/k1/d;

    iget-object v0, p0, Lf/i/a/a/k1/e;->i:Lf/i/a/a/l0;

    invoke-virtual {p1, v0}, Lf/i/a/a/k1/d;->setPlayer(Lf/i/a/a/l0;)V

    goto :goto_2

    .line 5
    :cond_3
    iget-object p1, p0, Lf/i/a/a/k1/e;->f:Lf/i/a/a/k1/d;

    if-eqz p1, :cond_4

    .line 6
    invoke-virtual {p1}, Lf/i/a/a/k1/d;->g()V

    .line 7
    iget-object p1, p0, Lf/i/a/a/k1/e;->f:Lf/i/a/a/k1/d;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lf/i/a/a/k1/d;->setPlayer(Lf/i/a/a/l0;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lf/i/a/a/k1/e;->c:Lf/i/a/a/f1/a;

    instance-of v1, v0, Landroid/view/SurfaceView;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0}, Lf/i/a/a/f1/a;->getRenderView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
