.class public Lcom/comeback/data/ui/gdian/adapter/ImageAdapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "ImageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/gdian/adapter/ImageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/gdian/bean/ImageList$DataEntity$ImageEntity;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/gdian/adapter/ImageAdapter;

.field public b:Lcom/comeback/data/ui/gdian/bean/ImageList$DataEntity$ImageEntity;

.field public ivImg:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvDesc:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/gdian/adapter/ImageAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/gdian/adapter/ImageAdapter$Holder;->a:Lcom/comeback/data/ui/gdian/adapter/ImageAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/comeback/data/ui/gdian/bean/ImageList$DataEntity$ImageEntity;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/adapter/ImageAdapter$Holder;->b:Lcom/comeback/data/ui/gdian/bean/ImageList$DataEntity$ImageEntity;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/adapter/ImageAdapter$Holder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/gdian/bean/ImageList$DataEntity$ImageEntity;->getAtlas_name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/comeback/data/ui/gdian/adapter/ImageAdapter$Holder;->b:Lcom/comeback/data/ui/gdian/bean/ImageList$DataEntity$ImageEntity;

    invoke-virtual {p1}, Lcom/comeback/data/ui/gdian/bean/ImageList$DataEntity$ImageEntity;->getAtlas_cover()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/comeback/data/ui/gdian/adapter/ImageAdapter$Holder;->ivImg:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lc/a/a/b/g/h;->u0(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 5
    iget-object p1, p0, Lcom/comeback/data/ui/gdian/adapter/ImageAdapter$Holder;->tvDesc:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/comeback/data/ui/gdian/adapter/ImageAdapter$Holder;->b:Lcom/comeback/data/ui/gdian/bean/ImageList$DataEntity$ImageEntity;

    invoke-virtual {v1}, Lcom/comeback/data/ui/gdian/bean/ImageList$DataEntity$ImageEntity;->getWatch_countText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "2N//"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/comeback/data/ui/gdian/adapter/ImageAdapter$Holder;->b:Lcom/comeback/data/ui/gdian/bean/ImageList$DataEntity$ImageEntity;

    invoke-virtual {v1}, Lcom/comeback/data/ui/gdian/bean/ImageList$DataEntity$ImageEntity;->getAtlas_long()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "Zw=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
