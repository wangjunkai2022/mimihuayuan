.class public Lcom/comeback/data/ui/bale/bean/HotSearch$ResultBean$HotBean;
.super Ljava/lang/Object;
.source "HotSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/bale/bean/HotSearch$ResultBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HotBean"
.end annotation


# instance fields
.field public id:I

.field public is_recommand:I

.field public title:Ljava/lang/String;


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
    iget v0, p0, Lcom/comeback/data/ui/bale/bean/HotSearch$ResultBean$HotBean;->id:I

    return v0
.end method

.method public getIs_recommand()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/bale/bean/HotSearch$ResultBean$HotBean;->is_recommand:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/bale/bean/HotSearch$ResultBean$HotBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/bale/bean/HotSearch$ResultBean$HotBean;->id:I

    return-void
.end method

.method public setIs_recommand(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/bale/bean/HotSearch$ResultBean$HotBean;->is_recommand:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/bale/bean/HotSearch$ResultBean$HotBean;->title:Ljava/lang/String;

    return-void
.end method
