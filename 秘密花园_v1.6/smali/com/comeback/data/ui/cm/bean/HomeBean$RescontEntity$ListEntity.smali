.class public Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity$ListEntity;
.super Ljava/lang/Object;
.source "HomeBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListEntity"
.end annotation


# instance fields
.field public coverbase64:Lcom/comeback/data/ui/cm/bean/CoverBase64;

.field public coverpath:Ljava/lang/String;

.field public id:I

.field public final synthetic this$1:Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity$ListEntity;->this$1:Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCoverBase64()Lcom/comeback/data/ui/cm/bean/CoverBase64;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity$ListEntity;->coverbase64:Lcom/comeback/data/ui/cm/bean/CoverBase64;

    return-object v0
.end method

.method public getCoverpath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity$ListEntity;->coverpath:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity$ListEntity;->id:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity$ListEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setCoverBase64(Lcom/comeback/data/ui/cm/bean/CoverBase64;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity$ListEntity;->coverbase64:Lcom/comeback/data/ui/cm/bean/CoverBase64;

    return-void
.end method

.method public setCoverpath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity$ListEntity;->coverpath:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity$ListEntity;->id:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity$ListEntity;->title:Ljava/lang/String;

    return-void
.end method
