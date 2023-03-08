.class public Lcom/comeback/data/ui/isiyu/MoviePlayActivity$a;
.super Lm/j;
.source "MoviePlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/isiyu/MoviePlayActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/isiyu/bean/Video;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/isiyu/MoviePlayActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/isiyu/MoviePlayActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/isiyu/MoviePlayActivity$a;->e:Lcom/comeback/data/ui/isiyu/MoviePlayActivity;

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
    .locals 3

    .line 1
    check-cast p1, Lcom/comeback/data/ui/isiyu/bean/Video;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/isiyu/MoviePlayActivity$a;->e:Lcom/comeback/data/ui/isiyu/MoviePlayActivity;

    iget-object v0, v0, Lcom/comeback/data/ui/isiyu/MoviePlayActivity;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/isiyu/bean/Video;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/isiyu/MoviePlayActivity$a;->e:Lcom/comeback/data/ui/isiyu/MoviePlayActivity;

    iget-object v0, v0, Lcom/comeback/data/ui/isiyu/MoviePlayActivity;->tvTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/isiyu/bean/Video;->getOnline_time()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p1}, Lcom/comeback/data/ui/isiyu/bean/Video;->getCoins()I

    move-result v0

    if-lez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/isiyu/MoviePlayActivity$a;->e:Lcom/comeback/data/ui/isiyu/MoviePlayActivity;

    iget-object v0, v0, Lcom/comeback/data/ui/isiyu/MoviePlayActivity;->tvDetail:Landroid/widget/TextView;

    const-string v1, "3sDnjMz70ZT1j5b2"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/isiyu/MoviePlayActivity$a;->e:Lcom/comeback/data/ui/isiyu/MoviePlayActivity;

    iget-object v0, v0, Lcom/comeback/data/ui/isiyu/MoviePlayActivity;->tvDetail:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0fDOgv/N0LT8iYj9"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/comeback/data/ui/isiyu/bean/Video;->getPlay_count()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/comeback/data/ui/isiyu/MoviePlayActivity$a;->e:Lcom/comeback/data/ui/isiyu/MoviePlayActivity;

    .line 8
    iget-object v0, v0, Lcom/comeback/data/ui/isiyu/MoviePlayActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 9
    invoke-virtual {p1}, Lcom/comeback/data/ui/isiyu/bean/Video;->getPlay_url_m3u8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->setPlayUri(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/comeback/data/ui/isiyu/MoviePlayActivity$a;->e:Lcom/comeback/data/ui/isiyu/MoviePlayActivity;

    .line 11
    iget-object v0, v0, Lcom/comeback/data/ui/isiyu/MoviePlayActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 12
    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->startPlayer()Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 13
    iget-object v0, p0, Lcom/comeback/data/ui/isiyu/MoviePlayActivity$a;->e:Lcom/comeback/data/ui/isiyu/MoviePlayActivity;

    .line 14
    iget-object v0, v0, Lcom/comeback/data/ui/isiyu/MoviePlayActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 15
    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getVideoPlayerView()Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/comeback/data/ui/isiyu/bean/Video;->getPlay_url_m3u8()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lc/a/a/b/g/h;->h1(Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;Ljava/lang/String;)V

    return-void
.end method
