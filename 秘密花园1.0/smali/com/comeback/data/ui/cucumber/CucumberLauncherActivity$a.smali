.class public Lcom/comeback/data/ui/cucumber/CucumberLauncherActivity$a;
.super Lm/j;
.source "CucumberLauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/cucumber/CucumberLauncherActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/cucumber/bean/DoMainInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/cucumber/CucumberLauncherActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/cucumber/CucumberLauncherActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/CucumberLauncherActivity$a;->e:Lcom/comeback/data/ui/cucumber/CucumberLauncherActivity;

    invoke-direct {p0}, Lm/j;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 1

    const-string p1, "3ufug9bd36jHgKLXnc7Sg4PHjNjnm5aElcW0gefPhNamhdj4jfuv2/Pj0dflgsz+0urkgubR0Yb3gI73kODhjLXb"

    .line 1
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/comeback/data/ui/cucumber/CucumberLauncherActivity$a;->e:Lcom/comeback/data/ui/cucumber/CucumberLauncherActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/comeback/data/ui/cucumber/CucumberLauncherActivity;->l(Lcom/comeback/data/ui/cucumber/CucumberLauncherActivity;Lcom/comeback/data/ui/cucumber/bean/DoMainInfo;)V

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/comeback/data/ui/cucumber/bean/DoMainInfo;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/CucumberLauncherActivity$a;->e:Lcom/comeback/data/ui/cucumber/CucumberLauncherActivity;

    invoke-static {v0, p1}, Lcom/comeback/data/ui/cucumber/CucumberLauncherActivity;->l(Lcom/comeback/data/ui/cucumber/CucumberLauncherActivity;Lcom/comeback/data/ui/cucumber/bean/DoMainInfo;)V

    return-void
.end method
