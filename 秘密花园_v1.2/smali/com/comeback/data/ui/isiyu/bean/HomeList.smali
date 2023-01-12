.class public Lcom/comeback/data/ui/isiyu/bean/HomeList;
.super Lf/e/a/f/k;
.source "HomeList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/isiyu/bean/HomeList$DataBean;
    }
.end annotation


# instance fields
.field public current_page:I

.field public data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/isiyu/bean/HomeList$DataBean;",
            ">;"
        }
    .end annotation
.end field

.field public first_page_url:Ljava/lang/String;

.field public from:I

.field public last_page:I

.field public last_page_url:Ljava/lang/String;

.field public next_page_url:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public per_page:I

.field public prev_page_url:Ljava/lang/Object;

.field public to:I

.field public total:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/k;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrent_page()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/isiyu/bean/HomeList;->current_page:I

    return v0
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/isiyu/bean/HomeList$DataBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/isiyu/bean/HomeList;->data:Ljava/util/List;

    return-object v0
.end method

.method public getFirst_page_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/isiyu/bean/HomeList;->first_page_url:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/isiyu/bean/HomeList;->from:I

    return v0
.end method

.method public getLast_page()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/isiyu/bean/HomeList;->last_page:I

    return v0
.end method

.method public getLast_page_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/isiyu/bean/HomeList;->last_page_url:Ljava/lang/String;

    return-object v0
.end method

.method public getNext_page_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/isiyu/bean/HomeList;->next_page_url:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/isiyu/bean/HomeList;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPer_page()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/isiyu/bean/HomeList;->per_page:I

    return v0
.end method

.method public getPrev_page_url()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/isiyu/bean/HomeList;->prev_page_url:Ljava/lang/Object;

    return-object v0
.end method

.method public getTo()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/isiyu/bean/HomeList;->to:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/isiyu/bean/HomeList;->total:I

    return v0
.end method

.method public getVideo()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/isiyu/bean/Video;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/comeback/data/ui/isiyu/bean/HomeList;->data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/comeback/data/ui/isiyu/bean/HomeList$DataBean;

    .line 3
    invoke-static {v2}, Lcom/comeback/data/ui/isiyu/bean/HomeList$DataBean;->access$000(Lcom/comeback/data/ui/isiyu/bean/HomeList$DataBean;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "YQ=="

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v2}, Lcom/comeback/data/ui/isiyu/bean/HomeList$DataBean;->getVideo()Lcom/comeback/data/ui/isiyu/bean/Video;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public setCurrent_page(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/isiyu/bean/HomeList;->current_page:I

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/isiyu/bean/HomeList$DataBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/isiyu/bean/HomeList;->data:Ljava/util/List;

    return-void
.end method

.method public setFirst_page_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/isiyu/bean/HomeList;->first_page_url:Ljava/lang/String;

    return-void
.end method

.method public setFrom(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/isiyu/bean/HomeList;->from:I

    return-void
.end method

.method public setLast_page(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/isiyu/bean/HomeList;->last_page:I

    return-void
.end method

.method public setLast_page_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/isiyu/bean/HomeList;->last_page_url:Ljava/lang/String;

    return-void
.end method

.method public setNext_page_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/isiyu/bean/HomeList;->next_page_url:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/isiyu/bean/HomeList;->path:Ljava/lang/String;

    return-void
.end method

.method public setPer_page(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/isiyu/bean/HomeList;->per_page:I

    return-void
.end method

.method public setPrev_page_url(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/isiyu/bean/HomeList;->prev_page_url:Ljava/lang/Object;

    return-void
.end method

.method public setTo(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/isiyu/bean/HomeList;->to:I

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/isiyu/bean/HomeList;->total:I

    return-void
.end method
