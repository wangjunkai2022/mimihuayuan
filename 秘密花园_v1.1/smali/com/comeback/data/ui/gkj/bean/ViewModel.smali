.class public Lcom/comeback/data/ui/gkj/bean/ViewModel;
.super Lf/e/a/f/j;
.source "ViewModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;
    }
.end annotation


# instance fields
.field public current_page:I

.field public data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;",
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
    invoke-direct {p0}, Lf/e/a/f/j;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrent_page()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel;->current_page:I

    return v0
.end method

.method public getData()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel;->data:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;

    .line 5
    invoke-virtual {v1}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;->getModule()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VgY="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel;->data:Ljava/util/List;

    return-object v0
.end method

.method public getFirst_page_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel;->first_page_url:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel;->from:I

    return v0
.end method

.method public getLast_page()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel;->last_page:I

    return v0
.end method

.method public getLast_page_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel;->last_page_url:Ljava/lang/String;

    return-object v0
.end method

.method public getNext_page_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel;->next_page_url:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPer_page()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel;->per_page:I

    return v0
.end method

.method public getPrev_page_url()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel;->prev_page_url:Ljava/lang/Object;

    return-object v0
.end method

.method public getTo()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel;->to:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel;->total:I

    return v0
.end method

.method public setCurrent_page(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel;->current_page:I

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel;->data:Ljava/util/List;

    return-void
.end method

.method public setFirst_page_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel;->first_page_url:Ljava/lang/String;

    return-void
.end method

.method public setFrom(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel;->from:I

    return-void
.end method

.method public setLast_page(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel;->last_page:I

    return-void
.end method

.method public setLast_page_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel;->last_page_url:Ljava/lang/String;

    return-void
.end method

.method public setNext_page_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel;->next_page_url:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel;->path:Ljava/lang/String;

    return-void
.end method

.method public setPer_page(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel;->per_page:I

    return-void
.end method

.method public setPrev_page_url(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel;->prev_page_url:Ljava/lang/Object;

    return-void
.end method

.method public setTo(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel;->to:I

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel;->total:I

    return-void
.end method
