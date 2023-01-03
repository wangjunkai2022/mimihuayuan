.class public Lcom/comeback/data/ui/xj/PlayActivity$a;
.super Lm/j;
.source "PlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/xj/PlayActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/xj/bean/PlayUrl;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/xj/PlayActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/xj/PlayActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xj/PlayActivity$a;->e:Lcom/comeback/data/ui/xj/PlayActivity;

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
    iget-object v0, p0, Lcom/comeback/data/ui/xj/PlayActivity$a;->e:Lcom/comeback/data/ui/xj/PlayActivity;

    .line 5
    iget-object v0, v0, Lcom/comeback/data/ui/xj/PlayActivity;->d:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 6
    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/PlayUrl;->getData()Lcom/comeback/data/ui/xj/bean/PlayUrl$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/xj/bean/PlayUrl$DataBean;->getHttpurl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->setPlayUri(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/comeback/data/ui/xj/PlayActivity$a;->e:Lcom/comeback/data/ui/xj/PlayActivity;

    .line 8
    iget-object v0, v0, Lcom/comeback/data/ui/xj/PlayActivity;->d:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 9
    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->startPlayer()Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 10
    iget-object v0, p0, Lcom/comeback/data/ui/xj/PlayActivity$a;->e:Lcom/comeback/data/ui/xj/PlayActivity;

    .line 11
    iget-object v0, v0, Lcom/comeback/data/ui/xj/PlayActivity;->d:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 12
    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getVideoPlayerView()Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/PlayUrl;->getData()Lcom/comeback/data/ui/xj/bean/PlayUrl$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/PlayUrl$DataBean;->getHttpurl()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lc/a/a/b/g/h;->h1(Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
