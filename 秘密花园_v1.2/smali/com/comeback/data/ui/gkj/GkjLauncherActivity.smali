.class public Lcom/comeback/data/ui/gkj/GkjLauncherActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "GkjLauncherActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static l(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-class v0, Lcom/comeback/data/ui/gkj/GkjLauncherActivity;

    invoke-static {p0, v0}, Lf/b/a/a/a;->u(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    const v0, 0x7f0c005b

    return v0
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    sget-object p1, Lf/e/a/k/b;->D:Ljava/lang/String;

    sput-object p1, Lf/e/a/j/n/p/e;->c:Ljava/lang/String;

    goto :goto_0

    .line 3
    :pswitch_1
    sget-object p1, Lf/e/a/k/b;->C:Ljava/lang/String;

    sput-object p1, Lf/e/a/j/n/p/e;->c:Ljava/lang/String;

    .line 4
    :goto_0
    invoke-static {p0}, Lcom/comeback/data/ui/gkj/GKJActivity;->m(Landroid/content/Context;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_data_0
    .packed-switch 0x7f090135
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
