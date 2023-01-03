.class public Lcom/comeback/data/ui/md/bean/ChanelList$DataEntity;
.super Ljava/lang/Object;
.source "ChanelList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/md/bean/ChanelList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataEntity"
.end annotation


# instance fields
.field public desc:Ljava/lang/String;

.field public id:I

.field public image:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public final synthetic this$0:Lcom/comeback/data/ui/md/bean/ChanelList;

.field public total:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/md/bean/ChanelList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/md/bean/ChanelList$DataEntity;->this$0:Lcom/comeback/data/ui/md/bean/ChanelList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/md/bean/ChanelList$DataEntity;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/md/bean/ChanelList$DataEntity;->id:I

    return v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/md/bean/ChanelList$DataEntity;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/md/bean/ChanelList$DataEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/md/bean/ChanelList$DataEntity;->total:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/md/bean/ChanelList$DataEntity;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/md/bean/ChanelList$DataEntity;->desc:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/md/bean/ChanelList$DataEntity;->id:I

    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/md/bean/ChanelList$DataEntity;->image:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/md/bean/ChanelList$DataEntity;->name:Ljava/lang/String;

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/md/bean/ChanelList$DataEntity;->total:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/md/bean/ChanelList$DataEntity;->url:Ljava/lang/String;

    return-void
.end method
