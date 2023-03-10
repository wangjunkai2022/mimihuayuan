.class public Lcom/comeback/data/ui/xj/ShortActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "ShortActivity.java"


# instance fields
.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/comeback/data/ui/xj/bean/VideoBean;",
            ">;"
        }
    .end annotation
.end field

.field public c:I

.field public d:Lcom/comeback/data/ui/xj/adapter/ShortVideoAdapter;

.field public mRvList:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static l(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/comeback/data/ui/xj/bean/VideoBean;",
            ">;I)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/comeback/data/ui/xj/ShortActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "UwMXBQ=="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string p1, "XgwHARM="

    .line 3
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "UwMXBQ=="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/xj/ShortActivity;->b:Ljava/util/ArrayList;

    const-string v0, "XgwHARM="

    .line 2
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/comeback/data/ui/xj/ShortActivity;->c:I

    return-void
.end method

.method public d()I
    .locals 1

    const v0, 0x7f0c014d

    return v0
.end method

.method public e()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/base/BaseActivity;->g()V

    const-string v0, "FAQFVl1BAAE1"

    .line 2
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->h(I)V

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/xj/ShortActivity;->mRvList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 4
    new-instance v0, Lcom/comeback/data/ui/xj/ShortActivity$a;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/xj/ShortActivity$a;-><init>(Lcom/comeback/data/ui/xj/ShortActivity;)V

    .line 5
    iget-object v1, p0, Lcom/comeback/data/ui/xj/ShortActivity;->mRvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/comeback/data/ui/xj/ShortActivity$b;

    invoke-direct {v2, p0}, Lcom/comeback/data/ui/xj/ShortActivity$b;-><init>(Lcom/comeback/data/ui/xj/ShortActivity;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 6
    iget-object v1, p0, Lcom/comeback/data/ui/xj/ShortActivity;->mRvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 7
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 8
    iget-object v1, p0, Lcom/comeback/data/ui/xj/ShortActivity;->mRvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 9
    new-instance v1, Lcom/comeback/data/ui/xj/adapter/ShortVideoAdapter;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/xj/adapter/ShortVideoAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/comeback/data/ui/xj/ShortActivity;->d:Lcom/comeback/data/ui/xj/adapter/ShortVideoAdapter;

    .line 10
    iget v2, p0, Lcom/comeback/data/ui/xj/ShortActivity;->c:I

    .line 11
    iput v2, v1, Lcom/comeback/data/ui/xj/adapter/ShortVideoAdapter;->d:I

    .line 12
    iget-object v2, p0, Lcom/comeback/data/ui/xj/ShortActivity;->mRvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 13
    iget-object v1, p0, Lcom/comeback/data/ui/xj/ShortActivity;->d:Lcom/comeback/data/ui/xj/adapter/ShortVideoAdapter;

    iget-object v2, p0, Lcom/comeback/data/ui/xj/ShortActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    .line 14
    iget v1, p0, Lcom/comeback/data/ui/xj/ShortActivity;->c:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BaseActivity;->onDestroy()V

    .line 2
    invoke-static {}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;->getInstance()Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;

    move-result-object v0

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;->onDestroy()V

    return-void
.end method
