.class public Lf/e/a/j/s0/e/r;
.super Lm/j;
.source "ShortVideoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/xj/bean/PlayUrl;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/xj/adapter/ShortVideoAdapter$TiktopHolder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/xj/adapter/ShortVideoAdapter$TiktopHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/s0/e/r;->e:Lcom/comeback/data/ui/xj/adapter/ShortVideoAdapter$TiktopHolder;

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
    check-cast p1, Lcom/comeback/data/ui/xj/bean/PlayUrl;

    .line 2
    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/PlayUrl;->getData()Lcom/comeback/data/ui/xj/bean/PlayUrl$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comeback/data/ui/xj/bean/PlayUrl$DataBean;->getHttpurl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/PlayUrl;->getErrmsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lf/e/a/j/s0/e/r;->e:Lcom/comeback/data/ui/xj/adapter/ShortVideoAdapter$TiktopHolder;

    iget-object v0, v0, Lcom/comeback/data/ui/xj/adapter/ShortVideoAdapter$TiktopHolder;->d:Lcom/comeback/data/ui/xj/bean/VideoBean;

    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/PlayUrl;->getData()Lcom/comeback/data/ui/xj/bean/PlayUrl$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/xj/bean/PlayUrl$DataBean;->getHttpurl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/comeback/data/ui/xj/bean/VideoBean;->setPlay(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lf/e/a/j/s0/e/r;->e:Lcom/comeback/data/ui/xj/adapter/ShortVideoAdapter$TiktopHolder;

    .line 6
    iget-object v0, v0, Lcom/comeback/data/ui/xj/adapter/ShortVideoAdapter$TiktopHolder;->a:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 7
    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/PlayUrl;->getData()Lcom/comeback/data/ui/xj/bean/PlayUrl$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/PlayUrl$DataBean;->getHttpurl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->setPlayUri(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lf/e/a/j/s0/e/r;->e:Lcom/comeback/data/ui/xj/adapter/ShortVideoAdapter$TiktopHolder;

    iget-object v0, p1, Lcom/comeback/data/ui/xj/adapter/ShortVideoAdapter$TiktopHolder;->c:Lcom/comeback/data/ui/xj/adapter/ShortVideoAdapter;

    .line 9
    iget v0, v0, Lcom/comeback/data/ui/xj/adapter/ShortVideoAdapter;->d:I

    .line 10
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    if-ne v0, p1, :cond_1

    .line 11
    iget-object p1, p0, Lf/e/a/j/s0/e/r;->e:Lcom/comeback/data/ui/xj/adapter/ShortVideoAdapter$TiktopHolder;

    .line 12
    iget-object p1, p1, Lcom/comeback/data/ui/xj/adapter/ShortVideoAdapter$TiktopHolder;->a:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 13
    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->startPlayer()Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    :cond_1
    :goto_0
    return-void
.end method
