.class public Lcom/comeback/data/ui/jav/ActorDetailActivity;
.super Lcom/comeback/data/base/BaseRefreshActivity;
.source "ActorDetailActivity.java"


# instance fields
.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ll/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll/d<",
            "Li/i0;",
            ">;"
        }
    .end annotation
.end field

.field public ivHead:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvSecondName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseRefreshActivity;-><init>()V

    return-void
.end method

.method public static r(Lcom/comeback/data/ui/jav/ActorDetailActivity;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j(Z)Lf/j/a/a/f/i;

    return-void
.end method

.method public static s(Lcom/comeback/data/ui/jav/ActorDetailActivity;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j(Z)Lf/j/a/a/f/i;

    return-void
.end method

.method public static t(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    const-string v1, "fg8CAw47XFIXA0Y="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroidx/core/app/ActivityOptionsCompat;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroidx/core/app/ActivityOptionsCompat;

    move-result-object p1

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/comeback/data/ui/jav/ActorDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "QhAP"

    .line 3
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "Xg8E"

    .line 4
    invoke-static {p3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p1}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 6
    invoke-static {p0, v0, p1}, Landroidx/core/content/ContextCompat;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "QhAP"

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/jav/ActorDetailActivity;->d:Ljava/lang/String;

    const-string v0, "Xg8E"

    .line 2
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/comeback/data/ui/jav/ActorDetailActivity;->e:Ljava/lang/String;

    return-void
.end method

.method public d()I
    .locals 1

    const v0, 0x7f0c0076

    return v0
.end method

.method public e()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BaseRefreshActivity;->e()V

    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->j(I)V

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/jav/ActorDetailActivity;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/comeback/data/ui/jav/ActorDetailActivity;->ivHead:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->u0(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method

.method public l()Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 2

    .line 1
    new-instance v0, Lcom/comeback/data/ui/jav/adapter/VideoAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/comeback/data/ui/jav/adapter/VideoAdapter;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public m()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 2

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BaseActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/jav/ActorDetailActivity;->f:Ll/d;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ll/d;->cancel()V

    :cond_0
    return-void
.end method

.method public p(I)V
    .locals 4

    .line 1
    invoke-static {}, Lf/e/a/j/i0/c;->a()Lf/e/a/j/i0/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lf/e/a/j/v/e/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/comeback/data/ui/jav/ActorDetailActivity;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "CBICAw5O"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lf/e/a/k/b;->h0:Ljava/lang/String;

    sget-object v3, Lf/e/a/k/b;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lf/e/a/j/i0/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ll/d;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/jav/ActorDetailActivity;->f:Ll/d;

    .line 2
    new-instance v1, Lcom/comeback/data/ui/jav/ActorDetailActivity$a;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/jav/ActorDetailActivity$a;-><init>(Lcom/comeback/data/ui/jav/ActorDetailActivity;I)V

    invoke-interface {v0, v1}, Ll/d;->X(Ll/f;)V

    return-void
.end method
