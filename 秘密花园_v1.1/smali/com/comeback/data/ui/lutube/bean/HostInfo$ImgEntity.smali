.class public Lcom/comeback/data/ui/lutube/bean/HostInfo$ImgEntity;
.super Ljava/lang/Object;
.source "HostInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/lutube/bean/HostInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImgEntity"
.end annotation


# instance fields
.field public encrypt:Ljava/lang/String;

.field public mode:Ljava/lang/String;

.field public final synthetic this$0:Lcom/comeback/data/ui/lutube/bean/HostInfo;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/lutube/bean/HostInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/lutube/bean/HostInfo$ImgEntity;->this$0:Lcom/comeback/data/ui/lutube/bean/HostInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/comeback/data/ui/lutube/bean/HostInfo$ImgEntity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/ui/lutube/bean/HostInfo$ImgEntity;->url:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public checkRemove()Z
    .locals 2

    const-string v0, "QVA="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/lutube/bean/HostInfo$ImgEntity;->encrypt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comeback/data/ui/lutube/bean/HostInfo$ImgEntity;->mode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getEncrypt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/lutube/bean/HostInfo$ImgEntity;->encrypt:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/lutube/bean/HostInfo$ImgEntity;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setEncrypt(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/lutube/bean/HostInfo$ImgEntity;->encrypt:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/lutube/bean/HostInfo$ImgEntity;->url:Ljava/lang/String;

    return-void
.end method
