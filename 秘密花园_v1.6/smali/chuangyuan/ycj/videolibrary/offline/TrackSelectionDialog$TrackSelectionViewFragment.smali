.class public final Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog$TrackSelectionViewFragment;
.super Landroidx/fragment/app/Fragment;
.source "TrackSelectionDialog.java"

# interfaces
.implements Lcom/google/android/exoplayer2/ui/TrackSelectionView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrackSelectionViewFragment"
.end annotation


# instance fields
.field public allowAdaptiveSelections:Z

.field public allowMultipleOverrides:Z

.field public isDisabled:Z

.field public mappedTrackInfo:Lf/i/a/a/j1/f$a;

.field public overrides:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/i/a/a/j1/d$e;",
            ">;"
        }
    .end annotation
.end field

.field public rendererIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    return-void
.end method


# virtual methods
.method public init(Lf/i/a/a/j1/f$a;IZLf/i/a/a/j1/d$e;ZZ)V
    .locals 0
    .param p4    # Lf/i/a/a/j1/d$e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog$TrackSelectionViewFragment;->mappedTrackInfo:Lf/i/a/a/j1/f$a;

    .line 2
    iput p2, p0, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog$TrackSelectionViewFragment;->rendererIndex:I

    .line 3
    iput-boolean p3, p0, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog$TrackSelectionViewFragment;->isDisabled:Z

    if-nez p4, :cond_0

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog$TrackSelectionViewFragment;->overrides:Ljava/util/List;

    .line 6
    iput-boolean p5, p0, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog$TrackSelectionViewFragment;->allowAdaptiveSelections:Z

    .line 7
    iput-boolean p6, p0, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog$TrackSelectionViewFragment;->allowMultipleOverrides:Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    sget p3, Lchuangyuan/ycj/videolibrary/R$layout;->exo_track_selection_dialog:I

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    sget p2, Lchuangyuan/ycj/videolibrary/R$id;->exo_track_selection_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/ui/TrackSelectionView;

    const/4 p3, 0x1

    .line 4
    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->setShowDisableOption(Z)V

    .line 5
    iget-boolean v1, p0, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog$TrackSelectionViewFragment;->allowMultipleOverrides:Z

    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->setAllowMultipleOverrides(Z)V

    .line 6
    iget-boolean v1, p0, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog$TrackSelectionViewFragment;->allowAdaptiveSelections:Z

    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->setAllowAdaptiveSelections(Z)V

    .line 7
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog$TrackSelectionViewFragment;->mappedTrackInfo:Lf/i/a/a/j1/f$a;

    iget v2, p0, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog$TrackSelectionViewFragment;->rendererIndex:I

    iget-boolean v3, p0, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog$TrackSelectionViewFragment;->isDisabled:Z

    iget-object v4, p0, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog$TrackSelectionViewFragment;->overrides:Ljava/util/List;

    .line 8
    iput-object v1, p2, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->k:Lf/i/a/a/j1/f$a;

    .line 9
    iput v2, p2, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->l:I

    .line 10
    iput-boolean v3, p2, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->n:Z

    .line 11
    iput-object p0, p2, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->o:Lcom/google/android/exoplayer2/ui/TrackSelectionView$c;

    .line 12
    iget-boolean v1, p2, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->h:Z

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p3

    goto :goto_0

    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    :goto_0
    if-ge v0, p3, :cond_1

    .line 13
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/j1/d$e;

    .line 14
    iget-object v2, p2, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->f:Landroid/util/SparseArray;

    iget v3, v1, Lf/i/a/a/j1/d$e;->a:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->c()V

    return-object p1
.end method

.method public onTrackSelectionChanged(ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lf/i/a/a/j1/d$e;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog$TrackSelectionViewFragment;->isDisabled:Z

    .line 2
    iput-object p2, p0, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog$TrackSelectionViewFragment;->overrides:Ljava/util/List;

    return-void
.end method
