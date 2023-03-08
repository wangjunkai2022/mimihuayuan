.class public final Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog$FragmentAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "TrackSelectionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FragmentAdapter"
.end annotation


# instance fields
.field public final synthetic this$0:Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;


# direct methods
.method public constructor <init>(Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog$FragmentAdapter;->this$0:Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;

    .line 2
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog$FragmentAdapter;->this$0:Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;

    invoke-static {v0}, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;->access$000(Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog$FragmentAdapter;->this$0:Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;

    invoke-static {v0}, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;->access$000(Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog$FragmentAdapter;->this$0:Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog$FragmentAdapter;->this$0:Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;

    invoke-static {v1}, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;->access$100(Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;->access$200(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
