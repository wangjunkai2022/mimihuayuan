.class public Lcom/comeback/data/ui/mimei/bean/ApiInfo$HostEntity;
.super Ljava/lang/Object;
.source "ApiInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/mimei/bean/ApiInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HostEntity"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public final synthetic this$0:Lcom/comeback/data/ui/mimei/bean/ApiInfo;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/mimei/bean/ApiInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/ApiInfo$HostEntity;->this$0:Lcom/comeback/data/ui/mimei/bean/ApiInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/ApiInfo$HostEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/ApiInfo$HostEntity;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/ApiInfo$HostEntity;->name:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/ApiInfo$HostEntity;->url:Ljava/lang/String;

    return-void
.end method
