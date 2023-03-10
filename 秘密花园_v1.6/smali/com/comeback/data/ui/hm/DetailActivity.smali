.class public Lcom/comeback/data/ui/hm/DetailActivity;
.super Lcom/comeback/data/base/BaseRefreshActivity;
.source "DetailActivity.java"


# instance fields
.field public d:Ll/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll/d<",
            "Li/i0;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcom/comeback/data/ui/hm/bean/ItemInfo;

.field public f:Z

.field public ivImg:Lcom/comeback/data/widget/RatioImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public ivLike:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvAuthor:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvDesc:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvState:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvUpdate:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseRefreshActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/comeback/data/ui/hm/DetailActivity;->f:Z

    return-void
.end method

.method public static r(Lcom/comeback/data/ui/hm/DetailActivity;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j(Z)Lf/j/a/a/f/i;

    return-void
.end method

.method public static s(Lcom/comeback/data/ui/hm/DetailActivity;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j(Z)Lf/j/a/a/f/i;

    return-void
.end method

.method public static u(Landroid/content/Context;Landroid/widget/ImageView;Lcom/comeback/data/ui/hm/bean/ItemInfo;)V
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

    const-class v1, Lcom/comeback/data/ui/hm/DetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "XgwFCw=="

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

    const-string v0, "XgwFCw=="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/hm/bean/ItemInfo;

    iput-object p1, p0, Lcom/comeback/data/ui/hm/DetailActivity;->e:Lcom/comeback/data/ui/hm/bean/ItemInfo;

    return-void
.end method

.method public d()I
    .locals 1

    const v0, 0x7f0c0067

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
    iget-object v0, p0, Lcom/comeback/data/ui/hm/DetailActivity;->e:Lcom/comeback/data/ui/hm/bean/ItemInfo;

    invoke-virtual {v0}, Lcom/comeback/data/ui/hm/bean/ItemInfo;->getImage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/hm/DetailActivity;->ivImg:Lcom/comeback/data/widget/RatioImageView;

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->u0(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/hm/DetailActivity;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/comeback/data/ui/hm/DetailActivity;->e:Lcom/comeback/data/ui/hm/bean/ItemInfo;

    invoke-virtual {v1}, Lcom/comeback/data/ui/hm/bean/ItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/hm/DetailActivity;->tvAuthor:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/comeback/data/ui/hm/DetailActivity;->e:Lcom/comeback/data/ui/hm/bean/ItemInfo;

    invoke-virtual {v1}, Lcom/comeback/data/ui/hm/bean/ItemInfo;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/hm/DetailActivity;->tvUpdate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/comeback/data/ui/hm/DetailActivity;->e:Lcom/comeback/data/ui/hm/bean/ItemInfo;

    invoke-virtual {v1}, Lcom/comeback/data/ui/hm/bean/ItemInfo;->getUpdate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/comeback/data/ui/hm/DetailActivity;->tvDesc:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/comeback/data/ui/hm/DetailActivity;->e:Lcom/comeback/data/ui/hm/bean/ItemInfo;

    invoke-virtual {v1}, Lcom/comeback/data/ui/hm/bean/ItemInfo;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-static {}, Lg/a/x;->P()Lg/a/x;

    move-result-object v0

    invoke-static {v0}, Lf/e/a/k/g;->d(Lg/a/x;)Lf/e/a/k/g;

    move-result-object v0

    const-class v1, Lcom/comeback/data/ui/hm/bean/ItemInfo;

    const-string v2, "XgY="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/comeback/data/ui/hm/DetailActivity;->e:Lcom/comeback/data/ui/hm/bean/ItemInfo;

    invoke-virtual {v3}, Lcom/comeback/data/ui/hm/bean/ItemInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lf/e/a/k/g;->f(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lg/a/j0;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lg/a/u;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/hm/DetailActivity;->t(Z)V

    return-void
.end method

.method public l()Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 1

    .line 1
    new-instance v0, Lcom/comeback/data/ui/hm/adapter/ChapterAdapter;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/hm/adapter/ChapterAdapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BaseActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/hm/DetailActivity;->d:Ll/d;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ll/d;->cancel()V

    :cond_0
    return-void
.end method

.method public p(I)V
    .locals 5

    .line 1
    invoke-static {}, Lf/e/a/j/i0/c;->a()Lf/e/a/j/i0/a;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/hm/DetailActivity;->e:Lcom/comeback/data/ui/hm/bean/ItemInfo;

    invoke-virtual {v1}, Lcom/comeback/data/ui/hm/bean/ItemInfo;->isHm()Z

    move-result v1

    iget-object v2, p0, Lcom/comeback/data/ui/hm/DetailActivity;->e:Lcom/comeback/data/ui/hm/bean/ItemInfo;

    invoke-virtual {v2}, Lcom/comeback/data/ui/hm/bean/ItemInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_0

    .line 3
    sget-object v4, Lf/e/a/j/r/f/a;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v4, Lf/e/a/j/r/f/a;->b:Ljava/lang/String;

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1

    const-string v1, "GA8CCgMGWBwaCFIIVw=="

    goto :goto_1

    :cond_1
    const-string v1, "GBoQSwIdX1xc"

    :goto_1
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "GQoXCQc="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-interface {v0, v1}, Lf/e/a/j/i0/a;->c(Ljava/lang/String;)Ll/d;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/hm/DetailActivity;->d:Ll/d;

    .line 9
    new-instance v1, Lcom/comeback/data/ui/hm/DetailActivity$a;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/hm/DetailActivity$a;-><init>(Lcom/comeback/data/ui/hm/DetailActivity;I)V

    invoke-interface {v0, v1}, Ll/d;->X(Ll/f;)V

    return-void
.end method

.method public final t(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/hm/DetailActivity;->f:Z

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/hm/DetailActivity;->ivLike:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const p1, 0x7f0e0020

    goto :goto_0

    :cond_0
    const p1, 0x7f0e001f

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
