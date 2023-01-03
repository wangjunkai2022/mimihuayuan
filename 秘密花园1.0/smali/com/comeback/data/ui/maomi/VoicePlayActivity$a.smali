.class public Lcom/comeback/data/ui/maomi/VoicePlayActivity$a;
.super Ljava/lang/Object;
.source "VoicePlayActivity.java"

# interfaces
.implements Lchuangyuan/ycj/videolibrary/listener/VideoInfoListener;


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
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity$a;->a:Lcom/comeback/data/ui/maomi/VoicePlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isPlaying(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity$a;->a:Lcom/comeback/data/ui/maomi/VoicePlayActivity;

    iget-object p1, p1, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->d:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->resume()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity$a;->a:Lcom/comeback/data/ui/maomi/VoicePlayActivity;

    iget-object p1, p1, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->d:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->pause()V

    :goto_0
    return-void
.end method

.method public onLoadingChanged()V
    .locals 0

    return-void
.end method

.method public onPlayEnd()V
    .locals 0

    return-void
.end method

.method public onPlayStart(J)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/maomi/VoicePlayActivity$a;->a:Lcom/comeback/data/ui/maomi/VoicePlayActivity;

    iget-object p2, p1, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->mSeekBar:Landroid/widget/SeekBar;

    iget-object p1, p1, Lcom/comeback/data/ui/maomi/VoicePlayActivity;->b:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p2, p1, v0, v1}, Landroid/widget/SeekBar;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onPlayerError(Lf/i/a/a/w;)V
    .locals 0
    .param p1    # Lf/i/a/a/w;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method
