.class public Lcom/comeback/data/ui/aimeiju/bean/PlayKey$DataEntity;
.super Ljava/lang/Object;
.source "PlayKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/aimeiju/bean/PlayKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataEntity"
.end annotation


# instance fields
.field public key:Ljava/lang/String;

.field public final synthetic this$0:Lcom/comeback/data/ui/aimeiju/bean/PlayKey;

.field public time:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/aimeiju/bean/PlayKey;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/aimeiju/bean/PlayKey$DataEntity;->this$0:Lcom/comeback/data/ui/aimeiju/bean/PlayKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/bean/PlayKey$DataEntity;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/bean/PlayKey$DataEntity;->time:Ljava/lang/String;

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/aimeiju/bean/PlayKey$DataEntity;->key:Ljava/lang/String;

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/aimeiju/bean/PlayKey$DataEntity;->time:Ljava/lang/String;

    return-void
.end method
