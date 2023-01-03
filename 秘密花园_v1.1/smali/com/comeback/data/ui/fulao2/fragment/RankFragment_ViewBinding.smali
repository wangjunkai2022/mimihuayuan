.class public Lcom/comeback/data/ui/fulao2/fragment/RankFragment_ViewBinding;
.super Ljava/lang/Object;
.source "RankFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/comeback/data/ui/fulao2/fragment/RankFragment;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:Landroid/view/View;

.field public f:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/fulao2/fragment/RankFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/fulao2/fragment/RankFragment_ViewBinding;->b:Lcom/comeback/data/ui/fulao2/fragment/RankFragment;

    const-string v0, "WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f090058

    invoke-static {p2, v2, v1}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 4
    iput-object v1, p0, Lcom/comeback/data/ui/fulao2/fragment/RankFragment_ViewBinding;->c:Landroid/view/View;

    .line 5
    new-instance v2, Lcom/comeback/data/ui/fulao2/fragment/RankFragment_ViewBinding$a;

    invoke-direct {v2, p0, p1}, Lcom/comeback/data/ui/fulao2/fragment/RankFragment_ViewBinding$a;-><init>(Lcom/comeback/data/ui/fulao2/fragment/RankFragment_ViewBinding;Lcom/comeback/data/ui/fulao2/fragment/RankFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f090059

    invoke-static {p2, v2, v1}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 7
    iput-object v1, p0, Lcom/comeback/data/ui/fulao2/fragment/RankFragment_ViewBinding;->d:Landroid/view/View;

    .line 8
    new-instance v2, Lcom/comeback/data/ui/fulao2/fragment/RankFragment_ViewBinding$b;

    invoke-direct {v2, p0, p1}, Lcom/comeback/data/ui/fulao2/fragment/RankFragment_ViewBinding$b;-><init>(Lcom/comeback/data/ui/fulao2/fragment/RankFragment_ViewBinding;Lcom/comeback/data/ui/fulao2/fragment/RankFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f09005a

    invoke-static {p2, v2, v1}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 10
    iput-object v1, p0, Lcom/comeback/data/ui/fulao2/fragment/RankFragment_ViewBinding;->e:Landroid/view/View;

    .line 11
    new-instance v2, Lcom/comeback/data/ui/fulao2/fragment/RankFragment_ViewBinding$c;

    invoke-direct {v2, p0, p1}, Lcom/comeback/data/ui/fulao2/fragment/RankFragment_ViewBinding$c;-><init>(Lcom/comeback/data/ui/fulao2/fragment/RankFragment_ViewBinding;Lcom/comeback/data/ui/fulao2/fragment/RankFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09005b

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 13
    iput-object p2, p0, Lcom/comeback/data/ui/fulao2/fragment/RankFragment_ViewBinding;->f:Landroid/view/View;

    .line 14
    new-instance v0, Lcom/comeback/data/ui/fulao2/fragment/RankFragment_ViewBinding$d;

    invoke-direct {v0, p0, p1}, Lcom/comeback/data/ui/fulao2/fragment/RankFragment_ViewBinding$d;-><init>(Lcom/comeback/data/ui/fulao2/fragment/RankFragment_ViewBinding;Lcom/comeback/data/ui/fulao2/fragment/RankFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/fragment/RankFragment_ViewBinding;->b:Lcom/comeback/data/ui/fulao2/fragment/RankFragment;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/comeback/data/ui/fulao2/fragment/RankFragment_ViewBinding;->b:Lcom/comeback/data/ui/fulao2/fragment/RankFragment;

    .line 3
    iget-object v1, p0, Lcom/comeback/data/ui/fulao2/fragment/RankFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iput-object v0, p0, Lcom/comeback/data/ui/fulao2/fragment/RankFragment_ViewBinding;->c:Landroid/view/View;

    .line 5
    iget-object v1, p0, Lcom/comeback/data/ui/fulao2/fragment/RankFragment_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iput-object v0, p0, Lcom/comeback/data/ui/fulao2/fragment/RankFragment_ViewBinding;->d:Landroid/view/View;

    .line 7
    iget-object v1, p0, Lcom/comeback/data/ui/fulao2/fragment/RankFragment_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iput-object v0, p0, Lcom/comeback/data/ui/fulao2/fragment/RankFragment_ViewBinding;->e:Landroid/view/View;

    .line 9
    iget-object v1, p0, Lcom/comeback/data/ui/fulao2/fragment/RankFragment_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iput-object v0, p0, Lcom/comeback/data/ui/fulao2/fragment/RankFragment_ViewBinding;->f:Landroid/view/View;

    return-void

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
