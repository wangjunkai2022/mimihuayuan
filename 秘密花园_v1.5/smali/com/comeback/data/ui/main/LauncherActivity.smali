.class public Lcom/comeback/data/ui/main/LauncherActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "LauncherActivity.java"


# static fields
.field public static k:[Ljava/lang/String;


# instance fields
.field public b:Z

.field public c:Z

.field public d:Z

.field public e:I

.field public f:Ljava/lang/Runnable;

.field public flAd:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public flProgress:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public g:I

.field public h:Ljava/lang/Runnable;

.field public i:Ll/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll/d<",
            "Li/i0;",
            ">;"
        }
    .end annotation
.end field

.field public ivCover:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public j:Lcom/comeback/data/ui/main/bean/AD;

.field public llLogo:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvName1:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "VgwHFgQaXR0DA0YKERkQAlgMTTYuMn1sIy57KT01MD92NiY="

    .line 1
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/comeback/data/ui/main/LauncherActivity;->k:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseActivity;-><init>()V

    const/4 v0, 0x7

    .line 2
    iput v0, p0, Lcom/comeback/data/ui/main/LauncherActivity;->e:I

    .line 3
    new-instance v0, Lcom/comeback/data/ui/main/LauncherActivity$a;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/main/LauncherActivity$a;-><init>(Lcom/comeback/data/ui/main/LauncherActivity;)V

    iput-object v0, p0, Lcom/comeback/data/ui/main/LauncherActivity;->f:Ljava/lang/Runnable;

    const/4 v0, 0x6

    .line 4
    iput v0, p0, Lcom/comeback/data/ui/main/LauncherActivity;->g:I

    .line 5
    new-instance v0, Lcom/comeback/data/ui/main/LauncherActivity$b;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/main/LauncherActivity$b;-><init>(Lcom/comeback/data/ui/main/LauncherActivity;)V

    iput-object v0, p0, Lcom/comeback/data/ui/main/LauncherActivity;->h:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/comeback/data/ui/main/LauncherActivity;->j:Lcom/comeback/data/ui/main/bean/AD;

    return-void
.end method

.method public static l(Lcom/comeback/data/ui/main/LauncherActivity;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/main/LauncherActivity;->d:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/comeback/data/ui/main/LauncherActivity;->c:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/main/LauncherActivity;->llLogo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object p0, p0, Lcom/comeback/data/ui/main/LauncherActivity;->flProgress:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lcom/comeback/data/App;->e:Lcom/comeback/data/ui/main/bean/ConfigBean;

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/main/LauncherActivity;->j:Lcom/comeback/data/ui/main/bean/AD;

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/comeback/data/ui/main/LauncherActivity;->flAd:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/comeback/data/ui/main/LauncherActivity;->flProgress:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/comeback/data/ui/main/LauncherActivity;->j:Lcom/comeback/data/ui/main/bean/AD;

    invoke-virtual {v0}, Lcom/comeback/data/ui/main/bean/AD;->getImage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/main/LauncherActivity;->ivCover:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->u0(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 10
    iget-object v0, p0, Lcom/comeback/data/ui/main/LauncherActivity;->tvCount:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 11
    iget-object v0, p0, Lcom/comeback/data/ui/main/LauncherActivity;->tvCount:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/comeback/data/ui/main/LauncherActivity;->h:Ljava/lang/Runnable;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/comeback/data/ui/main/LauncherActivity;->o()V

    :goto_0
    return-void
.end method

.method public static m(Lcom/comeback/data/ui/main/LauncherActivity;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    invoke-static {}, Lf/e/a/j/i0/c;->a()Lf/e/a/j/i0/a;

    move-result-object v0

    const-string v1, "XxYXFBhJFhwAAURWVhwWB0MQDAYBFlpHAEhXCBVFDgZfG1tcU0sWUBBIXhcf"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lf/e/a/j/i0/a;->c(Ljava/lang/String;)Ll/d;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/main/LauncherActivity;->i:Ll/d;

    .line 2
    new-instance v1, Lf/e/a/j/c0/k;

    invoke-direct {v1, p0}, Lf/e/a/j/c0/k;-><init>(Lcom/comeback/data/ui/main/LauncherActivity;)V

    invoke-interface {v0, v1}, Ll/d;->X(Ll/f;)V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 3
    throw p0
.end method


# virtual methods
.method public d()I
    .locals 1

    const v0, 0x7f0c0080

    return v0
.end method

.method public e()V
    .locals 2

    .line 1
    invoke-static {}, Lc/a/a/b/g/h;->m0()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/main/LauncherActivity;->tvName:Landroid/widget/TextView;

    const-string v1, "0MX7gcT1"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/main/LauncherActivity;->tvName1:Landroid/widget/TextView;

    const-string v1, "3+jSgfDe"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/comeback/data/base/BaseActivity;->i()V

    .line 5
    invoke-static {}, Lf/e/a/j/i0/c;->a()Lf/e/a/j/i0/a;

    move-result-object v0

    const-string v1, "XxYXFBhJFhweD1kOEBNNBEQRTgcFXkpbEghTDxkDTQpbCxoRBRBKHRAJWUgbCU0BRwU="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lf/e/a/j/i0/a;->c(Ljava/lang/String;)Ll/d;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/main/LauncherActivity;->i:Ll/d;

    .line 6
    new-instance v1, Lf/e/a/j/c0/j;

    invoke-direct {v1, p0}, Lf/e/a/j/c0/j;-><init>(Lcom/comeback/data/ui/main/LauncherActivity;)V

    invoke-interface {v0, v1}, Ll/d;->X(Ll/f;)V

    .line 7
    invoke-virtual {p0}, Lcom/comeback/data/ui/main/LauncherActivity;->p()V

    return-void
.end method

.method public final n()V
    .locals 7

    .line 1
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object v0

    const-string v1, "UQsRFx8sTVoeAw=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    iget-object v0, v0, Lf/e/a/k/j;->a:Landroid/content/SharedPreferences;

    const-wide/16 v3, -0x1

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object v0

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, v0, Lf/e/a/k/j;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    throw v0

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/comeback/data/ui/main/LauncherActivity;->tvName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/comeback/data/ui/main/LauncherActivity;->f:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final o()V
    .locals 1

    .line 1
    invoke-static {}, Lc/a/a/b/g/h;->m0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/comeback/data/ui/main/MainActivity;->u(Landroid/content/Context;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/comeback/data/ui/main/SecretGardenActivity;->v(Landroid/content/Context;)V

    .line 4
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

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
    iget-object v0, p0, Lcom/comeback/data/ui/main/LauncherActivity;->i:Ll/d;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ll/d;->cancel()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/main/LauncherActivity;->tvName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/comeback/data/ui/main/LauncherActivity;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/main/LauncherActivity;->tvCount:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/comeback/data/ui/main/LauncherActivity;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    array-length p1, p3

    if-lez p1, :cond_1

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/comeback/data/ui/main/LauncherActivity;->e()V

    goto :goto_0

    .line 3
    :cond_1
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p2, "0e3zg8/J"

    invoke-static {p2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "0erygNDf3Yv+goj9ntnngqvQhebDlKO3l9mVgfnFjNe7iszTjeeH1szl09zhjtnj0t3mjM3y3qn3gKnkkfPzhIvuh9/Ol4eMl9y6gMPzh9aXhtjIjsuf1e7D0vzMj8bW0PjngNbg0Jn/hbTl"

    invoke-static {p2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "0sfeg/H3"

    invoke-static {p2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/comeback/data/ui/main/LauncherActivity$c;

    invoke-direct {p3, p0}, Lcom/comeback/data/ui/main/LauncherActivity$c;-><init>(Lcom/comeback/data/ui/main/LauncherActivity;)V

    .line 4
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BaseActivity;->onResume()V

    .line 2
    iget-boolean v0, p0, Lcom/comeback/data/ui/main/LauncherActivity;->b:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/comeback/data/ui/main/LauncherActivity;->o()V

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
    invoke-virtual {p0}, Lcom/comeback/data/ui/main/LauncherActivity;->o()V

    goto :goto_1

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/comeback/data/ui/main/LauncherActivity;->tvCount:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/comeback/data/ui/main/LauncherActivity;->f:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    :try_start_0
    iget-object p1, p0, Lcom/comeback/data/ui/main/LauncherActivity;->j:Lcom/comeback/data/ui/main/bean/AD;

    invoke-virtual {p1}, Lcom/comeback/data/ui/main/bean/AD;->getTargetUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "VgwHFgQaXR0aCEACFh5NClQWCgsFXW96NjE="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/comeback/data/ui/main/LauncherActivity;->b:Z

    :goto_1
    return-void
.end method

.method public p()V
    .locals 2

    :try_start_0
    const-string v0, "VgwHFgQaXR0DA0YKERkQAlgMTTYuMn1sIy57KT01MD92NiY="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/comeback/data/ui/main/LauncherActivity;->k:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/comeback/data/ui/main/LauncherActivity;->n()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
