.class public Lcom/comeback/data/ui/jhlf/JHLFActivity_ViewBinding;
.super Ljava/lang/Object;
.source "JHLFActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/comeback/data/ui/jhlf/JHLFActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/jhlf/JHLFActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/jhlf/JHLFActivity_ViewBinding;->b:Lcom/comeback/data/ui/jhlf/JHLFActivity;

    const-string v0, "UQsGCA9THl8cB1AOFg1E"

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/wang/avi/AVLoadingIndicatorView;

    const v2, 0x7f09014b

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wang/avi/AVLoadingIndicatorView;

    iput-object v0, p1, Lcom/comeback/data/ui/jhlf/JHLFActivity;->loading:Lcom/wang/avi/AVLoadingIndicatorView;

    const-string v0, "UQsGCA9THlUfNkYIHxgGGERF"

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/FrameLayout;

    const v2, 0x7f0900cc

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/comeback/data/ui/jhlf/JHLFActivity;->flProgress:Landroid/widget/FrameLayout;

    const-string v0, "UQsGCA9THkEFJ1BA"

    .line 5
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f0901f7

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/comeback/data/ui/jhlf/JHLFActivity;->rvAd:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "UQsGCA9THkEFKl0UDE0="

    .line 6
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f0901f5

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/comeback/data/ui/jhlf/JHLFActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "UQsGCA9THkcFOUAODAYGTA=="

    .line 7
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090327

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/comeback/data/ui/jhlf/JHLFActivity;->tv_title:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/jhlf/JHLFActivity_ViewBinding;->b:Lcom/comeback/data/ui/jhlf/JHLFActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/comeback/data/ui/jhlf/JHLFActivity_ViewBinding;->b:Lcom/comeback/data/ui/jhlf/JHLFActivity;

    .line 3
    iput-object v1, v0, Lcom/comeback/data/ui/jhlf/JHLFActivity;->loading:Lcom/wang/avi/AVLoadingIndicatorView;

    .line 4
    iput-object v1, v0, Lcom/comeback/data/ui/jhlf/JHLFActivity;->flProgress:Landroid/widget/FrameLayout;

    .line 5
    iput-object v1, v0, Lcom/comeback/data/ui/jhlf/JHLFActivity;->rvAd:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    iput-object v1, v0, Lcom/comeback/data/ui/jhlf/JHLFActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    iput-object v1, v0, Lcom/comeback/data/ui/jhlf/JHLFActivity;->tv_title:Landroid/widget/TextView;

    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
