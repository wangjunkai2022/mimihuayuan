.class public final Lcom/google/android/exoplayer2/ui/SubtitleView;
.super Landroid/view/View;
.source "SubtitleView.java"

# interfaces
.implements Lf/i/a/a/i1/k;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/i/a/a/k1/f;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/i/a/a/i1/b;",
            ">;"
        }
    .end annotation
.end field

.field public c:I

.field public d:F

.field public e:Z

.field public f:Z

.field public g:Lf/i/a/a/i1/a;

.field public h:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->a:Ljava/util/List;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->c:I

    const p1, 0x3d5a511a    # 0.0533f

    .line 4
    iput p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->d:F

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->e:Z

    .line 6
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->f:Z

    .line 7
    sget-object p1, Lf/i/a/a/i1/a;->g:Lf/i/a/a/i1/a;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->g:Lf/i/a/a/i1/a;

    const p1, 0x3da3d70a    # 0.08f

    .line 8
    iput p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->h:F

    return-void
.end method

.method private getUserCaptionFontScaleV19()F
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "captioning"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    .line 2
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v0

    return v0
.end method

.method private getUserCaptionStyleV19()Lf/i/a/a/i1/a;
    .locals 17
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "captioning"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    .line 2
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    .line 3
    sget v1, Lf/i/a/a/m1/h0;->a:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_5

    .line 4
    new-instance v1, Lf/i/a/a/i1/a;

    .line 5
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasForegroundColor()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    goto :goto_0

    :cond_0
    sget-object v2, Lf/i/a/a/i1/a;->g:Lf/i/a/a/i1/a;

    iget v2, v2, Lf/i/a/a/i1/a;->a:I

    :goto_0
    move v4, v2

    .line 6
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasBackgroundColor()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    goto :goto_1

    :cond_1
    sget-object v2, Lf/i/a/a/i1/a;->g:Lf/i/a/a/i1/a;

    iget v2, v2, Lf/i/a/a/i1/a;->b:I

    :goto_1
    move v5, v2

    .line 7
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasWindowColor()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    goto :goto_2

    :cond_2
    sget-object v2, Lf/i/a/a/i1/a;->g:Lf/i/a/a/i1/a;

    iget v2, v2, Lf/i/a/a/i1/a;->c:I

    :goto_2
    move v6, v2

    .line 8
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeType()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    goto :goto_3

    :cond_3
    sget-object v2, Lf/i/a/a/i1/a;->g:Lf/i/a/a/i1/a;

    iget v2, v2, Lf/i/a/a/i1/a;->d:I

    :goto_3
    move v7, v2

    .line 9
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeColor()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    goto :goto_4

    :cond_4
    sget-object v2, Lf/i/a/a/i1/a;->g:Lf/i/a/a/i1/a;

    iget v2, v2, Lf/i/a/a/i1/a;->e:I

    :goto_4
    move v8, v2

    .line 10
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v9

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lf/i/a/a/i1/a;-><init>(IIIIILandroid/graphics/Typeface;)V

    goto :goto_5

    .line 11
    :cond_5
    new-instance v1, Lf/i/a/a/i1/a;

    iget v11, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    iget v12, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    iget v14, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    iget v15, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    .line 12
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v16

    const/4 v13, 0x0

    move-object v10, v1

    invoke-direct/range {v10 .. v16}, Lf/i/a/a/i1/a;-><init>(IIIIILandroid/graphics/Typeface;)V

    :goto_5
    return-object v1
.end method


# virtual methods
.method public final a(IFII)F
    .locals 0

    if-eqz p1, :cond_2

    const/4 p4, 0x1

    if-eq p1, p4, :cond_1

    const/4 p3, 0x2

    if-eq p1, p3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return p2

    :cond_1
    int-to-float p1, p3

    :goto_0
    mul-float p2, p2, p1

    return p2

    :cond_2
    int-to-float p1, p4

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .line 1
    sget v0, Lf/i/a/a/m1/h0;->a:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "captioning"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    .line 3
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getUserCaptionStyleV19()Lf/i/a/a/i1/a;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lf/i/a/a/i1/a;->g:Lf/i/a/a/i1/a;

    .line 6
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setStyle(Lf/i/a/a/i1/a;)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    sget v0, Lf/i/a/a/m1/h0;->a:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getUserCaptionFontScaleV19()F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    const v1, 0x3d5a511a    # 0.0533f

    mul-float v0, v0, v1

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setFractionalTextSize(F)V

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/SubtitleView;->b:Ljava/util/List;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    sub-int v8, v4, v8

    if-le v8, v6, :cond_29

    if-gt v7, v5, :cond_1

    goto/16 :goto_1a

    :cond_1
    sub-int v9, v8, v6

    .line 7
    iget v10, v0, Lcom/google/android/exoplayer2/ui/SubtitleView;->c:I

    iget v11, v0, Lcom/google/android/exoplayer2/ui/SubtitleView;->d:F

    .line 8
    invoke-virtual {v0, v10, v11, v4, v9}, Lcom/google/android/exoplayer2/ui/SubtitleView;->a(IFII)F

    move-result v10

    const/4 v11, 0x0

    cmpg-float v12, v10, v11

    if-gtz v12, :cond_2

    return-void

    :cond_2
    const/4 v12, 0x0

    :goto_1
    if-ge v12, v2, :cond_29

    .line 9
    iget-object v13, v0, Lcom/google/android/exoplayer2/ui/SubtitleView;->b:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lf/i/a/a/i1/b;

    .line 10
    iget v14, v13, Lf/i/a/a/i1/b;->m:I

    const/high16 v15, -0x80000000

    const/16 v16, 0x1

    if-eq v14, v15, :cond_4

    iget v15, v13, Lf/i/a/a/i1/b;->n:F

    cmpl-float v17, v15, v16

    if-nez v17, :cond_3

    goto :goto_2

    .line 11
    :cond_3
    invoke-virtual {v0, v14, v15, v4, v9}, Lcom/google/android/exoplayer2/ui/SubtitleView;->a(IFII)F

    move-result v14

    .line 12
    invoke-static {v14, v11}, Ljava/lang/Math;->max(FF)F

    move-result v14

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v14, 0x0

    .line 13
    :goto_3
    iget-object v15, v0, Lcom/google/android/exoplayer2/ui/SubtitleView;->a:Ljava/util/List;

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lf/i/a/a/k1/f;

    .line 14
    iget-boolean v11, v0, Lcom/google/android/exoplayer2/ui/SubtitleView;->e:Z

    iget-boolean v3, v0, Lcom/google/android/exoplayer2/ui/SubtitleView;->f:Z

    move/from16 v18, v2

    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/SubtitleView;->g:Lf/i/a/a/i1/a;

    move/from16 v19, v4

    iget v4, v0, Lcom/google/android/exoplayer2/ui/SubtitleView;->h:F

    if-eqz v15, :cond_28

    .line 15
    iget-object v0, v13, Lf/i/a/a/i1/b;->c:Landroid/graphics/Bitmap;

    move/from16 v20, v12

    if-nez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_8

    .line 16
    iget-object v12, v13, Lf/i/a/a/i1/b;->a:Ljava/lang/CharSequence;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_6

    move-object v0, v1

    move/from16 v30, v8

    move v3, v9

    move/from16 v31, v10

    :goto_5
    const/4 v9, 0x0

    const/4 v12, 0x0

    goto/16 :goto_19

    .line 17
    :cond_6
    iget-boolean v12, v13, Lf/i/a/a/i1/b;->k:Z

    if-eqz v12, :cond_7

    if-eqz v11, :cond_7

    iget v12, v13, Lf/i/a/a/i1/b;->l:I

    goto :goto_6

    :cond_7
    iget v12, v2, Lf/i/a/a/i1/a;->c:I

    goto :goto_6

    :cond_8
    const/high16 v12, -0x1000000

    :goto_6
    move/from16 v21, v9

    .line 18
    iget-object v9, v15, Lf/i/a/a/k1/f;->h:Ljava/lang/CharSequence;

    move/from16 v22, v0

    iget-object v0, v13, Lf/i/a/a/i1/b;->a:Ljava/lang/CharSequence;

    if-eq v9, v0, :cond_a

    if-eqz v9, :cond_9

    .line 19
    invoke-virtual {v9, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_7

    :cond_9
    const/4 v0, 0x0

    goto :goto_8

    :cond_a
    :goto_7
    const/4 v0, 0x1

    :goto_8
    if-eqz v0, :cond_b

    .line 20
    iget-object v0, v15, Lf/i/a/a/k1/f;->i:Landroid/text/Layout$Alignment;

    iget-object v9, v13, Lf/i/a/a/i1/b;->b:Landroid/text/Layout$Alignment;

    .line 21
    invoke-static {v0, v9}, Lf/i/a/a/m1/h0;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v15, Lf/i/a/a/k1/f;->j:Landroid/graphics/Bitmap;

    iget-object v9, v13, Lf/i/a/a/i1/b;->c:Landroid/graphics/Bitmap;

    if-ne v0, v9, :cond_b

    iget v0, v15, Lf/i/a/a/k1/f;->k:F

    iget v9, v13, Lf/i/a/a/i1/b;->d:F

    cmpl-float v0, v0, v9

    if-nez v0, :cond_b

    iget v0, v15, Lf/i/a/a/k1/f;->l:I

    iget v9, v13, Lf/i/a/a/i1/b;->e:I

    if-ne v0, v9, :cond_b

    iget v0, v15, Lf/i/a/a/k1/f;->m:I

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v9, v13, Lf/i/a/a/i1/b;->f:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v0, v9}, Lf/i/a/a/m1/h0;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, v15, Lf/i/a/a/k1/f;->n:F

    iget v9, v13, Lf/i/a/a/i1/b;->g:F

    cmpl-float v0, v0, v9

    if-nez v0, :cond_b

    iget v0, v15, Lf/i/a/a/k1/f;->o:I

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v9, v13, Lf/i/a/a/i1/b;->h:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v0, v9}, Lf/i/a/a/m1/h0;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, v15, Lf/i/a/a/k1/f;->p:F

    iget v9, v13, Lf/i/a/a/i1/b;->i:F

    cmpl-float v0, v0, v9

    if-nez v0, :cond_b

    iget v0, v15, Lf/i/a/a/k1/f;->q:F

    iget v9, v13, Lf/i/a/a/i1/b;->j:F

    cmpl-float v0, v0, v9

    if-nez v0, :cond_b

    iget-boolean v0, v15, Lf/i/a/a/k1/f;->r:Z

    if-ne v0, v11, :cond_b

    iget-boolean v0, v15, Lf/i/a/a/k1/f;->s:Z

    if-ne v0, v3, :cond_b

    iget v0, v15, Lf/i/a/a/k1/f;->t:I

    iget v9, v2, Lf/i/a/a/i1/a;->a:I

    if-ne v0, v9, :cond_b

    iget v0, v15, Lf/i/a/a/k1/f;->u:I

    iget v9, v2, Lf/i/a/a/i1/a;->b:I

    if-ne v0, v9, :cond_b

    iget v0, v15, Lf/i/a/a/k1/f;->v:I

    if-ne v0, v12, :cond_b

    iget v0, v15, Lf/i/a/a/k1/f;->x:I

    iget v9, v2, Lf/i/a/a/i1/a;->d:I

    if-ne v0, v9, :cond_b

    iget v0, v15, Lf/i/a/a/k1/f;->w:I

    iget v9, v2, Lf/i/a/a/i1/a;->e:I

    if-ne v0, v9, :cond_b

    iget-object v0, v15, Lf/i/a/a/k1/f;->f:Landroid/text/TextPaint;

    .line 24
    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    iget-object v9, v2, Lf/i/a/a/i1/a;->f:Landroid/graphics/Typeface;

    invoke-static {v0, v9}, Lf/i/a/a/m1/h0;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, v15, Lf/i/a/a/k1/f;->y:F

    cmpl-float v0, v0, v10

    if-nez v0, :cond_b

    iget v0, v15, Lf/i/a/a/k1/f;->z:F

    cmpl-float v0, v0, v14

    if-nez v0, :cond_b

    iget v0, v15, Lf/i/a/a/k1/f;->A:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_b

    iget v0, v15, Lf/i/a/a/k1/f;->B:I

    if-ne v0, v5, :cond_b

    iget v0, v15, Lf/i/a/a/k1/f;->C:I

    if-ne v0, v6, :cond_b

    iget v0, v15, Lf/i/a/a/k1/f;->D:I

    if-ne v0, v7, :cond_b

    iget v0, v15, Lf/i/a/a/k1/f;->E:I

    if-ne v0, v8, :cond_b

    move/from16 v0, v22

    .line 25
    invoke-virtual {v15, v1, v0}, Lf/i/a/a/k1/f;->a(Landroid/graphics/Canvas;Z)V

    move-object v0, v1

    move/from16 v30, v8

    move/from16 v31, v10

    move/from16 v3, v21

    goto/16 :goto_5

    :cond_b
    move/from16 v0, v22

    .line 26
    iget-object v9, v13, Lf/i/a/a/i1/b;->a:Ljava/lang/CharSequence;

    iput-object v9, v15, Lf/i/a/a/k1/f;->h:Ljava/lang/CharSequence;

    .line 27
    iget-object v9, v13, Lf/i/a/a/i1/b;->b:Landroid/text/Layout$Alignment;

    iput-object v9, v15, Lf/i/a/a/k1/f;->i:Landroid/text/Layout$Alignment;

    .line 28
    iget-object v9, v13, Lf/i/a/a/i1/b;->c:Landroid/graphics/Bitmap;

    iput-object v9, v15, Lf/i/a/a/k1/f;->j:Landroid/graphics/Bitmap;

    .line 29
    iget v9, v13, Lf/i/a/a/i1/b;->d:F

    iput v9, v15, Lf/i/a/a/k1/f;->k:F

    .line 30
    iget v9, v13, Lf/i/a/a/i1/b;->e:I

    iput v9, v15, Lf/i/a/a/k1/f;->l:I

    .line 31
    iget v9, v13, Lf/i/a/a/i1/b;->f:I

    iput v9, v15, Lf/i/a/a/k1/f;->m:I

    .line 32
    iget v9, v13, Lf/i/a/a/i1/b;->g:F

    iput v9, v15, Lf/i/a/a/k1/f;->n:F

    .line 33
    iget v9, v13, Lf/i/a/a/i1/b;->h:I

    iput v9, v15, Lf/i/a/a/k1/f;->o:I

    .line 34
    iget v9, v13, Lf/i/a/a/i1/b;->i:F

    iput v9, v15, Lf/i/a/a/k1/f;->p:F

    .line 35
    iget v9, v13, Lf/i/a/a/i1/b;->j:F

    iput v9, v15, Lf/i/a/a/k1/f;->q:F

    .line 36
    iput-boolean v11, v15, Lf/i/a/a/k1/f;->r:Z

    .line 37
    iput-boolean v3, v15, Lf/i/a/a/k1/f;->s:Z

    .line 38
    iget v3, v2, Lf/i/a/a/i1/a;->a:I

    iput v3, v15, Lf/i/a/a/k1/f;->t:I

    .line 39
    iget v3, v2, Lf/i/a/a/i1/a;->b:I

    iput v3, v15, Lf/i/a/a/k1/f;->u:I

    .line 40
    iput v12, v15, Lf/i/a/a/k1/f;->v:I

    .line 41
    iget v3, v2, Lf/i/a/a/i1/a;->d:I

    iput v3, v15, Lf/i/a/a/k1/f;->x:I

    .line 42
    iget v3, v2, Lf/i/a/a/i1/a;->e:I

    iput v3, v15, Lf/i/a/a/k1/f;->w:I

    .line 43
    iget-object v3, v15, Lf/i/a/a/k1/f;->f:Landroid/text/TextPaint;

    iget-object v2, v2, Lf/i/a/a/i1/a;->f:Landroid/graphics/Typeface;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 44
    iput v10, v15, Lf/i/a/a/k1/f;->y:F

    .line 45
    iput v14, v15, Lf/i/a/a/k1/f;->z:F

    .line 46
    iput v4, v15, Lf/i/a/a/k1/f;->A:F

    .line 47
    iput v5, v15, Lf/i/a/a/k1/f;->B:I

    .line 48
    iput v6, v15, Lf/i/a/a/k1/f;->C:I

    .line 49
    iput v7, v15, Lf/i/a/a/k1/f;->D:I

    .line 50
    iput v8, v15, Lf/i/a/a/k1/f;->E:I

    if-eqz v0, :cond_22

    sub-int v3, v7, v5

    .line 51
    iget-object v4, v15, Lf/i/a/a/k1/f;->f:Landroid/text/TextPaint;

    invoke-virtual {v4, v10}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 52
    iget v4, v15, Lf/i/a/a/k1/f;->y:F

    const/high16 v9, 0x3e000000    # 0.125f

    mul-float v4, v4, v9

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v4, v9

    float-to-int v4, v4

    mul-int/lit8 v9, v4, 0x2

    sub-int v11, v3, v9

    .line 53
    iget v12, v15, Lf/i/a/a/k1/f;->p:F

    cmpl-float v13, v12, v16

    if-eqz v13, :cond_c

    int-to-float v11, v11

    mul-float v11, v11, v12

    float-to-int v11, v11

    :cond_c
    if-gtz v11, :cond_d

    move/from16 v30, v8

    move/from16 v31, v10

    move/from16 v3, v21

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-object/from16 v33, v1

    move v1, v0

    move-object/from16 v0, v33

    goto/16 :goto_18

    .line 54
    :cond_d
    iget-object v12, v15, Lf/i/a/a/k1/f;->h:Ljava/lang/CharSequence;

    .line 55
    iget-boolean v13, v15, Lf/i/a/a/k1/f;->r:Z

    if-nez v13, :cond_e

    .line 56
    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    move/from16 v30, v8

    move/from16 v31, v10

    goto :goto_b

    .line 57
    :cond_e
    iget-boolean v13, v15, Lf/i/a/a/k1/f;->s:Z

    if-nez v13, :cond_11

    .line 58
    new-instance v13, Landroid/text/SpannableStringBuilder;

    invoke-direct {v13, v12}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {v13}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    .line 60
    const-class v2, Landroid/text/style/AbsoluteSizeSpan;

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v12, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/AbsoluteSizeSpan;

    move/from16 v30, v8

    .line 61
    const-class v8, Landroid/text/style/RelativeSizeSpan;

    invoke-virtual {v13, v14, v12, v8}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/RelativeSizeSpan;

    .line 62
    array-length v12, v2

    const/4 v14, 0x0

    :goto_9
    if-ge v14, v12, :cond_f

    move/from16 v31, v10

    aget-object v10, v2, v14

    .line 63
    invoke-virtual {v13, v10}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v14, v14, 0x1

    move/from16 v10, v31

    goto :goto_9

    :cond_f
    move/from16 v31, v10

    .line 64
    array-length v2, v8

    const/4 v10, 0x0

    :goto_a
    if-ge v10, v2, :cond_10

    aget-object v12, v8, v10

    .line 65
    invoke-virtual {v13, v12}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    :cond_10
    move-object v12, v13

    goto :goto_b

    :cond_11
    move/from16 v30, v8

    move/from16 v31, v10

    .line 66
    iget v2, v15, Lf/i/a/a/k1/f;->z:F

    const/4 v8, 0x0

    cmpl-float v2, v2, v8

    if-lez v2, :cond_12

    .line 67
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v12}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 68
    new-instance v8, Landroid/text/style/AbsoluteSizeSpan;

    iget v10, v15, Lf/i/a/a/k1/f;->z:F

    float-to-int v10, v10

    invoke-direct {v8, v10}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    .line 69
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    const/high16 v12, 0xff0000

    const/4 v13, 0x0

    .line 70
    invoke-virtual {v2, v8, v13, v10, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object v12, v2

    .line 71
    :cond_12
    :goto_b
    iget v2, v15, Lf/i/a/a/k1/f;->u:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-lez v2, :cond_13

    .line 72
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v12}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 73
    new-instance v8, Landroid/text/style/BackgroundColorSpan;

    iget v10, v15, Lf/i/a/a/k1/f;->u:I

    invoke-direct {v8, v10}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 74
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    const/high16 v12, 0xff0000

    const/4 v13, 0x0

    .line 75
    invoke-virtual {v2, v8, v13, v10, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_c

    :cond_13
    move-object v2, v12

    .line 76
    :goto_c
    iget-object v8, v15, Lf/i/a/a/k1/f;->i:Landroid/text/Layout$Alignment;

    if-nez v8, :cond_14

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 77
    :cond_14
    new-instance v10, Landroid/text/StaticLayout;

    iget-object v12, v15, Lf/i/a/a/k1/f;->f:Landroid/text/TextPaint;

    iget v13, v15, Lf/i/a/a/k1/f;->d:F

    iget v14, v15, Lf/i/a/a/k1/f;->e:F

    const/16 v29, 0x1

    move-object/from16 v22, v10

    move-object/from16 v23, v2

    move-object/from16 v24, v12

    move/from16 v25, v11

    move-object/from16 v26, v8

    move/from16 v27, v13

    move/from16 v28, v14

    invoke-direct/range {v22 .. v29}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v10, v15, Lf/i/a/a/k1/f;->F:Landroid/text/StaticLayout;

    .line 78
    invoke-virtual {v10}, Landroid/text/StaticLayout;->getHeight()I

    move-result v10

    .line 79
    iget-object v12, v15, Lf/i/a/a/k1/f;->F:Landroid/text/StaticLayout;

    invoke-virtual {v12}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_d
    if-ge v14, v12, :cond_15

    move/from16 v22, v12

    .line 80
    iget-object v12, v15, Lf/i/a/a/k1/f;->F:Landroid/text/StaticLayout;

    invoke-virtual {v12, v14}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v12

    move/from16 v32, v0

    float-to-double v0, v12

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    move/from16 v12, v22

    move/from16 v0, v32

    goto :goto_d

    :cond_15
    move/from16 v32, v0

    .line 81
    iget v0, v15, Lf/i/a/a/k1/f;->p:F

    cmpl-float v0, v0, v16

    if-eqz v0, :cond_16

    if-ge v13, v11, :cond_16

    goto :goto_e

    :cond_16
    move v11, v13

    :goto_e
    add-int/2addr v11, v9

    .line 82
    iget v0, v15, Lf/i/a/a/k1/f;->n:F

    cmpl-float v1, v0, v16

    if-eqz v1, :cond_19

    int-to-float v1, v3

    mul-float v1, v1, v0

    .line 83
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, v15, Lf/i/a/a/k1/f;->B:I

    add-int/2addr v0, v1

    .line 84
    iget v1, v15, Lf/i/a/a/k1/f;->o:I

    const/4 v9, 0x2

    if-ne v1, v9, :cond_17

    sub-int/2addr v0, v11

    goto :goto_f

    :cond_17
    const/4 v3, 0x1

    if-ne v1, v3, :cond_18

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, v11

    div-int/2addr v0, v9

    .line 85
    :cond_18
    :goto_f
    iget v1, v15, Lf/i/a/a/k1/f;->B:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v11, v0

    .line 86
    iget v1, v15, Lf/i/a/a/k1/f;->D:I

    invoke-static {v11, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_10

    :cond_19
    const/4 v9, 0x2

    sub-int/2addr v3, v11

    .line 87
    div-int/2addr v3, v9

    iget v0, v15, Lf/i/a/a/k1/f;->B:I

    add-int/2addr v0, v3

    add-int v1, v0, v11

    :goto_10
    sub-int v25, v1, v0

    if-gtz v25, :cond_1a

    move-object/from16 v0, p1

    move/from16 v3, v21

    move/from16 v1, v32

    const/4 v9, 0x0

    const/4 v12, 0x0

    goto/16 :goto_18

    .line 88
    :cond_1a
    iget v1, v15, Lf/i/a/a/k1/f;->k:F

    cmpl-float v3, v1, v16

    if-eqz v3, :cond_20

    .line 89
    iget v3, v15, Lf/i/a/a/k1/f;->l:I

    if-nez v3, :cond_1b

    move/from16 v3, v21

    int-to-float v9, v3

    mul-float v9, v9, v1

    .line 90
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v9, v15, Lf/i/a/a/k1/f;->C:I

    move v11, v9

    const/4 v9, 0x0

    const/4 v12, 0x0

    goto :goto_11

    :cond_1b
    move/from16 v3, v21

    .line 91
    iget-object v1, v15, Lf/i/a/a/k1/f;->F:Landroid/text/StaticLayout;

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v1

    iget-object v11, v15, Lf/i/a/a/k1/f;->F:Landroid/text/StaticLayout;

    invoke-virtual {v11, v9}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v11

    sub-int/2addr v1, v11

    .line 92
    iget v11, v15, Lf/i/a/a/k1/f;->k:F

    const/4 v12, 0x0

    cmpl-float v13, v11, v12

    if-ltz v13, :cond_1c

    int-to-float v1, v1

    mul-float v11, v11, v1

    .line 93
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v11, v15, Lf/i/a/a/k1/f;->C:I

    goto :goto_11

    :cond_1c
    const/high16 v13, 0x3f800000    # 1.0f

    add-float/2addr v11, v13

    int-to-float v1, v1

    mul-float v11, v11, v1

    .line 94
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v11, v15, Lf/i/a/a/k1/f;->E:I

    :goto_11
    add-int/2addr v1, v11

    .line 95
    iget v11, v15, Lf/i/a/a/k1/f;->m:I

    const/4 v13, 0x2

    if-ne v11, v13, :cond_1d

    sub-int/2addr v1, v10

    goto :goto_12

    :cond_1d
    const/4 v14, 0x1

    if-ne v11, v14, :cond_1e

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, v10

    div-int/2addr v1, v13

    :cond_1e
    :goto_12
    add-int v11, v1, v10

    .line 96
    iget v13, v15, Lf/i/a/a/k1/f;->E:I

    if-le v11, v13, :cond_1f

    sub-int v1, v13, v10

    goto :goto_13

    .line 97
    :cond_1f
    iget v10, v15, Lf/i/a/a/k1/f;->C:I

    if-ge v1, v10, :cond_21

    move v1, v10

    goto :goto_13

    :cond_20
    move/from16 v3, v21

    const/4 v9, 0x0

    const/4 v12, 0x0

    .line 98
    iget v1, v15, Lf/i/a/a/k1/f;->E:I

    sub-int/2addr v1, v10

    int-to-float v10, v3

    iget v11, v15, Lf/i/a/a/k1/f;->A:F

    mul-float v10, v10, v11

    float-to-int v10, v10

    sub-int/2addr v1, v10

    .line 99
    :cond_21
    :goto_13
    new-instance v10, Landroid/text/StaticLayout;

    iget-object v11, v15, Lf/i/a/a/k1/f;->f:Landroid/text/TextPaint;

    iget v13, v15, Lf/i/a/a/k1/f;->d:F

    iget v14, v15, Lf/i/a/a/k1/f;->e:F

    const/16 v29, 0x1

    move-object/from16 v22, v10

    move-object/from16 v23, v2

    move-object/from16 v24, v11

    move-object/from16 v26, v8

    move/from16 v27, v13

    move/from16 v28, v14

    invoke-direct/range {v22 .. v29}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v10, v15, Lf/i/a/a/k1/f;->F:Landroid/text/StaticLayout;

    .line 100
    iput v0, v15, Lf/i/a/a/k1/f;->G:I

    .line 101
    iput v1, v15, Lf/i/a/a/k1/f;->H:I

    .line 102
    iput v4, v15, Lf/i/a/a/k1/f;->I:I

    goto/16 :goto_17

    :cond_22
    move/from16 v32, v0

    move/from16 v30, v8

    move/from16 v31, v10

    move/from16 v3, v21

    const/4 v9, 0x0

    const/4 v12, 0x0

    sub-int v0, v7, v5

    int-to-float v1, v5

    int-to-float v0, v0

    .line 103
    iget v2, v15, Lf/i/a/a/k1/f;->n:F

    mul-float v2, v2, v0

    add-float/2addr v2, v1

    int-to-float v1, v6

    int-to-float v4, v3

    .line 104
    iget v8, v15, Lf/i/a/a/k1/f;->k:F

    mul-float v8, v8, v4

    add-float/2addr v8, v1

    .line 105
    iget v1, v15, Lf/i/a/a/k1/f;->p:F

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 106
    iget v1, v15, Lf/i/a/a/k1/f;->q:F

    cmpl-float v10, v1, v16

    if-eqz v10, :cond_23

    mul-float v4, v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_14

    :cond_23
    int-to-float v1, v0

    iget-object v4, v15, Lf/i/a/a/k1/f;->j:Landroid/graphics/Bitmap;

    .line 107
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v10, v15, Lf/i/a/a/k1/f;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v4, v10

    mul-float v4, v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 108
    :goto_14
    iget v4, v15, Lf/i/a/a/k1/f;->m:I

    const/4 v10, 0x2

    if-ne v4, v10, :cond_24

    int-to-float v4, v0

    goto :goto_15

    :cond_24
    const/4 v10, 0x1

    if-ne v4, v10, :cond_25

    div-int/lit8 v4, v0, 0x2

    int-to-float v4, v4

    :goto_15
    sub-float/2addr v2, v4

    :cond_25
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 109
    iget v4, v15, Lf/i/a/a/k1/f;->o:I

    const/4 v10, 0x2

    if-ne v4, v10, :cond_26

    int-to-float v4, v1

    goto :goto_16

    :cond_26
    const/4 v10, 0x1

    if-ne v4, v10, :cond_27

    div-int/lit8 v4, v1, 0x2

    int-to-float v4, v4

    :goto_16
    sub-float/2addr v8, v4

    :cond_27
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 110
    new-instance v8, Landroid/graphics/Rect;

    add-int/2addr v0, v2

    add-int/2addr v1, v4

    invoke-direct {v8, v2, v4, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v8, v15, Lf/i/a/a/k1/f;->J:Landroid/graphics/Rect;

    :goto_17
    move-object/from16 v0, p1

    move/from16 v1, v32

    .line 111
    :goto_18
    invoke-virtual {v15, v0, v1}, Lf/i/a/a/k1/f;->a(Landroid/graphics/Canvas;Z)V

    :goto_19
    add-int/lit8 v1, v20, 0x1

    move v12, v1

    move v9, v3

    move/from16 v2, v18

    move/from16 v4, v19

    move/from16 v8, v30

    move/from16 v10, v31

    const/4 v11, 0x0

    move-object v1, v0

    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_28
    const/4 v0, 0x0

    .line 112
    throw v0

    :cond_29
    :goto_1a
    return-void
.end method

.method public e(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lf/i/a/a/i1/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setCues(Ljava/util/List;)V

    return-void
.end method

.method public setApplyEmbeddedFontSizes(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->f:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->f:Z

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setApplyEmbeddedStyles(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->e:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->f:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->e:Z

    .line 3
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->f:Z

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBottomPaddingFraction(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->h:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->h:F

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCues(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lf/i/a/a/i1/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->b:Ljava/util/List;

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->b:Ljava/util/List;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p1, :cond_2

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->a:Ljava/util/List;

    new-instance v1, Lf/i/a/a/k1/f;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lf/i/a/a/k1/f;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setFractionalTextSize(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->c:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->d:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->c:I

    .line 3
    iput p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->d:F

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_0
    return-void
.end method

.method public setStyle(Lf/i/a/a/i1/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->g:Lf/i/a/a/i1/a;

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->g:Lf/i/a/a/i1/a;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
