.class public Lcom/comeback/data/ui/live/LiveChanelActivity;
.super Lcom/comeback/data/base/BaseRefreshActivity;
.source "LiveChanelActivity.java"


# instance fields
.field public banner:Lcom/comeback/data/widget/viewpager/PageView;
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

.method public static synthetic r(Lcom/comeback/data/ui/live/LiveChanelActivity;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->c:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method

.method public static u(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-class v0, Lcom/comeback/data/ui/live/LiveChanelActivity;

    invoke-static {p0, v0}, Lf/b/a/a/a;->u(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    const v0, 0x7f0c0081

    return v0
.end method

.method public e()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BaseRefreshActivity;->e()V

    .line 2
    sget-object v0, Lcom/comeback/data/App;->e:Lcom/comeback/data/ui/main/bean/ConfigBean;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/comeback/data/ui/main/bean/ConfigBean;->getBanner()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/comeback/data/App;->e:Lcom/comeback/data/ui/main/bean/ConfigBean;

    .line 5
    invoke-virtual {v0}, Lcom/comeback/data/ui/main/bean/ConfigBean;->getBanner()Ljava/util/List;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/comeback/data/ui/live/LiveChanelActivity;->banner:Lcom/comeback/data/widget/viewpager/PageView;

    new-instance v2, Lf/e/a/j/z/a;

    invoke-direct {v2, p0}, Lf/e/a/j/z/a;-><init>(Lcom/comeback/data/ui/live/LiveChanelActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/comeback/data/widget/viewpager/PageView;->a(Ljava/util/List;Lcom/comeback/data/widget/viewpager/AdPagerAdapter$a;)V

    .line 7
    iget-object v0, p0, Lcom/comeback/data/ui/live/LiveChanelActivity;->banner:Lcom/comeback/data/widget/viewpager/PageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public l()Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 1

    .line 1
    new-instance v0, Lcom/comeback/data/ui/live/adapter/ChannelAdapter;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/live/adapter/ChannelAdapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public m()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 2

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public p(I)V
    .locals 1

    .line 1
    invoke-static {}, Lf/e/a/j/i0/c;->a()Lf/e/a/j/i0/a;

    move-result-object p1

    const-string v0, "Bg=="

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lf/e/a/j/i0/a;->h(Ljava/lang/String;)Lm/e;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/comeback/data/ui/live/LiveChanelActivity$a;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/live/LiveChanelActivity$a;-><init>(Lcom/comeback/data/ui/live/LiveChanelActivity;)V

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void
.end method

.method public final s(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "VgwHFgQaXR0aCEACFh5NClQWCgsFXW96NjE="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public synthetic t(Lf/e/a/g/a;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lf/e/a/g/a;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/live/LiveChanelActivity;->s(Ljava/lang/String;)V

    return-void
.end method
