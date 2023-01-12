.class public Lcom/comeback/data/ui/maomi/VoicePlayActivity$b;
.super Ljava/lang/Object;
.source "VoicePlayActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/maomi/VoicePlayActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/maomi/VoicePlayActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/maomi/VoicePlayActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity$b;->a:Lcom/comeback/data/ui/maomi/VoicePlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity$b;->a:Lcom/comeback/data/ui/maomi/VoicePlayActivity;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->h:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity$b;->a:Lcom/comeback/data/ui/maomi/VoicePlayActivity;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->h:Z

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    iget-object p1, p1, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->seekTo(J)V

    return-void
.end method
