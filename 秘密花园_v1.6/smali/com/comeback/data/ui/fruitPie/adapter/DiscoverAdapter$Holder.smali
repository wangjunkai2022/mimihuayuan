.class public Lcom/comeback/data/ui/fruitPie/adapter/DiscoverAdapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "DiscoverAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/fruitPie/adapter/DiscoverAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$RecommendEntity;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/fruitPie/adapter/DiscoverAdapter;

.field public b:Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$RecommendEntity;

.field public ivImg:Lcom/comeback/data/widget/RatioImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvLength:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/fruitPie/adapter/DiscoverAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/fruitPie/adapter/DiscoverAdapter$Holder;->a:Lcom/comeback/data/ui/fruitPie/adapter/DiscoverAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$RecommendEntity;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/adapter/DiscoverAdapter$Holder;->b:Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$RecommendEntity;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/adapter/DiscoverAdapter$Holder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$RecommendEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/adapter/DiscoverAdapter$Holder;->b:Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$RecommendEntity;

    invoke-virtual {v0}, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$RecommendEntity;->getImg_url()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/fruitPie/adapter/DiscoverAdapter$Holder;->ivImg:Lcom/comeback/data/widget/RatioImageView;

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->u0(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/adapter/DiscoverAdapter$Holder;->tvCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$RecommendEntity;->getPlay_time_num_total()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/adapter/DiscoverAdapter$Holder;->tvLength:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$RecommendEntity;->getMovie_time()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
