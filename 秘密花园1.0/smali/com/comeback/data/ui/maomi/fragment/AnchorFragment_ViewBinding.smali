.class public Lcom/comeback/data/ui/maomi/fragment/AnchorFragment_ViewBinding;
.super Ljava/lang/Object;
.source "AnchorFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/comeback/data/ui/maomi/fragment/AnchorFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/maomi/fragment/AnchorFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/fragment/AnchorFragment_ViewBinding;->b:Lcom/comeback/data/ui/maomi/fragment/AnchorFragment;

    const-string v0, "UQsGCA9THl41CncIFh4GBUNF"

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/FrameLayout;

    const v2, 0x7f0900c6

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/comeback/data/ui/maomi/fragment/AnchorFragment;->mFlContent:Landroid/widget/FrameLayout;

    const-string p1, "UQsGCA9THl4hEHgOCx5E"

    .line 4
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0901fc

    invoke-static {p2, v1, p1, v0}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/fragment/AnchorFragment_ViewBinding;->b:Lcom/comeback/data/ui/maomi/fragment/AnchorFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/comeback/data/ui/maomi/fragment/AnchorFragment_ViewBinding;->b:Lcom/comeback/data/ui/maomi/fragment/AnchorFragment;

    .line 3
    iput-object v1, v0, Lcom/comeback/data/ui/maomi/fragment/AnchorFragment;->mFlContent:Landroid/widget/FrameLayout;

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
