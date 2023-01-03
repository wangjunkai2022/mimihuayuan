.class public final Lf/e/a/k/y;
.super Ljava/lang/Object;
.source "VideoUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/k/y;->a:Landroid/app/Activity;

    iput-object p2, p0, Lf/e/a/k/y;->b:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/Window;Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    .line 2
    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    const/16 p2, 0x8

    .line 3
    invoke-virtual {p1, p2, p2}, Landroid/view/Window;->setFlags(II)V

    const/16 v0, 0x1706

    .line 4
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/Window;->clearFlags(I)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lf/e/a/k/y;->a:Landroid/app/Activity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "0fXojNbfCdbJwA=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "0fXojNbfCwRDg47B"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "0tvQjfjJ"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "BlSM2PFK"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "0enqgNfL"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lf/e/a/k/y$a;

    invoke-direct {v1, p0}, Lf/e/a/k/y$a;-><init>(Lf/e/a/k/y;)V

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lf/e/a/k/y;->a:Landroid/app/Activity;

    invoke-virtual {p0, v0, v1}, Lf/e/a/k/y;->a(Landroid/view/Window;Landroid/app/Activity;)V

    .line 4
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 5
    new-instance v0, Lf/e/a/k/y$b;

    invoke-direct {v0, p0}, Lf/e/a/k/y$b;-><init>(Lf/e/a/k/y;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
