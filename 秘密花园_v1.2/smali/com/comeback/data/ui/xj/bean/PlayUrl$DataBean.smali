.class public Lcom/comeback/data/ui/xj/bean/PlayUrl$DataBean;
.super Ljava/lang/Object;
.source "PlayUrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/xj/bean/PlayUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field public httpurl:Ljava/lang/String;

.field public isfavorite:I

.field public xxx_api_auth:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHttpurl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/bean/PlayUrl$DataBean;->httpurl:Ljava/lang/String;

    return-object v0
.end method

.method public getIsfavorite()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/xj/bean/PlayUrl$DataBean;->isfavorite:I

    return v0
.end method

.method public getXxx_api_auth()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/bean/PlayUrl$DataBean;->xxx_api_auth:Ljava/lang/String;

    return-object v0
.end method

.method public setHttpurl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xj/bean/PlayUrl$DataBean;->httpurl:Ljava/lang/String;

    return-void
.end method

.method public setIsfavorite(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/xj/bean/PlayUrl$DataBean;->isfavorite:I

    return-void
.end method

.method public setXxx_api_auth(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xj/bean/PlayUrl$DataBean;->xxx_api_auth:Ljava/lang/String;

    return-void
.end method
