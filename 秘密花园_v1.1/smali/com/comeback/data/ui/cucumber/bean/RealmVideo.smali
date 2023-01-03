.class public Lcom/comeback/data/ui/cucumber/bean/RealmVideo;
.super Lg/a/g0;
.source "RealmVideo.java"

# interfaces
.implements Lg/a/q0;


# instance fields
.field public cover:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public mins:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public strPlayCnt:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lg/a/g0;-><init>()V

    instance-of v0, p0, Lg/a/f1/n;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lg/a/f1/n;

    invoke-interface {v0}, Lg/a/f1/n;->realm$injectObjectContext()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCover()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/cucumber/bean/RealmVideo;->realmGet$cover()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/cucumber/bean/RealmVideo;->realmGet$id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMins()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/cucumber/bean/RealmVideo;->realmGet$mins()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/cucumber/bean/RealmVideo;->realmGet$name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStrPlayCnt()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/cucumber/bean/RealmVideo;->realmGet$strPlayCnt()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$cover()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/RealmVideo;->cover:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/RealmVideo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$mins()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/RealmVideo;->mins:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/RealmVideo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$strPlayCnt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/RealmVideo;->strPlayCnt:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$cover(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/RealmVideo;->cover:Ljava/lang/String;

    return-void
.end method

.method public realmSet$id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/RealmVideo;->id:Ljava/lang/String;

    return-void
.end method

.method public realmSet$mins(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/RealmVideo;->mins:Ljava/lang/String;

    return-void
.end method

.method public realmSet$name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/RealmVideo;->name:Ljava/lang/String;

    return-void
.end method

.method public realmSet$strPlayCnt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/RealmVideo;->strPlayCnt:Ljava/lang/String;

    return-void
.end method

.method public setCover(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/cucumber/bean/RealmVideo;->realmSet$cover(Ljava/lang/String;)V

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/cucumber/bean/RealmVideo;->realmSet$id(Ljava/lang/String;)V

    return-void
.end method

.method public setMins(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/cucumber/bean/RealmVideo;->realmSet$mins(Ljava/lang/String;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/cucumber/bean/RealmVideo;->realmSet$name(Ljava/lang/String;)V

    return-void
.end method

.method public setStrPlayCnt(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/cucumber/bean/RealmVideo;->realmSet$strPlayCnt(Ljava/lang/String;)V

    return-void
.end method
