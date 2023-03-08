.class public Lf/e/a/j/h/b/d;
.super Lm/j;
.source "ShortVideoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/dn/bean/PlayUrl;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/h/b/d;->e:Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder;

    invoke-direct {p0}, Lm/j;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/comeback/data/ui/dn/bean/PlayUrl;

    .line 2
    invoke-virtual {p1}, Lcom/comeback/data/ui/dn/bean/PlayUrl;->getMediaInfoSet()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity;

    invoke-virtual {p1}, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity;->getTranscodeInfo()Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity;->getTranscodeSet()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity;

    invoke-virtual {p1}, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$TranscodeInfoEntity$TranscodeSetEntity;->getUrl()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lf/e/a/j/h/b/d;->e:Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder;

    iget-object v0, v0, Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder;->d:Lcom/comeback/data/ui/dn/bean/VideoInfo;

    invoke-virtual {v0, p1}, Lcom/comeback/data/ui/dn/bean/VideoInfo;->setHref(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lf/e/a/j/h/b/d;->e:Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder;

    .line 6
    iget-object v0, v0, Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder;->a:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 7
    invoke-virtual {v0, p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->setPlayUri(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lf/e/a/j/h/b/d;->e:Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder;

    iget-object v0, p1, Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder;->c:Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter;

    .line 9
    iget v0, v0, Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter;->d:I

    .line 10
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    if-ne v0, p1, :cond_1

    .line 11
    iget-object p1, p0, Lf/e/a/j/h/b/d;->e:Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder;

    .line 12
    iget-object p1, p1, Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder;->a:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 13
    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->startPlayer()Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    :cond_1
    :goto_0
    return-void
.end method
