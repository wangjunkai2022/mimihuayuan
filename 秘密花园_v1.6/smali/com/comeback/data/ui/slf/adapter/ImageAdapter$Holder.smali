.class public Lcom/comeback/data/ui/slf/adapter/ImageAdapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "ImageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/slf/adapter/ImageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/slf/bean/SLFItemBean;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/slf/adapter/ImageAdapter;

.field public b:Lcom/comeback/data/ui/slf/bean/SLFItemBean;

.field public ivImg:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/slf/adapter/ImageAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/slf/adapter/ImageAdapter$Holder;->a:Lcom/comeback/data/ui/slf/adapter/ImageAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/comeback/data/ui/slf/bean/SLFItemBean;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/slf/adapter/ImageAdapter$Holder;->b:Lcom/comeback/data/ui/slf/bean/SLFItemBean;

    .line 3
    invoke-virtual {p1}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->getImg()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/slf/adapter/ImageAdapter$Holder;->ivImg:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lc/a/a/b/g/h;->P0(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/slf/adapter/ImageAdapter$Holder;->tvName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
