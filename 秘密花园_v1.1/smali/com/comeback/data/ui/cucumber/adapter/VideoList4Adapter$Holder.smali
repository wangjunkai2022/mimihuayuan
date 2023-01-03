.class public Lcom/comeback/data/ui/cucumber/adapter/VideoList4Adapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "VideoList4Adapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/cucumber/adapter/VideoList4Adapter;
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
.field public a:Lcom/comeback/data/ui/cucumber/adapter/VideoList4Adapter;

.field public b:Lcom/comeback/data/ui/cucumber/bean/Video;

.field public ivCover:Lcom/comeback/data/widget/RatioImageView;
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

.field public tv_pay:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/cucumber/adapter/VideoList4Adapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/cucumber/adapter/VideoList4Adapter$Holder;->a:Lcom/comeback/data/ui/cucumber/adapter/VideoList4Adapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/comeback/data/ui/cucumber/bean/Video;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/adapter/VideoList4Adapter$Holder;->b:Lcom/comeback/data/ui/cucumber/bean/Video;

    .line 3
    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/Video;->getCover()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/cucumber/adapter/VideoList4Adapter$Holder;->ivCover:Lcom/comeback/data/widget/RatioImageView;

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->u0(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/adapter/VideoList4Adapter$Holder;->tvName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/Video;->getMovName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/adapter/VideoList4Adapter$Holder;->tvDuration:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/Video;->getMins()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/adapter/VideoList4Adapter$Holder;->tv_pay:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/Video;->getMovPackageId()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
