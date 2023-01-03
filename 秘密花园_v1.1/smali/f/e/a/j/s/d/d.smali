.class public Lf/e/a/j/s/d/d;
.super Lm/j;
.source "ShortVideoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/iqiyi/bean/VideoInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/iqiyi/adapter/ShortVideoAdapter$TiktopHolder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/iqiyi/adapter/ShortVideoAdapter$TiktopHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/s/d/d;->e:Lcom/comeback/data/ui/iqiyi/adapter/ShortVideoAdapter$TiktopHolder;

    invoke-direct {p0}, Lm/j;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "aD0GFhkcSwk="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/comeback/data/ui/iqiyi/bean/VideoInfo;

    .line 2
    invoke-virtual {p1}, Lcom/comeback/data/ui/iqiyi/bean/VideoInfo;->getVideoLink()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lf/e/a/j/s/d/d;->e:Lcom/comeback/data/ui/iqiyi/adapter/ShortVideoAdapter$TiktopHolder;

    iget-object v0, v0, Lcom/comeback/data/ui/iqiyi/adapter/ShortVideoAdapter$TiktopHolder;->b:Lcom/comeback/data/ui/iqiyi/bean/VideoInfo;

    invoke-virtual {p1}, Lcom/comeback/data/ui/iqiyi/bean/VideoInfo;->getVideoLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/comeback/data/ui/iqiyi/bean/VideoInfo;->setVideoLink(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lf/e/a/j/s/d/d;->e:Lcom/comeback/data/ui/iqiyi/adapter/ShortVideoAdapter$TiktopHolder;

    .line 5
    iget-object v0, v0, Lcom/comeback/data/ui/iqiyi/adapter/ShortVideoAdapter$TiktopHolder;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 6
    invoke-virtual {p1}, Lcom/comeback/data/ui/iqiyi/bean/VideoInfo;->getVideoLink()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->setPlayUri(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lf/e/a/j/s/d/d;->e:Lcom/comeback/data/ui/iqiyi/adapter/ShortVideoAdapter$TiktopHolder;

    iget-object v0, p1, Lcom/comeback/data/ui/iqiyi/adapter/ShortVideoAdapter$TiktopHolder;->a:Lcom/comeback/data/ui/iqiyi/adapter/ShortVideoAdapter;

    .line 8
    iget v0, v0, Lcom/comeback/data/ui/iqiyi/adapter/ShortVideoAdapter;->d:I

    .line 9
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    if-ne v0, p1, :cond_1

    .line 10
    iget-object p1, p0, Lf/e/a/j/s/d/d;->e:Lcom/comeback/data/ui/iqiyi/adapter/ShortVideoAdapter$TiktopHolder;

    .line 11
    iget-object p1, p1, Lcom/comeback/data/ui/iqiyi/adapter/ShortVideoAdapter$TiktopHolder;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 12
    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->startPlayer()Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    :cond_1
    :goto_0
    return-void
.end method
