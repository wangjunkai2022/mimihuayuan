.class public Lcom/comeback/data/ui/dn/SearchActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "SearchActivity.java"


# instance fields
.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/comeback/data/base/BaseFragment;",
            ">;"
        }
    .end annotation
.end field

.field public mEtSearch:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public mIvCancel:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public mViewPager:Lcom/comeback/data/widget/CustomViewPager;
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

.method public static n(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-class v0, Lcom/comeback/data/ui/dn/SearchActivity;

    invoke-static {p0, v0}, Lf/b/a/a/a;->u(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    const v0, 0x7f0c0043

    return v0
.end method

.method public e()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/base/BaseActivity;->i()V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/dn/SearchActivity;->mEtSearch:Landroid/widget/EditText;

    new-instance v1, Lcom/comeback/data/ui/dn/SearchActivity$a;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/dn/SearchActivity$a;-><init>(Lcom/comeback/data/ui/dn/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/dn/SearchActivity;->mEtSearch:Landroid/widget/EditText;

    new-instance v1, Lf/e/a/j/h/a;

    invoke-direct {v1, p0}, Lf/e/a/j/h/a;-><init>(Lcom/comeback/data/ui/dn/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/comeback/data/ui/dn/SearchActivity;->b:Ljava/util/ArrayList;

    .line 5
    new-instance v1, Lcom/comeback/data/ui/dn/fragment/SearchVideoFragment;

    invoke-direct {v1}, Lcom/comeback/data/ui/dn/fragment/SearchVideoFragment;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/dn/SearchActivity;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/comeback/data/ui/dn/fragment/SearchUserFragment;

    invoke-direct {v1}, Lcom/comeback/data/ui/dn/fragment/SearchUserFragment;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lcom/comeback/data/ui/dn/SearchActivity;->b:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/16 v3, 0x8

    if-gt v1, v3, :cond_0

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v3, v1, -0x1

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/comeback/data/ui/dn/SearchActivity;->mViewPager:Lcom/comeback/data/widget/CustomViewPager;

    invoke-virtual {v1, v3}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 11
    iget-object v1, p0, Lcom/comeback/data/ui/dn/SearchActivity;->mViewPager:Lcom/comeback/data/widget/CustomViewPager;

    new-instance v3, Lcom/comeback/data/base/BaseViewPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "38Xljcni"

    .line 12
    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "0PbLguPE"

    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 13
    invoke-direct {v3, v4, v5, v0}, Lcom/comeback/data/base/BaseViewPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1, v3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    return-void
.end method

.method public synthetic l(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x3

    if-ne p2, p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/dn/SearchActivity;->m()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public m()V
    .locals 3

    .line 1
    invoke-static {p0}, Lc/a/a/b/g/h;->c0(Landroid/app/Activity;)V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/dn/SearchActivity;->mEtSearch:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "0fL/g9/R3LbAj6DJkMXuj4/vi+fWl4GJlM+O"

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/comeback/data/ui/dn/SearchActivity;->b:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/comeback/data/ui/dn/fragment/SearchVideoFragment;

    .line 6
    iput-object v0, v1, Lcom/comeback/data/ui/dn/fragment/SearchVideoFragment;->i:Ljava/lang/String;

    .line 7
    iget-object v1, v1, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h()Z

    .line 8
    iget-object v1, p0, Lcom/comeback/data/ui/dn/SearchActivity;->b:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/comeback/data/ui/dn/fragment/SearchUserFragment;

    .line 9
    iput-object v0, v1, Lcom/comeback/data/ui/dn/fragment/SearchUserFragment;->i:Ljava/lang/String;

    .line 10
    iget-object v0, v1, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h()Z

    return-void
.end method
