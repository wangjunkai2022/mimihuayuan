.class public Lcom/comeback/data/ui/gkj/GkjLauncherActivity_ViewBinding;
.super Ljava/lang/Object;
.source "GkjLauncherActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/comeback/data/ui/gkj/GkjLauncherActivity;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/gkj/GkjLauncherActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/GkjLauncherActivity_ViewBinding;->b:Lcom/comeback/data/ui/gkj/GkjLauncherActivity;

    const-string v0, "WgcXDAQXGRQcCHcLEQkITA=="

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f090131

    invoke-static {p2, v2, v1}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 4
    iput-object v1, p0, Lcom/comeback/data/ui/gkj/GkjLauncherActivity_ViewBinding;->c:Landroid/view/View;

    .line 5
    new-instance v2, Lcom/comeback/data/ui/gkj/GkjLauncherActivity_ViewBinding$a;

    invoke-direct {v2, p0, p1}, Lcom/comeback/data/ui/gkj/GkjLauncherActivity_ViewBinding$a;-><init>(Lcom/comeback/data/ui/gkj/GkjLauncherActivity_ViewBinding;Lcom/comeback/data/ui/gkj/GkjLauncherActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090132

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 7
    iput-object p2, p0, Lcom/comeback/data/ui/gkj/GkjLauncherActivity_ViewBinding;->d:Landroid/view/View;

    .line 8
    new-instance v0, Lcom/comeback/data/ui/gkj/GkjLauncherActivity_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/comeback/data/ui/gkj/GkjLauncherActivity_ViewBinding$b;-><init>(Lcom/comeback/data/ui/gkj/GkjLauncherActivity_ViewBinding;Lcom/comeback/data/ui/gkj/GkjLauncherActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/GkjLauncherActivity_ViewBinding;->b:Lcom/comeback/data/ui/gkj/GkjLauncherActivity;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/comeback/data/ui/gkj/GkjLauncherActivity_ViewBinding;->b:Lcom/comeback/data/ui/gkj/GkjLauncherActivity;

    .line 3
    iget-object v1, p0, Lcom/comeback/data/ui/gkj/GkjLauncherActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iput-object v0, p0, Lcom/comeback/data/ui/gkj/GkjLauncherActivity_ViewBinding;->c:Landroid/view/View;

    .line 5
    iget-object v1, p0, Lcom/comeback/data/ui/gkj/GkjLauncherActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iput-object v0, p0, Lcom/comeback/data/ui/gkj/GkjLauncherActivity_ViewBinding;->d:Landroid/view/View;

    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
