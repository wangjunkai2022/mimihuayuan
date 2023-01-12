.class public Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$LikeAlbumListBean$CategorysBeanXX;
.super Ljava/lang/Object;
.source "YXNovelDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$LikeAlbumListBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CategorysBeanXX"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$LikeAlbumListBean$CategorysBeanXX$ChildCategoryBeanXX;,
        Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$LikeAlbumListBean$CategorysBeanXX$CategoryBeanXX;
    }
.end annotation


# instance fields
.field public category:Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$LikeAlbumListBean$CategorysBeanXX$CategoryBeanXX;

.field public child_category:Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$LikeAlbumListBean$CategorysBeanXX$ChildCategoryBeanXX;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategory()Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$LikeAlbumListBean$CategorysBeanXX$CategoryBeanXX;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$LikeAlbumListBean$CategorysBeanXX;->category:Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$LikeAlbumListBean$CategorysBeanXX$CategoryBeanXX;

    return-object v0
.end method

.method public getChild_category()Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$LikeAlbumListBean$CategorysBeanXX$ChildCategoryBeanXX;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$LikeAlbumListBean$CategorysBeanXX;->child_category:Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$LikeAlbumListBean$CategorysBeanXX$ChildCategoryBeanXX;

    return-object v0
.end method

.method public setCategory(Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$LikeAlbumListBean$CategorysBeanXX$CategoryBeanXX;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$LikeAlbumListBean$CategorysBeanXX;->category:Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$LikeAlbumListBean$CategorysBeanXX$CategoryBeanXX;

    return-void
.end method

.method public setChild_category(Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$LikeAlbumListBean$CategorysBeanXX$ChildCategoryBeanXX;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$LikeAlbumListBean$CategorysBeanXX;->child_category:Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$LikeAlbumListBean$CategorysBeanXX$ChildCategoryBeanXX;

    return-void
.end method
