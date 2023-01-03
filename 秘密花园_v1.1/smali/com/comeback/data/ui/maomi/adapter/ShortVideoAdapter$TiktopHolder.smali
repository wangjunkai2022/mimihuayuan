.class public Lcom/comeback/data/ui/maomi/adapter/ShortVideoAdapter$TiktopHolder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "ShortVideoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/maomi/adapter/ShortVideoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TiktopHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/maomi/bean/ShortOriginal$DataBeanX$DataBean;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

.field public b:Ljava/lang/Runnable;

.field public c:Lcom/comeback/data/ui/maomi/adapter/ShortVideoAdapter;

.field public mIvPlay:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public mSeekBar:Landroid/widget/SeekBar;
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
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/maomi/adapter/ShortVideoAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    new-instance p1, Lcom/comeback/data/ui/maomi/adapter/ShortVideoAdapter$TiktopHolder$a;

    invoke-direct {p1, p0}, Lcom/comeback/data/ui/maomi/adapter/ShortVideoAdapter$TiktopHolder$a;-><init>(Lcom/comeback/data/ui/maomi/adapter/ShortVideoAdapter$TiktopHolder;)V

    iput-object p1, p0, Lcom/comeback/data/ui/maomi/adapter/ShortVideoAdapter$TiktopHolder;->b:Ljava/lang/Runnable;

    .line 3
    iput-object p2, p0, Lcom/comeback/data/ui/maomi/adapter/ShortVideoAdapter$TiktopHolder;->c:Lcom/comeback/data/ui/maomi/adapter/ShortVideoAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/comeback/data/ui/maomi/bean/ShortOriginal$DataBeanX$DataBean;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/adapter/ShortVideoAdapter$TiktopHolder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/maomi/bean/ShortOriginal$DataBeanX$DataBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/adapter/ShortVideoAdapter$TiktopHolder;->tvTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/maomi/bean/ShortOriginal$DataBeanX$DataBean;->getCreate_at()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/adapter/ShortVideoAdapter$TiktopHolder;->c:Lcom/comeback/data/ui/maomi/adapter/ShortVideoAdapter;

    iget-object v0, v0, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/comeback/data/ui/maomi/adapter/ShortVideoAdapter$TiktopHolder;->videoView:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->h(Landroid/app/Activity;Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;)Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/maomi/adapter/ShortVideoAdapter$TiktopHolder;->a:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 5
    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->hideControllerView()V

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/adapter/ShortVideoAdapter$TiktopHolder;->a:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {p1}, Lcom/comeback/data/ui/maomi/bean/ShortOriginal$DataBeanX$DataBean;->getM3u8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->setPlayUri(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/comeback/data/ui/maomi/adapter/ShortVideoAdapter$TiktopHolder;->c()V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/adapter/ShortVideoAdapter$TiktopHolder;->mIvPlay:Landroid/widget/ImageView;

    const v1, 0x7f0e009f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 10
    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f090348

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    .line 11
    invoke-virtual {p1}, Lcom/comeback/data/ui/maomi/bean/ShortOriginal$DataBeanX$DataBean;->getVideo_img()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/comeback/data/ui/maomi/adapter/ShortVideoAdapter$TiktopHolder;->a:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getVideoPlayerView()Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    move-result-object v1

    invoke-virtual {v1}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->getPreviewImage()Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {p1, v1}, Lc/a/a/b/g/h;->u0(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 12
    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->getPlaybackControlView()Lf/i/a/a/k1/d;

    move-result-object p1

    const v1, 0x7f09008f

    .line 13
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const/16 v1, 0x8

    .line 14
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lcom/comeback/data/ui/maomi/adapter/ShortVideoAdapter$TiktopHolder;->mIvPlay:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 16
    iget-object p1, p0, Lcom/comeback/data/ui/maomi/adapter/ShortVideoAdapter$TiktopHolder;->mIvPlay:Landroid/widget/ImageView;

    new-instance v1, Lf/e/a/j/c0/k/a;

    invoke-direct {v1, p0}, Lf/e/a/j/c0/k/a;-><init>(Lcom/comeback/data/ui/maomi/adapter/ShortVideoAdapter$TiktopHolder;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090090

    .line 17
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 19
    iget-object p1, p0, Lcom/comeback/data/ui/maomi/adapter/ShortVideoAdapter$TiktopHolder;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 20
    iget-object p1, p0, Lcom/comeback/data/ui/maomi/adapter/ShortVideoAdapter$TiktopHolder;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v0, Lf/e/a/j/c0/k/b;

    invoke-direct {v0, p0}, Lf/e/a/j/c0/k/b;-><init>(Lcom/comeback/data/ui/maomi/adapter/ShortVideoAdapter$TiktopHolder;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 21
    iget-object p1, p0, Lcom/comeback/data/ui/maomi/adapter/ShortVideoAdapter$TiktopHolder;->a:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    new-instance v0, Lf/e/a/j/c0/k/c;

    invoke-direct {v0, p0}, Lf/e/a/j/c0/k/c;-><init>(Lcom/comeback/data/ui/maomi/adapter/ShortVideoAdapter$TiktopHolder;)V

    invoke-virtual {p1, v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->addVideoInfoListener(Lchuangyuan/ycj/videolibrary/listener/VideoInfoListener;)V

    return-void
.end method

.method public synthetic b(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/maomi/adapter/ShortVideoAdapter$TiktopHolder;->a:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/comeback/data/ui/maomi/adapter/ShortVideoAdapter$TiktopHolder;->a:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->onPause()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/comeback/data/ui/maomi/adapter/ShortVideoAdapter$TiktopHolder;->c()V

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/comeback/data/ui/maomi/adapter/ShortVideoAdapter$TiktopHolder;->a:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/comeback/data/ui/maomi/adapter/ShortVideoAdapter$TiktopHolder;->mIvPlay:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/comeback/data/ui/maomi/adapter/ShortVideoAdapter$TiktopHolder;->mIvPlay:Landroid/widget/ImageView;

    const v0, 0x7f0e009f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-void
.end method

.method public final c()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/adapter/ShortVideoAdapter$TiktopHolder;->a:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getCurrentPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/adapter/ShortVideoAdapter$TiktopHolder;->a:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->startPlayer()Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/adapter/ShortVideoAdapter$TiktopHolder;->a:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->onResume()V

    :goto_0
    return-void
.end method
