.class public Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity;
.super Ljava/lang/Object;
.source "ImageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/ins/bean/ImageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;
    }
.end annotation


# instance fields
.field public firstIndex:I

.field public hasNextPage:Z

.field public hasPrePage:Z

.field public lastIndex:I

.field public limit:I

.field public nextPage:I

.field public nextPageNum:I

.field public pageNum:I

.field public pageSize:I

.field public prePage:I

.field public prePageNum:I

.field public resultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;",
            ">;"
        }
    .end annotation
.end field

.field public skip:I

.field public final synthetic this$0:Lcom/comeback/data/ui/ins/bean/ImageList;

.field public total:I

.field public totalPageNum:I


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/ins/bean/ImageList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity;->this$0:Lcom/comeback/data/ui/ins/bean/ImageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFirstIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity;->firstIndex:I

    return v0
.end method

.method public getLastIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity;->lastIndex:I

    return v0
.end method

.method public getLimit()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity;->limit:I

    return v0
.end method

.method public getNextPage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity;->nextPage:I

    return v0
.end method

.method public getNextPageNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity;->nextPageNum:I

    return v0
.end method

.method public getPageNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity;->pageNum:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity;->pageSize:I

    return v0
.end method

.method public getPrePage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity;->prePage:I

    return v0
.end method

.method public getPrePageNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity;->prePageNum:I

    return v0
.end method

.method public getResultList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity;->resultList:Ljava/util/List;

    return-object v0
.end method

.method public getSkip()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity;->skip:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity;->total:I

    return v0
.end method

.method public getTotalPageNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity;->totalPageNum:I

    return v0
.end method

.method public isHasNextPage()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity;->hasNextPage:Z

    return v0
.end method

.method public isHasPrePage()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity;->hasPrePage:Z

    return v0
.end method

.method public setFirstIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity;->firstIndex:I

    return-void
.end method

.method public setHasNextPage(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity;->hasNextPage:Z

    return-void
.end method

.method public setHasPrePage(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity;->hasPrePage:Z

    return-void
.end method

.method public setLastIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity;->lastIndex:I

    return-void
.end method

.method public setLimit(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity;->limit:I

    return-void
.end method

.method public setNextPage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity;->nextPage:I

    return-void
.end method

.method public setNextPageNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity;->nextPageNum:I

    return-void
.end method

.method public setPageNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity;->pageNum:I

    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity;->pageSize:I

    return-void
.end method

.method public setPrePage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity;->prePage:I

    return-void
.end method

.method public setPrePageNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity;->prePageNum:I

    return-void
.end method

.method public setResultList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity;->resultList:Ljava/util/List;

    return-void
.end method

.method public setSkip(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity;->skip:I

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity;->total:I

    return-void
.end method

.method public setTotalPageNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity;->totalPageNum:I

    return-void
.end method
