.class public Lcom/google/android/exoplayer2/ui/TrackSelectionView;
.super Landroid/widget/LinearLayout;
.source "TrackSelectionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/TrackSelectionView$b;,
        Lcom/google/android/exoplayer2/ui/TrackSelectionView$c;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Landroid/view/LayoutInflater;

.field public final c:Landroid/widget/CheckedTextView;

.field public final d:Landroid/widget/CheckedTextView;

.field public final e:Lcom/google/android/exoplayer2/ui/TrackSelectionView$b;

.field public final f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lf/i/a/a/j1/d$e;",
            ">;"
        }
    .end annotation
.end field

.field public g:Z

.field public h:Z

.field public i:Lf/i/a/a/k1/h;

.field public j:[[Landroid/widget/CheckedTextView;

.field public k:Lf/i/a/a/j1/f$a;

.field public l:I

.field public m:Lf/i/a/a/h1/p0;

.field public n:Z

.field public o:Lcom/google/android/exoplayer2/ui/TrackSelectionView$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 2
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setSaveFromParentEnabled(Z)V

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    new-array v2, p2, [I

    const v3, 0x101030e

    aput v3, v2, v0

    .line 6
    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 7
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->a:I

    .line 8
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 9
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->b:Landroid/view/LayoutInflater;

    .line 10
    new-instance p1, Lcom/google/android/exoplayer2/ui/TrackSelectionView$b;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/google/android/exoplayer2/ui/TrackSelectionView$b;-><init>(Lcom/google/android/exoplayer2/ui/TrackSelectionView;Lcom/google/android/exoplayer2/ui/TrackSelectionView$a;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->e:Lcom/google/android/exoplayer2/ui/TrackSelectionView$b;

    .line 11
    new-instance p1, Lf/i/a/a/k1/b;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p1, v1}, Lf/i/a/a/k1/b;-><init>(Landroid/content/res/Resources;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->i:Lf/i/a/a/k1/h;

    .line 12
    sget-object p1, Lf/i/a/a/h1/p0;->d:Lf/i/a/a/h1/p0;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->m:Lf/i/a/a/h1/p0;

    .line 13
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->b:Landroid/view/LayoutInflater;

    const v1, 0x109000f

    .line 14
    invoke-virtual {p1, v1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->c:Landroid/widget/CheckedTextView;

    .line 15
    iget v2, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->a:I

    invoke-virtual {p1, v2}, Landroid/widget/CheckedTextView;->setBackgroundResource(I)V

    .line 16
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->c:Landroid/widget/CheckedTextView;

    sget v2, Lchuangyuan/ycj/videolibrary/R$string;->exo_track_selection_none:I

    invoke-virtual {p1, v2}, Landroid/widget/CheckedTextView;->setText(I)V

    .line 17
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->c:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 18
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->c:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, p2}, Landroid/widget/CheckedTextView;->setFocusable(Z)V

    .line 19
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->c:Landroid/widget/CheckedTextView;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->e:Lcom/google/android/exoplayer2/ui/TrackSelectionView$b;

    invoke-virtual {p1, v2}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->c:Landroid/widget/CheckedTextView;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 21
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->c:Landroid/widget/CheckedTextView;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 22
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->b:Landroid/view/LayoutInflater;

    sget v2, Lchuangyuan/ycj/videolibrary/R$layout;->exo_list_divider:I

    invoke-virtual {p1, v2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 23
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->b:Landroid/view/LayoutInflater;

    .line 24
    invoke-virtual {p1, v1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->d:Landroid/widget/CheckedTextView;

    .line 25
    iget v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->a:I

    invoke-virtual {p1, v1}, Landroid/widget/CheckedTextView;->setBackgroundResource(I)V

    .line 26
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->d:Landroid/widget/CheckedTextView;

    sget v1, Lchuangyuan/ycj/videolibrary/R$string;->exo_track_selection_auto:I

    invoke-virtual {p1, v1}, Landroid/widget/CheckedTextView;->setText(I)V

    .line 27
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->d:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 28
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->d:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, p2}, Landroid/widget/CheckedTextView;->setFocusable(Z)V

    .line 29
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->d:Landroid/widget/CheckedTextView;

    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->e:Lcom/google/android/exoplayer2/ui/TrackSelectionView$b;

    invoke-virtual {p1, p2}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->d:Landroid/widget/CheckedTextView;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->g:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->m:Lf/i/a/a/h1/p0;

    .line 2
    iget-object v0, v0, Lf/i/a/a/h1/p0;->b:[Lf/i/a/a/h1/o0;

    aget-object v0, v0, p1

    .line 3
    iget v0, v0, Lf/i/a/a/h1/o0;->a:I

    if-le v0, v2, :cond_5

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->k:Lf/i/a/a/j1/f$a;

    iget v3, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->l:I

    .line 4
    iget-object v4, v0, Lf/i/a/a/j1/f$a;->c:[Lf/i/a/a/h1/p0;

    aget-object v4, v4, v3

    .line 5
    iget-object v4, v4, Lf/i/a/a/h1/p0;->b:[Lf/i/a/a/h1/o0;

    aget-object v4, v4, p1

    .line 6
    iget v4, v4, Lf/i/a/a/h1/o0;->a:I

    .line 7
    new-array v5, v4, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v4, :cond_1

    .line 8
    iget-object v8, v0, Lf/i/a/a/j1/f$a;->e:[[[I

    aget-object v8, v8, v3

    aget-object v8, v8, p1

    aget v8, v8, v6

    and-int/lit8 v8, v8, 0x7

    const/4 v9, 0x4

    if-eq v8, v9, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v7, 0x1

    .line 9
    aput v6, v5, v7

    move v7, v8

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {v5, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 11
    :goto_2
    array-length v10, v4

    if-ge v7, v10, :cond_3

    .line 12
    aget v10, v4, v7

    .line 13
    iget-object v11, v0, Lf/i/a/a/j1/f$a;->c:[Lf/i/a/a/h1/p0;

    aget-object v11, v11, v3

    .line 14
    iget-object v11, v11, Lf/i/a/a/h1/p0;->b:[Lf/i/a/a/h1/o0;

    aget-object v11, v11, p1

    .line 15
    iget-object v11, v11, Lf/i/a/a/h1/o0;->b:[Lf/i/a/a/b0;

    aget-object v10, v11, v10

    .line 16
    iget-object v10, v10, Lf/i/a/a/b0;->i:Ljava/lang/String;

    add-int/lit8 v11, v9, 0x1

    if-nez v9, :cond_2

    move-object v5, v10

    goto :goto_3

    .line 17
    :cond_2
    invoke-static {v5, v10}, Lf/i/a/a/m1/h0;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    xor-int/2addr v9, v2

    or-int/2addr v8, v9

    .line 18
    :goto_3
    iget-object v9, v0, Lf/i/a/a/j1/f$a;->e:[[[I

    aget-object v9, v9, v3

    aget-object v9, v9, p1

    aget v9, v9, v7

    and-int/lit8 v9, v9, 0x18

    .line 19
    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/lit8 v7, v7, 0x1

    move v9, v11

    goto :goto_2

    :cond_3
    if-eqz v8, :cond_4

    .line 20
    iget-object p1, v0, Lf/i/a/a/j1/f$a;->d:[I

    aget p1, p1, v3

    .line 21
    invoke-static {v6, p1}, Ljava/lang/Math;->min(II)I

    move-result v6

    :cond_4
    if-eqz v6, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method public final b()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->c:Landroid/widget/CheckedTextView;

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->n:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->d:Landroid/widget/CheckedTextView;

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->n:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    const/4 v0, 0x0

    .line 3
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->j:[[Landroid/widget/CheckedTextView;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/j1/d$e;

    const/4 v4, 0x0

    .line 5
    :goto_2
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->j:[[Landroid/widget/CheckedTextView;

    aget-object v6, v5, v0

    array-length v6, v6

    if-ge v4, v6, :cond_4

    .line 6
    aget-object v5, v5, v0

    aget-object v5, v5, v4

    if-eqz v1, :cond_3

    .line 7
    iget-object v6, v1, Lf/i/a/a/j1/d$e;->b:[I

    array-length v7, v6

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_2

    aget v9, v6, v8

    if-ne v9, v4, :cond_1

    const/4 v6, 0x1

    goto :goto_4

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_2
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_5

    :cond_3
    const/4 v6, 0x0

    .line 8
    :goto_5
    invoke-virtual {v5, v6}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public final c()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x3

    if-lt v0, v2, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->k:Lf/i/a/a/j1/f$a;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->c:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->d:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->c:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->d:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->k:Lf/i/a/a/j1/f$a;

    iget v3, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->l:I

    .line 9
    iget-object v0, v0, Lf/i/a/a/j1/f$a;->c:[Lf/i/a/a/h1/p0;

    aget-object v0, v0, v3

    .line 10
    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->m:Lf/i/a/a/h1/p0;

    .line 11
    iget v0, v0, Lf/i/a/a/h1/p0;->a:I

    new-array v3, v0, [[Landroid/widget/CheckedTextView;

    iput-object v3, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->j:[[Landroid/widget/CheckedTextView;

    .line 12
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->h:Z

    if-eqz v3, :cond_2

    if-le v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    const/4 v3, 0x0

    .line 13
    :goto_2
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->m:Lf/i/a/a/h1/p0;

    iget v5, v4, Lf/i/a/a/h1/p0;->a:I

    if-ge v3, v5, :cond_8

    .line 14
    iget-object v4, v4, Lf/i/a/a/h1/p0;->b:[Lf/i/a/a/h1/o0;

    aget-object v4, v4, v3

    .line 15
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->a(I)Z

    move-result v5

    .line 16
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->j:[[Landroid/widget/CheckedTextView;

    iget v7, v4, Lf/i/a/a/h1/o0;->a:I

    new-array v7, v7, [Landroid/widget/CheckedTextView;

    aput-object v7, v6, v3

    const/4 v6, 0x0

    .line 17
    :goto_3
    iget v7, v4, Lf/i/a/a/h1/o0;->a:I

    if-ge v6, v7, :cond_7

    if-nez v6, :cond_3

    .line 18
    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->b:Landroid/view/LayoutInflater;

    sget v8, Lchuangyuan/ycj/videolibrary/R$layout;->exo_list_divider:I

    invoke-virtual {v7, v8, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_3
    if-nez v5, :cond_5

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    const v7, 0x109000f

    goto :goto_5

    :cond_5
    :goto_4
    const v7, 0x1090010

    .line 19
    :goto_5
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->b:Landroid/view/LayoutInflater;

    .line 20
    invoke-virtual {v8, v7, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckedTextView;

    .line 21
    iget v8, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->a:I

    invoke-virtual {v7, v8}, Landroid/widget/CheckedTextView;->setBackgroundResource(I)V

    .line 22
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->i:Lf/i/a/a/k1/h;

    .line 23
    iget-object v9, v4, Lf/i/a/a/h1/o0;->b:[Lf/i/a/a/b0;

    aget-object v9, v9, v6

    .line 24
    invoke-interface {v8, v9}, Lf/i/a/a/k1/h;->a(Lf/i/a/a/b0;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->k:Lf/i/a/a/j1/f$a;

    iget v9, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->l:I

    .line 26
    iget-object v8, v8, Lf/i/a/a/j1/f$a;->e:[[[I

    aget-object v8, v8, v9

    aget-object v8, v8, v3

    aget v8, v8, v6

    and-int/lit8 v8, v8, 0x7

    const/4 v9, 0x4

    if-ne v8, v9, :cond_6

    .line 27
    invoke-virtual {v7, v1}, Landroid/widget/CheckedTextView;->setFocusable(Z)V

    .line 28
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/CheckedTextView;->setTag(Ljava/lang/Object;)V

    .line 29
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->e:Lcom/google/android/exoplayer2/ui/TrackSelectionView$b;

    invoke-virtual {v7, v8}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    .line 30
    :cond_6
    invoke-virtual {v7, v2}, Landroid/widget/CheckedTextView;->setFocusable(Z)V

    .line 31
    invoke-virtual {v7, v2}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 32
    :goto_6
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->j:[[Landroid/widget/CheckedTextView;

    aget-object v8, v8, v3

    aput-object v7, v8, v6

    .line 33
    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 34
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->b()V

    return-void
.end method

.method public getIsDisabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->n:Z

    return v0
.end method

.method public getOverrides()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lf/i/a/a/j1/d$e;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public setAllowAdaptiveSelections(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->g:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->g:Z

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->c()V

    :cond_0
    return-void
.end method

.method public setAllowMultipleOverrides(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->h:Z

    if-eq v0, p1, :cond_1

    .line 2
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->h:Z

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    sub-int/2addr p1, v0

    :goto_0
    if-lez p1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->c()V

    :cond_1
    return-void
.end method

.method public setShowDisableOption(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->c:Landroid/widget/CheckedTextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    return-void
.end method

.method public setTrackNameProvider(Lf/i/a/a/k1/h;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->i:Lf/i/a/a/k1/h;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->c()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method
