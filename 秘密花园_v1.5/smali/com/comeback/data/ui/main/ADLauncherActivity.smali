.class public Lcom/comeback/data/ui/main/ADLauncherActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "ADLauncherActivity.java"


# instance fields
.field public b:Lcom/comeback/data/ui/main/bean/AD;

.field public c:I

.field public d:Ljava/lang/Runnable;

.field public e:Z

.field public ivCover:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseActivity;-><init>()V

    const/4 v0, 0x6

    .line 2
    iput v0, p0, Lcom/comeback/data/ui/main/ADLauncherActivity;->c:I

    .line 3
    new-instance v0, Lcom/comeback/data/ui/main/ADLauncherActivity$a;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/main/ADLauncherActivity$a;-><init>(Lcom/comeback/data/ui/main/ADLauncherActivity;)V

    iput-object v0, p0, Lcom/comeback/data/ui/main/ADLauncherActivity;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "VgY="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/main/bean/AD;

    iput-object p1, p0, Lcom/comeback/data/ui/main/ADLauncherActivity;->b:Lcom/comeback/data/ui/main/bean/AD;

    return-void
.end method

.method public d()I
    .locals 1

    const v0, 0x7f0c008b

    return v0
.end method

.method public e()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/base/BaseActivity;->i()V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/main/ADLauncherActivity;->b:Lcom/comeback/data/ui/main/bean/AD;

    invoke-virtual {v0}, Lcom/comeback/data/ui/main/bean/AD;->getImage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/main/ADLauncherActivity;->ivCover:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->u0(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/main/ADLauncherActivity;->tvCount:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/main/ADLauncherActivity;->tvCount:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/comeback/data/ui/main/ADLauncherActivity;->d:Ljava/lang/Runnable;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BaseActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/main/ADLauncherActivity;->tvCount:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/comeback/data/ui/main/ADLauncherActivity;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BaseActivity;->onResume()V

    .line 2
    iget-boolean v0, p0, Lcom/comeback/data/ui/main/ADLauncherActivity;->e:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0}, Lcom/comeback/data/ui/main/MainActivity;->u(Landroid/content/Context;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900f5

    if-eq p1, v0, :cond_1

    const v0, 0x7f0902b1

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/comeback/data/ui/main/MainActivity;->u(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/comeback/data/ui/main/ADLauncherActivity;->tvCount:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/comeback/data/ui/main/ADLauncherActivity;->d:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5
    :try_start_0
    iget-object p1, p0, Lcom/comeback/data/ui/main/ADLauncherActivity;->b:Lcom/comeback/data/ui/main/bean/AD;

    invoke-virtual {p1}, Lcom/comeback/data/ui/main/bean/AD;->getTargetUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "VgwHFgQaXR0aCEACFh5NClQWCgsFXW96NjE="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 7
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/comeback/data/ui/main/ADLauncherActivity;->e:Z

    :goto_1
    return-void
.end method
