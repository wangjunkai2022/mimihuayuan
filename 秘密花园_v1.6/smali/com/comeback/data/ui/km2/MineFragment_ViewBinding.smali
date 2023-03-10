.class public Lcom/comeback/data/ui/km2/MineFragment_ViewBinding;
.super Ljava/lang/Object;
.source "MineFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/comeback/data/ui/km2/MineFragment;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/km2/MineFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/km2/MineFragment_ViewBinding;->b:Lcom/comeback/data/ui/km2/MineFragment;

    const-string v0, "UQsGCA9THkESAl0IPxgMHkcqDBcfVA=="

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/RadioGroup;

    const v2, 0x7f0901a4

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p1, Lcom/comeback/data/ui/km2/MineFragment;->radioGroupHost:Landroid/widget/RadioGroup;

    const-string v0, "UQsGCA9THkESAl0IPxgMHkcyDwUSVA=="

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/RadioGroup;

    const v2, 0x7f0901a8

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p1, Lcom/comeback/data/ui/km2/MineFragment;->radioGroupPlay:Landroid/widget/RadioGroup;

    const-string v0, "WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="

    .line 5
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f090129

    invoke-static {p2, v2, v1}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 6
    iput-object v1, p0, Lcom/comeback/data/ui/km2/MineFragment_ViewBinding;->c:Landroid/view/View;

    .line 7
    new-instance v2, Lcom/comeback/data/ui/km2/MineFragment_ViewBinding$a;

    invoke-direct {v2, p0, p1}, Lcom/comeback/data/ui/km2/MineFragment_ViewBinding$a;-><init>(Lcom/comeback/data/ui/km2/MineFragment_ViewBinding;Lcom/comeback/data/ui/km2/MineFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090143

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 9
    iput-object p2, p0, Lcom/comeback/data/ui/km2/MineFragment_ViewBinding;->d:Landroid/view/View;

    .line 10
    new-instance v0, Lcom/comeback/data/ui/km2/MineFragment_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/comeback/data/ui/km2/MineFragment_ViewBinding$b;-><init>(Lcom/comeback/data/ui/km2/MineFragment_ViewBinding;Lcom/comeback/data/ui/km2/MineFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km2/MineFragment_ViewBinding;->b:Lcom/comeback/data/ui/km2/MineFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/comeback/data/ui/km2/MineFragment_ViewBinding;->b:Lcom/comeback/data/ui/km2/MineFragment;

    .line 3
    iput-object v1, v0, Lcom/comeback/data/ui/km2/MineFragment;->radioGroupHost:Landroid/widget/RadioGroup;

    .line 4
    iput-object v1, v0, Lcom/comeback/data/ui/km2/MineFragment;->radioGroupPlay:Landroid/widget/RadioGroup;

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/km2/MineFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iput-object v1, p0, Lcom/comeback/data/ui/km2/MineFragment_ViewBinding;->c:Landroid/view/View;

    .line 7
    iget-object v0, p0, Lcom/comeback/data/ui/km2/MineFragment_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iput-object v1, p0, Lcom/comeback/data/ui/km2/MineFragment_ViewBinding;->d:Landroid/view/View;

    return-void

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
