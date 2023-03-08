.class public Lcom/comeback/data/ui/fulao2/adapter/VideoListAdapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "VideoListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/fulao2/adapter/VideoListAdapter;
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
.field public a:Lcom/comeback/data/ui/fulao2/adapter/VideoListAdapter;

.field public b:Lcom/comeback/data/ui/fulao2/bean/VideosBean;

.field public imageCover:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public ivLike:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public ivVip:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public textActor:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public textDate:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public textMainTag:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public textSecondTag1:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public textSecondTag2:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public textTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/fulao2/adapter/VideoListAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/fulao2/adapter/VideoListAdapter$Holder;->a:Lcom/comeback/data/ui/fulao2/adapter/VideoListAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Lcom/comeback/data/ui/fulao2/bean/VideosBean;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/fulao2/adapter/VideoListAdapter$Holder;->b:Lcom/comeback/data/ui/fulao2/bean/VideosBean;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/adapter/VideoListAdapter$Holder;->a:Lcom/comeback/data/ui/fulao2/adapter/VideoListAdapter;

    .line 4
    iget-boolean v0, v0, Lcom/comeback/data/ui/fulao2/adapter/VideoListAdapter;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->getThumb()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/comeback/data/ui/fulao2/adapter/VideoListAdapter$Holder;->imageCover:Landroid/widget/ImageView;

    invoke-static {v0, v2, v1}, Lc/a/a/b/g/h;->C0(Ljava/lang/String;Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->getCover()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/comeback/data/ui/fulao2/adapter/VideoListAdapter$Holder;->imageCover:Landroid/widget/ImageView;

    invoke-static {v0, v2, v1}, Lc/a/a/b/g/h;->C0(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/adapter/VideoListAdapter$Holder;->textMainTag:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->getMain_tagString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lc/a/a/b/g/h;->k1(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->getMain_tagString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "YSsz"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 9
    iget-object v2, p0, Lcom/comeback/data/ui/fulao2/adapter/VideoListAdapter$Holder;->ivVip:Landroid/widget/ImageView;

    const/16 v3, 0x8

    if-eqz v0, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    const/16 v4, 0x8

    :goto_1
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/adapter/VideoListAdapter$Holder;->textMainTag:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    :cond_2
    invoke-virtual {p1}, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->getSecond_tagString()Ljava/lang/String;

    move-result-object v0

    .line 12
    iget-object v2, p0, Lcom/comeback/data/ui/fulao2/adapter/VideoListAdapter$Holder;->textSecondTag1:Landroid/widget/TextView;

    const-string v4, "09rO"

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    const/16 v4, 0x8

    :goto_2
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13
    iget-object v2, p0, Lcom/comeback/data/ui/fulao2/adapter/VideoListAdapter$Holder;->textSecondTag2:Landroid/widget/TextView;

    const-string v4, "0fXD"

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "0ObC"

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    const/16 v1, 0x8

    :cond_5
    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/adapter/VideoListAdapter$Holder;->textDate:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->k1(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/adapter/VideoListAdapter$Holder;->textActor:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->getActor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->k1(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/adapter/VideoListAdapter$Holder;->textActor:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 17
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/adapter/VideoListAdapter$Holder;->textTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_4

    .line 18
    :cond_6
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/adapter/VideoListAdapter$Holder;->textTitle:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 19
    :goto_4
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/adapter/VideoListAdapter$Holder;->textTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/fulao2/bean/VideosBean;->getVideo_title()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object p1, p0, Lcom/comeback/data/ui/fulao2/adapter/VideoListAdapter$Holder;->ivLike:Landroid/widget/ImageView;

    const v0, 0x7f0e0021

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 21
    iget-object p1, p0, Lcom/comeback/data/ui/fulao2/adapter/VideoListAdapter$Holder;->ivLike:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    return-void
.end method
