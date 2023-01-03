.class public Lcom/comeback/data/ui/sex8/ui/YXDetailActivity;
.super Lcom/comeback/data/base/BaseRefreshActivity;
.source "YXDetailActivity.java"


# static fields
.field public static e:Ljava/lang/String;


# instance fields
.field public d:Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;

.field public ivHeader:Lcom/comeback/data/widget/RatioImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public ivPic:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvAuthor:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvAuthor2:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvDetail:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvDetail2:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvName:Landroid/widget/TextView;
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

.method public static r(Lcom/comeback/data/ui/sex8/ui/YXDetailActivity;Lcom/comeback/data/ui/sex8/bean/YXNovelDetail;)V
    .locals 4

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail;->getData()Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;

    move-result-object p1

    iput-object p1, p0, Lcom/comeback/data/ui/sex8/ui/YXDetailActivity;->d:Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/ui/YXDetailActivity;->tvName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/comeback/data/ui/sex8/ui/YXDetailActivity;->tvTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/comeback/data/ui/sex8/ui/YXDetailActivity;->d:Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;

    invoke-virtual {v0}, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/comeback/data/ui/sex8/ui/YXDetailActivity;->d:Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;

    invoke-virtual {p1}, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;->getCover_img()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/comeback/data/ui/sex8/ui/YXDetailActivity;->ivPic:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lc/a/a/b/g/h;->u0(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 5
    iget-object p1, p0, Lcom/comeback/data/ui/sex8/ui/YXDetailActivity;->tvDetail:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/comeback/data/ui/sex8/ui/YXDetailActivity;->d:Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;

    invoke-virtual {v1}, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;->getRadio_count()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/comeback/data/ui/sex8/ui/YXDetailActivity;->d:Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;

    invoke-virtual {v2}, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;->getRadio_count()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "3vnl"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/comeback/data/ui/sex8/ui/YXDetailActivity;->d:Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;

    invoke-virtual {p1}, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;->getHost()Lcom/comeback/data/ui/sex8/bean/YXHostBean;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/ui/YXDetailActivity;->tvAuthor:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/sex8/bean/YXHostBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/ui/YXDetailActivity;->tvAuthor2:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/sex8/bean/YXHostBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/ui/YXDetailActivity;->tvDetail2:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/comeback/data/ui/sex8/bean/YXHostBean;->getWorks_count()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/comeback/data/ui/sex8/bean/YXHostBean;->getHits_count()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {p1}, Lcom/comeback/data/ui/sex8/bean/YXHostBean;->getImg()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/comeback/data/ui/sex8/ui/YXDetailActivity;->ivHeader:Lcom/comeback/data/widget/RatioImageView;

    invoke-static {p1, v0}, Lc/a/a/b/g/h;->u0(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 11
    iget-object p1, p0, Lcom/comeback/data/base/BaseRefreshActivity;->c:Lcom/comeback/data/base/BaseAbstractAdapter;

    iget-object p0, p0, Lcom/comeback/data/ui/sex8/ui/YXDetailActivity;->d:Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;

    invoke-virtual {p0}, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;->getRadio_list()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 12
    throw p0
.end method

.method public static s(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/comeback/data/ui/sex8/ui/YXDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "Vg4BEQYsUFc="

    .line 2
    invoke-static {v1, v0, p1, p0, v0}, Lf/b/a/a/a;->v(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "Vg4BEQYsUFc="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/comeback/data/ui/sex8/ui/YXDetailActivity;->e:Ljava/lang/String;

    return-void
.end method

.method public d()I
    .locals 1

    const v0, 0x7f0c00b2

    return v0
.end method

.method public e()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->j(I)V

    .line 2
    invoke-super {p0}, Lcom/comeback/data/base/BaseRefreshActivity;->e()V

    return-void
.end method

.method public l()Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 1

    .line 1
    new-instance v0, Lcom/comeback/data/ui/sex8/adapter/ChapterAdapter;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/sex8/adapter/ChapterAdapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public p(I)V
    .locals 3

    .line 1
    invoke-static {}, Lf/e/a/j/j0/a/b;->a()Lf/e/a/j/j0/a/a;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/comeback/data/ui/sex8/bean/YXParams;

    invoke-direct {v0}, Lcom/comeback/data/ui/sex8/bean/YXParams;-><init>()V

    const-string v1, "RQMHDQQsWF8RE1k4EQQFBA=="

    .line 3
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/comeback/data/ui/sex8/bean/YXParams;->setV(Ljava/lang/String;)V

    const-string v1, "Bg=="

    .line 4
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/comeback/data/ui/sex8/bean/YXParams;->setDevice_type(Ljava/lang/String;)V

    .line 5
    sget-object v1, Lcom/comeback/data/ui/sex8/ui/YXDetailActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/comeback/data/ui/sex8/bean/YXParams;->setAlbum_id(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lcom/comeback/data/ui/sex8/bean/YXParams;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lf/e/a/j/j0/a/a;->c(Ljava/lang/String;J)Lm/e;

    move-result-object p1

    .line 8
    new-instance v0, Lcom/comeback/data/ui/sex8/ui/YXDetailActivity$a;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/sex8/ui/YXDetailActivity$a;-><init>(Lcom/comeback/data/ui/sex8/ui/YXDetailActivity;)V

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void
.end method
