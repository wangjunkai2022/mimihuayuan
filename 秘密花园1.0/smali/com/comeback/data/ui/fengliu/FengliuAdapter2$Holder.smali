.class public Lcom/comeback/data/ui/fengliu/FengliuAdapter2$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "FengliuAdapter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/fengliu/FengliuAdapter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/fengliu/bean/MMInfo2;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/fengliu/bean/MMInfo2;

.field public b:Lcom/comeback/data/ui/fengliu/FengliuAdapter2;

.field public ivCover:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvAddress:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvIntro:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvState:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/fengliu/FengliuAdapter2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/fengliu/FengliuAdapter2$Holder;->b:Lcom/comeback/data/ui/fengliu/FengliuAdapter2;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/FengliuAdapter2$Holder;->a:Lcom/comeback/data/ui/fengliu/bean/MMInfo2;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/FengliuAdapter2$Holder;->ivCover:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->getCoverPictureHrefs()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    invoke-virtual {p1}, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->isChaImage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->getCoverPictureHrefs()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/fengliu/FengliuAdapter2$Holder;->ivCover:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->y0(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->getCoverPictureHrefs()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/fengliu/FengliuAdapter2$Holder;->ivCover:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->u0(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 7
    :goto_1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/FengliuAdapter2$Holder;->tvName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/FengliuAdapter2$Holder;->tvState:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->getPublished_at()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/FengliuAdapter2$Holder;->tvIntro:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/FengliuAdapter2$Holder;->tvAddress:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->getCityCodeReadable()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
