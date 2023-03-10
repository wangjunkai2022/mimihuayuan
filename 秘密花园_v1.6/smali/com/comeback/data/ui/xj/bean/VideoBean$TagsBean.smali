.class public Lcom/comeback/data/ui/xj/bean/VideoBean$TagsBean;
.super Ljava/lang/Object;
.source "VideoBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/xj/bean/VideoBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TagsBean"
.end annotation


# instance fields
.field public itemcount:Ljava/lang/String;

.field public tagid:Ljava/lang/String;

.field public tagname:Ljava/lang/String;

.field public tagtype:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemcount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/bean/VideoBean$TagsBean;->itemcount:Ljava/lang/String;

    return-object v0
.end method

.method public getTagid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/bean/VideoBean$TagsBean;->tagid:Ljava/lang/String;

    return-object v0
.end method

.method public getTagname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/bean/VideoBean$TagsBean;->tagname:Ljava/lang/String;

    return-object v0
.end method

.method public getTagtype()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/bean/VideoBean$TagsBean;->tagtype:Ljava/lang/String;

    return-object v0
.end method

.method public setItemcount(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xj/bean/VideoBean$TagsBean;->itemcount:Ljava/lang/String;

    return-void
.end method

.method public setTagid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xj/bean/VideoBean$TagsBean;->tagid:Ljava/lang/String;

    return-void
.end method

.method public setTagname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xj/bean/VideoBean$TagsBean;->tagname:Ljava/lang/String;

    return-void
.end method

.method public setTagtype(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xj/bean/VideoBean$TagsBean;->tagtype:Ljava/lang/String;

    return-void
.end method
