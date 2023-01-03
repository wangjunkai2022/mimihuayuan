.class public Lf/e/a/j/r/c;
.super Lm/j;
.source "InsLaunchActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/ins/bean/Config;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/ins/InsLaunchActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/ins/InsLaunchActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/r/c;->e:Lcom/comeback/data/ui/ins/InsLaunchActivity;

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

    const-string p1, "3+zUgeTlUQaWwoWPzM8="

    .line 1
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lf/e/a/k/f;->a()V

    .line 2
    iget-object p1, p0, Lf/e/a/j/r/c;->e:Lcom/comeback/data/ui/ins/InsLaunchActivity;

    invoke-static {p1}, Lcom/comeback/data/ui/ins/InsLaunchActivity;->m(Lcom/comeback/data/ui/ins/InsLaunchActivity;)V

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/comeback/data/ui/ins/bean/Config;

    const-string v0, "aD08OwIdSgk="

    .line 2
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Lcom/comeback/data/ui/ins/bean/Config;->getData()Lcom/comeback/data/ui/ins/bean/Config$DataEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comeback/data/ui/ins/bean/Config$DataEntity;->getH5Domain()Ljava/lang/String;

    invoke-static {}, Lf/e/a/k/f;->b()V

    .line 3
    invoke-virtual {p1}, Lcom/comeback/data/ui/ins/bean/Config;->getData()Lcom/comeback/data/ui/ins/bean/Config$DataEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/ins/bean/Config$DataEntity;->getH5Domain()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lf/e/a/k/b;->s0:Ljava/lang/String;

    .line 4
    iget-object p1, p0, Lf/e/a/j/r/c;->e:Lcom/comeback/data/ui/ins/InsLaunchActivity;

    invoke-static {p1}, Lcom/comeback/data/ui/ins/InsLaunchActivity;->m(Lcom/comeback/data/ui/ins/InsLaunchActivity;)V

    return-void
.end method
