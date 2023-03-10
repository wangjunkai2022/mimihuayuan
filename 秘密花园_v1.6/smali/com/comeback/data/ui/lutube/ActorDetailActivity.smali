.class public Lcom/comeback/data/ui/lutube/ActorDetailActivity;
.super Lcom/comeback/data/base/BaseRefreshActivity;
.source "ActorDetailActivity.java"


# instance fields
.field public d:Lcom/comeback/data/ui/lutube/bean/LActorsBean;

.field public ivHead:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvFollow:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvName:Landroid/widget/TextView;
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

.method public static synthetic r(Lcom/comeback/data/ui/lutube/ActorDetailActivity;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->c:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method

.method public static synthetic s(Lcom/comeback/data/ui/lutube/ActorDetailActivity;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->c:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method

.method public static u(Landroid/content/Context;Landroid/widget/ImageView;Lcom/comeback/data/ui/lutube/bean/LActorsBean;)V
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

    const-class v1, Lcom/comeback/data/ui/lutube/ActorDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "UwMXBQ=="

    .line 3
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p1}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 5
    invoke-static {p0, v0, p1}, Landroidx/core/content/ContextCompat;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "UwMXBQ=="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/lutube/bean/LActorsBean;

    iput-object p1, p0, Lcom/comeback/data/ui/lutube/ActorDetailActivity;->d:Lcom/comeback/data/ui/lutube/bean/LActorsBean;

    return-void
.end method

.method public d()I
    .locals 1

    const v0, 0x7f0c0085

    return v0
.end method

.method public e()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BaseRefreshActivity;->e()V

    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->j(I)V

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/lutube/ActorDetailActivity;->d:Lcom/comeback/data/ui/lutube/bean/LActorsBean;

    invoke-virtual {v0}, Lcom/comeback/data/ui/lutube/bean/LActorsBean;->getActor_url()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/lutube/ActorDetailActivity;->ivHead:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->z0(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/lutube/ActorDetailActivity;->tvName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/comeback/data/ui/lutube/ActorDetailActivity;->d:Lcom/comeback/data/ui/lutube/bean/LActorsBean;

    invoke-virtual {v1}, Lcom/comeback/data/ui/lutube/bean/LActorsBean;->getActor_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/lutube/ActorDetailActivity;->d:Lcom/comeback/data/ui/lutube/bean/LActorsBean;

    invoke-virtual {v0}, Lg/a/g0;->getRealm()Lg/a/x;

    move-result-object v0

    invoke-static {v0}, Lf/e/a/k/g;->d(Lg/a/x;)Lf/e/a/k/g;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/lutube/ActorDetailActivity;->d:Lcom/comeback/data/ui/lutube/bean/LActorsBean;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "VgEXCxksUFc="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/comeback/data/ui/lutube/ActorDetailActivity;->d:Lcom/comeback/data/ui/lutube/bean/LActorsBean;

    invoke-virtual {v3}, Lcom/comeback/data/ui/lutube/bean/LActorsBean;->getActor_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lf/e/a/k/g;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/comeback/data/ui/lutube/ActorDetailActivity;->t()V

    :cond_0
    return-void
.end method

.method public l()Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 2

    .line 1
    new-instance v0, Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter;-><init>(Landroid/content/Context;Z)V

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

.method public p(I)V
    .locals 5

    .line 1
    invoke-static {}, Lf/e/a/j/b0/k/d;->a()Lf/e/a/j/b0/k/b;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/lutube/ActorDetailActivity;->d:Lcom/comeback/data/ui/lutube/bean/LActorsBean;

    invoke-virtual {v1}, Lcom/comeback/data/ui/lutube/bean/LActorsBean;->getActor_id()Ljava/lang/String;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "RwMEAQ=="

    .line 3
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Qw0IAQU="

    invoke-static {p1, v2, v3, v4}, Lf/b/a/a/a;->G(ILjava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4
    sget-object v4, Lf/e/a/k/b;->u:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-interface {v0, v1, v2}, Lf/e/a/j/b0/k/b;->g(Ljava/lang/String;Ljava/util/Map;)Lm/e;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/comeback/data/ui/lutube/ActorDetailActivity$a;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/lutube/ActorDetailActivity$a;-><init>(Lcom/comeback/data/ui/lutube/ActorDetailActivity;I)V

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void
.end method

.method public final t()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/lutube/ActorDetailActivity;->tvFollow:Landroid/widget/TextView;

    const v1, 0x7f080092

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/lutube/ActorDetailActivity;->tvFollow:Landroid/widget/TextView;

    const-string v1, "FFFQV1hACg=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/lutube/ActorDetailActivity;->tvFollow:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/lutube/ActorDetailActivity;->tvFollow:Landroid/widget/TextView;

    const-string v1, "0tXRgv/F0aT8"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
