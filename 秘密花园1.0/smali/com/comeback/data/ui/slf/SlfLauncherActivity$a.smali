.class public Lcom/comeback/data/ui/slf/SlfLauncherActivity$a;
.super Lm/j;
.source "SlfLauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/slf/SlfLauncherActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/slf/bean/AppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/slf/SlfLauncherActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/slf/SlfLauncherActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/slf/SlfLauncherActivity$a;->e:Lcom/comeback/data/ui/slf/SlfLauncherActivity;

    invoke-direct {p0}, Lm/j;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lf/e/a/k/f;->a()V

    const-string p1, "3ufug9bd0b3Eg7vxnc7Sg4PH"

    .line 2
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/comeback/data/ui/slf/bean/AppInfo;

    .line 2
    invoke-virtual {p1}, Lcom/comeback/data/ui/slf/bean/AppInfo;->getToken()Lcom/comeback/data/ui/slf/bean/AppInfo$TokenBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/slf/bean/AppInfo$TokenBean;->getAccessToken()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lf/e/a/k/b;->G:Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lcom/comeback/data/ui/slf/SlfLauncherActivity$a;->e:Lcom/comeback/data/ui/slf/SlfLauncherActivity;

    invoke-static {p1}, Lcom/comeback/data/ui/slf/SlfActivity;->m(Landroid/content/Context;)V

    .line 4
    iget-object p1, p0, Lcom/comeback/data/ui/slf/SlfLauncherActivity$a;->e:Lcom/comeback/data/ui/slf/SlfLauncherActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
