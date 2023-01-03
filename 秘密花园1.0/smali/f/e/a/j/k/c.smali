.class public Lf/e/a/j/k/c;
.super Lm/j;
.source "FuLao2Launch2Activity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/fulao2/bean/Host;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/k/c;->e:Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;

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

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/comeback/data/ui/fulao2/bean/Host;

    .line 2
    iget-object v0, p0, Lf/e/a/j/k/c;->e:Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;

    .line 3
    iget-boolean v1, v0, Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;->b:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;->b:Z

    .line 5
    invoke-virtual {p1}, Lcom/comeback/data/ui/fulao2/bean/Host;->getBestImage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lf/e/a/k/b;->z:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/comeback/data/ui/fulao2/bean/Host;->getBestApi()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lf/e/a/k/b;->y:Ljava/lang/String;

    .line 7
    sget-object v0, Lcom/comeback/data/ui/fulao2/bean/VideoInfo;->StreamHost:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/comeback/data/ui/fulao2/bean/Host;->getDefaultStream()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/comeback/data/ui/fulao2/bean/VideoInfo;->StreamHost:Ljava/lang/String;

    .line 9
    :cond_0
    sput-object p1, Lcom/comeback/data/ui/fulao2/FuLao2Activity;->d:Lcom/comeback/data/ui/fulao2/bean/Host;

    .line 10
    iget-object p1, p0, Lf/e/a/j/k/c;->e:Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;

    .line 11
    iget-boolean v0, p1, Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;->b:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;->g:Z

    if-eqz v0, :cond_1

    .line 12
    invoke-static {p1}, Lcom/comeback/data/ui/fulao2/FuLao2Activity;->m(Landroid/content/Context;)V

    .line 13
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
