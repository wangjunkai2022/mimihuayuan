.class public Lcom/comeback/data/ui/lutube/VideoPlayActivity$a;
.super Lm/j;
.source "VideoPlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/lutube/VideoPlayActivity;->l(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/lutube/bean/VideoInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/lutube/VideoPlayActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/lutube/VideoPlayActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/lutube/VideoPlayActivity$a;->e:Lcom/comeback/data/ui/lutube/VideoPlayActivity;

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
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lf/e/a/k/f;->a()V

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/comeback/data/ui/lutube/bean/VideoInfo;

    .line 2
    invoke-virtual {p1}, Lcom/comeback/data/ui/lutube/bean/VideoInfo;->getResponse()Lcom/comeback/data/ui/lutube/bean/VideoInfo$ResponseBean;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/lutube/VideoPlayActivity$a;->e:Lcom/comeback/data/ui/lutube/VideoPlayActivity;

    invoke-static {v0}, Lcom/comeback/data/ui/lutube/VideoPlayActivity;->n(Lcom/comeback/data/ui/lutube/VideoPlayActivity;)Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getVideoPlayerView()Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/comeback/data/ui/lutube/bean/VideoInfo$ResponseBean;->getVideo_title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->setTitle(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/lutube/VideoPlayActivity$a;->e:Lcom/comeback/data/ui/lutube/VideoPlayActivity;

    .line 5
    iget-object v0, v0, Lcom/comeback/data/base/BasePlayByIdActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->setShowVideoSwitch(Z)V

    .line 7
    iget-object v0, p0, Lcom/comeback/data/ui/lutube/VideoPlayActivity$a;->e:Lcom/comeback/data/ui/lutube/VideoPlayActivity;

    .line 8
    iget-object v0, v0, Lcom/comeback/data/base/BasePlayByIdActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 9
    invoke-virtual {p1}, Lcom/comeback/data/ui/lutube/bean/VideoInfo$ResponseBean;->getPlayUrl()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/comeback/data/ui/lutube/bean/VideoInfo$ResponseBean;->getPlayName()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->setPlaySwitchUri(ILjava/util/List;Ljava/util/List;)V

    .line 10
    iget-object v0, p0, Lcom/comeback/data/ui/lutube/VideoPlayActivity$a;->e:Lcom/comeback/data/ui/lutube/VideoPlayActivity;

    .line 11
    iget-object v0, v0, Lcom/comeback/data/base/BasePlayByIdActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 12
    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->startPlayer()Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 13
    iget-object v0, p0, Lcom/comeback/data/ui/lutube/VideoPlayActivity$a;->e:Lcom/comeback/data/ui/lutube/VideoPlayActivity;

    .line 14
    iget-object v0, v0, Lcom/comeback/data/base/BasePlayByIdActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 15
    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getVideoPlayerView()Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/comeback/data/ui/lutube/bean/VideoInfo$ResponseBean;->getPlayUrl()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lc/a/a/b/g/h;->j1(Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;Ljava/lang/String;)V

    return-void
.end method
