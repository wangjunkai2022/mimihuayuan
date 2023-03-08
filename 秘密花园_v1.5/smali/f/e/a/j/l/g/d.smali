.class public Lf/e/a/j/l/g/d;
.super Lm/j;
.source "HostFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/fulao2/bean/Host;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/fulao2/fragment/HostFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/fulao2/fragment/HostFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/l/g/d;->e:Lcom/comeback/data/ui/fulao2/fragment/HostFragment;

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

    const-string p1, "0f7ugeHS3Krbj7Hqn9fNjazWhfLblp2Cm9KR"

    .line 1
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/comeback/data/ui/fulao2/bean/Host;

    .line 2
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object v0

    invoke-virtual {p1}, Lf/e/a/f/k;->toJson()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/comeback/data/ui/fulao2/fragment/HostFragment;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lf/e/a/k/j;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lf/e/a/j/l/g/d;->e:Lcom/comeback/data/ui/fulao2/fragment/HostFragment;

    .line 4
    iput-object p1, v0, Lcom/comeback/data/ui/fulao2/fragment/HostFragment;->g:Lcom/comeback/data/ui/fulao2/bean/Host;

    const-string p1, "0f7ugeHS3Krbj7Hqn9fNjazWhfLblbGjluyrS5DF1I2+6Ybuw5axtJXrlo/y6ITpjg=="

    .line 5
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

    return-void
.end method
