.class public Lcom/comeback/data/ui/hgl/adapter/ChannelAdapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "ChannelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/hgl/adapter/ChannelAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/hgl/bean/ChannelList$PingtaiBean;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/hgl/bean/ChannelList$PingtaiBean;

.field public b:Lcom/comeback/data/ui/hgl/adapter/ChannelAdapter;

.field public ivHead:Landroid/widget/ImageView;
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


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/hgl/adapter/ChannelAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/hgl/adapter/ChannelAdapter$Holder;->b:Lcom/comeback/data/ui/hgl/adapter/ChannelAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/comeback/data/ui/hgl/bean/ChannelList$PingtaiBean;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/hgl/adapter/ChannelAdapter$Holder;->a:Lcom/comeback/data/ui/hgl/bean/ChannelList$PingtaiBean;

    .line 3
    invoke-virtual {p1}, Lcom/comeback/data/ui/hgl/bean/ChannelList$PingtaiBean;->getXinimg()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/hgl/adapter/ChannelAdapter$Holder;->ivHead:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->u0(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/hgl/adapter/ChannelAdapter$Holder;->tvName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/hgl/bean/ChannelList$PingtaiBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/hgl/adapter/ChannelAdapter$Holder;->tvPlayCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/hgl/bean/ChannelList$PingtaiBean;->getNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
