.class public Lcom/comeback/data/ui/cucumber/SearchResultActivity;
.super Lcom/comeback/data/base/BaseViewPagerActivity;
.source "SearchResultActivity.java"


# instance fields
.field public b:Lcom/comeback/data/ui/cucumber/bean/DefaultChannel;

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/comeback/data/base/BaseFragment;",
            ">;"
        }
    .end annotation
.end field

.field public etSearch:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseViewPagerActivity;-><init>()V

    return-void
.end method

.method public static o(Landroid/content/Context;Lcom/comeback/data/ui/cucumber/bean/DefaultChannel;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/comeback/data/ui/cucumber/SearchResultActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "UwcFBR4fTXAbB1oJHQY="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "UwcFBR4fTXAbB1oJHQY="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/cucumber/bean/DefaultChannel;

    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/SearchResultActivity;->b:Lcom/comeback/data/ui/cucumber/bean/DefaultChannel;

    return-void
.end method

.method public d()I
    .locals 1

    const v0, 0x7f0c003f

    return v0
.end method

.method public e()V
    .locals 2

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->j(I)V

    .line 2
    invoke-super {p0}, Lcom/comeback/data/base/BaseViewPagerActivity;->e()V

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/SearchResultActivity;->etSearch:Landroid/widget/EditText;

    new-instance v1, Lf/e/a/j/g/a;

    invoke-direct {v1, p0}, Lf/e/a/j/g/a;-><init>(Lcom/comeback/data/ui/cucumber/SearchResultActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public l()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/comeback/data/base/BaseFragment;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/SearchResultActivity;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Lcom/comeback/data/ui/cucumber/fragment/SearchResultFragment;->o(I)Lcom/comeback/data/ui/cucumber/fragment/SearchResultFragment;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/SearchResultActivity;->b:Lcom/comeback/data/ui/cucumber/bean/DefaultChannel;

    invoke-virtual {v0}, Lcom/comeback/data/ui/cucumber/bean/DefaultChannel;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/SearchResultActivity;->c:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/comeback/data/ui/cucumber/SearchResultActivity;->b:Lcom/comeback/data/ui/cucumber/bean/DefaultChannel;

    invoke-virtual {v2}, Lcom/comeback/data/ui/cucumber/bean/DefaultChannel;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/comeback/data/ui/cucumber/bean/DefaultChannel$DataBean;

    invoke-virtual {v2}, Lcom/comeback/data/ui/cucumber/bean/DefaultChannel$DataBean;->getParentModule()I

    move-result v2

    .line 5
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "Wg0HEQcWcFc="

    .line 6
    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7
    new-instance v2, Lcom/comeback/data/ui/cucumber/fragment/SearchResultFragment;

    invoke-direct {v2}, Lcom/comeback/data/ui/cucumber/fragment/SearchResultFragment;-><init>()V

    .line 8
    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 9
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/SearchResultActivity;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public m()[Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/SearchResultActivity;->b:Lcom/comeback/data/ui/cucumber/bean/DefaultChannel;

    invoke-virtual {v0}, Lcom/comeback/data/ui/cucumber/bean/DefaultChannel;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "0ufLjejb"

    .line 2
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-ge v3, v2, :cond_0

    add-int/lit8 v2, v3, 0x1

    .line 3
    iget-object v4, p0, Lcom/comeback/data/ui/cucumber/SearchResultActivity;->b:Lcom/comeback/data/ui/cucumber/bean/DefaultChannel;

    invoke-virtual {v4}, Lcom/comeback/data/ui/cucumber/bean/DefaultChannel;->getData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/comeback/data/ui/cucumber/bean/DefaultChannel$DataBean;

    invoke-virtual {v3}, Lcom/comeback/data/ui/cucumber/bean/DefaultChannel$DataBean;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    move v3, v2

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public n(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 p1, 0x0

    const/4 p3, 0x3

    if-ne p2, p3, :cond_4

    .line 1
    iget-object p2, p0, Lcom/comeback/data/ui/cucumber/SearchResultActivity;->etSearch:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 3
    invoke-static {p0}, Lc/a/a/b/g/h;->c0(Landroid/app/Activity;)V

    .line 4
    iget-object p3, p0, Lcom/comeback/data/base/BaseViewPagerActivity;->mViewPager:Lcom/comeback/data/widget/CustomViewPager;

    invoke-virtual {p3}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p3

    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/comeback/data/ui/cucumber/SearchResultActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_3

    .line 6
    iget-object v1, p0, Lcom/comeback/data/ui/cucumber/SearchResultActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/comeback/data/ui/cucumber/fragment/SearchResultFragment;

    if-ne v0, p3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 7
    :goto_1
    iput-object p2, v1, Lcom/comeback/data/ui/cucumber/fragment/SearchResultFragment;->j:Ljava/lang/String;

    .line 8
    iget-object v3, v1, Lcom/comeback/data/ui/cucumber/fragment/SearchResultFragment;->tvHint:Landroid/widget/TextView;

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    const-string v4, "0dDCgvf637rNg7zXnNfDjbTRi8LqlKO3lN2ngeb2HQ=="

    .line 9
    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v3, v1, Lcom/comeback/data/ui/cucumber/fragment/SearchResultFragment;->tvHint:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v2, :cond_2

    .line 11
    iget-object v1, v1, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h()Z

    goto :goto_2

    .line 12
    :cond_2
    iput-boolean p1, v1, Lcom/comeback/data/base/BaseFragment;->b:Z

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    return p1
.end method
