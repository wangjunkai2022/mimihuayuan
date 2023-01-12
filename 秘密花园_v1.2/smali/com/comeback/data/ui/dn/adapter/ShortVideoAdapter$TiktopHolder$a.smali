.class public Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder$a;
.super Ljava/lang/Object;
.source "ShortVideoAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder$a;->a:Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder$a;->a:Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder;

    .line 2
    iget-object v1, v0, Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder;->a:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v0, Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder$a;->a:Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder;

    .line 5
    iget-object v0, v0, Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder;->a:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 6
    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getCurrentPosition()J

    move-result-wide v0

    .line 7
    iget-object v2, p0, Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder$a;->a:Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder;

    iget-object v3, v2, Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder;->mSeekBar:Landroid/widget/SeekBar;

    const-wide/16 v4, 0x3e8

    mul-long v0, v0, v4

    .line 8
    iget-object v2, v2, Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder;->a:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 9
    invoke-virtual {v2}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getDuration()J

    move-result-wide v4

    div-long/2addr v0, v4

    long-to-int v1, v0

    invoke-virtual {v3, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 10
    iget-object v0, p0, Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder$a;->a:Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder;

    .line 11
    iget-object v0, v0, Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder;->a:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 12
    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder$a;->a:Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder;

    iget-object v1, v0, Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v0, v0, Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder;->b:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/SeekBar;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
