.class public Lcom/comeback/data/ui/sex8/bean/VideoList;
.super Lf/e/a/f/k;
.source "VideoList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/sex8/bean/VideoList$DataBean;
    }
.end annotation


# instance fields
.field public data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/sex8/bean/VideoList$DataBean;",
            ">;"
        }
    .end annotation
.end field

.field public msg:Ljava/lang/String;

.field public status:I

.field public total_num_rows:I

.field public total_page:I

.field public xb_num:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/k;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/sex8/bean/VideoList$DataBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/VideoList;->data:Ljava/util/List;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/VideoList;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/sex8/bean/VideoList;->status:I

    return v0
.end method

.method public getTotal_num_rows()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/sex8/bean/VideoList;->total_num_rows:I

    return v0
.end method

.method public getTotal_page()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/sex8/bean/VideoList;->total_page:I

    return v0
.end method

.method public getXb_num()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/VideoList;->xb_num:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/sex8/bean/VideoList$DataBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/VideoList;->data:Ljava/util/List;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/VideoList;->msg:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/sex8/bean/VideoList;->status:I

    return-void
.end method

.method public setTotal_num_rows(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/sex8/bean/VideoList;->total_num_rows:I

    return-void
.end method

.method public setTotal_page(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/sex8/bean/VideoList;->total_page:I

    return-void
.end method

.method public setXb_num(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/VideoList;->xb_num:Ljava/lang/String;

    return-void
.end method
