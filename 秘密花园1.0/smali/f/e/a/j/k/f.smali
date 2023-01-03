.class public Lf/e/a/j/k/f;
.super Lm/j;
.source "FuLao2Launch2Activity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/fulao2/bean/TokenBean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/k/f;->e:Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;

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

    const-string p1, "0dHLge3/3JfCjoDC"

    .line 1
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lf/e/a/k/f;->a()V

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/comeback/data/ui/fulao2/bean/TokenBean;

    .line 2
    invoke-virtual {p1}, Lcom/comeback/data/ui/fulao2/bean/TokenBean;->getResponse()Lcom/comeback/data/ui/fulao2/bean/TokenBean$ResponseEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/fulao2/bean/TokenBean$ResponseEntity;->getToken()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lf/e/a/j/k/h/d;->a:Ljava/lang/String;

    const-string p1, "aD08OzQsZg=="

    .line 3
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    sget-object p1, Lf/e/a/j/k/h/d;->a:Ljava/lang/String;

    invoke-static {}, Lf/e/a/k/f;->b()V

    .line 4
    iget-object p1, p0, Lf/e/a/j/k/f;->e:Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p1, Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;->g:Z

    .line 6
    iget-boolean v0, p1, Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;->b:Z

    if-eqz v0, :cond_0

    .line 7
    invoke-static {p1}, Lcom/comeback/data/ui/fulao2/FuLao2Activity;->m(Landroid/content/Context;)V

    .line 8
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
