.class public Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity;
.super Ljava/lang/Object;
.source "HomeBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/cm/bean/HomeBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RescontEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity$ListEntity;
    }
.end annotation


# instance fields
.field public is_ad:I

.field public list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity$ListEntity;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public final synthetic this$0:Lcom/comeback/data/ui/cm/bean/HomeBean;

.field public type:I

.field public type_id:I


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/cm/bean/HomeBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity;->this$0:Lcom/comeback/data/ui/cm/bean/HomeBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIs_ad()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity;->is_ad:I

    return v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity$ListEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity;->list:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity;->type:I

    return v0
.end method

.method public getType_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity;->type_id:I

    return v0
.end method

.method public isAd()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity;->is_ad:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setIs_ad(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity;->is_ad:I

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity$ListEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity;->list:Ljava/util/List;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity;->name:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity;->type:I

    return-void
.end method

.method public setType_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity;->type_id:I

    return-void
.end method
