.class public Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity;
.super Ljava/lang/Object;
.source "DiscoverBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$RecommendEntity;,
        Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$HotTagEntity;,
        Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$NewHotEntity;
    }
.end annotation


# instance fields
.field public hotTag:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$HotTagEntity;",
            ">;"
        }
    .end annotation
.end field

.field public newHot:Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$NewHotEntity;

.field public recommend:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$RecommendEntity;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity;->this$0:Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHotTag()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$HotTagEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity;->hotTag:Ljava/util/List;

    return-object v0
.end method

.method public getNewHot()Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$NewHotEntity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity;->newHot:Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$NewHotEntity;

    return-object v0
.end method

.method public getRecommend()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$RecommendEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity;->recommend:Ljava/util/List;

    return-object v0
.end method

.method public getTagString()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity;->hotTag:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$HotTagEntity;

    invoke-static {v2}, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$HotTagEntity;->access$000(Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$HotTagEntity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public setHotTag(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$HotTagEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity;->hotTag:Ljava/util/List;

    return-void
.end method

.method public setNewHot(Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$NewHotEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity;->newHot:Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$NewHotEntity;

    return-void
.end method

.method public setRecommend(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$RecommendEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity;->recommend:Ljava/util/List;

    return-void
.end method
