.class public Lcom/comeback/data/ui/fruitPie/adapter/VideoAdapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "VideoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/fruitPie/adapter/VideoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity$ListEntity;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/fruitPie/adapter/VideoAdapter;

.field public b:Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity$ListEntity;

.field public ivImg:Lcom/comeback/data/widget/RatioImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvDate:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvIntro:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/fruitPie/adapter/VideoAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/fruitPie/adapter/VideoAdapter$Holder;->a:Lcom/comeback/data/ui/fruitPie/adapter/VideoAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity$ListEntity;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/adapter/VideoAdapter$Holder;->b:Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity$ListEntity;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/adapter/VideoAdapter$Holder;->tvDate:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0M7PRA=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity$ListEntity;->getDate_number()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "F4T/+0s="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/comeback/data/ui/fruitPie/adapter/VideoAdapter$Holder;->b:Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity$ListEntity;

    invoke-virtual {v2}, Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity$ListEntity;->getShow_time()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/adapter/VideoAdapter$Holder;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/comeback/data/ui/fruitPie/adapter/VideoAdapter$Holder;->b:Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity$ListEntity;

    invoke-virtual {v1}, Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity$ListEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/adapter/VideoAdapter$Holder;->b:Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity$ListEntity;

    invoke-virtual {v0}, Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity$ListEntity;->getImg_url()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/fruitPie/adapter/VideoAdapter$Holder;->ivImg:Lcom/comeback/data/widget/RatioImageView;

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->u0(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/adapter/VideoAdapter$Holder;->tvIntro:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/comeback/data/ui/fruitPie/adapter/VideoAdapter$Holder;->b:Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity$ListEntity;

    invoke-virtual {v1}, Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity$ListEntity;->getSubtitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/adapter/VideoAdapter$Holder;->tvCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity$ListEntity;->getDate_number()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
