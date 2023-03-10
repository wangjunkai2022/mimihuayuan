.class public Lf/e/a/j/b/c;
.super Lm/j;
.source "AvboboLaunchActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/avbobo/bean/LoginInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/avbobo/AvboboLaunchActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/avbobo/AvboboLaunchActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/b/c;->e:Lcom/comeback/data/ui/avbobo/AvboboLaunchActivity;

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

    const-string p1, "3+zUgeTl36HegKDZnNXCjbbNhsDam42WnNq4j9fdhMO6h/PqgvS029zz0u/uj9P23832geP0377RgKjqneDCjq7Ki+7plLuK"

    .line 1
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->p1(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lf/e/a/j/b/c;->e:Lcom/comeback/data/ui/avbobo/AvboboLaunchActivity;

    invoke-static {p1}, Lcom/comeback/data/ui/avbobo/MainActivity;->m(Landroid/content/Context;)V

    .line 3
    iget-object p1, p0, Lf/e/a/j/b/c;->e:Lcom/comeback/data/ui/avbobo/AvboboLaunchActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/comeback/data/ui/avbobo/bean/LoginInfo;

    .line 2
    invoke-static {}, Lf/e/a/j/b/g/b;->c()Lf/e/a/j/b/g/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/comeback/data/ui/avbobo/bean/LoginInfo;->getTokens()Lcom/comeback/data/ui/avbobo/bean/LoginInfo$TokensBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/avbobo/bean/LoginInfo$TokensBean;->getToken()Lcom/comeback/data/ui/avbobo/bean/LoginInfo$TokensBean$TokenBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/avbobo/bean/LoginInfo$TokensBean$TokenBean;->getToken()Ljava/lang/String;

    move-result-object p1

    .line 3
    iput-object p1, v0, Lf/e/a/j/b/g/b;->c:Ljava/lang/String;

    .line 4
    iget-object p1, p0, Lf/e/a/j/b/c;->e:Lcom/comeback/data/ui/avbobo/AvboboLaunchActivity;

    invoke-static {p1}, Lcom/comeback/data/ui/avbobo/MainActivity;->m(Landroid/content/Context;)V

    .line 5
    iget-object p1, p0, Lf/e/a/j/b/c;->e:Lcom/comeback/data/ui/avbobo/AvboboLaunchActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
