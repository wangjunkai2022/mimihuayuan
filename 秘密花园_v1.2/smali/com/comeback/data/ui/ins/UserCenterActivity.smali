.class public Lcom/comeback/data/ui/ins/UserCenterActivity;
.super Lcom/comeback/data/base/BaseRefreshActivity;
.source "UserCenterActivity.java"


# instance fields
.field public basic_primary_text:I
    .annotation runtime Lbutterknife/BindColor;
    .end annotation
.end field

.field public basic_third_text:I
    .annotation runtime Lbutterknife/BindColor;
    .end annotation
.end field

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Z

.field public ivHead:Lcom/comeback/data/widget/RatioImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public ivImg:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public ivVideo:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseRefreshActivity;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/comeback/data/ui/ins/UserCenterActivity;->g:Z

    return-void
.end method

.method public static synthetic r(Lcom/comeback/data/ui/ins/UserCenterActivity;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->c:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method

.method public static synthetic s(Lcom/comeback/data/ui/ins/UserCenterActivity;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->c:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method

.method public static t(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/comeback/data/ui/ins/UserCenterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "WQMOAQ=="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "XgY="

    .line 3
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "QhAP"

    .line 4
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "XhEqCQoUXA=="

    .line 5
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static u(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/comeback/data/ui/ins/UserCenterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "WQMOAQ=="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "XgY="

    .line 3
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "QhAP"

    .line 4
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "XhEqCQoUXA=="

    .line 5
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "XgY="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/ins/UserCenterActivity;->e:Ljava/lang/String;

    const-string v0, "WQMOAQ=="

    .line 2
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/ins/UserCenterActivity;->d:Ljava/lang/String;

    const-string v0, "QhAP"

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/ins/UserCenterActivity;->f:Ljava/lang/String;

    const-string v0, "XhEqCQoUXA=="

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/comeback/data/ui/ins/UserCenterActivity;->g:Z

    return-void
.end method

.method public d()I
    .locals 1

    const v0, 0x7f0c006d

    return v0
.end method

.method public e()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/base/BaseActivity;->i()V

    .line 2
    invoke-super {p0}, Lcom/comeback/data/base/BaseRefreshActivity;->e()V

    .line 3
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->mRvList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/ins/UserCenterActivity;->tvName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/comeback/data/ui/ins/UserCenterActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/ins/UserCenterActivity;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/comeback/data/ui/ins/UserCenterActivity;->ivHead:Lcom/comeback/data/widget/RatioImageView;

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->z0(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/ins/UserCenterActivity;->ivImg:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/comeback/data/ui/ins/UserCenterActivity;->g:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/comeback/data/ui/ins/UserCenterActivity;->basic_primary_text:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/comeback/data/ui/ins/UserCenterActivity;->basic_third_text:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 7
    iget-object v0, p0, Lcom/comeback/data/ui/ins/UserCenterActivity;->ivVideo:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/comeback/data/ui/ins/UserCenterActivity;->g:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/comeback/data/ui/ins/UserCenterActivity;->basic_third_text:I

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/comeback/data/ui/ins/UserCenterActivity;->basic_primary_text:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method

.method public l()Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/ins/UserCenterActivity;->g:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/comeback/data/ui/ins/adapter/Image2Adapter;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/ins/adapter/Image2Adapter;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/comeback/data/ui/ins/adapter/Video2Adapter;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/ins/adapter/Video2Adapter;-><init>(Landroid/content/Context;)V

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

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090101

    if-eq p1, v0, :cond_2

    const v0, 0x7f090119

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean p1, p0, Lcom/comeback/data/ui/ins/UserCenterActivity;->g:Z

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/comeback/data/ui/ins/UserCenterActivity;->g:Z

    .line 4
    iget-object p1, p0, Lcom/comeback/data/ui/ins/UserCenterActivity;->ivVideo:Landroid/widget/ImageView;

    iget v0, p0, Lcom/comeback/data/ui/ins/UserCenterActivity;->basic_primary_text:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 5
    iget-object p1, p0, Lcom/comeback/data/ui/ins/UserCenterActivity;->ivImg:Landroid/widget/ImageView;

    iget v0, p0, Lcom/comeback/data/ui/ins/UserCenterActivity;->basic_third_text:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 6
    :cond_2
    iget-boolean p1, p0, Lcom/comeback/data/ui/ins/UserCenterActivity;->g:Z

    if-eqz p1, :cond_3

    return-void

    :cond_3
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/comeback/data/ui/ins/UserCenterActivity;->g:Z

    .line 8
    iget-object p1, p0, Lcom/comeback/data/ui/ins/UserCenterActivity;->ivImg:Landroid/widget/ImageView;

    iget v0, p0, Lcom/comeback/data/ui/ins/UserCenterActivity;->basic_primary_text:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 9
    iget-object p1, p0, Lcom/comeback/data/ui/ins/UserCenterActivity;->ivVideo:Landroid/widget/ImageView;

    iget v0, p0, Lcom/comeback/data/ui/ins/UserCenterActivity;->basic_third_text:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 10
    :goto_0
    iget-object p1, p0, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h()Z

    return-void
.end method

.method public p(I)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "RwMEAQ=="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RAsZAQ=="

    invoke-static {p1, v0, v1, v2}, Lf/b/a/a/a;->G(ILjava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x15

    .line 3
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-boolean v1, p0, Lcom/comeback/data/ui/ins/UserCenterActivity;->g:Z

    if-eqz v1, :cond_0

    .line 5
    invoke-static {}, Lf/e/a/j/s/e/b;->a()Lf/e/a/j/s/e/a;

    move-result-object v1

    iget-object v2, p0, Lcom/comeback/data/ui/ins/UserCenterActivity;->e:Ljava/lang/String;

    sget-object v3, Lf/e/a/k/b;->v0:Ljava/lang/String;

    invoke-interface {v1, v2, v0, v3}, Lf/e/a/j/s/e/a;->g(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Lm/e;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/comeback/data/ui/ins/UserCenterActivity$a;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/ins/UserCenterActivity$a;-><init>(Lcom/comeback/data/ui/ins/UserCenterActivity;I)V

    .line 7
    invoke-static {}, Lm/r/a;->a()Lm/g;

    move-result-object p1

    invoke-virtual {v0, p1}, Lm/e;->d(Lm/g;)Lm/e;

    move-result-object p1

    .line 8
    invoke-static {}, Lm/l/b/a;->a()Lm/g;

    move-result-object v0

    invoke-virtual {p1, v0}, Lm/e;->b(Lm/g;)Lm/e;

    move-result-object p1

    .line 9
    invoke-virtual {p1, v1}, Lm/e;->c(Lm/j;)Lm/k;

    .line 10
    iget-object p1, p0, Lcom/comeback/data/base/BaseActivity;->a:Lm/s/a;

    invoke-virtual {p1, v1}, Lm/s/a;->b(Lm/k;)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {}, Lf/e/a/j/s/e/b;->a()Lf/e/a/j/s/e/a;

    move-result-object v1

    iget-object v2, p0, Lcom/comeback/data/ui/ins/UserCenterActivity;->e:Ljava/lang/String;

    sget-object v3, Lf/e/a/k/b;->v0:Ljava/lang/String;

    invoke-interface {v1, v2, v0, v3}, Lf/e/a/j/s/e/a;->b(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Lm/e;

    move-result-object v0

    .line 12
    new-instance v1, Lcom/comeback/data/ui/ins/UserCenterActivity$b;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/ins/UserCenterActivity$b;-><init>(Lcom/comeback/data/ui/ins/UserCenterActivity;I)V

    .line 13
    invoke-static {}, Lm/r/a;->a()Lm/g;

    move-result-object p1

    invoke-virtual {v0, p1}, Lm/e;->d(Lm/g;)Lm/e;

    move-result-object p1

    .line 14
    invoke-static {}, Lm/l/b/a;->a()Lm/g;

    move-result-object v0

    invoke-virtual {p1, v0}, Lm/e;->b(Lm/g;)Lm/e;

    move-result-object p1

    .line 15
    invoke-virtual {p1, v1}, Lm/e;->c(Lm/j;)Lm/k;

    .line 16
    iget-object p1, p0, Lcom/comeback/data/base/BaseActivity;->a:Lm/s/a;

    invoke-virtual {p1, v1}, Lm/s/a;->b(Lm/k;)V

    :goto_0
    return-void
.end method
