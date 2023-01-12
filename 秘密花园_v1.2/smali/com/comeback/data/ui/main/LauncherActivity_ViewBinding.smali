.class public Lcom/comeback/data/ui/main/LauncherActivity_ViewBinding;
.super Ljava/lang/Object;
.source "LauncherActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/comeback/data/ui/main/LauncherActivity;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/main/LauncherActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/main/LauncherActivity_ViewBinding;->b:Lcom/comeback/data/ui/main/LauncherActivity;

    const-string v0, "UQsGCA9THkcFKFUKHU0="

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902e5

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/main/LauncherActivity;->tvName:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFKFUKHVtE"

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902e6

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/main/LauncherActivity;->tvName1:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THloFJVsRHRhES1YMB0QGFk1bHAIUQBcENQJSFSAIAhBSVhdB"

    .line 5
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0900f5

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "UQsGCA9THloFJVsRHRhE"

    .line 6
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Ld/c/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/comeback/data/ui/main/LauncherActivity;->ivCover:Landroid/widget/ImageView;

    .line 7
    iput-object v0, p0, Lcom/comeback/data/ui/main/LauncherActivity_ViewBinding;->c:Landroid/view/View;

    .line 8
    new-instance v1, Lcom/comeback/data/ui/main/LauncherActivity_ViewBinding$a;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/main/LauncherActivity_ViewBinding$a;-><init>(Lcom/comeback/data/ui/main/LauncherActivity_ViewBinding;Lcom/comeback/data/ui/main/LauncherActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "UQsGCA9THkcFJVsSFh5ES1YMB0QGFk1bHAIUQBcENQJSFSAIAhBSVhdB"

    .line 9
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0902b1

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "UQsGCA9THkcFJVsSFh5E"

    .line 10
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Ld/c/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/comeback/data/ui/main/LauncherActivity;->tvCount:Landroid/widget/TextView;

    .line 11
    iput-object v0, p0, Lcom/comeback/data/ui/main/LauncherActivity_ViewBinding;->d:Landroid/view/View;

    .line 12
    new-instance v1, Lcom/comeback/data/ui/main/LauncherActivity_ViewBinding$b;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/main/LauncherActivity_ViewBinding$b;-><init>(Lcom/comeback/data/ui/main/LauncherActivity_ViewBinding;Lcom/comeback/data/ui/main/LauncherActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "UQsGCA9THlUfJ1BA"

    .line 13
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/FrameLayout;

    const v2, 0x7f0900c5

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/comeback/data/ui/main/LauncherActivity;->flAd:Landroid/widget/FrameLayout;

    const-string v0, "UQsGCA9THl8fKlsAF00="

    .line 14
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f090132

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/comeback/data/ui/main/LauncherActivity;->llLogo:Landroid/widget/LinearLayout;

    const-string v0, "UQsGCA9THlUfNkYIHxgGGERF"

    .line 15
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/FrameLayout;

    const v2, 0x7f0900cc

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p1, Lcom/comeback/data/ui/main/LauncherActivity;->flProgress:Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/main/LauncherActivity_ViewBinding;->b:Lcom/comeback/data/ui/main/LauncherActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/comeback/data/ui/main/LauncherActivity_ViewBinding;->b:Lcom/comeback/data/ui/main/LauncherActivity;

    .line 3
    iput-object v1, v0, Lcom/comeback/data/ui/main/LauncherActivity;->tvName:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/comeback/data/ui/main/LauncherActivity;->tvName1:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/comeback/data/ui/main/LauncherActivity;->ivCover:Landroid/widget/ImageView;

    .line 6
    iput-object v1, v0, Lcom/comeback/data/ui/main/LauncherActivity;->tvCount:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/comeback/data/ui/main/LauncherActivity;->flAd:Landroid/widget/FrameLayout;

    .line 8
    iput-object v1, v0, Lcom/comeback/data/ui/main/LauncherActivity;->llLogo:Landroid/widget/LinearLayout;

    .line 9
    iput-object v1, v0, Lcom/comeback/data/ui/main/LauncherActivity;->flProgress:Landroid/widget/FrameLayout;

    .line 10
    iget-object v0, p0, Lcom/comeback/data/ui/main/LauncherActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iput-object v1, p0, Lcom/comeback/data/ui/main/LauncherActivity_ViewBinding;->c:Landroid/view/View;

    .line 12
    iget-object v0, p0, Lcom/comeback/data/ui/main/LauncherActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iput-object v1, p0, Lcom/comeback/data/ui/main/LauncherActivity_ViewBinding;->d:Landroid/view/View;

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
