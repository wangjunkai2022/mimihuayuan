.class public Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean$ShareBean;
.super Ljava/lang/Object;
.source "LouFengList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShareBean"
.end annotation


# instance fields
.field public data:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean$ShareBean;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean$ShareBean;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean$ShareBean;->data:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean$ShareBean;->url:Ljava/lang/String;

    return-void
.end method
