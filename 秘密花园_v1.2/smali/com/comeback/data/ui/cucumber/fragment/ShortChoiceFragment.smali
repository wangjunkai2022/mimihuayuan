.class public Lcom/comeback/data/ui/cucumber/fragment/ShortChoiceFragment;
.super Lcom/comeback/data/base/BaseRefreshFragment;
.source "ShortChoiceFragment.java"


# instance fields
.field public colorThird:I
    .annotation runtime Lbutterknife/BindColor;
    .end annotation
.end field

.field public colorWhite:I
    .annotation runtime Lbutterknife/BindColor;
    .end annotation
.end field

.field public i:Ljava/lang/String;

.field public tvNew:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvPlay:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseRefreshFragment;-><init>()V

    const-string v0, "YwsOAQ=="

    .line 2
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/fragment/ShortChoiceFragment;->i:Ljava/lang/String;

    return-void
.end method

.method public static synthetic m(Lcom/comeback/data/ui/cucumber/fragment/ShortChoiceFragment;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method

.method public static synthetic n(Lcom/comeback/data/ui/cucumber/fragment/ShortChoiceFragment;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method


# virtual methods
.method public b()I
    .locals 1

    const v0, 0x7f0c0107

    return v0
.end method

.method public f()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BaseRefreshFragment;->f()V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w([I)Lf/j/a/a/f/i;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f060023
        0x7f060021
    .end array-data
.end method

.method public h()Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 2

    .line 1
    new-instance v0, Lcom/comeback/data/ui/cucumber/adapter/ShortGirdAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/comeback/data/ui/cucumber/adapter/ShortGirdAdapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public i()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 3

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public l(I)V
    .locals 2

    .line 1
    invoke-static {}, Lf/e/a/j/g/h/c;->a()Lf/e/a/j/g/h/a;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/cucumber/fragment/ShortChoiceFragment;->i:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lf/e/a/j/g/h/a;->d(Ljava/lang/String;I)Lm/e;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/comeback/data/ui/cucumber/fragment/ShortChoiceFragment$a;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/cucumber/fragment/ShortChoiceFragment$a;-><init>(Lcom/comeback/data/ui/cucumber/fragment/ShortChoiceFragment;I)V

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0902ea

    if-eq p1, v0, :cond_1

    const v0, 0x7f0902f7

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/comeback/data/ui/cucumber/fragment/ShortChoiceFragment;->tvNew:Landroid/widget/TextView;

    iget v0, p0, Lcom/comeback/data/ui/cucumber/fragment/ShortChoiceFragment;->colorThird:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3
    iget-object p1, p0, Lcom/comeback/data/ui/cucumber/fragment/ShortChoiceFragment;->tvPlay:Landroid/widget/TextView;

    iget v0, p0, Lcom/comeback/data/ui/cucumber/fragment/ShortChoiceFragment;->colorWhite:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const-string p1, "Zw4CHQ=="

    .line 4
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/fragment/ShortChoiceFragment;->i:Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/comeback/data/ui/cucumber/fragment/ShortChoiceFragment;->tvNew:Landroid/widget/TextView;

    iget v0, p0, Lcom/comeback/data/ui/cucumber/fragment/ShortChoiceFragment;->colorWhite:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    iget-object p1, p0, Lcom/comeback/data/ui/cucumber/fragment/ShortChoiceFragment;->tvPlay:Landroid/widget/TextView;

    iget v0, p0, Lcom/comeback/data/ui/cucumber/fragment/ShortChoiceFragment;->colorThird:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const-string p1, "YwsOAQ=="

    .line 7
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/fragment/ShortChoiceFragment;->i:Ljava/lang/String;

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h()Z

    return-void
.end method
