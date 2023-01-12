.class public Lchuangyuan/ycj/videolibrary/widget/BaseView$3;
.super Ljava/lang/Object;
.source "BaseView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchuangyuan/ycj/videolibrary/widget/BaseView;->scaleVerticalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lchuangyuan/ycj/videolibrary/widget/BaseView;

.field public final synthetic val$parent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lchuangyuan/ycj/videolibrary/widget/BaseView;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView$3;->this$0:Lchuangyuan/ycj/videolibrary/widget/BaseView;

    iput-object p2, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView$3;->val$parent:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView$3;->val$parent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView$3;->this$0:Lchuangyuan/ycj/videolibrary/widget/BaseView;

    iget-object v1, v1, Lchuangyuan/ycj/videolibrary/widget/BaseView;->playerView:Lf/i/a/a/k1/c;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView$3;->this$0:Lchuangyuan/ycj/videolibrary/widget/BaseView;

    iget-object v1, v0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->playerView:Lf/i/a/a/k1/c;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method
