.class public Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "VideoListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/lutube/bean/LVideosBean;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter;

.field public b:Lcom/comeback/data/ui/lutube/bean/LVideosBean;

.field public imageCover:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public ivLike:Landroid/widget/ImageView;
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
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter$Holder;->a:Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Lcom/comeback/data/ui/lutube/bean/LVideosBean;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter$Holder;->b:Lcom/comeback/data/ui/lutube/bean/LVideosBean;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter$Holder;->a:Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter;

    .line 4
    iget-boolean v0, v0, Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter;->d:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/comeback/data/ui/lutube/bean/LVideosBean;->getThumb()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter$Holder;->imageCover:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->I0(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/comeback/data/ui/lutube/bean/LVideosBean;->getCover()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter$Holder;->imageCover:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->I0(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter$Holder;->textMainTag:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/lutube/bean/LVideosBean;->getMain_tagString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->k1(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/comeback/data/ui/lutube/bean/LVideosBean;->getSecond_tagString()Ljava/lang/String;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter$Holder;->textSecondTag1:Landroid/widget/TextView;

    const-string v2, "09rO"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    iget-object v1, p0, Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter$Holder;->textSecondTag2:Landroid/widget/TextView;

    const-string v2, "0fXD"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "0ObC"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v3, 0x0

    :cond_3
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter$Holder;->textDate:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/lutube/bean/LVideosBean;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->k1(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter$Holder;->textActor:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/lutube/bean/LVideosBean;->getActor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->k1(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter$Holder;->textActor:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    .line 14
    iget-object v0, p0, Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter$Holder;->textTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_2

    .line 15
    :cond_4
    iget-object v0, p0, Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter$Holder;->textTitle:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 16
    :goto_2
    iget-object v0, p0, Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter$Holder;->textTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/lutube/bean/LVideosBean;->getVideo_title()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object p1, p0, Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter$Holder;->ivLike:Landroid/widget/ImageView;

    const v0, 0x7f0e0021

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 18
    iget-object p1, p0, Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter$Holder;->ivLike:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    return-void
.end method
