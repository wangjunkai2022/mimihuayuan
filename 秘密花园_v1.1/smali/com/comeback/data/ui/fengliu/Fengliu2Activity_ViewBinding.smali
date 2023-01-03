.class public Lcom/comeback/data/ui/fengliu/Fengliu2Activity_ViewBinding;
.super Lcom/comeback/data/base/BaseRefreshActivity_ViewBinding;
.source "Fengliu2Activity_ViewBinding.java"


# instance fields
.field public c:Lcom/comeback/data/ui/fengliu/Fengliu2Activity;

.field public d:Landroid/view/View;

.field public e:Landroid/view/View;

.field public f:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/fengliu/Fengliu2Activity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/comeback/data/base/BaseRefreshActivity_ViewBinding;-><init>(Lcom/comeback/data/base/BaseRefreshActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/Fengliu2Activity_ViewBinding;->c:Lcom/comeback/data/ui/fengliu/Fengliu2Activity;

    const-string v0, "UQsGCA9THkcFMl0TFA9E"

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09031c

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/fengliu/Fengliu2Activity;->tvTitle:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFJ0YCGU0="

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090294

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/fengliu/Fengliu2Activity;->tvArea:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFKUYDHRhE"

    .line 5
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902ea

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/fengliu/Fengliu2Activity;->tvOrder:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFNVEVDgMADhA="

    .line 6
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090306

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/fengliu/Fengliu2Activity;->tvService:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THl8fNVEVDgMADhBCAgoPU1RWBw5bA1hNDAVhCwYTKB9QUBgDUEA="

    .line 7
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09013e

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "UQsGCA9THl8fNVEVDgMADhA="

    .line 8
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, v3}, Ld/c/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/comeback/data/ui/fengliu/Fengliu2Activity;->llService:Landroid/widget/LinearLayout;

    .line 9
    iput-object v0, p0, Lcom/comeback/data/ui/fengliu/Fengliu2Activity_ViewBinding;->d:Landroid/view/View;

    .line 10
    new-instance v1, Lcom/comeback/data/ui/fengliu/Fengliu2Activity_ViewBinding$a;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/fengliu/Fengliu2Activity_ViewBinding$a;-><init>(Lcom/comeback/data/ui/fengliu/Fengliu2Activity_ViewBinding;Lcom/comeback/data/ui/fengliu/Fengliu2Activity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="

    .line 11
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f090123

    invoke-static {p2, v2, v1}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 12
    iput-object v1, p0, Lcom/comeback/data/ui/fengliu/Fengliu2Activity_ViewBinding;->e:Landroid/view/View;

    .line 13
    new-instance v2, Lcom/comeback/data/ui/fengliu/Fengliu2Activity_ViewBinding$b;

    invoke-direct {v2, p0, p1}, Lcom/comeback/data/ui/fengliu/Fengliu2Activity_ViewBinding$b;-><init>(Lcom/comeback/data/ui/fengliu/Fengliu2Activity_ViewBinding;Lcom/comeback/data/ui/fengliu/Fengliu2Activity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090134

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 15
    iput-object p2, p0, Lcom/comeback/data/ui/fengliu/Fengliu2Activity_ViewBinding;->f:Landroid/view/View;

    .line 16
    new-instance v0, Lcom/comeback/data/ui/fengliu/Fengliu2Activity_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/comeback/data/ui/fengliu/Fengliu2Activity_ViewBinding$c;-><init>(Lcom/comeback/data/ui/fengliu/Fengliu2Activity_ViewBinding;Lcom/comeback/data/ui/fengliu/Fengliu2Activity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/Fengliu2Activity_ViewBinding;->c:Lcom/comeback/data/ui/fengliu/Fengliu2Activity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/comeback/data/ui/fengliu/Fengliu2Activity_ViewBinding;->c:Lcom/comeback/data/ui/fengliu/Fengliu2Activity;

    .line 3
    iput-object v1, v0, Lcom/comeback/data/ui/fengliu/Fengliu2Activity;->tvArea:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/comeback/data/ui/fengliu/Fengliu2Activity;->tvOrder:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/comeback/data/ui/fengliu/Fengliu2Activity;->tvService:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/comeback/data/ui/fengliu/Fengliu2Activity;->llService:Landroid/widget/LinearLayout;

    .line 7
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/Fengliu2Activity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iput-object v1, p0, Lcom/comeback/data/ui/fengliu/Fengliu2Activity_ViewBinding;->d:Landroid/view/View;

    .line 9
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/Fengliu2Activity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iput-object v1, p0, Lcom/comeback/data/ui/fengliu/Fengliu2Activity_ViewBinding;->e:Landroid/view/View;

    .line 11
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/Fengliu2Activity_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iput-object v1, p0, Lcom/comeback/data/ui/fengliu/Fengliu2Activity_ViewBinding;->f:Landroid/view/View;

    .line 13
    invoke-super {p0}, Lcom/comeback/data/base/BaseRefreshActivity_ViewBinding;->a()V

    return-void

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
