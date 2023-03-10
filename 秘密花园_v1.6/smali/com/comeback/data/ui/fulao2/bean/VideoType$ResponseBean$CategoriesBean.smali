.class public Lcom/comeback/data/ui/fulao2/bean/VideoType$ResponseBean$CategoriesBean;
.super Ljava/lang/Object;
.source "VideoType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/fulao2/bean/VideoType$ResponseBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CategoriesBean"
.end annotation


# instance fields
.field public category_id:I

.field public category_image:Ljava/lang/String;

.field public category_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategory_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fulao2/bean/VideoType$ResponseBean$CategoriesBean;->category_id:I

    return v0
.end method

.method public getCategory_image()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/bean/VideoType$ResponseBean$CategoriesBean;->category_image:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/bean/VideoType$ResponseBean$CategoriesBean;->category_name:Ljava/lang/String;

    return-object v0
.end method

.method public setCategory_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fulao2/bean/VideoType$ResponseBean$CategoriesBean;->category_id:I

    return-void
.end method

.method public setCategory_image(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fulao2/bean/VideoType$ResponseBean$CategoriesBean;->category_image:Ljava/lang/String;

    return-void
.end method

.method public setCategory_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fulao2/bean/VideoType$ResponseBean$CategoriesBean;->category_name:Ljava/lang/String;

    return-void
.end method
