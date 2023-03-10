.class public Lcom/comeback/data/ui/movieCloud/PlayActivity$c;
.super Lm/j;
.source "PlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/movieCloud/PlayActivity;->n(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/movieCloud/bean/PlayIndex;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/movieCloud/PlayActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/movieCloud/PlayActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/movieCloud/PlayActivity$c;->e:Lcom/comeback/data/ui/movieCloud/PlayActivity;

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
    .locals 2

    .line 1
    check-cast p1, Lcom/comeback/data/ui/movieCloud/bean/PlayIndex;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/movieCloud/PlayActivity$c;->e:Lcom/comeback/data/ui/movieCloud/PlayActivity;

    .line 3
    iget-object v0, v0, Lcom/comeback/data/ui/movieCloud/PlayActivity;->b:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 4
    invoke-virtual {p1}, Lcom/comeback/data/ui/movieCloud/bean/PlayIndex;->getData()Lcom/comeback/data/ui/movieCloud/bean/PlayIndex$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/movieCloud/bean/PlayIndex$DataBean;->getHttpurl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->setPlayUri(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/movieCloud/PlayActivity$c;->e:Lcom/comeback/data/ui/movieCloud/PlayActivity;

    .line 6
    iget-object v0, v0, Lcom/comeback/data/ui/movieCloud/PlayActivity;->b:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 7
    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getVideoPlayerView()Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/comeback/data/ui/movieCloud/bean/PlayIndex;->getData()Lcom/comeback/data/ui/movieCloud/bean/PlayIndex$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/movieCloud/bean/PlayIndex$DataBean;->getHttpurl()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lc/a/a/b/g/h;->j1(Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/comeback/data/ui/movieCloud/PlayActivity$c;->e:Lcom/comeback/data/ui/movieCloud/PlayActivity;

    .line 9
    iget-object p1, p1, Lcom/comeback/data/ui/movieCloud/PlayActivity;->b:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 10
    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->startPlayer()Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    return-void
.end method
