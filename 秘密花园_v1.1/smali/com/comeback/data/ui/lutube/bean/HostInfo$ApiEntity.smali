.class public Lcom/comeback/data/ui/lutube/bean/HostInfo$ApiEntity;
.super Ljava/lang/Object;
.source "HostInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/lutube/bean/HostInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ApiEntity"
.end annotation


# instance fields
.field public mode:Ljava/lang/String;

.field public final synthetic this$0:Lcom/comeback/data/ui/lutube/bean/HostInfo;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/lutube/bean/HostInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/lutube/bean/HostInfo$ApiEntity;->this$0:Lcom/comeback/data/ui/lutube/bean/HostInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkRemove()Z
    .locals 2

    const-string v0, "WgMNEQof"

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/lutube/bean/HostInfo$ApiEntity;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/lutube/bean/HostInfo$ApiEntity;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/lutube/bean/HostInfo$ApiEntity;->url:Ljava/lang/String;

    return-void
.end method
