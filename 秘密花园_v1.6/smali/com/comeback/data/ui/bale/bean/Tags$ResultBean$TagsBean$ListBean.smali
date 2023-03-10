.class public Lcom/comeback/data/ui/bale/bean/Tags$ResultBean$TagsBean$ListBean;
.super Ljava/lang/Object;
.source "Tags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/bale/bean/Tags$ResultBean$TagsBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListBean"
.end annotation


# instance fields
.field public id:I

.field public title:Ljava/lang/String;

.field public topic:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/bale/bean/Tags$ResultBean$TagsBean$ListBean;->id:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/bale/bean/Tags$ResultBean$TagsBean$ListBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTopic()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/bale/bean/Tags$ResultBean$TagsBean$ListBean;->topic:I

    return v0
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/bale/bean/Tags$ResultBean$TagsBean$ListBean;->id:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/bale/bean/Tags$ResultBean$TagsBean$ListBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setTopic(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/bale/bean/Tags$ResultBean$TagsBean$ListBean;->topic:I

    return-void
.end method
