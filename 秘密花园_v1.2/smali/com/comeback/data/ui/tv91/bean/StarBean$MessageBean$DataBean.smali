.class public Lcom/comeback/data/ui/tv91/bean/StarBean$MessageBean$DataBean;
.super Ljava/lang/Object;
.source "StarBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/tv91/bean/StarBean$MessageBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field public Count:Ljava/lang/String;

.field public ID:I

.field public Name:Ljava/lang/String;

.field public Pic:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/tv91/bean/StarBean$MessageBean$DataBean;->Count:Ljava/lang/String;

    return-object v0
.end method

.method public getID()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/tv91/bean/StarBean$MessageBean$DataBean;->ID:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/tv91/bean/StarBean$MessageBean$DataBean;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public getPic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/tv91/bean/StarBean$MessageBean$DataBean;->Pic:Ljava/lang/String;

    return-object v0
.end method

.method public setCount(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tv91/bean/StarBean$MessageBean$DataBean;->Count:Ljava/lang/String;

    return-void
.end method

.method public setID(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/tv91/bean/StarBean$MessageBean$DataBean;->ID:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tv91/bean/StarBean$MessageBean$DataBean;->Name:Ljava/lang/String;

    return-void
.end method

.method public setPic(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tv91/bean/StarBean$MessageBean$DataBean;->Pic:Ljava/lang/String;

    return-void
.end method
