.class public Lcom/comeback/data/ui/tomato/bean/LiveList;
.super Lf/e/a/f/k;
.source "LiveList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity;
    }
.end annotation


# instance fields
.field public dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity;",
            ">;"
        }
    .end annotation
.end field

.field public pageNumber:I

.field public pageSize:I

.field public totalPageCount:I

.field public totalRowsCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/k;-><init>()V

    return-void
.end method


# virtual methods
.method public getDataList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/tomato/bean/LiveList;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity;

    .line 4
    invoke-static {v1}, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity;->access$000(Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-static {v1}, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity;->access$100(Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity;)Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity;->access$100(Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity;)Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->getPullStreamUrlH265()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/comeback/data/ui/tomato/bean/LiveList;->dataList:Ljava/util/List;

    return-object v0
.end method

.method public getPageNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/tomato/bean/LiveList;->pageNumber:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/tomato/bean/LiveList;->pageSize:I

    return v0
.end method

.method public getTotalPageCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/tomato/bean/LiveList;->totalPageCount:I

    return v0
.end method

.method public getTotalRowsCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/tomato/bean/LiveList;->totalRowsCount:I

    return v0
.end method

.method public setDataList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tomato/bean/LiveList;->dataList:Ljava/util/List;

    return-void
.end method

.method public setPageNumber(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/tomato/bean/LiveList;->pageNumber:I

    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/tomato/bean/LiveList;->pageSize:I

    return-void
.end method

.method public setTotalPageCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/tomato/bean/LiveList;->totalPageCount:I

    return-void
.end method

.method public setTotalRowsCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/tomato/bean/LiveList;->totalRowsCount:I

    return-void
.end method
