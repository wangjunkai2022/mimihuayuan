.class public Lcom/comeback/data/ui/fulao2/bean/VideoInfo;
.super Lf/e/a/f/k;
.source "VideoInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean;,
        Lcom/comeback/data/ui/fulao2/bean/VideoInfo$StatusBean;
    }
.end annotation


# static fields
.field public static StreamHost:Ljava/lang/String;


# instance fields
.field public response:Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean;

.field public status:Lcom/comeback/data/ui/fulao2/bean/VideoInfo$StatusBean;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object v0

    sget-object v1, Lcom/comeback/data/ui/fulao2/fragment/HostFragment;->j:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lf/e/a/k/j;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/comeback/data/ui/fulao2/bean/VideoInfo;->StreamHost:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/k;-><init>()V

    return-void
.end method


# virtual methods
.method public getResponse()Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/bean/VideoInfo;->response:Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean;

    return-object v0
.end method

.method public getStatus()Lcom/comeback/data/ui/fulao2/bean/VideoInfo$StatusBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/bean/VideoInfo;->status:Lcom/comeback/data/ui/fulao2/bean/VideoInfo$StatusBean;

    return-object v0
.end method

.method public setResponse(Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fulao2/bean/VideoInfo;->response:Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean;

    return-void
.end method

.method public setStatus(Lcom/comeback/data/ui/fulao2/bean/VideoInfo$StatusBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fulao2/bean/VideoInfo;->status:Lcom/comeback/data/ui/fulao2/bean/VideoInfo$StatusBean;

    return-void
.end method
