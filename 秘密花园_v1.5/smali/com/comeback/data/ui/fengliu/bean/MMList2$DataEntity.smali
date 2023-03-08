.class public Lcom/comeback/data/ui/fengliu/bean/MMList2$DataEntity;
.super Ljava/lang/Object;
.source "MMList2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/fengliu/bean/MMList2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataEntity"
.end annotation


# instance fields
.field public countId:Ljava/lang/String;

.field public current:I

.field public maxLimit:Ljava/lang/String;

.field public optimizeCountSql:Z

.field public orders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end field

.field public pages:I

.field public records:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;",
            ">;"
        }
    .end annotation
.end field

.field public searchCount:Z

.field public size:I

.field public final synthetic this$0:Lcom/comeback/data/ui/fengliu/bean/MMList2;

.field public total:I


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/fengliu/bean/MMList2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMList2$DataEntity;->this$0:Lcom/comeback/data/ui/fengliu/bean/MMList2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCountId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMList2$DataEntity;->countId:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrent()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMList2$DataEntity;->current:I

    return v0
.end method

.method public getMaxLimit()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMList2$DataEntity;->maxLimit:Ljava/lang/String;

    return-object v0
.end method

.method public getOrders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMList2$DataEntity;->orders:Ljava/util/List;

    return-object v0
.end method

.method public getPages()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMList2$DataEntity;->pages:I

    return v0
.end method

.method public getRecords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMList2$DataEntity;->records:Ljava/util/List;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMList2$DataEntity;->size:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMList2$DataEntity;->total:I

    return v0
.end method

.method public isOptimizeCountSql()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMList2$DataEntity;->optimizeCountSql:Z

    return v0
.end method

.method public isSearchCount()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMList2$DataEntity;->searchCount:Z

    return v0
.end method

.method public setCountId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMList2$DataEntity;->countId:Ljava/lang/String;

    return-void
.end method

.method public setCurrent(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMList2$DataEntity;->current:I

    return-void
.end method

.method public setMaxLimit(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMList2$DataEntity;->maxLimit:Ljava/lang/String;

    return-void
.end method

.method public setOptimizeCountSql(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMList2$DataEntity;->optimizeCountSql:Z

    return-void
.end method

.method public setOrders(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMList2$DataEntity;->orders:Ljava/util/List;

    return-void
.end method

.method public setPages(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMList2$DataEntity;->pages:I

    return-void
.end method

.method public setRecords(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMList2$DataEntity;->records:Ljava/util/List;

    return-void
.end method

.method public setSearchCount(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMList2$DataEntity;->searchCount:Z

    return-void
.end method

.method public setSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMList2$DataEntity;->size:I

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMList2$DataEntity;->total:I

    return-void
.end method
