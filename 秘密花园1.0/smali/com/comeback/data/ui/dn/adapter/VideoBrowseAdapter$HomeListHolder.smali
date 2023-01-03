.class public Lcom/comeback/data/ui/dn/adapter/VideoBrowseAdapter$HomeListHolder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "VideoBrowseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/dn/adapter/VideoBrowseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HomeListHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/dn/bean/VideoInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/dn/adapter/VideoBrowseAdapter;

.field public mIvImg:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public mTvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/dn/adapter/VideoBrowseAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/dn/adapter/VideoBrowseAdapter$HomeListHolder;->a:Lcom/comeback/data/ui/dn/adapter/VideoBrowseAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/comeback/data/ui/dn/bean/VideoInfo;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/dn/adapter/VideoBrowseAdapter$HomeListHolder;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/dn/bean/VideoInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p1}, Lcom/comeback/data/ui/dn/bean/VideoInfo;->getThumb()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/comeback/data/ui/dn/adapter/VideoBrowseAdapter$HomeListHolder;->mIvImg:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lc/a/a/b/g/h;->B0(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method
