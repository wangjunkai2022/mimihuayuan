.class public Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean$CategorysBeanX;
.super Ljava/lang/Object;
.source "YXNovelDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CategorysBeanX"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean$CategorysBeanX$ChildCategoryBeanX;,
        Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean$CategorysBeanX$CategoryBeanX;
    }
.end annotation


# instance fields
.field public category:Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean$CategorysBeanX$CategoryBeanX;

.field public child_category:Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean$CategorysBeanX$ChildCategoryBeanX;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategory()Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean$CategorysBeanX$CategoryBeanX;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean$CategorysBeanX;->category:Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean$CategorysBeanX$CategoryBeanX;

    return-object v0
.end method

.method public getChild_category()Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean$CategorysBeanX$ChildCategoryBeanX;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean$CategorysBeanX;->child_category:Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean$CategorysBeanX$ChildCategoryBeanX;

    return-object v0
.end method

.method public setCategory(Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean$CategorysBeanX$CategoryBeanX;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean$CategorysBeanX;->category:Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean$CategorysBeanX$CategoryBeanX;

    return-void
.end method

.method public setChild_category(Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean$CategorysBeanX$ChildCategoryBeanX;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean$CategorysBeanX;->child_category:Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean$CategorysBeanX$ChildCategoryBeanX;

    return-void
.end method
