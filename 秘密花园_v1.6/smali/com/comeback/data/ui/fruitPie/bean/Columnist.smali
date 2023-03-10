.class public Lcom/comeback/data/ui/fruitPie/bean/Columnist;
.super Lf/e/a/f/k;
.source "Columnist.java"


# instance fields
.field public columnist_id:I

.field public columnist_img:Ljava/lang/String;

.field public columnist_name:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public library_count:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/k;-><init>()V

    return-void
.end method


# virtual methods
.method public getColumnist_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fruitPie/bean/Columnist;->columnist_id:I

    return v0
.end method

.method public getColumnist_img()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/bean/Columnist;->columnist_img:Ljava/lang/String;

    return-object v0
.end method

.method public getColumnist_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/bean/Columnist;->columnist_name:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/bean/Columnist;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getLibrary_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fruitPie/bean/Columnist;->library_count:I

    return v0
.end method

.method public setColumnist_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fruitPie/bean/Columnist;->columnist_id:I

    return-void
.end method

.method public setColumnist_img(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/bean/Columnist;->columnist_img:Ljava/lang/String;

    return-void
.end method

.method public setColumnist_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/bean/Columnist;->columnist_name:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/bean/Columnist;->description:Ljava/lang/String;

    return-void
.end method

.method public setLibrary_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fruitPie/bean/Columnist;->library_count:I

    return-void
.end method
