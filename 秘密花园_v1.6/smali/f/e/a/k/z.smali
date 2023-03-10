.class public final Lf/e/a/k/z;
.super Ljava/lang/Object;
.source "VideoUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/k/z;->a:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    iput-object p2, p0, Lf/e/a/k/z;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lf/e/a/k/z;->a:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lf/e/a/k/z;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/comeback/data/ui/main/AddCollectActivity;->m(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
