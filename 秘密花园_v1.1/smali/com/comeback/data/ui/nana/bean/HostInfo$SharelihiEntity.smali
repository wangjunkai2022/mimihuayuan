.class public Lcom/comeback/data/ui/nana/bean/HostInfo$SharelihiEntity;
.super Ljava/lang/Object;
.source "HostInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/nana/bean/HostInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SharelihiEntity"
.end annotation


# instance fields
.field public android:Ljava/lang/String;

.field public iOS:Ljava/lang/String;

.field public final synthetic this$0:Lcom/comeback/data/ui/nana/bean/HostInfo;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/nana/bean/HostInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/HostInfo$SharelihiEntity;->this$0:Lcom/comeback/data/ui/nana/bean/HostInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAndroid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/nana/bean/HostInfo$SharelihiEntity;->android:Ljava/lang/String;

    return-object v0
.end method

.method public getIOS()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/nana/bean/HostInfo$SharelihiEntity;->iOS:Ljava/lang/String;

    return-object v0
.end method

.method public setAndroid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/HostInfo$SharelihiEntity;->android:Ljava/lang/String;

    return-void
.end method

.method public setIOS(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/HostInfo$SharelihiEntity;->iOS:Ljava/lang/String;

    return-void
.end method
