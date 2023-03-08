.class public Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity;
.super Ljava/lang/Object;
.source "AreaBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/km2/bean/AreaBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity;
    }
.end annotation


# instance fields
.field public areaList:Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity;

.field public final synthetic this$0:Lcom/comeback/data/ui/km2/bean/AreaBean;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/km2/bean/AreaBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity;->this$0:Lcom/comeback/data/ui/km2/bean/AreaBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAreaList()Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity;->areaList:Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity;

    return-object v0
.end method

.method public setAreaList(Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity;->areaList:Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity;

    return-void
.end method
