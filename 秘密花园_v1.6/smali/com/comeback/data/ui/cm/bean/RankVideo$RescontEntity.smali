.class public Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity;
.super Ljava/lang/Object;
.source "RankVideo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/cm/bean/RankVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RescontEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity$DataEntity;
    }
.end annotation


# instance fields
.field public current_page:I

.field public data:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity$DataEntity;",
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

.field public prev_page_url:Ljava/lang/String;

.field public final synthetic this$0:Lcom/comeback/data/ui/cm/bean/RankVideo;

.field public to:I

.field public total:I


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/cm/bean/RankVideo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity;->this$0:Lcom/comeback/data/ui/cm/bean/RankVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAll()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity$DataEntity;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity;->data:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity;->data:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getCurrent_page()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity;->current_page:I

    return v0
.end method

.method public getData()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity$DataEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity;->data:Ljava/util/HashMap;

    return-object v0
.end method

.method public getFirst_page_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity;->first_page_url:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity;->from:I

    return v0
.end method

.method public getLast_page()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity;->last_page:I

    return v0
.end method

.method public getLast_page_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity;->last_page_url:Ljava/lang/String;

    return-object v0
.end method

.method public getNext_page_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity;->next_page_url:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPer_page()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity;->per_page:I

    return v0
.end method

.method public getPrev_page_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity;->prev_page_url:Ljava/lang/String;

    return-object v0
.end method

.method public getTo()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity;->to:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity;->total:I

    return v0
.end method

.method public setCurrent_page(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity;->current_page:I

    return-void
.end method

.method public setData(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity$DataEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity;->data:Ljava/util/HashMap;

    return-void
.end method

.method public setFirst_page_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity;->first_page_url:Ljava/lang/String;

    return-void
.end method

.method public setFrom(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity;->from:I

    return-void
.end method

.method public setLast_page(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity;->last_page:I

    return-void
.end method

.method public setLast_page_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity;->last_page_url:Ljava/lang/String;

    return-void
.end method

.method public setNext_page_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity;->next_page_url:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity;->path:Ljava/lang/String;

    return-void
.end method

.method public setPer_page(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity;->per_page:I

    return-void
.end method

.method public setPrev_page_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity;->prev_page_url:Ljava/lang/String;

    return-void
.end method

.method public setTo(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity;->to:I

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cm/bean/RankVideo$RescontEntity;->total:I

    return-void
.end method
