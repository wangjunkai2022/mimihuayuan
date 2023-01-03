.class public Lchuangyuan/ycj/videolibrary/widget/BelowView$1;
.super Ljava/lang/Object;
.source "BelowView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchuangyuan/ycj/videolibrary/widget/BelowView;->showBelowView(Landroid/view/View;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lchuangyuan/ycj/videolibrary/widget/BelowView;


# direct methods
.method public constructor <init>(Lchuangyuan/ycj/videolibrary/widget/BelowView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/BelowView$1;->this$0:Lchuangyuan/ycj/videolibrary/widget/BelowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/BelowView$1;->this$0:Lchuangyuan/ycj/videolibrary/widget/BelowView;

    invoke-static {p1}, Lchuangyuan/ycj/videolibrary/widget/BelowView;->access$000(Lchuangyuan/ycj/videolibrary/widget/BelowView;)Lchuangyuan/ycj/videolibrary/widget/BelowView$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/BelowView$1;->this$0:Lchuangyuan/ycj/videolibrary/widget/BelowView;

    invoke-static {p1}, Lchuangyuan/ycj/videolibrary/widget/BelowView;->access$100(Lchuangyuan/ycj/videolibrary/widget/BelowView;)Lchuangyuan/ycj/videolibrary/widget/SwitchAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/widget/SwitchAdapter;->getSelectIndex()I

    move-result p1

    if-eq p3, p1, :cond_0

    .line 2
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/BelowView$1;->this$0:Lchuangyuan/ycj/videolibrary/widget/BelowView;

    invoke-static {p1}, Lchuangyuan/ycj/videolibrary/widget/BelowView;->access$000(Lchuangyuan/ycj/videolibrary/widget/BelowView;)Lchuangyuan/ycj/videolibrary/widget/BelowView$OnItemClickListener;

    move-result-object p1

    iget-object p2, p0, Lchuangyuan/ycj/videolibrary/widget/BelowView$1;->this$0:Lchuangyuan/ycj/videolibrary/widget/BelowView;

    invoke-static {p2}, Lchuangyuan/ycj/videolibrary/widget/BelowView;->access$100(Lchuangyuan/ycj/videolibrary/widget/BelowView;)Lchuangyuan/ycj/videolibrary/widget/SwitchAdapter;

    move-result-object p2

    invoke-virtual {p2, p3}, Lchuangyuan/ycj/videolibrary/widget/SwitchAdapter;->getItem(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Lchuangyuan/ycj/videolibrary/widget/BelowView$OnItemClickListener;->onItemClick(ILjava/lang/String;)V

    .line 3
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/BelowView$1;->this$0:Lchuangyuan/ycj/videolibrary/widget/BelowView;

    invoke-static {p1}, Lchuangyuan/ycj/videolibrary/widget/BelowView;->access$100(Lchuangyuan/ycj/videolibrary/widget/BelowView;)Lchuangyuan/ycj/videolibrary/widget/SwitchAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lchuangyuan/ycj/videolibrary/widget/SwitchAdapter;->setSelectIndex(I)V

    :cond_0
    return-void
.end method
