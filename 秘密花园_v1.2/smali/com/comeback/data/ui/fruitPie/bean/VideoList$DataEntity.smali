.class public Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity;
.super Ljava/lang/Object;
.source "VideoList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/fruitPie/bean/VideoList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity$ListEntity;
    }
.end annotation


# instance fields
.field public banner:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end field

.field public currentPage:I

.field public hasNextPage:I

.field public list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity$ListEntity;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/comeback/data/ui/fruitPie/bean/VideoList;

.field public totalPage:I


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/fruitPie/bean/VideoList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity;->this$0:Lcom/comeback/data/ui/fruitPie/bean/VideoList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBanner()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity;->banner:Ljava/util/List;

    return-object v0
.end method

.method public getCurrentPage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity;->currentPage:I

    return v0
.end method

.method public getHasNextPage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity;->hasNextPage:I

    return v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity$ListEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity;->list:Ljava/util/List;

    return-object v0
.end method

.method public getTotalPage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity;->totalPage:I

    return v0
.end method

.method public setBanner(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity;->banner:Ljava/util/List;

    return-void
.end method

.method public setCurrentPage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity;->currentPage:I

    return-void
.end method

.method public setHasNextPage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity;->hasNextPage:I

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity$ListEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity;->list:Ljava/util/List;

    return-void
.end method

.method public setTotalPage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity;->totalPage:I

    return-void
.end method
