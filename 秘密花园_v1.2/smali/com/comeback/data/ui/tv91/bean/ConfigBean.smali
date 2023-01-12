.class public Lcom/comeback/data/ui/tv91/bean/ConfigBean;
.super Lf/e/a/f/k;
.source "ConfigBean.java"


# instance fields
.field public A:Ljava/lang/String;

.field public N:Ljava/lang/String;

.field public S:Ljava/lang/String;

.field public U:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lf/e/a/f/k;-><init>()V

    const-string v0, "VioxVAg3VkU/VHoPGy0IHlQMBFcmGXRGKlQNEzRZOR1tJSUTCiAMXBchBRQ="

    .line 2
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/tv91/bean/ConfigBean;->A:Ljava/lang/String;

    const-string v0, "VioxVAg3VkU/HHlSNAAmHHghVxwmN3hGPSUMWg=="

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/tv91/bean/ConfigBean;->U:Ljava/lang/String;

    const-string v0, "VioxVAg3VkU/VVwMNAcbA25QFxYICgxZEVQEEQ=="

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/comeback/data/ui/tv91/bean/ConfigBean;->N:Ljava/lang/String;

    .line 5
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/tv91/bean/ConfigBean;->S:Ljava/lang/String;

    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;)[B
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static m()V
    .locals 2

    .line 1
    new-instance v0, Lcom/comeback/data/ui/tv91/bean/ConfigBean;

    invoke-direct {v0}, Lcom/comeback/data/ui/tv91/bean/ConfigBean;-><init>()V

    .line 2
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "UwcACw8WAw=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0}, Lcom/comeback/data/ui/tv91/bean/ConfigBean;->getA()Ljava/lang/String;

    .line 3
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Qlg="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0}, Lcom/comeback/data/ui/tv91/bean/ConfigBean;->getU()Ljava/lang/String;

    .line 4
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "WVg="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0}, Lcom/comeback/data/ui/tv91/bean/ConfigBean;->getN()Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getA()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/tv91/bean/ConfigBean;->A:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/tv91/bean/ConfigBean;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAHost()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/tv91/bean/ConfigBean;->getA()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GBQMAAoDUB0bElkL"

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getN()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/tv91/bean/ConfigBean;->N:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/tv91/bean/ConfigBean;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getS()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/tv91/bean/ConfigBean;->S:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/tv91/bean/ConfigBean;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSHost()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/tv91/bean/ConfigBean;->getS()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GBQMAAoDUB0bElkL"

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/comeback/data/ui/tv91/bean/ConfigBean;->c(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/comeback/data/ui/tv91/bean/ConfigBean;->a([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getU()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/tv91/bean/ConfigBean;->U:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/tv91/bean/ConfigBean;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setA(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tv91/bean/ConfigBean;->A:Ljava/lang/String;

    return-void
.end method

.method public setN(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tv91/bean/ConfigBean;->N:Ljava/lang/String;

    return-void
.end method

.method public setS(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tv91/bean/ConfigBean;->S:Ljava/lang/String;

    return-void
.end method

.method public setU(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tv91/bean/ConfigBean;->U:Ljava/lang/String;

    return-void
.end method
