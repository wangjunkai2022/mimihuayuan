.class public Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$CategoriesBean;
.super Ljava/lang/Object;
.source "ScreenVideo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CategoriesBean"
.end annotation


# instance fields
.field public cateid:Ljava/lang/String;

.field public catename:Ljava/lang/String;

.field public parentid:Ljava/lang/String;

.field public uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCateid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$CategoriesBean;->cateid:Ljava/lang/String;

    return-object v0
.end method

.method public getCatename()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$CategoriesBean;->catename:Ljava/lang/String;

    return-object v0
.end method

.method public getParentid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$CategoriesBean;->parentid:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$CategoriesBean;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public setCateid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$CategoriesBean;->cateid:Ljava/lang/String;

    return-void
.end method

.method public setCatename(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$CategoriesBean;->catename:Ljava/lang/String;

    return-void
.end method

.method public setParentid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$CategoriesBean;->parentid:Ljava/lang/String;

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$CategoriesBean;->uuid:Ljava/lang/String;

    return-void
.end method
