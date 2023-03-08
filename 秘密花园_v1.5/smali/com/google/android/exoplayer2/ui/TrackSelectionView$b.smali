.class public Lcom/google/android/exoplayer2/ui/TrackSelectionView$b;
.super Ljava/lang/Object;
.source "TrackSelectionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/TrackSelectionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/ui/TrackSelectionView;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/ui/TrackSelectionView;Lcom/google/android/exoplayer2/ui/TrackSelectionView$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView$b;->a:Lcom/google/android/exoplayer2/ui/TrackSelectionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView$b;->a:Lcom/google/android/exoplayer2/ui/TrackSelectionView;

    .line 2
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->c:Landroid/widget/CheckedTextView;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    .line 3
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->n:Z

    .line 4
    iget-object p1, v0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    goto/16 :goto_4

    .line 5
    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->d:Landroid/widget/CheckedTextView;

    const/4 v3, 0x0

    if-ne p1, v1, :cond_1

    .line 6
    iput-boolean v3, v0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->n:Z

    .line 7
    iget-object p1, v0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    goto/16 :goto_4

    .line 8
    :cond_1
    iput-boolean v3, v0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->n:Z

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 10
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 11
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 12
    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf/i/a/a/j1/d$e;

    .line 13
    iget-object v6, v0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->k:Lf/i/a/a/j1/f$a;

    invoke-static {v6}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v5, :cond_3

    .line 14
    iget-boolean p1, v0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->h:Z

    if-nez p1, :cond_2

    iget-object p1, v0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 15
    iget-object p1, v0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 16
    :cond_2
    iget-object p1, v0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    new-instance v5, Lf/i/a/a/j1/d$e;

    new-array v2, v2, [I

    aput v1, v2, v3

    invoke-direct {v5, v4, v2}, Lf/i/a/a/j1/d$e;-><init>(I[I)V

    invoke-virtual {p1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_4

    .line 17
    :cond_3
    iget v6, v5, Lf/i/a/a/j1/d$e;->c:I

    .line 18
    iget-object v5, v5, Lf/i/a/a/j1/d$e;->b:[I

    .line 19
    check-cast p1, Landroid/widget/CheckedTextView;

    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result p1

    .line 20
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->a(I)Z

    move-result v7

    if-nez v7, :cond_6

    .line 21
    iget-boolean v8, v0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->h:Z

    if-eqz v8, :cond_4

    iget-object v8, v0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->m:Lf/i/a/a/h1/p0;

    iget v8, v8, Lf/i/a/a/h1/p0;->a:I

    if-le v8, v2, :cond_4

    const/4 v8, 0x1

    goto :goto_0

    :cond_4
    const/4 v8, 0x0

    :goto_0
    if-eqz v8, :cond_5

    goto :goto_1

    :cond_5
    const/4 v8, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v8, 0x1

    :goto_2
    if-eqz p1, :cond_a

    if-eqz v8, :cond_a

    if-ne v6, v2, :cond_7

    .line 22
    iget-object p1, v0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_4

    .line 23
    :cond_7
    array-length p1, v5

    add-int/lit8 p1, p1, -0x1

    new-array p1, p1, [I

    .line 24
    array-length v2, v5

    const/4 v6, 0x0

    :goto_3
    if-ge v3, v2, :cond_9

    aget v7, v5, v3

    if-eq v7, v1, :cond_8

    add-int/lit8 v8, v6, 0x1

    .line 25
    aput v7, p1, v6

    move v6, v8

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 26
    :cond_9
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    new-instance v2, Lf/i/a/a/j1/d$e;

    invoke-direct {v2, v4, p1}, Lf/i/a/a/j1/d$e;-><init>(I[I)V

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4

    :cond_a
    if-nez p1, :cond_c

    if-eqz v7, :cond_b

    .line 27
    array-length p1, v5

    add-int/2addr p1, v2

    invoke-static {v5, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    .line 28
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aput v1, p1, v2

    .line 29
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    new-instance v2, Lf/i/a/a/j1/d$e;

    invoke-direct {v2, v4, p1}, Lf/i/a/a/j1/d$e;-><init>(I[I)V

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4

    .line 30
    :cond_b
    iget-object p1, v0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    new-instance v5, Lf/i/a/a/j1/d$e;

    new-array v2, v2, [I

    aput v1, v2, v3

    invoke-direct {v5, v4, v2}, Lf/i/a/a/j1/d$e;-><init>(I[I)V

    invoke-virtual {p1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    :cond_c
    :goto_4
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->b()V

    .line 32
    iget-object p1, v0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->o:Lcom/google/android/exoplayer2/ui/TrackSelectionView$c;

    if-eqz p1, :cond_d

    .line 33
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->getIsDisabled()Z

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->getOverrides()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView$c;->onTrackSelectionChanged(ZLjava/util/List;)V

    :cond_d
    return-void
.end method
