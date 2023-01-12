.class public Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment_ViewBinding;
.super Lcom/comeback/data/base/BaseRefreshFragment_ViewBinding;
.source "ComicTypeFragment_ViewBinding.java"


# instance fields
.field public c:Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment;

.field public d:Landroid/view/View;

.field public e:Landroid/view/View;

.field public f:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment;Landroid/view/View;)V
    .locals 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/comeback/data/base/BaseRefreshFragment_ViewBinding;-><init>(Lcom/comeback/data/base/BaseRefreshFragment;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment_ViewBinding;->c:Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment;

    const-string v0, "WgcXDAQXGRQAA1UVGwJE"

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09030b

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment_ViewBinding;->d:Landroid/view/View;

    .line 5
    new-instance v1, Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment_ViewBinding$a;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment_ViewBinding$a;-><init>(Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment_ViewBinding;Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "WgcXDAQXGRQBB1oMXw=="

    .line 6
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090110

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment_ViewBinding;->e:Landroid/view/View;

    .line 8
    new-instance v1, Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment_ViewBinding$b;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment_ViewBinding$b;-><init>(Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment_ViewBinding;Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "WgcXDAQXGRQHH0QCXw=="

    .line 9
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090118

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 10
    iput-object p2, p0, Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment_ViewBinding;->f:Landroid/view/View;

    .line 11
    new-instance v0, Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment_ViewBinding$c;-><init>(Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment_ViewBinding;Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment_ViewBinding;->c:Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment_ViewBinding;->c:Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment;

    .line 3
    iget-object v1, p0, Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iput-object v0, p0, Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment_ViewBinding;->d:Landroid/view/View;

    .line 5
    iget-object v1, p0, Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iput-object v0, p0, Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment_ViewBinding;->e:Landroid/view/View;

    .line 7
    iget-object v1, p0, Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iput-object v0, p0, Lcom/comeback/data/ui/gkj/fragment/ComicTypeFragment_ViewBinding;->f:Landroid/view/View;

    .line 9
    invoke-super {p0}, Lcom/comeback/data/base/BaseRefreshFragment_ViewBinding;->a()V

    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
