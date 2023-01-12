.class public Lf/e/a/j/o/b$a;
.super Ljava/lang/Object;
.source "HGMovieDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/e/a/j/o/b;->c(Li/f;Li/h0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/hg/bean/VideoList;

.field public final synthetic b:Lf/e/a/j/o/b;


# direct methods
.method public constructor <init>(Lf/e/a/j/o/b;Lcom/comeback/data/ui/hg/bean/VideoList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/o/b$a;->b:Lf/e/a/j/o/b;

    iput-object p2, p0, Lf/e/a/j/o/b$a;->a:Lcom/comeback/data/ui/hg/bean/VideoList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lf/e/a/j/o/b$a;->b:Lf/e/a/j/o/b;

    iget-object v0, v0, Lf/e/a/j/o/b;->a:Lcom/comeback/data/ui/hg/HGMovieDetailActivity;

    iget-object v1, p0, Lf/e/a/j/o/b$a;->a:Lcom/comeback/data/ui/hg/bean/VideoList;

    invoke-virtual {v1}, Lcom/comeback/data/ui/hg/bean/VideoList;->getData()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;

    .line 2
    iget-object v3, v0, Lcom/comeback/data/ui/hg/HGMovieDetailActivity;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;->getMovName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v3, v0, Lcom/comeback/data/ui/hg/HGMovieDetailActivity;->tvIntro:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;->getMovDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v3, v0, Lcom/comeback/data/ui/hg/HGMovieDetailActivity;->tvDetail:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;->getDetail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v3, v0, Lcom/comeback/data/base/BasePlayByIdActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v3}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getVideoPlayerView()Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    move-result-object v3

    invoke-virtual {v1}, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;->getMovName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->setTitle(Ljava/lang/String;)V

    .line 6
    iget-object v3, v0, Lcom/comeback/data/base/BasePlayByIdActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->setShowVideoSwitch(Z)V

    .line 7
    iget-object v3, v0, Lcom/comeback/data/base/BasePlayByIdActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v1}, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;->getPlayUrl()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1}, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;->getPlayName()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v2, v4, v5}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->setPlaySwitchUri(ILjava/util/List;Ljava/util/List;)V

    .line 8
    iget-object v3, v0, Lcom/comeback/data/base/BasePlayByIdActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v3}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->startPlayer()Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 9
    iget-object v0, v0, Lcom/comeback/data/base/BasePlayByIdActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getVideoPlayerView()Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    move-result-object v0

    invoke-virtual {v1}, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;->getPlayUrl()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->h1(Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;Ljava/lang/String;)V

    return-void
.end method
