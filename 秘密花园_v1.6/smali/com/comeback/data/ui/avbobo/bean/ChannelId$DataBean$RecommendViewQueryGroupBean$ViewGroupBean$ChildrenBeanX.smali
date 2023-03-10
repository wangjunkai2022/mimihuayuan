.class public Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$RecommendViewQueryGroupBean$ViewGroupBean$ChildrenBeanX;
.super Ljava/lang/Object;
.source "ChannelId.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$RecommendViewQueryGroupBean$ViewGroupBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChildrenBeanX"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$RecommendViewQueryGroupBean$ViewGroupBean$ChildrenBeanX$ChildrenBean;,
        Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$RecommendViewQueryGroupBean$ViewGroupBean$ChildrenBeanX$AttrsBeanX;
    }
.end annotation


# instance fields
.field public attrs:Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$RecommendViewQueryGroupBean$ViewGroupBean$ChildrenBeanX$AttrsBeanX;

.field public children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$RecommendViewQueryGroupBean$ViewGroupBean$ChildrenBeanX$ChildrenBean;",
            ">;"
        }
    .end annotation
.end field

.field public group_id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public order_index:I

.field public parent_group_id:Ljava/lang/String;

.field public tree_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttrs()Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$RecommendViewQueryGroupBean$ViewGroupBean$ChildrenBeanX$AttrsBeanX;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$RecommendViewQueryGroupBean$ViewGroupBean$ChildrenBeanX;->attrs:Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$RecommendViewQueryGroupBean$ViewGroupBean$ChildrenBeanX$AttrsBeanX;

    return-object v0
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$RecommendViewQueryGroupBean$ViewGroupBean$ChildrenBeanX$ChildrenBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$RecommendViewQueryGroupBean$ViewGroupBean$ChildrenBeanX;->children:Ljava/util/List;

    return-object v0
.end method

.method public getGroup_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$RecommendViewQueryGroupBean$ViewGroupBean$ChildrenBeanX;->group_id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$RecommendViewQueryGroupBean$ViewGroupBean$ChildrenBeanX;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder_index()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$RecommendViewQueryGroupBean$ViewGroupBean$ChildrenBeanX;->order_index:I

    return v0
.end method

.method public getParent_group_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$RecommendViewQueryGroupBean$ViewGroupBean$ChildrenBeanX;->parent_group_id:Ljava/lang/String;

    return-object v0
.end method

.method public getTree_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$RecommendViewQueryGroupBean$ViewGroupBean$ChildrenBeanX;->tree_id:Ljava/lang/String;

    return-object v0
.end method

.method public setAttrs(Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$RecommendViewQueryGroupBean$ViewGroupBean$ChildrenBeanX$AttrsBeanX;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$RecommendViewQueryGroupBean$ViewGroupBean$ChildrenBeanX;->attrs:Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$RecommendViewQueryGroupBean$ViewGroupBean$ChildrenBeanX$AttrsBeanX;

    return-void
.end method

.method public setChildren(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$RecommendViewQueryGroupBean$ViewGroupBean$ChildrenBeanX$ChildrenBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$RecommendViewQueryGroupBean$ViewGroupBean$ChildrenBeanX;->children:Ljava/util/List;

    return-void
.end method

.method public setGroup_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$RecommendViewQueryGroupBean$ViewGroupBean$ChildrenBeanX;->group_id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$RecommendViewQueryGroupBean$ViewGroupBean$ChildrenBeanX;->name:Ljava/lang/String;

    return-void
.end method

.method public setOrder_index(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$RecommendViewQueryGroupBean$ViewGroupBean$ChildrenBeanX;->order_index:I

    return-void
.end method

.method public setParent_group_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$RecommendViewQueryGroupBean$ViewGroupBean$ChildrenBeanX;->parent_group_id:Ljava/lang/String;

    return-void
.end method

.method public setTree_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$RecommendViewQueryGroupBean$ViewGroupBean$ChildrenBeanX;->tree_id:Ljava/lang/String;

    return-void
.end method
