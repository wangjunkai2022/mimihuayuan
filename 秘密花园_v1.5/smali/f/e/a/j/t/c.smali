.class public Lf/e/a/j/t/c;
.super Lm/j;
.source "IQYLaunchActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/iqiyi/bean/AppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/iqiyi/IQYLaunchActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/iqiyi/IQYLaunchActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/t/c;->e:Lcom/comeback/data/ui/iqiyi/IQYLaunchActivity;

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

    const-string p1, "3+zUgeTl0Lb+gYnJnc7Sg4PH"

    .line 1
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/comeback/data/ui/iqiyi/bean/AppInfo;

    .line 2
    invoke-virtual {p1}, Lcom/comeback/data/ui/iqiyi/bean/AppInfo;->getToken()Lcom/comeback/data/ui/iqiyi/bean/AppInfo$TokenBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/iqiyi/bean/AppInfo$TokenBean;->getAccessToken()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lf/e/a/k/b;->w:Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lf/e/a/j/t/c;->e:Lcom/comeback/data/ui/iqiyi/IQYLaunchActivity;

    invoke-static {p1}, Lcom/comeback/data/ui/iqiyi/IQYMainActivity;->m(Landroid/content/Context;)V

    .line 4
    iget-object p1, p0, Lf/e/a/j/t/c;->e:Lcom/comeback/data/ui/iqiyi/IQYLaunchActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
