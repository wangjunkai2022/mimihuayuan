.class public Lcom/comeback/data/ui/md/bean/MdBean;
.super Lf/e/a/f/k;
.source "MdBean.java"


# instance fields
.field public data:Ljava/lang/String;

.field public suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/k;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/md/bean/MdBean;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getDecryptData()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/md/bean/MdBean;->data:Ljava/lang/String;

    iget-object v1, p0, Lcom/comeback/data/ui/md/bean/MdBean;->suffix:Ljava/lang/String;

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lf/e/a/j/e0/d/d;->b:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lf/b/a/a/a;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sget-object v2, Lf/e/a/j/e0/d/d;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    sget-object v3, Lf/e/a/j/e0/d/d;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v4, 0x2

    .line 4
    invoke-static {v0, v4}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    .line 5
    invoke-static {v0, v2, v3, v1}, Lf/e/a/k/c;->a([B[BLjava/lang/String;[B)[B

    move-result-object v0

    .line 6
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 7
    invoke-static {}, Lf/e/a/k/f;->a()V

    return-object v1
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/md/bean/MdBean;->suffix:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/md/bean/MdBean;->data:Ljava/lang/String;

    return-void
.end method

.method public setSuffix(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/md/bean/MdBean;->suffix:Ljava/lang/String;

    return-void
.end method
