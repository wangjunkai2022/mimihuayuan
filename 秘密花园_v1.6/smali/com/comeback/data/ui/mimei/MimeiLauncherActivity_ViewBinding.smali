.class public Lcom/comeback/data/ui/mimei/MimeiLauncherActivity_ViewBinding;
.super Ljava/lang/Object;
.source "MimeiLauncherActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;

.field public c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/MimeiLauncherActivity_ViewBinding;->b:Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;

    const-string v0, "UQsGCA9THkESAl0IMAUQHwZF"

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/RadioButton;

    const v2, 0x7f0901ac

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p1, Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;->radioHost1:Landroid/widget/RadioButton;

    const-string v0, "UQsGCA9THkESAl0IMAUQHwVF"

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/RadioButton;

    const v2, 0x7f0901ad

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    const-string v0, "UQsGCA9THkESAl0IMAUQHwRF"

    .line 5
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/RadioButton;

    const v2, 0x7f0901ae

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    const-string v0, "UQsGCA9THkESAl0IPxgMHkcqDBcfVA=="

    .line 6
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/RadioGroup;

    const v2, 0x7f0901a4

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p1, Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;->radioGroupHost:Landroid/widget/RadioGroup;

    const-string v0, "UQsGCA9THkESAl0IMQcCDFJTRA=="

    .line 7
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/RadioButton;

    const v2, 0x7f0901b3

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    const-string v0, "UQsGCA9THkESAl0IMQcCDFJQRA=="

    .line 8
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/RadioButton;

    const v2, 0x7f0901b4

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    const-string v0, "UQsGCA9THkESAl0IMQcCDFJRRA=="

    .line 9
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/RadioButton;

    const v2, 0x7f0901b5

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    const-string v0, "UQsGCA9THkESAl0IPxgMHkcrDgUMFh4="

    .line 10
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/RadioGroup;

    const v2, 0x7f0901a5

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p1, Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;->radioGroupImage:Landroid/widget/RadioGroup;

    const-string v0, "UQsGCA9THkESAl0INgUVDltTRA=="

    .line 11
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/RadioButton;

    const v2, 0x7f0901b8

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    const-string v0, "UQsGCA9THkESAl0INgUVDltQRA=="

    .line 12
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/RadioButton;

    const v2, 0x7f0901b9

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    const-string v0, "UQsGCA9THkESAl0IPxgMHkcsDBIOHx4="

    .line 13
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/RadioGroup;

    const v2, 0x7f0901a7

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    const-string v0, "UQsGCA9THkcFKlsAEQRES1YMB0QGFk1bHAIUQBcENQJSFSAIAhBSVhdB"

    .line 14
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0902dd

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "UQsGCA9THkcFKlsAEQRE"

    .line 15
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Ld/c/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 16
    iput-object v0, p0, Lcom/comeback/data/ui/mimei/MimeiLauncherActivity_ViewBinding;->c:Landroid/view/View;

    .line 17
    new-instance v1, Lcom/comeback/data/ui/mimei/MimeiLauncherActivity_ViewBinding$a;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/mimei/MimeiLauncherActivity_ViewBinding$a;-><init>(Lcom/comeback/data/ui/mimei/MimeiLauncherActivity_ViewBinding;Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "UQsGCA9THlUfNkYIHxgGGERF"

    .line 18
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/FrameLayout;

    const v2, 0x7f0900cc

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p1, Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;->flProgress:Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/MimeiLauncherActivity_ViewBinding;->b:Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/comeback/data/ui/mimei/MimeiLauncherActivity_ViewBinding;->b:Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;

    .line 3
    iput-object v1, v0, Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;->radioGroupHost:Landroid/widget/RadioGroup;

    .line 4
    iput-object v1, v0, Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;->radioGroupImage:Landroid/widget/RadioGroup;

    .line 5
    iput-object v1, v0, Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;->flProgress:Landroid/widget/FrameLayout;

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/MimeiLauncherActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iput-object v1, p0, Lcom/comeback/data/ui/mimei/MimeiLauncherActivity_ViewBinding;->c:Landroid/view/View;

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
