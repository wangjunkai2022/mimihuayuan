.class public Lcom/comeback/data/ui/km/bean/User;
.super Lg/a/g0;
.source "User.java"

# interfaces
.implements Lg/a/x0;


# instance fields
.field public mu_id:Ljava/lang/String;

.field public mu_name:Ljava/lang/String;


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
.method public getMu_id()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/km/bean/User;->realmGet$mu_id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMu_name()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/km/bean/User;->realmGet$mu_name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$mu_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/km/bean/User;->mu_id:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$mu_name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/km/bean/User;->mu_name:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$mu_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/km/bean/User;->mu_id:Ljava/lang/String;

    return-void
.end method

.method public realmSet$mu_name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/km/bean/User;->mu_name:Ljava/lang/String;

    return-void
.end method

.method public setMu_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/km/bean/User;->realmSet$mu_id(Ljava/lang/String;)V

    return-void
.end method

.method public setMu_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/km/bean/User;->realmSet$mu_name(Ljava/lang/String;)V

    return-void
.end method
