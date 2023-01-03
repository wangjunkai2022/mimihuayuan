.class public Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$SearchViewQueryGroupBean$ViewGroupBeanX$ChildrenBeanXXXX$ChildrenBeanXXX;
.super Ljava/lang/Object;
.source "ChannelId.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$SearchViewQueryGroupBean$ViewGroupBeanX$ChildrenBeanXXXX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChildrenBeanXXX"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$SearchViewQueryGroupBean$ViewGroupBeanX$ChildrenBeanXXXX$ChildrenBeanXXX$ChildrenBeanXX;
    }
.end annotation


# instance fields
.field public children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$SearchViewQueryGroupBean$ViewGroupBeanX$ChildrenBeanXXXX$ChildrenBeanXXX$ChildrenBeanXX;",
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
.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$SearchViewQueryGroupBean$ViewGroupBeanX$ChildrenBeanXXXX$ChildrenBeanXXX$ChildrenBeanXX;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$SearchViewQueryGroupBean$ViewGroupBeanX$ChildrenBeanXXXX$ChildrenBeanXXX;->children:Ljava/util/List;

    return-object v0
.end method

.method public getGroup_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$SearchViewQueryGroupBean$ViewGroupBeanX$ChildrenBeanXXXX$ChildrenBeanXXX;->group_id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$SearchViewQueryGroupBean$ViewGroupBeanX$ChildrenBeanXXXX$ChildrenBeanXXX;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder_index()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$SearchViewQueryGroupBean$ViewGroupBeanX$ChildrenBeanXXXX$ChildrenBeanXXX;->order_index:I

    return v0
.end method

.method public getParent_group_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$SearchViewQueryGroupBean$ViewGroupBeanX$ChildrenBeanXXXX$ChildrenBeanXXX;->parent_group_id:Ljava/lang/String;

    return-object v0
.end method

.method public getTree_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$SearchViewQueryGroupBean$ViewGroupBeanX$ChildrenBeanXXXX$ChildrenBeanXXX;->tree_id:Ljava/lang/String;

    return-object v0
.end method

.method public setChildren(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$SearchViewQueryGroupBean$ViewGroupBeanX$ChildrenBeanXXXX$ChildrenBeanXXX$ChildrenBeanXX;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$SearchViewQueryGroupBean$ViewGroupBeanX$ChildrenBeanXXXX$ChildrenBeanXXX;->children:Ljava/util/List;

    return-void
.end method

.method public setGroup_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$SearchViewQueryGroupBean$ViewGroupBeanX$ChildrenBeanXXXX$ChildrenBeanXXX;->group_id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$SearchViewQueryGroupBean$ViewGroupBeanX$ChildrenBeanXXXX$ChildrenBeanXXX;->name:Ljava/lang/String;

    return-void
.end method

.method public setOrder_index(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$SearchViewQueryGroupBean$ViewGroupBeanX$ChildrenBeanXXXX$ChildrenBeanXXX;->order_index:I

    return-void
.end method

.method public setParent_group_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$SearchViewQueryGroupBean$ViewGroupBeanX$ChildrenBeanXXXX$ChildrenBeanXXX;->parent_group_id:Ljava/lang/String;

    return-void
.end method

.method public setTree_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$SearchViewQueryGroupBean$ViewGroupBeanX$ChildrenBeanXXXX$ChildrenBeanXXX;->tree_id:Ljava/lang/String;

    return-void
.end method
