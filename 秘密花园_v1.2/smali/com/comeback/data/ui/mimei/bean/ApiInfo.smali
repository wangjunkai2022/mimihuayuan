.class public Lcom/comeback/data/ui/mimei/bean/ApiInfo;
.super Lf/e/a/f/k;
.source "ApiInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/mimei/bean/ApiInfo$HostEntity;
    }
.end annotation


# instance fields
.field public host:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/mimei/bean/ApiInfo$HostEntity;",
            ">;"
        }
    .end annotation
.end field

.field public host_pwa:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/mimei/bean/ApiInfo$HostEntity;",
            ">;"
        }
    .end annotation

    .annotation runtime Lf/i/b/b0/b;
        value = "host.pwa"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/k;-><init>()V

    return-void
.end method


# virtual methods
.method public getHost()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/mimei/bean/ApiInfo$HostEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/ApiInfo;->host:Ljava/util/List;

    return-object v0
.end method

.method public getHost_pwa()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/mimei/bean/ApiInfo$HostEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/ApiInfo;->host_pwa:Ljava/util/List;

    return-object v0
.end method

.method public setHost(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/mimei/bean/ApiInfo$HostEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/ApiInfo;->host:Ljava/util/List;

    return-void
.end method

.method public setHost_pwa(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/mimei/bean/ApiInfo$HostEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/ApiInfo;->host_pwa:Ljava/util/List;

    return-void
.end method
