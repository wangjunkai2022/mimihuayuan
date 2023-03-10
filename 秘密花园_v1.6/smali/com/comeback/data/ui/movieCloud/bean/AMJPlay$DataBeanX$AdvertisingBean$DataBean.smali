.class public Lcom/comeback/data/ui/movieCloud/bean/AMJPlay$DataBeanX$AdvertisingBean$DataBean;
.super Ljava/lang/Object;
.source "AMJPlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/movieCloud/bean/AMJPlay$DataBeanX$AdvertisingBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field public pic:Ljava/lang/String;

.field public skip:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/movieCloud/bean/AMJPlay$DataBeanX$AdvertisingBean$DataBean;->pic:Ljava/lang/String;

    return-object v0
.end method

.method public getSkip()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/movieCloud/bean/AMJPlay$DataBeanX$AdvertisingBean$DataBean;->skip:Ljava/lang/String;

    return-object v0
.end method

.method public setPic(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/movieCloud/bean/AMJPlay$DataBeanX$AdvertisingBean$DataBean;->pic:Ljava/lang/String;

    return-void
.end method

.method public setSkip(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/movieCloud/bean/AMJPlay$DataBeanX$AdvertisingBean$DataBean;->skip:Ljava/lang/String;

    return-void
.end method
