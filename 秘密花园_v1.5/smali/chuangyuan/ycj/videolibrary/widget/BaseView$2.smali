.class public Lchuangyuan/ycj/videolibrary/widget/BaseView$2;
.super Ljava/lang/Object;
.source "BaseView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchuangyuan/ycj/videolibrary/widget/BaseView;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lchuangyuan/ycj/videolibrary/widget/BaseView;


# direct methods
.method public constructor <init>(Lchuangyuan/ycj/videolibrary/widget/BaseView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView$2;->this$0:Lchuangyuan/ycj/videolibrary/widget/BaseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView$2;->this$0:Lchuangyuan/ycj/videolibrary/widget/BaseView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->showBtnContinueHint(I)V

    .line 3
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView$2;->this$0:Lchuangyuan/ycj/videolibrary/widget/BaseView;

    iget-object p1, p1, Lchuangyuan/ycj/videolibrary/widget/BaseView;->mExoPlayerListener:Lchuangyuan/ycj/videolibrary/listener/ExoPlayerListener;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerListener;->playVideoUri()V

    :cond_0
    return-void
.end method
