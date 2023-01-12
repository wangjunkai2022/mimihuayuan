.class public Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$NewHotEntity;
.super Ljava/lang/Object;
.source "DiscoverBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NewHotEntity"
.end annotation


# instance fields
.field public current_page:I

.field public data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$RecommendEntity;",
            ">;"
        }
    .end annotation
.end field

.field public from:I

.field public per_page:I

.field public final synthetic this$1:Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity;

.field public to:I


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$NewHotEntity;->this$1:Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrent_page()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$NewHotEntity;->current_page:I

    return v0
.end method

.method public getData()Ljava/util/List;
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
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$NewHotEntity;->data:Ljava/util/List;

    return-object v0
.end method

.method public getFrom()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$NewHotEntity;->from:I

    return v0
.end method

.method public getPer_page()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$NewHotEntity;->per_page:I

    return v0
.end method

.method public getTo()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$NewHotEntity;->to:I

    return v0
.end method

.method public setCurrent_page(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$NewHotEntity;->current_page:I

    return-void
.end method

.method public setData(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$NewHotEntity;->data:Ljava/util/List;

    return-void
.end method

.method public setFrom(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$NewHotEntity;->from:I

    return-void
.end method

.method public setPer_page(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$NewHotEntity;->per_page:I

    return-void
.end method

.method public setTo(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$NewHotEntity;->to:I

    return-void
.end method
