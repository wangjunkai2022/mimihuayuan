.class public Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$CategorysBean;
.super Ljava/lang/Object;
.source "YXNovelDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CategorysBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$CategorysBean$ChildCategoryBean;,
        Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$CategorysBean$CategoryBean;
    }
.end annotation


# instance fields
.field public category:Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$CategorysBean$CategoryBean;

.field public child_category:Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$CategorysBean$ChildCategoryBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategory()Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$CategorysBean$CategoryBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$CategorysBean;->category:Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$CategorysBean$CategoryBean;

    return-object v0
.end method

.method public getChild_category()Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$CategorysBean$ChildCategoryBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$CategorysBean;->child_category:Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$CategorysBean$ChildCategoryBean;

    return-object v0
.end method

.method public setCategory(Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$CategorysBean$CategoryBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$CategorysBean;->category:Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$CategorysBean$CategoryBean;

    return-void
.end method

.method public setChild_category(Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$CategorysBean$ChildCategoryBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$CategorysBean;->child_category:Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$CategorysBean$ChildCategoryBean;

    return-void
.end method
