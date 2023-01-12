.class public final Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "TrackSelectionDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog$TrackSelectionViewFragment;,
        Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog$FragmentAdapter;
    }
.end annotation


# instance fields
.field public onClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public final tabFragments:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog$TrackSelectionViewFragment;",
            ">;"
        }
    .end annotation
.end field

.field public final tabTrackTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public titleId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;->tabFragments:Landroid/util/SparseArray;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;->tabTrackTypes:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    return-void
.end method

.method public static a(Lf/i/a/a/j1/d$c;Lf/i/a/a/j1/f$a;Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;Lf/i/a/a/j1/d;Landroid/content/DialogInterface;I)V
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    if-eqz v0, :cond_a

    .line 1
    iget-object v15, v0, Lf/i/a/a/j1/l;->a:Ljava/lang/String;

    .line 2
    iget-object v14, v0, Lf/i/a/a/j1/l;->b:Ljava/lang/String;

    .line 3
    iget-boolean v13, v0, Lf/i/a/a/j1/l;->c:Z

    .line 4
    iget v12, v0, Lf/i/a/a/j1/l;->d:I

    .line 5
    iget v6, v0, Lf/i/a/a/j1/d$c;->f:I

    .line 6
    iget v7, v0, Lf/i/a/a/j1/d$c;->g:I

    .line 7
    iget v8, v0, Lf/i/a/a/j1/d$c;->h:I

    .line 8
    iget v9, v0, Lf/i/a/a/j1/d$c;->i:I

    .line 9
    iget-boolean v10, v0, Lf/i/a/a/j1/d$c;->j:Z

    .line 10
    iget-boolean v11, v0, Lf/i/a/a/j1/d$c;->k:Z

    .line 11
    iget-boolean v5, v0, Lf/i/a/a/j1/d$c;->l:Z

    .line 12
    iget v4, v0, Lf/i/a/a/j1/d$c;->m:I

    move-object/from16 v16, v14

    .line 13
    iget v14, v0, Lf/i/a/a/j1/d$c;->n:I

    move-object/from16 v17, v15

    .line 14
    iget-boolean v15, v0, Lf/i/a/a/j1/d$c;->o:Z

    move/from16 v18, v15

    .line 15
    iget v15, v0, Lf/i/a/a/j1/d$c;->p:I

    move/from16 v19, v15

    .line 16
    iget v15, v0, Lf/i/a/a/j1/d$c;->q:I

    move/from16 v20, v15

    .line 17
    iget-boolean v15, v0, Lf/i/a/a/j1/d$c;->r:Z

    move/from16 v21, v15

    .line 18
    iget-boolean v15, v0, Lf/i/a/a/j1/d$c;->s:Z

    move/from16 v22, v15

    .line 19
    iget-boolean v15, v0, Lf/i/a/a/j1/d$c;->t:Z

    move/from16 v23, v15

    .line 20
    iget-boolean v15, v0, Lf/i/a/a/j1/d$c;->u:Z

    move/from16 v24, v15

    .line 21
    iget-boolean v15, v0, Lf/i/a/a/j1/d$c;->v:Z

    move/from16 v25, v15

    .line 22
    iget-boolean v15, v0, Lf/i/a/a/j1/d$c;->w:Z

    move/from16 v26, v15

    .line 23
    iget v15, v0, Lf/i/a/a/j1/d$c;->x:I

    move/from16 v27, v5

    .line 24
    iget-object v5, v0, Lf/i/a/a/j1/d$c;->y:Landroid/util/SparseArray;

    move/from16 v28, v15

    .line 25
    new-instance v15, Landroid/util/SparseArray;

    invoke-direct {v15}, Landroid/util/SparseArray;-><init>()V

    move/from16 v29, v12

    move/from16 v30, v13

    const/4 v12, 0x0

    .line 26
    :goto_0
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-ge v12, v13, :cond_0

    .line 27
    invoke-virtual {v5, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    move/from16 v31, v14

    new-instance v14, Ljava/util/HashMap;

    invoke-virtual {v5, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v33, v5

    move-object/from16 v5, v32

    check-cast v5, Ljava/util/Map;

    invoke-direct {v14, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v15, v13, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v12, v12, 0x1

    move/from16 v14, v31

    move-object/from16 v5, v33

    goto :goto_0

    :cond_0
    move/from16 v31, v14

    .line 28
    iget-object v0, v0, Lf/i/a/a/j1/d$c;->z:Landroid/util/SparseBooleanArray;

    .line 29
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v0

    const/4 v5, 0x0

    .line 30
    :goto_1
    iget v12, v1, Lf/i/a/a/j1/f$a;->a:I

    if-ge v5, v12, :cond_8

    .line 31
    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    if-eqz v12, :cond_2

    .line 32
    invoke-interface {v12}, Ljava/util/Map;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1

    goto :goto_2

    .line 33
    :cond_1
    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 34
    :cond_2
    :goto_2
    invoke-virtual {v2, v5}, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;->getIsDisabled(I)Z

    move-result v12

    .line 35
    invoke-virtual {v0, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v13

    if-ne v13, v12, :cond_3

    goto :goto_3

    :cond_3
    if-eqz v12, :cond_4

    const/4 v12, 0x1

    .line 36
    invoke-virtual {v0, v5, v12}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_3

    .line 37
    :cond_4
    invoke-virtual {v0, v5}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 38
    :goto_3
    invoke-virtual {v2, v5}, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;->getOverrides(I)Ljava/util/List;

    move-result-object v12

    .line 39
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_7

    .line 40
    iget-object v13, v1, Lf/i/a/a/j1/f$a;->c:[Lf/i/a/a/h1/p0;

    aget-object v13, v13, v5

    const/4 v14, 0x0

    .line 41
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lf/i/a/a/j1/d$e;

    .line 42
    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/Map;

    if-nez v32, :cond_5

    .line 43
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 44
    invoke-virtual {v15, v5, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4

    :cond_5
    move-object/from16 v14, v32

    .line 45
    :goto_4
    invoke-interface {v14, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_6

    invoke-interface {v14, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v12}, Lf/i/a/a/m1/h0;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_5

    .line 46
    :cond_6
    invoke-interface {v14, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_5
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p1

    goto :goto_1

    :cond_8
    if-eqz v3, :cond_9

    .line 47
    new-instance v1, Lf/i/a/a/j1/d$c;

    move/from16 v2, v27

    move-object v5, v1

    move/from16 v27, v29

    move v12, v2

    move/from16 v2, v30

    move v13, v4

    move-object/from16 v4, v16

    move/from16 v14, v31

    move-object/from16 v30, v15

    move-object/from16 v16, v17

    move/from16 v17, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v22

    move/from16 v22, v23

    move/from16 v29, v28

    move/from16 v28, v26

    move/from16 v26, v25

    move/from16 v25, v24

    move/from16 v15, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v22

    move-object/from16 v22, v4

    move/from16 v23, v2

    move/from16 v24, v27

    move/from16 v27, v28

    move/from16 v28, v29

    move-object/from16 v29, v30

    move-object/from16 v30, v0

    invoke-direct/range {v5 .. v30}, Lf/i/a/a/j1/d$c;-><init>(IIIIZZZIIZLjava/lang/String;IIZZZLjava/lang/String;ZIZZZILandroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V

    .line 48
    invoke-virtual {v3, v1}, Lf/i/a/a/j1/d;->i(Lf/i/a/a/j1/d$c;)V

    return-void

    :cond_9
    const/4 v0, 0x0

    throw v0

    :cond_a
    const/4 v0, 0x0

    .line 49
    throw v0
.end method

.method public static synthetic access$000(Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;)Landroid/util/SparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;->tabFragments:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static synthetic access$100(Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;->tabTrackTypes:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$200(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;->getTrackTypeString(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createForMappedTrackInfoAndParameters(ILf/i/a/a/j1/f$a;Lf/i/a/a/j1/d$c;ZZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;
    .locals 9

    .line 1
    new-instance v8, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;

    invoke-direct {v8}, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;-><init>()V

    move-object v0, v8

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 2
    invoke-direct/range {v0 .. v7}, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;->init(ILf/i/a/a/j1/f$a;Lf/i/a/a/j1/d$c;ZZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V

    return-object v8
.end method

.method public static createForTrackSelector(Lf/i/a/a/j1/d;Landroid/content/DialogInterface$OnDismissListener;)Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;
    .locals 9

    .line 1
    iget-object v0, p0, Lf/i/a/a/j1/f;->c:Lf/i/a/a/j1/f$a;

    .line 2
    invoke-static {v0}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lf/i/a/a/j1/f$a;

    .line 3
    new-instance v0, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;

    invoke-direct {v0}, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;-><init>()V

    .line 4
    iget-object v1, p0, Lf/i/a/a/j1/d;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lf/i/a/a/j1/d$c;

    .line 5
    sget v2, Lchuangyuan/ycj/videolibrary/R$string;->track_selection_title:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v7, Le/a/a/a/c;

    invoke-direct {v7, v4, v3, v0, p0}, Le/a/a/a/c;-><init>(Lf/i/a/a/j1/d$c;Lf/i/a/a/j1/f$a;Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;Lf/i/a/a/j1/d;)V

    move-object v1, v0

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;->init(ILf/i/a/a/j1/f$a;Lf/i/a/a/j1/d$c;ZZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V

    return-object v0
.end method

.method public static getTrackTypeString(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1
    sget p1, Lchuangyuan/ycj/videolibrary/R$string;->exo_track_selection_title_text:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 3
    :cond_1
    sget p1, Lchuangyuan/ycj/videolibrary/R$string;->exo_track_selection_title_video:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_2
    sget p1, Lchuangyuan/ycj/videolibrary/R$string;->exo_track_selection_title_audio:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private init(ILf/i/a/a/j1/f$a;Lf/i/a/a/j1/d$c;ZZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 8

    .line 1
    iput p1, p0, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;->titleId:I

    .line 2
    iput-object p6, p0, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 3
    iput-object p7, p0, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    const/4 p1, 0x0

    .line 4
    :goto_0
    iget p6, p2, Lf/i/a/a/j1/f$a;->a:I

    if-ge p1, p6, :cond_1

    .line 5
    invoke-static {p2, p1}, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;->showTabForRenderer(Lf/i/a/a/j1/f$a;I)Z

    move-result p6

    if-eqz p6, :cond_0

    .line 6
    iget-object p6, p2, Lf/i/a/a/j1/f$a;->b:[I

    aget p6, p6, p1

    .line 7
    iget-object p7, p2, Lf/i/a/a/j1/f$a;->c:[Lf/i/a/a/h1/p0;

    aget-object p7, p7, p1

    .line 8
    new-instance v7, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog$TrackSelectionViewFragment;

    invoke-direct {v7}, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog$TrackSelectionViewFragment;-><init>()V

    .line 9
    invoke-virtual {p3, p1}, Lf/i/a/a/j1/d$c;->a(I)Z

    move-result v3

    .line 10
    invoke-virtual {p3, p1, p7}, Lf/i/a/a/j1/d$c;->b(ILf/i/a/a/h1/p0;)Lf/i/a/a/j1/d$e;

    move-result-object v4

    move-object v0, v7

    move-object v1, p2

    move v2, p1

    move v5, p4

    move v6, p5

    .line 11
    invoke-virtual/range {v0 .. v6}, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog$TrackSelectionViewFragment;->init(Lf/i/a/a/j1/f$a;IZLf/i/a/a/j1/d$e;ZZ)V

    .line 12
    iget-object p7, p0, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;->tabFragments:Landroid/util/SparseArray;

    invoke-virtual {p7, p1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 13
    iget-object p7, p0, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;->tabTrackTypes:Ljava/util/ArrayList;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    invoke-virtual {p7, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static isSupportedTrackType(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static showTabForRenderer(Lf/i/a/a/j1/f$a;I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/j1/f$a;->c:[Lf/i/a/a/h1/p0;

    aget-object v0, v0, p1

    .line 2
    iget v0, v0, Lf/i/a/a/h1/p0;->a:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_0
    iget-object p0, p0, Lf/i/a/a/j1/f$a;->b:[I

    aget p0, p0, p1

    .line 4
    invoke-static {p0}, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;->isSupportedTrackType(I)Z

    move-result p0

    return p0
.end method

.method public static willHaveContent(Lf/i/a/a/j1/d;)Z
    .locals 0

    .line 3
    iget-object p0, p0, Lf/i/a/a/j1/f;->c:Lf/i/a/a/j1/f$a;

    if-eqz p0, :cond_0

    .line 4
    invoke-static {p0}, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;->willHaveContent(Lf/i/a/a/j1/f$a;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static willHaveContent(Lf/i/a/a/j1/f$a;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget v2, p0, Lf/i/a/a/j1/f$a;->a:I

    if-ge v1, v2, :cond_1

    .line 2
    invoke-static {p0, v1}, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;->showTabForRenderer(Lf/i/a/a/j1/f$a;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public synthetic b(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public synthetic c(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {p1, v0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public getIsDisabled(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;->tabFragments:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog$TrackSelectionViewFragment;

    if-eqz p1, :cond_0

    .line 2
    iget-boolean p1, p1, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog$TrackSelectionViewFragment;->isDisabled:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getOverrides(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lf/i/a/a/j1/d$e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;->tabFragments:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog$TrackSelectionViewFragment;

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog$TrackSelectionViewFragment;->overrides:Ljava/util/List;

    :goto_0
    return-object p1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 1
    new-instance p1, Landroidx/appcompat/app/AppCompatDialog;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lchuangyuan/ycj/videolibrary/R$style;->TrackSelectionDialogThemeOverlay:I

    invoke-direct {p1, v0, v1}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    .line 3
    iget v0, p0, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;->titleId:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatDialog;->setTitle(I)V

    return-object p1
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
    sget p3, Lchuangyuan/ycj/videolibrary/R$layout;->track_selection_dialog:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    sget p2, Lchuangyuan/ycj/videolibrary/R$id;->track_selection_dialog_tab_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/tabs/TabLayout;

    .line 3
    sget p3, Lchuangyuan/ycj/videolibrary/R$id;->track_selection_dialog_view_pager:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/viewpager/widget/ViewPager;

    .line 4
    sget v1, Lchuangyuan/ycj/videolibrary/R$id;->track_selection_dialog_cancel_button:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 5
    sget v2, Lchuangyuan/ycj/videolibrary/R$id;->track_selection_dialog_ok_button:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 6
    new-instance v3, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog$FragmentAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog$FragmentAdapter;-><init>(Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {p3, v3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 7
    invoke-virtual {p2, p3}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 8
    iget-object p3, p0, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;->tabFragments:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    const/4 v3, 0x1

    if-le p3, v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 9
    new-instance p2, Le/a/a/a/b;

    invoke-direct {p2, p0}, Le/a/a/a/b;-><init>(Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;)V

    invoke-virtual {v1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    new-instance p2, Le/a/a/a/a;

    invoke-direct {p2, p0}, Le/a/a/a/a;-><init>(Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;)V

    invoke-virtual {v2, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 2
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method
