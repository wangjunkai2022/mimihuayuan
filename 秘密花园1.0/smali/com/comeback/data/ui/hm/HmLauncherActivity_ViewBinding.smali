.class public Lcom/comeback/data/ui/hm/HmLauncherActivity_ViewBinding;
.super Ljava/lang/Object;
.source "HmLauncherActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/comeback/data/ui/hm/HmLauncherActivity;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:Landroid/view/View;

.field public f:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/hm/HmLauncherActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/hm/HmLauncherActivity_ViewBinding;->b:Lcom/comeback/data/ui/hm/HmLauncherActivity;

    const-string v0, "UQsGCA9THlUfKlsGHE0="

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/FrameLayout;

    const v2, 0x7f0900c8

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/comeback/data/ui/hm/HmLauncherActivity;->flLoad:Landroid/widget/FrameLayout;

    const-string v0, "WgcXDAQXGRQcCHcLEQkITA=="

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0902bd

    invoke-static {p2, v2, v1}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 5
    iput-object v1, p0, Lcom/comeback/data/ui/hm/HmLauncherActivity_ViewBinding;->c:Landroid/view/View;

    .line 6
    new-instance v2, Lcom/comeback/data/ui/hm/HmLauncherActivity_ViewBinding$a;

    invoke-direct {v2, p0, p1}, Lcom/comeback/data/ui/hm/HmLauncherActivity_ViewBinding$a;-><init>(Lcom/comeback/data/ui/hm/HmLauncherActivity_ViewBinding;Lcom/comeback/data/ui/hm/HmLauncherActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0902be

    invoke-static {p2, v2, v1}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 8
    iput-object v1, p0, Lcom/comeback/data/ui/hm/HmLauncherActivity_ViewBinding;->d:Landroid/view/View;

    .line 9
    new-instance v2, Lcom/comeback/data/ui/hm/HmLauncherActivity_ViewBinding$b;

    invoke-direct {v2, p0, p1}, Lcom/comeback/data/ui/hm/HmLauncherActivity_ViewBinding$b;-><init>(Lcom/comeback/data/ui/hm/HmLauncherActivity_ViewBinding;Lcom/comeback/data/ui/hm/HmLauncherActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0902e7

    invoke-static {p2, v2, v1}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 11
    iput-object v1, p0, Lcom/comeback/data/ui/hm/HmLauncherActivity_ViewBinding;->e:Landroid/view/View;

    .line 12
    new-instance v2, Lcom/comeback/data/ui/hm/HmLauncherActivity_ViewBinding$c;

    invoke-direct {v2, p0, p1}, Lcom/comeback/data/ui/hm/HmLauncherActivity_ViewBinding$c;-><init>(Lcom/comeback/data/ui/hm/HmLauncherActivity_ViewBinding;Lcom/comeback/data/ui/hm/HmLauncherActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0902e8

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 14
    iput-object p2, p0, Lcom/comeback/data/ui/hm/HmLauncherActivity_ViewBinding;->f:Landroid/view/View;

    .line 15
    new-instance v0, Lcom/comeback/data/ui/hm/HmLauncherActivity_ViewBinding$d;

    invoke-direct {v0, p0, p1}, Lcom/comeback/data/ui/hm/HmLauncherActivity_ViewBinding$d;-><init>(Lcom/comeback/data/ui/hm/HmLauncherActivity_ViewBinding;Lcom/comeback/data/ui/hm/HmLauncherActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hm/HmLauncherActivity_ViewBinding;->b:Lcom/comeback/data/ui/hm/HmLauncherActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/comeback/data/ui/hm/HmLauncherActivity_ViewBinding;->b:Lcom/comeback/data/ui/hm/HmLauncherActivity;

    .line 3
    iput-object v1, v0, Lcom/comeback/data/ui/hm/HmLauncherActivity;->flLoad:Landroid/widget/FrameLayout;

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/hm/HmLauncherActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iput-object v1, p0, Lcom/comeback/data/ui/hm/HmLauncherActivity_ViewBinding;->c:Landroid/view/View;

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/hm/HmLauncherActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iput-object v1, p0, Lcom/comeback/data/ui/hm/HmLauncherActivity_ViewBinding;->d:Landroid/view/View;

    .line 8
    iget-object v0, p0, Lcom/comeback/data/ui/hm/HmLauncherActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iput-object v1, p0, Lcom/comeback/data/ui/hm/HmLauncherActivity_ViewBinding;->e:Landroid/view/View;

    .line 10
    iget-object v0, p0, Lcom/comeback/data/ui/hm/HmLauncherActivity_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iput-object v1, p0, Lcom/comeback/data/ui/hm/HmLauncherActivity_ViewBinding;->f:Landroid/view/View;

    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
