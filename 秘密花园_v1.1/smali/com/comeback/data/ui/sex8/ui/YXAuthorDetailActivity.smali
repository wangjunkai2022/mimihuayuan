.class public Lcom/comeback/data/ui/sex8/ui/YXAuthorDetailActivity;
.super Lcom/comeback/data/base/BaseRefreshActivity;
.source "YXAuthorDetailActivity.java"


# instance fields
.field public d:Lcom/comeback/data/ui/sex8/bean/YXHostBean;

.field public ivHeader:Lcom/comeback/data/widget/RatioImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvHot:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvSpecial:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTitle:Landroid/widget/TextView;
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

.method public static synthetic r(Lcom/comeback/data/ui/sex8/ui/YXAuthorDetailActivity;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->c:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method

.method public static synthetic s(Lcom/comeback/data/ui/sex8/ui/YXAuthorDetailActivity;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->c:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method

.method public static t(Landroid/content/Context;Lcom/comeback/data/ui/sex8/bean/YXHostBean;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/comeback/data/ui/sex8/ui/YXAuthorDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "Xw0QECkWWF0="

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

    const-string v0, "Xw0QECkWWF0="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/sex8/bean/YXHostBean;

    iput-object p1, p0, Lcom/comeback/data/ui/sex8/ui/YXAuthorDetailActivity;->d:Lcom/comeback/data/ui/sex8/bean/YXHostBean;

    return-void
.end method

.method public d()I
    .locals 1

    const v0, 0x7f0c00b1

    return v0
.end method

.method public e()V
    .locals 2

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->j(I)V

    .line 2
    invoke-super {p0}, Lcom/comeback/data/base/BaseRefreshActivity;->e()V

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/ui/YXAuthorDetailActivity;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/comeback/data/ui/sex8/ui/YXAuthorDetailActivity;->d:Lcom/comeback/data/ui/sex8/bean/YXHostBean;

    invoke-virtual {v1}, Lcom/comeback/data/ui/sex8/bean/YXHostBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/ui/YXAuthorDetailActivity;->tvSpecial:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/comeback/data/ui/sex8/ui/YXAuthorDetailActivity;->d:Lcom/comeback/data/ui/sex8/bean/YXHostBean;

    invoke-virtual {v1}, Lcom/comeback/data/ui/sex8/bean/YXHostBean;->getWorks_count()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/ui/YXAuthorDetailActivity;->tvHot:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/comeback/data/ui/sex8/ui/YXAuthorDetailActivity;->d:Lcom/comeback/data/ui/sex8/bean/YXHostBean;

    invoke-virtual {v1}, Lcom/comeback/data/ui/sex8/bean/YXHostBean;->getHits_count()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/ui/YXAuthorDetailActivity;->d:Lcom/comeback/data/ui/sex8/bean/YXHostBean;

    invoke-virtual {v0}, Lcom/comeback/data/ui/sex8/bean/YXHostBean;->getImg()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/sex8/ui/YXAuthorDetailActivity;->ivHeader:Lcom/comeback/data/widget/RatioImageView;

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->u0(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method

.method public l()Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 1

    .line 1
    new-instance v0, Lcom/comeback/data/ui/sex8/adapter/NovelListAdapter;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/sex8/adapter/NovelListAdapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public p(I)V
    .locals 4

    .line 1
    invoke-static {}, Lf/e/a/j/j0/a/b;->a()Lf/e/a/j/j0/a/a;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/comeback/data/ui/sex8/bean/YXParams;

    invoke-direct {v1}, Lcom/comeback/data/ui/sex8/bean/YXParams;-><init>()V

    const-string v2, "BlI="

    .line 3
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/comeback/data/ui/sex8/bean/YXParams;->setPage_size(Ljava/lang/String;)V

    const-string v2, "RQMHDQQsW0osDlsUDAMH"

    .line 4
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/comeback/data/ui/sex8/bean/YXParams;->setV(Ljava/lang/String;)V

    .line 5
    iget-object v2, p0, Lcom/comeback/data/ui/sex8/ui/YXAuthorDetailActivity;->d:Lcom/comeback/data/ui/sex8/bean/YXHostBean;

    invoke-virtual {v2}, Lcom/comeback/data/ui/sex8/bean/YXHostBean;->getHost_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/comeback/data/ui/sex8/bean/YXParams;->setHostid(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1, p1}, Lcom/comeback/data/ui/sex8/bean/YXParams;->setPage(I)V

    .line 7
    invoke-virtual {v1}, Lcom/comeback/data/ui/sex8/bean/YXParams;->toJson()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lf/e/a/j/j0/a/a;->d(Ljava/lang/String;J)Lm/e;

    move-result-object v0

    .line 9
    new-instance v1, Lcom/comeback/data/ui/sex8/ui/YXAuthorDetailActivity$a;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/sex8/ui/YXAuthorDetailActivity$a;-><init>(Lcom/comeback/data/ui/sex8/ui/YXAuthorDetailActivity;I)V

    .line 10
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void
.end method
