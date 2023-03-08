.class public Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$3;
.super Ljava/lang/Object;
.source "VideoPlayerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;


# direct methods
.method public constructor <init>(Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$3;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lchuangyuan/ycj/videolibrary/R$id;->exo_video_fullscreen:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lchuangyuan/ycj/videolibrary/R$id;->sexo_video_fullscreen:I

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lchuangyuan/ycj/videolibrary/R$id;->exo_controls_back:I

    if-ne v0, v1, :cond_2

    .line 3
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$3;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->isLand()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$3;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-static {p1}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->access$000(Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;)V

    goto/16 :goto_1

    .line 5
    :cond_1
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$3;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    iget-object p1, p1, Lchuangyuan/ycj/videolibrary/widget/BaseView;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->onBackPressed()V

    goto/16 :goto_1

    .line 6
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lchuangyuan/ycj/videolibrary/R$id;->exo_player_error_btn_id:I

    if-ne v0, v1, :cond_3

    .line 7
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$3;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-static {p1}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->access$100(Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;)V

    goto/16 :goto_1

    .line 8
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lchuangyuan/ycj/videolibrary/R$id;->exo_player_replay_btn_id:I

    if-ne v0, v1, :cond_4

    .line 9
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$3;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-static {p1}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->access$100(Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;)V

    goto/16 :goto_1

    .line 10
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lchuangyuan/ycj/videolibrary/R$id;->exo_video_switch:I

    if-ne v0, v1, :cond_6

    .line 11
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$3;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    iget-object v1, v0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->belowView:Lchuangyuan/ycj/videolibrary/widget/BelowView;

    if-nez v1, :cond_5

    .line 12
    new-instance v1, Lchuangyuan/ycj/videolibrary/widget/BelowView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$3;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-virtual {v4}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->getNameSwitch()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lchuangyuan/ycj/videolibrary/widget/BelowView;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, v0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->belowView:Lchuangyuan/ycj/videolibrary/widget/BelowView;

    .line 13
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$3;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    iget-object v0, v0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->belowView:Lchuangyuan/ycj/videolibrary/widget/BelowView;

    new-instance v1, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$3$1;

    invoke-direct {v1, p0}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$3$1;-><init>(Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$3;)V

    invoke-virtual {v0, v1}, Lchuangyuan/ycj/videolibrary/widget/BelowView;->setOnItemClickListener(Lchuangyuan/ycj/videolibrary/widget/BelowView$OnItemClickListener;)V

    .line 14
    :cond_5
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$3;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    iget-object v1, v0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->belowView:Lchuangyuan/ycj/videolibrary/widget/BelowView;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->getSwitchIndex()I

    move-result v0

    invoke-virtual {v1, p1, v2, v0}, Lchuangyuan/ycj/videolibrary/widget/BelowView;->showBelowView(Landroid/view/View;ZI)V

    goto :goto_1

    .line 15
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lchuangyuan/ycj/videolibrary/R$id;->exo_player_btn_hint_btn_id:I

    if-ne p1, v0, :cond_a

    .line 16
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$3;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->showBtnContinueHint(I)V

    .line 17
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$3;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    iget-object p1, p1, Lchuangyuan/ycj/videolibrary/widget/BaseView;->mExoPlayerListener:Lchuangyuan/ycj/videolibrary/listener/ExoPlayerListener;

    if-eqz p1, :cond_a

    .line 18
    invoke-interface {p1}, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerListener;->playVideoUri()V

    goto :goto_1

    .line 19
    :cond_7
    :goto_0
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$3;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->isVerticalFullScreen()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 20
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$3;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->isLand()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->doOnConfigurationChanged(Z)V

    goto :goto_1

    .line 21
    :cond_8
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$3;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lchuangyuan/ycj/videolibrary/utils/VideoPlayUtils;->isLand(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 22
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$3;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    iget-object p1, p1, Lchuangyuan/ycj/videolibrary/widget/BaseView;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 23
    :cond_9
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$3;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    iget-object p1, p1, Lchuangyuan/ycj/videolibrary/widget/BaseView;->activity:Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_a
    :goto_1
    return-void
.end method
