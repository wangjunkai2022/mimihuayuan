.class public Lchuangyuan/ycj/videolibrary/widget/LockControlView$1;
.super Ljava/lang/Object;
.source "LockControlView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchuangyuan/ycj/videolibrary/widget/LockControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lchuangyuan/ycj/videolibrary/widget/LockControlView;


# direct methods
.method public constructor <init>(Lchuangyuan/ycj/videolibrary/widget/LockControlView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView$1;->this$0:Lchuangyuan/ycj/videolibrary/widget/LockControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView$1;->this$0:Lchuangyuan/ycj/videolibrary/widget/LockControlView;

    invoke-static {v0}, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->access$000(Lchuangyuan/ycj/videolibrary/widget/LockControlView;)Lchuangyuan/ycj/videolibrary/widget/BaseView;

    move-result-object v0

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->isLand()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView$1;->this$0:Lchuangyuan/ycj/videolibrary/widget/LockControlView;

    invoke-static {v0}, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->access$100(Lchuangyuan/ycj/videolibrary/widget/LockControlView;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView$1;->this$0:Lchuangyuan/ycj/videolibrary/widget/LockControlView;

    invoke-static {v0}, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->access$100(Lchuangyuan/ycj/videolibrary/widget/LockControlView;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lchuangyuan/ycj/videolibrary/utils/AnimUtils;->setOutAnimX(Landroid/view/View;Z)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView$1;->this$0:Lchuangyuan/ycj/videolibrary/widget/LockControlView;

    invoke-static {v0}, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->access$100(Lchuangyuan/ycj/videolibrary/widget/LockControlView;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object v0

    invoke-static {v0}, Lchuangyuan/ycj/videolibrary/utils/AnimUtils;->setInAnimX(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    :cond_1
    :goto_0
    return-void
.end method
