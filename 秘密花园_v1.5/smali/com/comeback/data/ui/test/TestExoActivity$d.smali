.class public Lcom/comeback/data/ui/test/TestExoActivity$d;
.super Ljava/lang/Object;
.source "TestExoActivity.java"

# interfaces
.implements Lchuangyuan/ycj/videolibrary/listener/VideoInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/test/TestExoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/test/TestExoActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/test/TestExoActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/test/TestExoActivity$d;->a:Lcom/comeback/data/ui/test/TestExoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isPlaying(Z)V
    .locals 0

    return-void
.end method

.method public onLoadingChanged()V
    .locals 0

    return-void
.end method

.method public onPlayEnd()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/test/TestExoActivity$d;->a:Lcom/comeback/data/ui/test/TestExoActivity;

    .line 2
    iget-object v0, v0, Lcom/comeback/data/ui/test/TestExoActivity;->a:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 3
    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->startPlayer()Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    return-void
.end method

.method public onPlayStart(J)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/test/TestExoActivity$d;->a:Lcom/comeback/data/ui/test/TestExoActivity;

    .line 2
    iget-object p2, p1, Lcom/comeback/data/ui/test/TestExoActivity;->c:Landroid/widget/SeekBar;

    .line 3
    iget-object p1, p1, Lcom/comeback/data/ui/test/TestExoActivity;->b:Ljava/lang/Runnable;

    const-wide/16 v0, 0x12c

    invoke-virtual {p2, p1, v0, v1}, Landroid/widget/SeekBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4
    iget-object p1, p0, Lcom/comeback/data/ui/test/TestExoActivity$d;->a:Lcom/comeback/data/ui/test/TestExoActivity;

    .line 5
    iget-object p1, p1, Lcom/comeback/data/ui/test/TestExoActivity;->d:Landroid/widget/ImageView;

    const/4 p2, 0x1

    .line 6
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setClickable(Z)V

    return-void
.end method

.method public onPlayerError(Lf/i/a/a/w;)V
    .locals 1
    .param p1    # Lf/i/a/a/w;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/test/TestExoActivity$d;->a:Lcom/comeback/data/ui/test/TestExoActivity;

    .line 2
    iget-object p1, p1, Lcom/comeback/data/ui/test/TestExoActivity;->d:Landroid/widget/ImageView;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    return-void
.end method
