.class public Lcom/comeback/data/ui/fulao2/adapter/HVideoAdapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "HVideoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/fulao2/adapter/HVideoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/fulao2/bean/VideosBean;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/fulao2/adapter/HVideoAdapter;

.field public b:Lcom/comeback/data/ui/fulao2/bean/VideosBean;

.field public ivCover:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/fulao2/adapter/HVideoAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/fulao2/adapter/HVideoAdapter$Holder;->a:Lcom/comeback/data/ui/fulao2/adapter/HVideoAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/comeback/data/ui/fulao2/bean/VideosBean;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/fulao2/adapter/HVideoAdapter$Holder;->b:Lcom/comeback/data/ui/fulao2/bean/VideosBean;

    .line 3
    invoke-virtual {p1}, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->getThumb()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/fulao2/adapter/HVideoAdapter$Holder;->ivCover:Landroid/widget/ImageView;

    const/16 v2, 0x14

    invoke-static {v0, v1, v2}, Lc/a/a/b/g/h;->C0(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/adapter/HVideoAdapter$Holder;->tvName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->getVideo_title()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
