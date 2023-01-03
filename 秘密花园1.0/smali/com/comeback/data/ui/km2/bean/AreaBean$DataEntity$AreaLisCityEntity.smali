.class public Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity;
.super Ljava/lang/Object;
.source "AreaBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AreaLisCityEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$CityEntity;,
        Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$TotalEntity;,
        Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$At_CityEntity;
    }
.end annotation


# instance fields
.field public at_city:Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$CityEntity;

.field public hot:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$CityEntity;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$1:Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity;

.field public total:Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$TotalEntity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity;->this$1:Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAt_city()Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$CityEntity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity;->at_city:Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$CityEntity;

    return-object v0
.end method

.method public getHot()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$CityEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity;->hot:Ljava/util/List;

    return-object v0
.end method

.method public getTotal()Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$TotalEntity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity;->total:Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$TotalEntity;

    return-object v0
.end method

.method public setAt_city(Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$CityEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity;->at_city:Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$CityEntity;

    return-void
.end method

.method public setHot(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$CityEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity;->hot:Ljava/util/List;

    return-void
.end method

.method public setTotal(Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$TotalEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity;->total:Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$TotalEntity;

    return-void
.end method
