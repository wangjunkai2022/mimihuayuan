.class public Lcom/comeback/data/ui/lutube/bean/LActorsBean;
.super Lg/a/g0;
.source "LActorsBean.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lg/a/z0;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/comeback/data/ui/lutube/bean/LActorsBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public actor_id:Ljava/lang/String;

.field public actor_like:Z

.field public actor_name:Ljava/lang/String;

.field public actor_url:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/comeback/data/ui/lutube/bean/LActorsBean$a;

    invoke-direct {v0}, Lcom/comeback/data/ui/lutube/bean/LActorsBean$a;-><init>()V

    sput-object v0, Lcom/comeback/data/ui/lutube/bean/LActorsBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

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

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lg/a/g0;-><init>()V

    instance-of v0, p0, Lg/a/f1/n;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lg/a/f1/n;

    invoke-interface {v0}, Lg/a/f1/n;->realm$injectObjectContext()V

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/lutube/bean/LActorsBean;->realmSet$actor_id(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/lutube/bean/LActorsBean;->realmSet$actor_name(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/lutube/bean/LActorsBean;->realmSet$actor_url(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/lutube/bean/LActorsBean;->realmSet$actor_like(Z)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getActor_id()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/lutube/bean/LActorsBean;->realmGet$actor_id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActor_name()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/lutube/bean/LActorsBean;->realmGet$actor_name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActor_url()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lf/e/a/k/b;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/comeback/data/ui/lutube/bean/LActorsBean;->realmGet$actor_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isActor_like()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/lutube/bean/LActorsBean;->realmGet$actor_like()Z

    move-result v0

    return v0
.end method

.method public realmGet$actor_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/lutube/bean/LActorsBean;->actor_id:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$actor_like()Z
    .locals 1

    iget-boolean v0, p0, Lcom/comeback/data/ui/lutube/bean/LActorsBean;->actor_like:Z

    return v0
.end method

.method public realmGet$actor_name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/lutube/bean/LActorsBean;->actor_name:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$actor_url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/lutube/bean/LActorsBean;->actor_url:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$actor_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/lutube/bean/LActorsBean;->actor_id:Ljava/lang/String;

    return-void
.end method

.method public realmSet$actor_like(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/comeback/data/ui/lutube/bean/LActorsBean;->actor_like:Z

    return-void
.end method

.method public realmSet$actor_name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/lutube/bean/LActorsBean;->actor_name:Ljava/lang/String;

    return-void
.end method

.method public realmSet$actor_url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/lutube/bean/LActorsBean;->actor_url:Ljava/lang/String;

    return-void
.end method

.method public setActor_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/lutube/bean/LActorsBean;->realmSet$actor_id(Ljava/lang/String;)V

    return-void
.end method

.method public setActor_like(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/lutube/bean/LActorsBean;->realmSet$actor_like(Z)V

    return-void
.end method

.method public setActor_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/lutube/bean/LActorsBean;->realmSet$actor_name(Ljava/lang/String;)V

    return-void
.end method

.method public setActor_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/lutube/bean/LActorsBean;->realmSet$actor_url(Ljava/lang/String;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/lutube/bean/LActorsBean;->realmGet$actor_id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/comeback/data/ui/lutube/bean/LActorsBean;->realmGet$actor_name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/comeback/data/ui/lutube/bean/LActorsBean;->realmGet$actor_url()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/comeback/data/ui/lutube/bean/LActorsBean;->realmGet$actor_like()Z

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
