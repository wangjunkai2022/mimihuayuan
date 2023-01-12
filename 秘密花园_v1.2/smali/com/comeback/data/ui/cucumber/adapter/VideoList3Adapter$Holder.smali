.class public Lcom/comeback/data/ui/cucumber/adapter/VideoList3Adapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "VideoList3Adapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/cucumber/adapter/VideoList3Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/cucumber/bean/Video;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/cucumber/adapter/VideoList3Adapter;

.field public b:Lcom/comeback/data/ui/cucumber/bean/Video;

.field public ivImg:Lcom/comeback/data/widget/RatioImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvDuration:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvPlayCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTag1:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTag2:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTag3:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tv_pay:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/cucumber/adapter/VideoList3Adapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/cucumber/adapter/VideoList3Adapter$Holder;->a:Lcom/comeback/data/ui/cucumber/adapter/VideoList3Adapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Lcom/comeback/data/ui/cucumber/bean/Video;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/adapter/VideoList3Adapter$Holder;->b:Lcom/comeback/data/ui/cucumber/bean/Video;

    .line 3
    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/Video;->getVideoCover()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/cucumber/adapter/VideoList3Adapter$Holder;->ivImg:Lcom/comeback/data/widget/RatioImageView;

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->u0(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/adapter/VideoList3Adapter$Holder;->tvName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/Video;->getMovName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/adapter/VideoList3Adapter$Holder;->tvDuration:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/Video;->getMins()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/adapter/VideoList3Adapter$Holder;->tvPlayCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/Video;->getStrPlayCnt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/Video;->getMovSn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/Video;->getRelTagName()Ljava/util/List;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/comeback/data/ui/cucumber/adapter/VideoList3Adapter$Holder;->tvTag1:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object v1, p0, Lcom/comeback/data/ui/cucumber/adapter/VideoList3Adapter$Holder;->tvTag2:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    iget-object v1, p0, Lcom/comeback/data/ui/cucumber/adapter/VideoList3Adapter$Holder;->tvTag3:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 12
    iget-object v4, p0, Lcom/comeback/data/ui/cucumber/adapter/VideoList3Adapter$Holder;->tvTag1:Landroid/widget/TextView;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/comeback/data/ui/cucumber/bean/Video$TagsBean;

    invoke-virtual {v5}, Lcom/comeback/data/ui/cucumber/bean/Video$TagsBean;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v4, p0, Lcom/comeback/data/ui/cucumber/adapter/VideoList3Adapter$Holder;->tvTag1:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v1, :cond_1

    .line 15
    iget-object v4, p0, Lcom/comeback/data/ui/cucumber/adapter/VideoList3Adapter$Holder;->tvTag2:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/comeback/data/ui/cucumber/bean/Video$TagsBean;

    invoke-virtual {v5}, Lcom/comeback/data/ui/cucumber/bean/Video$TagsBean;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v4, p0, Lcom/comeback/data/ui/cucumber/adapter/VideoList3Adapter$Holder;->tvTag2:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_2

    .line 18
    iget-object v4, p0, Lcom/comeback/data/ui/cucumber/adapter/VideoList3Adapter$Holder;->tvTag3:Landroid/widget/TextView;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comeback/data/ui/cucumber/bean/Video$TagsBean;

    invoke-virtual {v0}, Lcom/comeback/data/ui/cucumber/bean/Video$TagsBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/adapter/VideoList3Adapter$Holder;->tvTag3:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    :cond_2
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/adapter/VideoList3Adapter$Holder;->tv_pay:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/Video;->getMovPackageId()I

    move-result p1

    if-ne p1, v1, :cond_3

    const/4 v2, 0x0

    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
