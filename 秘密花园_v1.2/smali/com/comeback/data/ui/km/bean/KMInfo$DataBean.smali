.class public Lcom/comeback/data/ui/km/bean/KMInfo$DataBean;
.super Ljava/lang/Object;
.source "KMInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/km/bean/KMInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/km/bean/KMInfo$DataBean$InfoBean;
    }
.end annotation


# instance fields
.field public system:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/comeback/data/ui/km/bean/KMInfo$DataBean$InfoBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSystem()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/comeback/data/ui/km/bean/KMInfo$DataBean$InfoBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km/bean/KMInfo$DataBean;->system:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargetUrl()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km/bean/KMInfo$DataBean;->system:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/km/bean/KMInfo$DataBean;->system:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/comeback/data/ui/km/bean/KMInfo$DataBean$InfoBean;

    .line 5
    invoke-static {v1}, Lcom/comeback/data/ui/km/bean/KMInfo$DataBean$InfoBean;->access$000(Lcom/comeback/data/ui/km/bean/KMInfo$DataBean$InfoBean;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "BlY="

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-static {v1}, Lcom/comeback/data/ui/km/bean/KMInfo$DataBean$InfoBean;->access$100(Lcom/comeback/data/ui/km/bean/KMInfo$DataBean$InfoBean;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/comeback/data/ui/km/bean/Video;->targetUrl:Ljava/lang/String;

    .line 7
    invoke-static {v1}, Lcom/comeback/data/ui/km/bean/KMInfo$DataBean$InfoBean;->access$200(Lcom/comeback/data/ui/km/bean/KMInfo$DataBean$InfoBean;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/comeback/data/ui/km/bean/Video;->targetUrlDetail:Ljava/lang/String;

    .line 8
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object v0

    const-string v1, "XA88DRs="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lf/e/a/k/j;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/comeback/data/ui/km/bean/Video;->targetUrlDetail:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/comeback/data/ui/km/bean/Video;->targetUrlDetail:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    sput-object v0, Lcom/comeback/data/ui/km/bean/Video;->targetUrl:Ljava/lang/String;

    const-string v0, "09/cg//b3qfbgLzQkdH7g5nGiuHmlISd"

    .line 11
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lf/e/a/k/f;->a()V

    .line 12
    :cond_1
    sget-object v0, Lcom/comeback/data/ui/km/bean/Video;->targetUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setSystem(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/comeback/data/ui/km/bean/KMInfo$DataBean$InfoBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km/bean/KMInfo$DataBean;->system:Ljava/util/ArrayList;

    return-void
.end method
