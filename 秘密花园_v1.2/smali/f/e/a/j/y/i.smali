.class public Lf/e/a/j/y/i;
.super Lm/j;
.source "VideoPlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/km2/bean/VideoInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/km2/VideoPlayActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/km2/VideoPlayActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/y/i;->e:Lcom/comeback/data/ui/km2/VideoPlayActivity;

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

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/comeback/data/ui/km2/bean/VideoInfo;

    .line 2
    iget-object v0, p0, Lf/e/a/j/y/i;->e:Lcom/comeback/data/ui/km2/VideoPlayActivity;

    invoke-virtual {p1}, Lcom/comeback/data/ui/km2/bean/VideoInfo;->getData()Lcom/comeback/data/ui/km2/bean/VideoInfo$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/km2/bean/VideoInfo$DataBean;->getVideo_info()Lcom/comeback/data/ui/km2/bean/Km2Video;

    move-result-object p1

    .line 3
    iput-object p1, v0, Lcom/comeback/data/ui/km2/VideoPlayActivity;->b:Lcom/comeback/data/ui/km2/bean/Km2Video;

    .line 4
    sget-boolean p1, Lcom/comeback/data/ui/km2/VideoPlayActivity;->f:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lf/e/a/j/y/i;->e:Lcom/comeback/data/ui/km2/VideoPlayActivity;

    .line 5
    iget-object p1, p1, Lcom/comeback/data/ui/km2/VideoPlayActivity;->b:Lcom/comeback/data/ui/km2/bean/Km2Video;

    .line 6
    invoke-virtual {p1}, Lcom/comeback/data/ui/km2/bean/Km2Video;->getNormal_url()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lf/e/a/j/y/i;->e:Lcom/comeback/data/ui/km2/VideoPlayActivity;

    .line 7
    iget-object p1, p1, Lcom/comeback/data/ui/km2/VideoPlayActivity;->b:Lcom/comeback/data/ui/km2/bean/Km2Video;

    .line 8
    invoke-virtual {p1}, Lcom/comeback/data/ui/km2/bean/Km2Video;->getM3u8_url()Ljava/lang/String;

    move-result-object p1

    .line 9
    :goto_0
    iget-object v0, p0, Lf/e/a/j/y/i;->e:Lcom/comeback/data/ui/km2/VideoPlayActivity;

    .line 10
    iget-object v0, v0, Lcom/comeback/data/ui/km2/VideoPlayActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 11
    invoke-virtual {v0, p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->setPlayUri(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lf/e/a/j/y/i;->e:Lcom/comeback/data/ui/km2/VideoPlayActivity;

    .line 13
    iget-object v0, v0, Lcom/comeback/data/ui/km2/VideoPlayActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 14
    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->startPlayer()Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 15
    iget-object v0, p0, Lf/e/a/j/y/i;->e:Lcom/comeback/data/ui/km2/VideoPlayActivity;

    .line 16
    iget-object v0, v0, Lcom/comeback/data/ui/km2/VideoPlayActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 17
    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getVideoPlayerView()Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    move-result-object v0

    invoke-static {v0, p1}, Lc/a/a/b/g/h;->h1(Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;Ljava/lang/String;)V

    return-void
.end method
