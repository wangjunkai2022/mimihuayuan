.class public Lcom/comeback/data/ui/tv91/Tv91LauncherActivity$a;
.super Lm/j;
.source "Tv91LauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/tv91/Tv91LauncherActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/tv91/bean/ConfigBean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/tv91/Tv91LauncherActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/tv91/Tv91LauncherActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tv91/Tv91LauncherActivity$a;->e:Lcom/comeback/data/ui/tv91/Tv91LauncherActivity;

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
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/comeback/data/ui/tv91/bean/ConfigBean;

    .line 2
    invoke-virtual {p1}, Lcom/comeback/data/ui/tv91/bean/ConfigBean;->getAHost()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lf/e/a/k/b;->n:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/comeback/data/ui/tv91/bean/ConfigBean;->getN()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lf/e/a/j/n0/i/b;->c:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/comeback/data/ui/tv91/bean/ConfigBean;->getSHost()Ljava/lang/String;

    .line 5
    const-class p1, Lf/e/a/j/n0/i/b;

    monitor-enter p1

    const/4 v0, 0x0

    .line 6
    :try_start_0
    sput-object v0, Lf/e/a/j/n0/i/b;->b:Lf/e/a/j/n0/i/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p1

    .line 8
    iget-object p1, p0, Lcom/comeback/data/ui/tv91/Tv91LauncherActivity$a;->e:Lcom/comeback/data/ui/tv91/Tv91LauncherActivity;

    invoke-static {p1}, Lcom/comeback/data/ui/tv91/MainActivity;->m(Landroid/content/Context;)V

    .line 9
    iget-object p1, p0, Lcom/comeback/data/ui/tv91/Tv91LauncherActivity$a;->e:Lcom/comeback/data/ui/tv91/Tv91LauncherActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :catchall_0
    move-exception v0

    .line 10
    monitor-exit p1

    throw v0
.end method
