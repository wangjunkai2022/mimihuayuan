.class public Lcom/comeback/data/ui/ba/BaLauncherActivity$a;
.super Lm/j;
.source "BaLauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/ba/BaLauncherActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/ba/bean/HostBean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/ba/BaLauncherActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/ba/BaLauncherActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ba/BaLauncherActivity$a;->e:Lcom/comeback/data/ui/ba/BaLauncherActivity;

    invoke-direct {p0}, Lm/j;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ba/BaLauncherActivity$a;->e:Lcom/comeback/data/ui/ba/BaLauncherActivity;

    invoke-static {v0}, Lcom/comeback/data/ui/ba/BaLauncherActivity;->l(Lcom/comeback/data/ui/ba/BaLauncherActivity;)V

    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/ba/BaLauncherActivity$a;->e:Lcom/comeback/data/ui/ba/BaLauncherActivity;

    invoke-static {p1}, Lcom/comeback/data/ui/ba/BaLauncherActivity;->l(Lcom/comeback/data/ui/ba/BaLauncherActivity;)V

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/comeback/data/ui/ba/bean/HostBean;

    .line 2
    invoke-virtual {p1}, Lcom/comeback/data/ui/ba/bean/HostBean;->getTarget()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/comeback/data/ui/ba/bean/HostBean;->getTarget()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lf/e/a/k/b;->Z:Ljava/lang/String;

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/comeback/data/ui/ba/bean/HostBean;->getRelease()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/comeback/data/ui/ba/bean/HostBean;->getRelease()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lf/e/a/k/b;->a0:Ljava/lang/String;

    :cond_1
    return-void
.end method
