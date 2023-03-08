.class public Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean$ListBean;
.super Ljava/lang/Object;
.source "ComicDetailBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListBean"
.end annotation


# instance fields
.field public buy:I

.field public cjid:Ljava/lang/String;

.field public cjname:Ljava/lang/String;

.field public cjstatus:Ljava/lang/String;

.field public content:Ljava/lang/String;

.field public create_time:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public image:Ljava/lang/String;

.field public imagelist:Ljava/lang/String;

.field public isvip:I

.field public manhua_id:Ljava/lang/String;

.field public score:Ljava/lang/String;

.field public sort:Ljava/lang/String;

.field public switchX:Ljava/lang/String;
    .annotation runtime Lf/i/b/b0/b;
        value = "switch"
    .end annotation
.end field

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public update_time:Ljava/lang/String;

.field public view:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllImage()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean$ListBean;->imagelist:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean$ListBean;->imagelist:Ljava/lang/String;

    const-string v2, "Gw=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 4
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lf/e/a/k/b;->l0:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getBuy()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean$ListBean;->buy:I

    return v0
.end method

.method public getCjid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean$ListBean;->cjid:Ljava/lang/String;

    return-object v0
.end method

.method public getCjname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean$ListBean;->cjname:Ljava/lang/String;

    return-object v0
.end method

.method public getCjstatus()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean$ListBean;->cjstatus:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean$ListBean;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getCreate_time()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean$ListBean;->create_time:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean$ListBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean$ListBean;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getImagelist()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean$ListBean;->imagelist:Ljava/lang/String;

    return-object v0
.end method

.method public getIsvip()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean$ListBean;->isvip:I

    return v0
.end method

.method public getManhua_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean$ListBean;->manhua_id:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean$ListBean;->score:Ljava/lang/String;

    return-object v0
.end method

.method public getSort()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean$ListBean;->sort:Ljava/lang/String;

    return-object v0
.end method

.method public getSwitchX()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean$ListBean;->switchX:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean$ListBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean$ListBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdate_time()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean$ListBean;->update_time:Ljava/lang/String;

    return-object v0
.end method

.method public getView()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean$ListBean;->view:Ljava/lang/Object;

    return-object v0
.end method

.method public setBuy(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean$ListBean;->buy:I

    return-void
.end method

.method public setCjid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean$ListBean;->cjid:Ljava/lang/String;

    return-void
.end method

.method public setCjname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean$ListBean;->cjname:Ljava/lang/String;

    return-void
.end method

.method public setCjstatus(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean$ListBean;->cjstatus:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean$ListBean;->content:Ljava/lang/String;

    return-void
.end method

.method public setCreate_time(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean$ListBean;->create_time:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean$ListBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean$ListBean;->image:Ljava/lang/String;

    return-void
.end method

.method public setImagelist(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean$ListBean;->imagelist:Ljava/lang/String;

    return-void
.end method

.method public setIsvip(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean$ListBean;->isvip:I

    return-void
.end method

.method public setManhua_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean$ListBean;->manhua_id:Ljava/lang/String;

    return-void
.end method

.method public setScore(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean$ListBean;->score:Ljava/lang/String;

    return-void
.end method

.method public setSort(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean$ListBean;->sort:Ljava/lang/String;

    return-void
.end method

.method public setSwitchX(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean$ListBean;->switchX:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean$ListBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean$ListBean;->type:Ljava/lang/String;

    return-void
.end method

.method public setUpdate_time(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean$ListBean;->update_time:Ljava/lang/String;

    return-void
.end method

.method public setView(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean$ListBean;->view:Ljava/lang/Object;

    return-void
.end method
