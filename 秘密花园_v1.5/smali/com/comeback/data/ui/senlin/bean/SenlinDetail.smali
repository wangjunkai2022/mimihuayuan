.class public Lcom/comeback/data/ui/senlin/bean/SenlinDetail;
.super Lf/e/a/f/k;
.source "SenlinDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/senlin/bean/SenlinDetail$ListEntity;
    }
.end annotation


# instance fields
.field public code:I

.field public limit:Ljava/lang/String;

.field public list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/senlin/bean/SenlinDetail$ListEntity;",
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
    invoke-direct {p0}, Lf/e/a/f/k;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/senlin/bean/SenlinDetail;->code:I

    return v0
.end method

.method public getLimit()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/senlin/bean/SenlinDetail;->limit:Ljava/lang/String;

    return-object v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/senlin/bean/SenlinDetail$ListEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/senlin/bean/SenlinDetail;->list:Ljava/util/List;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/senlin/bean/SenlinDetail;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getPage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/senlin/bean/SenlinDetail;->page:I

    return v0
.end method

.method public getPagecount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/senlin/bean/SenlinDetail;->pagecount:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/senlin/bean/SenlinDetail;->total:I

    return v0
.end method

.method public setCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/senlin/bean/SenlinDetail;->code:I

    return-void
.end method

.method public setLimit(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/senlin/bean/SenlinDetail;->limit:Ljava/lang/String;

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/senlin/bean/SenlinDetail$ListEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/senlin/bean/SenlinDetail;->list:Ljava/util/List;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/senlin/bean/SenlinDetail;->msg:Ljava/lang/String;

    return-void
.end method

.method public setPage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/senlin/bean/SenlinDetail;->page:I

    return-void
.end method

.method public setPagecount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/senlin/bean/SenlinDetail;->pagecount:I

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/senlin/bean/SenlinDetail;->total:I

    return-void
.end method
