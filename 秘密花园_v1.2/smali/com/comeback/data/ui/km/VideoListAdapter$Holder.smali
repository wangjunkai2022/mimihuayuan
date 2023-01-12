.class public Lcom/comeback/data/ui/km/VideoListAdapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "VideoListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/km/VideoListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/km/bean/Video;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/km/VideoListAdapter;

.field public b:Lcom/comeback/data/ui/km/bean/Video;

.field public ivImg:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvUser:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public videoLikeTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/km/VideoListAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/km/VideoListAdapter$Holder;->a:Lcom/comeback/data/ui/km/VideoListAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/comeback/data/ui/km/bean/Video;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/km/VideoListAdapter$Holder;->b:Lcom/comeback/data/ui/km/bean/Video;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/km/VideoListAdapter$Holder;->ivImg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 4
    sget v1, Lcom/comeback/data/App;->d:I

    .line 5
    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6
    invoke-virtual {p1}, Lcom/comeback/data/ui/km/bean/Video;->getMv_play_height()I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    mul-int v1, v1, v2

    invoke-virtual {p1}, Lcom/comeback/data/ui/km/bean/Video;->getMv_play_width()I

    move-result v2

    div-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 7
    iget-object v1, p0, Lcom/comeback/data/ui/km/VideoListAdapter$Holder;->ivImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    invoke-virtual {p1}, Lcom/comeback/data/ui/km/bean/Video;->getMv_img_url()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/km/VideoListAdapter$Holder;->ivImg:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->u0(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 9
    iget-object v0, p0, Lcom/comeback/data/ui/km/VideoListAdapter$Holder;->tvUser:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/km/bean/Video;->getMuName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcom/comeback/data/ui/km/VideoListAdapter$Holder;->videoLikeTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/km/bean/Video;->getMv_like()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090101

    if-eq p1, v0, :cond_1

    const v0, 0x7f0901ed

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/comeback/data/ui/km/VideoListAdapter$Holder;->a:Lcom/comeback/data/ui/km/VideoListAdapter;

    iget-object p1, p1, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/comeback/data/ui/km/VideoListAdapter$Holder;->b:Lcom/comeback/data/ui/km/bean/Video;

    invoke-virtual {v0}, Lcom/comeback/data/ui/km/bean/Video;->getMu_name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/km/VideoListAdapter$Holder;->b:Lcom/comeback/data/ui/km/bean/Video;

    invoke-virtual {v1}, Lcom/comeback/data/ui/km/bean/Video;->getMu_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/comeback/data/ui/km/UserCenterActivity;->u(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/comeback/data/ui/km/VideoListAdapter$Holder;->a:Lcom/comeback/data/ui/km/VideoListAdapter;

    iget-object p1, p1, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/comeback/data/ui/km/VideoListAdapter$Holder;->b:Lcom/comeback/data/ui/km/bean/Video;

    invoke-static {p1, v0}, Lcom/comeback/data/ui/km/VideoPlayActivity;->m(Landroid/content/Context;Lcom/comeback/data/ui/km/bean/Video;)V

    :goto_0
    return-void
.end method
