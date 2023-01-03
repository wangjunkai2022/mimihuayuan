.class public Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "ShortVideoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TiktopHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/cucumber/bean/Video;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter;

.field public b:Lcom/comeback/data/ui/cucumber/bean/Video;

.field public c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

.field public d:Ljava/lang/Runnable;

.field public mIvPlay:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public mSeekBar:Landroid/widget/SeekBar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvCommentNum:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvLikeNum:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public videoView:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    new-instance p1, Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder$a;

    invoke-direct {p1, p0}, Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder$a;-><init>(Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;)V

    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;->d:Ljava/lang/Runnable;

    .line 3
    iput-object p2, p0, Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;->a:Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/comeback/data/ui/cucumber/bean/Video;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;->b:Lcom/comeback/data/ui/cucumber/bean/Video;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/Video;->getMovName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;->tvTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/Video;->getMovDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;->tvLikeNum:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/Video;->getFavorCnt()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;->tvCommentNum:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/Video;->getCommentCnt()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;->a:Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter;

    iget-object v0, v0, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;->videoView:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->h(Landroid/app/Activity;Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;)Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 8
    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->hideControllerView()V

    .line 9
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    const-string v1, "XxYXFBhJFhwEEUNJGgsKD0JMAAsG"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->setPlayUri(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    if-nez v0, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;->c()V

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;->mIvPlay:Landroid/widget/ImageView;

    const v1, 0x7f0e009f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f090348

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    .line 14
    iget-object v1, p0, Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;->a:Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter;

    .line 15
    iget-boolean v1, v1, Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter;->e:Z

    if-eqz v1, :cond_1

    .line 16
    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/Video;->getVideoCover()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/Video;->getCover()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v1, p0, Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getVideoPlayerView()Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    move-result-object v1

    invoke-virtual {v1}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->getPreviewImage()Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {p1, v1}, Lc/a/a/b/g/h;->B0(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 17
    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->getPlaybackControlView()Lf/i/a/a/k1/d;

    move-result-object p1

    const v1, 0x7f09008f

    .line 18
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const/16 v1, 0x8

    .line 19
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    iget-object p1, p0, Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;->mIvPlay:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 21
    iget-object p1, p0, Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;->mIvPlay:Landroid/widget/ImageView;

    new-instance v1, Lf/e/a/j/g/f/a;

    invoke-direct {v1, p0}, Lf/e/a/j/g/f/a;-><init>(Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090090

    .line 22
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const/4 v0, 0x0

    .line 23
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 24
    iget-object p1, p0, Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 25
    iget-object p1, p0, Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v0, Lf/e/a/j/g/f/b;

    invoke-direct {v0, p0}, Lf/e/a/j/g/f/b;-><init>(Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 26
    iget-object p1, p0, Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    new-instance v0, Lf/e/a/j/g/f/c;

    invoke-direct {v0, p0}, Lf/e/a/j/g/f/c;-><init>(Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;)V

    invoke-virtual {p1, v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->addVideoInfoListener(Lchuangyuan/ycj/videolibrary/listener/VideoInfoListener;)V

    return-void
.end method

.method public synthetic b(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->onPause()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;->c()V

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;->mIvPlay:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;->mIvPlay:Landroid/widget/ImageView;

    const v0, 0x7f0e009f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-void
.end method

.method public final c()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getCurrentPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    cmp-long v4, v0, v2

    if-gtz v4, :cond_3

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;->b:Lcom/comeback/data/ui/cucumber/bean/Video;

    invoke-virtual {v0}, Lcom/comeback/data/ui/cucumber/bean/Video;->getRealVideo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;->a:Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter;

    .line 5
    iget-boolean v0, v0, Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter;->e:Z

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Lf/e/a/j/g/h/c;->a()Lf/e/a/j/g/h/a;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;->b:Lcom/comeback/data/ui/cucumber/bean/Video;

    invoke-virtual {v1}, Lcom/comeback/data/ui/cucumber/bean/Video;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lf/e/a/j/g/h/a;->j(Ljava/lang/String;)Lm/e;

    move-result-object v0

    .line 7
    new-instance v1, Lf/e/a/j/g/f/e;

    invoke-direct {v1, p0}, Lf/e/a/j/g/f/e;-><init>(Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;)V

    .line 8
    invoke-static {}, Lm/l/b/a;->a()Lm/g;

    move-result-object v2

    .line 9
    invoke-static {}, Lm/r/a;->a()Lm/g;

    move-result-object v3

    invoke-virtual {v0, v3}, Lm/e;->d(Lm/g;)Lm/e;

    move-result-object v0

    .line 10
    invoke-virtual {v0, v2}, Lm/e;->b(Lm/g;)Lm/e;

    move-result-object v0

    .line 11
    invoke-virtual {v0, v1}, Lm/e;->c(Lm/j;)Lm/k;

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {}, Lf/e/a/j/g/h/c;->a()Lf/e/a/j/g/h/a;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;->b:Lcom/comeback/data/ui/cucumber/bean/Video;

    invoke-virtual {v1}, Lcom/comeback/data/ui/cucumber/bean/Video;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lf/e/a/j/g/h/a;->p(I)Lm/e;

    move-result-object v0

    .line 13
    new-instance v1, Lf/e/a/j/g/f/d;

    invoke-direct {v1, p0}, Lf/e/a/j/g/f/d;-><init>(Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;)V

    .line 14
    invoke-static {}, Lm/l/b/a;->a()Lm/g;

    move-result-object v2

    .line 15
    invoke-static {}, Lm/r/a;->a()Lm/g;

    move-result-object v3

    invoke-virtual {v0, v3}, Lm/e;->d(Lm/g;)Lm/e;

    move-result-object v0

    .line 16
    invoke-virtual {v0, v2}, Lm/e;->b(Lm/g;)Lm/e;

    move-result-object v0

    .line 17
    invoke-virtual {v0, v1}, Lm/e;->c(Lm/j;)Lm/k;

    goto :goto_0

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->startPlayer()Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    goto :goto_0

    .line 19
    :cond_3
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter$TiktopHolder;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->onResume()V

    :goto_0
    return-void
.end method
