.class public Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean;
.super Ljava/lang/Object;
.source "ComicDetailBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/ds/bean/ComicDetailBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean$ListBean;
    }
.end annotation


# instance fields
.field public lastPage:Z

.field public list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean$ListBean;",
            ">;"
        }
    .end annotation
.end field

.field public pageNumber:Ljava/lang/String;

.field public pageSize:Ljava/lang/String;

.field public totalPage:I

.field public totalRow:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean$ListBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean;->list:Ljava/util/List;

    return-object v0
.end method

.method public getPageNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean;->pageNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPageSize()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean;->pageSize:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalPage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean;->totalPage:I

    return v0
.end method

.method public getTotalRow()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean;->totalRow:Ljava/lang/String;

    return-object v0
.end method

.method public isLastPage()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean;->lastPage:Z

    return v0
.end method

.method public setLastPage(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean;->lastPage:Z

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean$ListBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean;->list:Ljava/util/List;

    return-void
.end method

.method public setPageNumber(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean;->pageNumber:Ljava/lang/String;

    return-void
.end method

.method public setPageSize(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean;->pageSize:Ljava/lang/String;

    return-void
.end method

.method public setTotalPage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean;->totalPage:I

    return-void
.end method

.method public setTotalRow(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean;->totalRow:Ljava/lang/String;

    return-void
.end method
