.class public Lcom/comeback/data/ui/tv91/fragment/TypeFragment_ViewBinding;
.super Ljava/lang/Object;
.source "TypeFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/comeback/data/ui/tv91/fragment/TypeFragment;

.field public c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/tv91/fragment/TypeFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/tv91/fragment/TypeFragment_ViewBinding;->b:Lcom/comeback/data/ui/tv91/fragment/TypeFragment;

    const-string v0, "UQsGCA9THlYHNVEGCgkLTA=="

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f090085

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/comeback/data/ui/tv91/fragment/TypeFragment;->etSearch:Landroid/widget/EditText;

    const-string v0, "UQsGCA9THloFJVUJGw8PTBcDDQBLHlxHGwlQR18FDT1eBxQnBxpaWBYCEw=="

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0900f1

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 5
    iput-object v0, p1, Lcom/comeback/data/ui/tv91/fragment/TypeFragment;->ivCancel:Landroid/view/View;

    .line 6
    iput-object v0, p0, Lcom/comeback/data/ui/tv91/fragment/TypeFragment_ViewBinding;->c:Landroid/view/View;

    .line 7
    new-instance v1, Lcom/comeback/data/ui/tv91/fragment/TypeFragment_ViewBinding$a;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/tv91/fragment/TypeFragment_ViewBinding$a;-><init>(Lcom/comeback/data/ui/tv91/fragment/TypeFragment_ViewBinding;Lcom/comeback/data/ui/tv91/fragment/TypeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "UQsGCA9THkEFKl0UDE0="

    .line 8
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f090200

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p1, Lcom/comeback/data/ui/tv91/fragment/TypeFragment;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/tv91/fragment/TypeFragment_ViewBinding;->b:Lcom/comeback/data/ui/tv91/fragment/TypeFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/comeback/data/ui/tv91/fragment/TypeFragment_ViewBinding;->b:Lcom/comeback/data/ui/tv91/fragment/TypeFragment;

    .line 3
    iput-object v1, v0, Lcom/comeback/data/ui/tv91/fragment/TypeFragment;->etSearch:Landroid/widget/EditText;

    .line 4
    iput-object v1, v0, Lcom/comeback/data/ui/tv91/fragment/TypeFragment;->ivCancel:Landroid/view/View;

    .line 5
    iput-object v1, v0, Lcom/comeback/data/ui/tv91/fragment/TypeFragment;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/tv91/fragment/TypeFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iput-object v1, p0, Lcom/comeback/data/ui/tv91/fragment/TypeFragment_ViewBinding;->c:Landroid/view/View;

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
