.class public Lcom/comeback/data/ui/maomi/VoicePlayActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "VoicePlayActivity.java"


# instance fields
.field public b:Ljava/lang/Runnable;

.field public c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

.field public d:Landroid/animation/ObjectAnimator;

.field public e:I

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/maomi/bean/VoiceDetail$DataBeanX$DataBean;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean;

.field public h:Z

.field public mIvImg:Lcom/comeback/data/widget/RatioImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public mIvPlay:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public mSeekBar:Landroid/widget/SeekBar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public mTvAll:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public mTvCurrent:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public mTvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Lf/e/a/j/d0/e;

    invoke-direct {v0, p0}, Lf/e/a/j/d0/e;-><init>(Lcom/comeback/data/ui/maomi/VoicePlayActivity;)V

    iput-object v0, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->b:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->e:I

    return-void
.end method

.method public static n(Landroid/content/Context;Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/comeback/data/ui/maomi/VoicePlayActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "UwMXBQ=="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "UwMXBQ=="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean;

    iput-object p1, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->g:Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean;

    return-void
.end method

.method public d()I
    .locals 1

    const v0, 0x7f0c00a5

    return v0
.end method

.method public e()V
    .locals 3

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->j(I)V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->mTvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->g:Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean;

    invoke-virtual {v1}, Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->g:Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean;

    invoke-virtual {v0}, Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean;->getThumb()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->mIvImg:Lcom/comeback/data/widget/RatioImageView;

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->z0(Ljava/lang/String;Landroid/widget/ImageView;)V

    const v0, 0x7f09035a

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-static {p0, v0}, Lc/a/a/b/g/h;->h(Landroid/app/Activity;Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;)Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "XgY="

    .line 7
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->g:Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean;

    invoke-virtual {v2}, Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 8
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 9
    :goto_0
    invoke-static {}, Lf/e/a/j/d0/m/d;->a()Lf/e/a/j/d0/m/a;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lf/e/a/j/d0/m/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lf/e/a/j/d0/m/a;->d(Ljava/lang/String;)Lm/e;

    move-result-object v0

    .line 10
    new-instance v1, Lf/e/a/j/d0/j;

    invoke-direct {v1, p0}, Lf/e/a/j/d0/j;-><init>(Lcom/comeback/data/ui/maomi/VoicePlayActivity;)V

    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    .line 12
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->mIvImg:Lcom/comeback/data/widget/RatioImageView;

    const-string v1, "RQ0XBR8aVl0="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->d:Landroid/animation/ObjectAnimator;

    const v1, 0x186a0

    .line 13
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 14
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->d:Landroid/animation/ObjectAnimator;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 15
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->d:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 16
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->d:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 17
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    new-instance v1, Lcom/comeback/data/ui/maomi/VoicePlayActivity$a;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/maomi/VoicePlayActivity$a;-><init>(Lcom/comeback/data/ui/maomi/VoicePlayActivity;)V

    invoke-virtual {v0, v1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->addVideoInfoListener(Lchuangyuan/ycj/videolibrary/listener/VideoInfoListener;)V

    .line 18
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/comeback/data/ui/maomi/VoicePlayActivity$b;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/maomi/VoicePlayActivity$b;-><init>(Lcom/comeback/data/ui/maomi/VoicePlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x43b28000    # 357.0f
    .end array-data
.end method

.method public synthetic l()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getCurrentPosition()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v2}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getDuration()J

    move-result-wide v2

    .line 4
    iget-boolean v4, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->h:Z

    if-nez v4, :cond_0

    .line 5
    iget-object v4, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->mSeekBar:Landroid/widget/SeekBar;

    long-to-int v5, v2

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 6
    iget-object v4, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->mSeekBar:Landroid/widget/SeekBar;

    long-to-int v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 7
    :cond_0
    iget-object v4, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->mTvCurrent:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->m(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->mTvAll:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v3}, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->m(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->b:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/SeekBar;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public m(J)Ljava/lang/String;
    .locals 8

    const-wide/16 v0, 0x3e8

    .line 1
    div-long/2addr p1, v0

    const-wide/16 v0, 0x3c

    .line 2
    rem-long v2, p1, v0

    .line 3
    div-long/2addr p1, v0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bw=="

    const-wide/16 v4, 0xa

    cmp-long v6, p1, v4

    if-gez v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string p2, "DQ=="

    invoke-static {v0, p1, p2}, Lf/b/a/a/a;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    cmp-long p1, v2, v4

    if-gez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BaseActivity;->onDestroy()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->d:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 5
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-wide/16 v0, 0x0

    const v2, 0x7f08016c

    sparse-switch p1, :sswitch_data_0

    return-void

    .line 2
    :sswitch_0
    iget p1, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->e:I

    if-eqz p1, :cond_0

    .line 3
    iget-object v3, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 4
    iget-object v4, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->f:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    .line 5
    iput p1, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->e:I

    .line 6
    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/maomi/bean/VoiceDetail$DataBeanX$DataBean;

    invoke-virtual {p1}, Lcom/comeback/data/ui/maomi/bean/VoiceDetail$DataBeanX$DataBean;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->setPlayUri(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->startPlayer()Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 8
    iget-object p1, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {p1, v0, v1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->seekTo(J)V

    .line 9
    iget-object p1, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->mIvPlay:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void

    .line 10
    :sswitch_1
    iget-object p1, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->f:Ljava/util/List;

    if-nez p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12
    iget-object p1, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->mIvPlay:Landroid/widget/ImageView;

    const v0, 0x7f080170

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 13
    iget-object p1, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->onPause()V

    goto :goto_0

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->onResume()V

    .line 15
    iget-object p1, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->mIvPlay:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    :goto_0
    return-void

    .line 16
    :sswitch_2
    iget-object p1, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->f:Ljava/util/List;

    if-eqz p1, :cond_4

    iget v3, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->e:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-eq v3, p1, :cond_4

    .line 17
    iget-object p1, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 18
    iget-object v3, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->f:Ljava/util/List;

    .line 19
    iget v4, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->e:I

    add-int/lit8 v4, v4, 0x1

    .line 20
    iput v4, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->e:I

    .line 21
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/comeback/data/ui/maomi/bean/VoiceDetail$DataBeanX$DataBean;

    invoke-virtual {v3}, Lcom/comeback/data/ui/maomi/bean/VoiceDetail$DataBeanX$DataBean;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->setPlayUri(Ljava/lang/String;)V

    .line 22
    iget-object p1, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->startPlayer()Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 23
    iget-object p1, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {p1, v0, v1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->seekTo(J)V

    .line 24
    iget-object p1, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->mIvPlay:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    return-void

    :sswitch_3
    const-string p1, "0fjhgNP+36fcgLjmnNLog4rf"

    .line 25
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

    return-void

    .line 26
    :sswitch_4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0900f3 -> :sswitch_4
        0x7f0900fb -> :sswitch_3
        0x7f09010b -> :sswitch_2
        0x7f09010e -> :sswitch_1
        0x7f09010f -> :sswitch_0
    .end sparse-switch
.end method
