.class public Lcom/comeback/data/ui/cm/bean/ScreenBean$RescontEntity$DataEntity;
.super Ljava/lang/Object;
.source "ScreenBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/cm/bean/ScreenBean$RescontEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataEntity"
.end annotation


# instance fields
.field public auther_no:Ljava/lang/String;

.field public authername:Ljava/lang/String;

.field public coverbase64:Lcom/comeback/data/ui/cm/bean/CoverBase64;

.field public coverpath:Ljava/lang/String;

.field public id:I

.field public final synthetic this$1:Lcom/comeback/data/ui/cm/bean/ScreenBean$RescontEntity;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/cm/bean/ScreenBean$RescontEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/ScreenBean$RescontEntity$DataEntity;->this$1:Lcom/comeback/data/ui/cm/bean/ScreenBean$RescontEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuther_no()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/ScreenBean$RescontEntity$DataEntity;->auther_no:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthername()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/ScreenBean$RescontEntity$DataEntity;->authername:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverBase64()Lcom/comeback/data/ui/cm/bean/CoverBase64;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/ScreenBean$RescontEntity$DataEntity;->coverbase64:Lcom/comeback/data/ui/cm/bean/CoverBase64;

    return-object v0
.end method

.method public getCoverpath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/ScreenBean$RescontEntity$DataEntity;->coverpath:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cm/bean/ScreenBean$RescontEntity$DataEntity;->id:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/ScreenBean$RescontEntity$DataEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setAuther_no(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/ScreenBean$RescontEntity$DataEntity;->auther_no:Ljava/lang/String;

    return-void
.end method

.method public setAuthername(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/ScreenBean$RescontEntity$DataEntity;->authername:Ljava/lang/String;

    return-void
.end method

.method public setCoverBase64(Lcom/comeback/data/ui/cm/bean/CoverBase64;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/ScreenBean$RescontEntity$DataEntity;->coverbase64:Lcom/comeback/data/ui/cm/bean/CoverBase64;

    return-void
.end method

.method public setCoverpath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/ScreenBean$RescontEntity$DataEntity;->coverpath:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cm/bean/ScreenBean$RescontEntity$DataEntity;->id:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/ScreenBean$RescontEntity$DataEntity;->title:Ljava/lang/String;

    return-void
.end method
