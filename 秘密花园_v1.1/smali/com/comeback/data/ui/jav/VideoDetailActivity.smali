.class public Lcom/comeback/data/ui/jav/VideoDetailActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "VideoDetailActivity.java"


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ll/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll/d<",
            "Li/i0;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/comeback/data/ui/jav/bean/VideoDetail;

.field public ivCover:Lcom/comeback/data/widget/RatioImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public llDownload:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public llGuess:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public llSame:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public rlPreview:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public rvDownload:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public rvGuess:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public rvPreview:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public rvSame:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvActor:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvDate:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvDuration:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvMoreImg:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvPlay:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvPublisher:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvScore:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvShop:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTag:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvUid:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static l(Lcom/comeback/data/ui/jav/VideoDetailActivity;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->d:Lcom/comeback/data/ui/jav/bean/VideoDetail;

    invoke-virtual {v0}, Lcom/comeback/data/ui/jav/bean/VideoDetail;->getError()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->d:Lcom/comeback/data/ui/jav/bean/VideoDetail;

    invoke-virtual {p0}, Lcom/comeback/data/ui/jav/bean/VideoDetail;->getError()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->d:Lcom/comeback/data/ui/jav/bean/VideoDetail;

    invoke-virtual {v1}, Lcom/comeback/data/ui/jav/bean/VideoDetail;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->d:Lcom/comeback/data/ui/jav/bean/VideoDetail;

    invoke-virtual {v0}, Lcom/comeback/data/ui/jav/bean/VideoDetail;->getImg()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->ivCover:Lcom/comeback/data/widget/RatioImageView;

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->u0(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->d:Lcom/comeback/data/ui/jav/bean/VideoDetail;

    invoke-virtual {v0}, Lcom/comeback/data/ui/jav/bean/VideoDetail;->getPreview_video()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->tvPlay:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->tvUid:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->d:Lcom/comeback/data/ui/jav/bean/VideoDetail;

    invoke-virtual {v2}, Lcom/comeback/data/ui/jav/bean/VideoDetail;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->tvDate:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->d:Lcom/comeback/data/ui/jav/bean/VideoDetail;

    invoke-virtual {v2}, Lcom/comeback/data/ui/jav/bean/VideoDetail;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->tvDuration:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->d:Lcom/comeback/data/ui/jav/bean/VideoDetail;

    invoke-virtual {v2}, Lcom/comeback/data/ui/jav/bean/VideoDetail;->getDuration()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->tvShop:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->d:Lcom/comeback/data/ui/jav/bean/VideoDetail;

    invoke-virtual {v2}, Lcom/comeback/data/ui/jav/bean/VideoDetail;->getShop()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->tvPublisher:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->d:Lcom/comeback/data/ui/jav/bean/VideoDetail;

    invoke-virtual {v2}, Lcom/comeback/data/ui/jav/bean/VideoDetail;->getPublisher()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->tvScore:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->d:Lcom/comeback/data/ui/jav/bean/VideoDetail;

    invoke-virtual {v2}, Lcom/comeback/data/ui/jav/bean/VideoDetail;->getScore()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->tvActor:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->d:Lcom/comeback/data/ui/jav/bean/VideoDetail;

    invoke-virtual {v2}, Lcom/comeback/data/ui/jav/bean/VideoDetail;->getActor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->tvTag:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->d:Lcom/comeback/data/ui/jav/bean/VideoDetail;

    invoke-virtual {v2}, Lcom/comeback/data/ui/jav/bean/VideoDetail;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v0, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->d:Lcom/comeback/data/ui/jav/bean/VideoDetail;

    invoke-virtual {v0}, Lcom/comeback/data/ui/jav/bean/VideoDetail;->getPreview_images()Ljava/util/ArrayList;

    move-result-object v0

    const/16 v2, 0x8

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->d:Lcom/comeback/data/ui/jav/bean/VideoDetail;

    invoke-virtual {v0}, Lcom/comeback/data/ui/jav/bean/VideoDetail;->getPreview_images()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->rlPreview:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 17
    iget-object v0, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->tvMoreImg:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0ufLjejb"

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->d:Lcom/comeback/data/ui/jav/bean/VideoDetail;

    invoke-virtual {v4}, Lcom/comeback/data/ui/jav/bean/VideoDetail;->getPreview_images()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v0, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->rvPreview:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, p0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 19
    new-instance v0, Lcom/comeback/data/ui/jav/adapter/PicAdapter;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/jav/adapter/PicAdapter;-><init>(Landroid/content/Context;)V

    .line 20
    iget-object v3, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->rvPreview:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 21
    iget-object v3, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->d:Lcom/comeback/data/ui/jav/bean/VideoDetail;

    invoke-virtual {v3}, Lcom/comeback/data/ui/jav/bean/VideoDetail;->getBigPreview_images()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    goto :goto_1

    .line 22
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->rlPreview:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 23
    :goto_1
    iget-object v0, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->d:Lcom/comeback/data/ui/jav/bean/VideoDetail;

    invoke-virtual {v0}, Lcom/comeback/data/ui/jav/bean/VideoDetail;->getSameVideo()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->d:Lcom/comeback/data/ui/jav/bean/VideoDetail;

    invoke-virtual {v0}, Lcom/comeback/data/ui/jav/bean/VideoDetail;->getSameVideo()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    .line 24
    :cond_4
    iget-object v0, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->llSame:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 25
    iget-object v0, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->rvSame:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, p0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 26
    new-instance v0, Lcom/comeback/data/ui/jav/adapter/HVideoAdapter;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/jav/adapter/HVideoAdapter;-><init>(Landroid/content/Context;)V

    .line 27
    iget-object v3, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->rvSame:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 28
    iget-object v3, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->d:Lcom/comeback/data/ui/jav/bean/VideoDetail;

    invoke-virtual {v3}, Lcom/comeback/data/ui/jav/bean/VideoDetail;->getSameVideo()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    goto :goto_3

    .line 29
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->llSame:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 30
    :goto_3
    iget-object v0, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->d:Lcom/comeback/data/ui/jav/bean/VideoDetail;

    invoke-virtual {v0}, Lcom/comeback/data/ui/jav/bean/VideoDetail;->getGuessLike()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->d:Lcom/comeback/data/ui/jav/bean/VideoDetail;

    invoke-virtual {v0}, Lcom/comeback/data/ui/jav/bean/VideoDetail;->getGuessLike()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    .line 31
    :cond_6
    iget-object v0, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->llGuess:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 32
    iget-object v0, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->rvGuess:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, p0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 33
    new-instance v0, Lcom/comeback/data/ui/jav/adapter/HVideoAdapter;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/jav/adapter/HVideoAdapter;-><init>(Landroid/content/Context;)V

    .line 34
    iget-object v3, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->rvGuess:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 35
    iget-object v3, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->d:Lcom/comeback/data/ui/jav/bean/VideoDetail;

    invoke-virtual {v3}, Lcom/comeback/data/ui/jav/bean/VideoDetail;->getGuessLike()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    goto :goto_5

    .line 36
    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->llGuess:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 37
    :goto_5
    iget-object v0, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->d:Lcom/comeback/data/ui/jav/bean/VideoDetail;

    invoke-virtual {v0}, Lcom/comeback/data/ui/jav/bean/VideoDetail;->getDownloads()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->d:Lcom/comeback/data/ui/jav/bean/VideoDetail;

    invoke-virtual {v0}, Lcom/comeback/data/ui/jav/bean/VideoDetail;->getDownloads()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_8

    goto :goto_6

    .line 38
    :cond_8
    iget-object v0, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->llDownload:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 39
    iget-object v0, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->rvDownload:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 40
    new-instance v0, Lcom/comeback/data/ui/jav/adapter/DownloadAdapter;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/jav/adapter/DownloadAdapter;-><init>(Landroid/content/Context;)V

    .line 41
    iget-object v1, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->rvDownload:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 42
    iget-object p0, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->d:Lcom/comeback/data/ui/jav/bean/VideoDetail;

    invoke-virtual {p0}, Lcom/comeback/data/ui/jav/bean/VideoDetail;->getDownloads()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    goto :goto_7

    .line 43
    :cond_9
    :goto_6
    iget-object p0, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->llDownload:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_7
    return-void
.end method

.method public static m(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/comeback/data/ui/jav/VideoDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "QgsH"

    .line 2
    invoke-static {v1, v0, p1, p0, v0}, Lf/b/a/a/a;->v(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "QgsH"

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->b:Ljava/lang/String;

    return-void
.end method

.method public d()I
    .locals 1

    const v0, 0x7f0c0077

    return v0
.end method

.method public e()V
    .locals 4

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->j(I)V

    .line 2
    invoke-static {}, Lf/e/a/j/h0/c;->a()Lf/e/a/j/h0/a;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->b:Ljava/lang/String;

    sget-object v2, Lf/e/a/k/b;->h0:Ljava/lang/String;

    sget-object v3, Lf/e/a/k/b;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lf/e/a/j/h0/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ll/d;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->c:Ll/d;

    .line 3
    new-instance v1, Lf/e/a/j/u/c;

    invoke-direct {v1, p0}, Lf/e/a/j/u/c;-><init>(Lcom/comeback/data/ui/jav/VideoDetailActivity;)V

    invoke-interface {v0, v1}, Ll/d;->X(Ll/f;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0902db

    if-eq p1, v0, :cond_2

    const v0, 0x7f0902ee

    if-eq p1, v0, :cond_1

    const v0, 0x7f09031c

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->d:Lcom/comeback/data/ui/jav/bean/VideoDetail;

    invoke-virtual {p1}, Lcom/comeback/data/ui/jav/bean/VideoDetail;->getPreview_video()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/comeback/data/ui/commom/PlayActivity;->l(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->d:Lcom/comeback/data/ui/jav/bean/VideoDetail;

    invoke-virtual {p1}, Lcom/comeback/data/ui/jav/bean/VideoDetail;->getBigPreview_images()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/comeback/data/ui/commom/PicBrowseActivity;->l(Landroid/content/Context;Ljava/util/ArrayList;)V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BaseActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->c:Ll/d;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ll/d;->cancel()V

    :cond_0
    return-void
.end method
