.class public Lcom/comeback/data/ui/xj/adapter/VideoListAdapter$HomeListHolder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "VideoListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/xj/adapter/VideoListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HomeListHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/xj/bean/VideoBean;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/xj/adapter/VideoListAdapter;

.field public b:Lcom/comeback/data/ui/xj/bean/VideoBean;

.field public ivExclusive:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public ivVideoCover:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public ivVip:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvVideoDurtion:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvVideoTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvdzan:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvplun:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/xj/adapter/VideoListAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/xj/adapter/VideoListAdapter$HomeListHolder;->a:Lcom/comeback/data/ui/xj/adapter/VideoListAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Lcom/comeback/data/ui/xj/bean/VideoBean;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/xj/adapter/VideoListAdapter$HomeListHolder;->b:Lcom/comeback/data/ui/xj/bean/VideoBean;

    .line 3
    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/VideoBean;->getExclusive()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/VideoBean;->getCoverpic()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/comeback/data/ui/xj/adapter/VideoListAdapter$HomeListHolder;->ivVideoCover:Landroid/widget/ImageView;

    const v4, 0x7f0800a5

    .line 5
    sget-object v5, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    const/4 v6, 0x0

    .line 6
    invoke-static {v5, v0, v3, v4, v6}, Lc/a/a/b/g/h;->t0(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;ILf/d/a/s/a;)V

    .line 7
    iget-object v0, p0, Lcom/comeback/data/ui/xj/adapter/VideoListAdapter$HomeListHolder;->ivExclusive:Landroid/widget/ImageView;

    const/16 v3, 0x8

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/comeback/data/ui/xj/adapter/VideoListAdapter$HomeListHolder;->ivVip:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/VideoBean;->isVip()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/comeback/data/ui/xj/adapter/VideoListAdapter$HomeListHolder;->tvVideoTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/VideoBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcom/comeback/data/ui/xj/adapter/VideoListAdapter$HomeListHolder;->tvVideoDurtion:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/VideoBean;->getDuration()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Lcom/comeback/data/ui/xj/adapter/VideoListAdapter$HomeListHolder;->tvdzan:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/VideoBean;->getUpnum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Lcom/comeback/data/ui/xj/adapter/VideoListAdapter$HomeListHolder;->tvplun:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/VideoBean;->getCommentcount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, p0, Lcom/comeback/data/ui/xj/adapter/VideoListAdapter$HomeListHolder;->tvTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/VideoBean;->getCreatetime()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
