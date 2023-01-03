.class public Lcom/comeback/data/ui/senlin/bean/SenlinList;
.super Lf/e/a/f/j;
.source "SenlinList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/senlin/bean/SenlinList$ClassEntity;,
        Lcom/comeback/data/ui/senlin/bean/SenlinList$ListEntity;
    }
.end annotation


# instance fields
.field public cClass:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/senlin/bean/SenlinList$ClassEntity;",
            ">;"
        }
    .end annotation

    .annotation runtime Lf/i/b/b0/b;
        value = "class"
    .end annotation
.end field

.field public code:I

.field public limit:Ljava/lang/String;

.field public list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/senlin/bean/SenlinList$ListEntity;",
            ">;"
        }
    .end annotation
.end field

.field public msg:Ljava/lang/String;

.field public page:I

.field public pagecount:I

.field public total:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/j;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/senlin/bean/SenlinList;->code:I

    return v0
.end method

.method public getLimit()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/senlin/bean/SenlinList;->limit:Ljava/lang/String;

    return-object v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/senlin/bean/SenlinList$ListEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/senlin/bean/SenlinList;->list:Ljava/util/List;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/senlin/bean/SenlinList;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getPage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/senlin/bean/SenlinList;->page:I

    return v0
.end method

.method public getPagecount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/senlin/bean/SenlinList;->pagecount:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/senlin/bean/SenlinList;->total:I

    return v0
.end method

.method public getcClass()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/senlin/bean/SenlinList$ClassEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/senlin/bean/SenlinList;->cClass:Ljava/util/List;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/senlin/bean/SenlinList;->code:I

    return-void
.end method

.method public setLimit(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/senlin/bean/SenlinList;->limit:Ljava/lang/String;

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/senlin/bean/SenlinList$ListEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/senlin/bean/SenlinList;->list:Ljava/util/List;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/senlin/bean/SenlinList;->msg:Ljava/lang/String;

    return-void
.end method

.method public setPage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/senlin/bean/SenlinList;->page:I

    return-void
.end method

.method public setPagecount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/senlin/bean/SenlinList;->pagecount:I

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/senlin/bean/SenlinList;->total:I

    return-void
.end method

.method public setcClass(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/senlin/bean/SenlinList$ClassEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/senlin/bean/SenlinList;->cClass:Ljava/util/List;

    return-void
.end method
