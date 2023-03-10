.class public Lcom/comeback/data/ui/xj/bean/HomeData$Sliderows;
.super Ljava/lang/Object;
.source "HomeData.java"

# interfaces
.implements Lf/e/a/g/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/xj/bean/HomeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Sliderows"
.end annotation


# instance fields
.field public pic:Ljava/lang/String;

.field public scene:Ljava/lang/String;

.field public spid:Ljava/lang/String;

.field public final synthetic this$0:Lcom/comeback/data/ui/xj/bean/HomeData;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/xj/bean/HomeData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xj/bean/HomeData$Sliderows;->this$0:Lcom/comeback/data/ui/xj/bean/HomeData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCover()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/bean/HomeData$Sliderows;->pic:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/bean/HomeData$Sliderows;->spid:Ljava/lang/String;

    return-object v0
.end method

.method public getPic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/bean/HomeData$Sliderows;->pic:Ljava/lang/String;

    return-object v0
.end method

.method public getScene()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/bean/HomeData$Sliderows;->scene:Ljava/lang/String;

    return-object v0
.end method

.method public getSpid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/bean/HomeData$Sliderows;->spid:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/bean/HomeData$Sliderows;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isAd()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/bean/HomeData$Sliderows;->scene:Ljava/lang/String;

    const-string v1, "RBIGBwISVR0XA0AGEQY="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setPic(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xj/bean/HomeData$Sliderows;->pic:Ljava/lang/String;

    return-void
.end method

.method public setScene(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xj/bean/HomeData$Sliderows;->scene:Ljava/lang/String;

    return-void
.end method

.method public setSpid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xj/bean/HomeData$Sliderows;->spid:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xj/bean/HomeData$Sliderows;->title:Ljava/lang/String;

    return-void
.end method
