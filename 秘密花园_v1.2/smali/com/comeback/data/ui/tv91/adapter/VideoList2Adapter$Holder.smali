.class public Lcom/comeback/data/ui/tv91/adapter/VideoList2Adapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "VideoList2Adapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/tv91/adapter/VideoList2Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/tv91/bean/VideoList$MessageBean$MoviesBean;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/tv91/adapter/VideoList2Adapter;

.field public b:Lcom/comeback/data/ui/tv91/bean/VideoList$MessageBean$MoviesBean;

.field public ivImg:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/tv91/adapter/VideoList2Adapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/tv91/adapter/VideoList2Adapter$Holder;->a:Lcom/comeback/data/ui/tv91/adapter/VideoList2Adapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/comeback/data/ui/tv91/bean/VideoList$MessageBean$MoviesBean;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/tv91/adapter/VideoList2Adapter$Holder;->b:Lcom/comeback/data/ui/tv91/bean/VideoList$MessageBean$MoviesBean;

    .line 3
    invoke-virtual {p1}, Lcom/comeback/data/ui/tv91/bean/VideoList$MessageBean$MoviesBean;->getCoverImg()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/tv91/adapter/VideoList2Adapter$Holder;->ivImg:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lc/a/a/b/g/h;->M0(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/tv91/adapter/VideoList2Adapter$Holder;->tvName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/tv91/bean/VideoList$MessageBean$MoviesBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/tv91/adapter/VideoList2Adapter$Holder;->tvTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/tv91/bean/VideoList$MessageBean$MoviesBean;->getCreateTime()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
