.class public Lcom/comeback/data/ui/nana/bean/HostInfo$ApiEntity;
.super Ljava/lang/Object;
.source "HostInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/nana/bean/HostInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ApiEntity"
.end annotation


# instance fields
.field public encrypt:Ljava/lang/String;

.field public final synthetic this$0:Lcom/comeback/data/ui/nana/bean/HostInfo;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/nana/bean/HostInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/HostInfo$ApiEntity;->this$0:Lcom/comeback/data/ui/nana/bean/HostInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEncrypt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/nana/bean/HostInfo$ApiEntity;->encrypt:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeedUrl()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/comeback/data/ui/nana/bean/HostInfo$ApiEntity;->url:Ljava/lang/String;

    const-string v2, "GBETAQ4XF1sHC1g="

    invoke-static {v0, v1, v2}, Lf/b/a/a/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/nana/bean/HostInfo$ApiEntity;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setEncrypt(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/HostInfo$ApiEntity;->encrypt:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/HostInfo$ApiEntity;->url:Ljava/lang/String;

    return-void
.end method
