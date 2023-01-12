.class public Lcom/comeback/data/ui/iqiyi/fragment/HomeFragment_ViewBinding;
.super Lcom/comeback/data/base/BaseRefreshFragment_ViewBinding;
.source "HomeFragment_ViewBinding.java"


# instance fields
.field public c:Lcom/comeback/data/ui/iqiyi/fragment/HomeFragment;

.field public d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/iqiyi/fragment/HomeFragment;Landroid/view/View;)V
    .locals 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/comeback/data/base/BaseRefreshFragment_ViewBinding;-><init>(Lcom/comeback/data/base/BaseRefreshFragment;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/iqiyi/fragment/HomeFragment_ViewBinding;->c:Lcom/comeback/data/ui/iqiyi/fragment/HomeFragment;

    const-string v0, "WgcXDAQXGRQAA1UVGwJE"

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090112

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 4
    iput-object p2, p0, Lcom/comeback/data/ui/iqiyi/fragment/HomeFragment_ViewBinding;->d:Landroid/view/View;

    .line 5
    new-instance v0, Lcom/comeback/data/ui/iqiyi/fragment/HomeFragment_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/comeback/data/ui/iqiyi/fragment/HomeFragment_ViewBinding$a;-><init>(Lcom/comeback/data/ui/iqiyi/fragment/HomeFragment_ViewBinding;Lcom/comeback/data/ui/iqiyi/fragment/HomeFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/iqiyi/fragment/HomeFragment_ViewBinding;->c:Lcom/comeback/data/ui/iqiyi/fragment/HomeFragment;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/comeback/data/ui/iqiyi/fragment/HomeFragment_ViewBinding;->c:Lcom/comeback/data/ui/iqiyi/fragment/HomeFragment;

    .line 3
    iget-object v1, p0, Lcom/comeback/data/ui/iqiyi/fragment/HomeFragment_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iput-object v0, p0, Lcom/comeback/data/ui/iqiyi/fragment/HomeFragment_ViewBinding;->d:Landroid/view/View;

    .line 5
    invoke-super {p0}, Lcom/comeback/data/base/BaseRefreshFragment_ViewBinding;->a()V

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
