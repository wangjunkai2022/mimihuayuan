.class public Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity;
.super Ljava/lang/Object;
.source "VideoList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/ins/bean/VideoList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;
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
            "Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;",
            ">;"
        }
    .end annotation
.end field

.field public skip:I

.field public final synthetic this$0:Lcom/comeback/data/ui/ins/bean/VideoList;

.field public total:I

.field public totalPageNum:I


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/ins/bean/VideoList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity;->this$0:Lcom/comeback/data/ui/ins/bean/VideoList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFirstIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity;->firstIndex:I

    return v0
.end method

.method public getLastIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity;->lastIndex:I

    return v0
.end method

.method public getLimit()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity;->limit:I

    return v0
.end method

.method public getNextPage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity;->nextPage:I

    return v0
.end method

.method public getNextPageNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity;->nextPageNum:I

    return v0
.end method

.method public getPageNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity;->pageNum:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity;->pageSize:I

    return v0
.end method

.method public getPrePage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity;->prePage:I

    return v0
.end method

.method public getPrePageNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity;->prePageNum:I

    return v0
.end method

.method public getResultList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity;->resultList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;

    .line 4
    invoke-static {v1}, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->access$000(Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity;->resultList:Ljava/util/List;

    return-object v0
.end method

.method public getSkip()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity;->skip:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity;->total:I

    return v0
.end method

.method public getTotalPageNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity;->totalPageNum:I

    return v0
.end method

.method public isHasNextPage()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity;->hasNextPage:Z

    return v0
.end method

.method public isHasPrePage()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity;->hasPrePage:Z

    return v0
.end method

.method public setFirstIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity;->firstIndex:I

    return-void
.end method

.method public setHasNextPage(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity;->hasNextPage:Z

    return-void
.end method

.method public setHasPrePage(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity;->hasPrePage:Z

    return-void
.end method

.method public setLastIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity;->lastIndex:I

    return-void
.end method

.method public setLimit(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity;->limit:I

    return-void
.end method

.method public setNextPage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity;->nextPage:I

    return-void
.end method

.method public setNextPageNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity;->nextPageNum:I

    return-void
.end method

.method public setPageNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity;->pageNum:I

    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity;->pageSize:I

    return-void
.end method

.method public setPrePage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity;->prePage:I

    return-void
.end method

.method public setPrePageNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity;->prePageNum:I

    return-void
.end method

.method public setResultList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity;->resultList:Ljava/util/List;

    return-void
.end method

.method public setSkip(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity;->skip:I

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity;->total:I

    return-void
.end method

.method public setTotalPageNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity;->totalPageNum:I

    return-void
.end method
