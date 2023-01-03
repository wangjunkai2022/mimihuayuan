.class public Lcom/comeback/data/ui/dn/fragment/RecommendFragment$b;
.super Landroidx/recyclerview/widget/PagerSnapHelper;
.source "RecommendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/dn/fragment/RecommendFragment;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/dn/fragment/RecommendFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/dn/fragment/RecommendFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/fragment/RecommendFragment$b;->a:Lcom/comeback/data/ui/dn/fragment/RecommendFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/PagerSnapHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/PagerSnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public findTargetSnapPosition(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)I
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/PagerSnapHelper;->findTargetSnapPosition(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)I

    move-result p1

    .line 2
    iget-object p2, p0, Lcom/comeback/data/ui/dn/fragment/RecommendFragment$b;->a:Lcom/comeback/data/ui/dn/fragment/RecommendFragment;

    .line 3
    iget-object p2, p2, Lcom/comeback/data/ui/dn/fragment/RecommendFragment;->i:Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter;

    .line 4
    iput p1, p2, Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter;->d:I

    return p1
.end method
