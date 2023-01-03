.class public Lcom/comeback/data/ui/md/bean/VideoList;
.super Lf/e/a/f/j;
.source "VideoList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/md/bean/VideoList$DataEntity;
    }
.end annotation


# instance fields
.field public current_page:I

.field public data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/md/bean/VideoList$DataEntity;",
            ">;"
        }
    .end annotation
.end field

.field public last_page:I

.field public per_page:I

.field public total:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/j;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrent_page()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/md/bean/VideoList;->current_page:I

    return v0
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/md/bean/VideoList$DataEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/md/bean/VideoList;->data:Ljava/util/List;

    return-object v0
.end method

.method public getLast_page()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/md/bean/VideoList;->last_page:I

    return v0
.end method

.method public getPer_page()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/md/bean/VideoList;->per_page:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/md/bean/VideoList;->total:I

    return v0
.end method

.method public setCurrent_page(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/md/bean/VideoList;->current_page:I

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/md/bean/VideoList$DataEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/md/bean/VideoList;->data:Ljava/util/List;

    return-void
.end method

.method public setLast_page(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/md/bean/VideoList;->last_page:I

    return-void
.end method

.method public setPer_page(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/md/bean/VideoList;->per_page:I

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/md/bean/VideoList;->total:I

    return-void
.end method
