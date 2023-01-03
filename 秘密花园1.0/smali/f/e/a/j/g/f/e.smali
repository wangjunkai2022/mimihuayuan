.class public Lf/e/a/j/g/f/e;
.super Lm/j;
.source "ShortVideoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/cucumber/bean/NvshenBean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/g/f/e;->e:Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;

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
    .locals 3

    .line 1
    check-cast p1, Lcom/comeback/data/ui/cucumber/bean/NvshenBean;

    .line 2
    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/NvshenBean;->getData()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video;

    .line 3
    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video;->getPlayUrl()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lf/e/a/j/g/f/e;->e:Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;

    iget-object v1, v1, Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;->b:Lcom/comeback/data/ui/cucumber/bean/Video;

    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video;->getInviteCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/comeback/data/ui/cucumber/bean/Video;->setUploaderInviteCode(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lf/e/a/j/g/f/e;->e:Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;

    iget-object v1, v1, Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;->b:Lcom/comeback/data/ui/cucumber/bean/Video;

    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video;->getPlayUrl()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/comeback/data/ui/cucumber/bean/Video;->setRealVideo(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lf/e/a/j/g/f/e;->e:Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;

    .line 7
    iget-object v1, v1, Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 8
    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video;->getPlayUrl()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->setPlayUri(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lf/e/a/j/g/f/e;->e:Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;

    iget-object v0, p1, Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;->a:Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter;

    .line 10
    iget v0, v0, Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter;->d:I

    .line 11
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    if-ne v0, p1, :cond_1

    .line 12
    iget-object p1, p0, Lf/e/a/j/g/f/e;->e:Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;

    .line 13
    iget-object p1, p1, Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 14
    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->startPlayer()Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    :cond_1
    :goto_0
    return-void
.end method
