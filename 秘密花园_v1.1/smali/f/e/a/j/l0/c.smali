.class public Lf/e/a/j/l0/c;
.super Ljava/lang/Object;
.source "TiktopAdapter.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/test/TiktopAdapter$TiktopHolder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/test/TiktopAdapter$TiktopHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/l0/c;->a:Lcom/comeback/data/ui/test/TiktopAdapter$TiktopHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lf/e/a/j/l0/c;->a:Lcom/comeback/data/ui/test/TiktopAdapter$TiktopHolder;

    .line 2
    iget-object v0, v0, Lcom/comeback/data/ui/test/TiktopAdapter$TiktopHolder;->a:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 3
    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getDuration()J

    move-result-wide v0

    .line 4
    iget-object v2, p0, Lf/e/a/j/l0/c;->a:Lcom/comeback/data/ui/test/TiktopAdapter$TiktopHolder;

    .line 5
    iget-object v2, v2, Lcom/comeback/data/ui/test/TiktopAdapter$TiktopHolder;->a:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    const-wide/16 v3, 0x3e8

    .line 6
    div-long/2addr v0, v3

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    int-to-long v3, p1

    mul-long v0, v0, v3

    invoke-virtual {v2, v0, v1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->seekTo(J)V

    return-void
.end method
