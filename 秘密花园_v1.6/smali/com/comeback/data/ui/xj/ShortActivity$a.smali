.class public Lcom/comeback/data/ui/xj/ShortActivity$a;
.super Landroidx/recyclerview/widget/PagerSnapHelper;
.source "ShortActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/xj/ShortActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/xj/ShortActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/xj/ShortActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xj/ShortActivity$a;->a:Lcom/comeback/data/ui/xj/ShortActivity;

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
    iget-object p2, p0, Lcom/comeback/data/ui/xj/ShortActivity$a;->a:Lcom/comeback/data/ui/xj/ShortActivity;

    .line 3
    iget-object p2, p2, Lcom/comeback/data/ui/xj/ShortActivity;->d:Lcom/comeback/data/ui/xj/adapter/ShortVideoAdapter;

    .line 4
    iput p1, p2, Lcom/comeback/data/ui/xj/adapter/ShortVideoAdapter;->d:I

    return p1
.end method
