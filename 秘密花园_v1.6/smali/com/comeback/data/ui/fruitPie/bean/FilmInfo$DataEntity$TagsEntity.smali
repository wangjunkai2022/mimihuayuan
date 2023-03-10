.class public Lcom/comeback/data/ui/fruitPie/bean/FilmInfo$DataEntity$TagsEntity;
.super Ljava/lang/Object;
.source "FilmInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/fruitPie/bean/FilmInfo$DataEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TagsEntity"
.end annotation


# instance fields
.field public tag_id:I

.field public tag_title:Ljava/lang/String;

.field public final synthetic this$1:Lcom/comeback/data/ui/fruitPie/bean/FilmInfo$DataEntity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/fruitPie/bean/FilmInfo$DataEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/bean/FilmInfo$DataEntity$TagsEntity;->this$1:Lcom/comeback/data/ui/fruitPie/bean/FilmInfo$DataEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTag_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fruitPie/bean/FilmInfo$DataEntity$TagsEntity;->tag_id:I

    return v0
.end method

.method public getTag_title()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/bean/FilmInfo$DataEntity$TagsEntity;->tag_title:Ljava/lang/String;

    return-object v0
.end method

.method public setTag_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fruitPie/bean/FilmInfo$DataEntity$TagsEntity;->tag_id:I

    return-void
.end method

.method public setTag_title(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/bean/FilmInfo$DataEntity$TagsEntity;->tag_title:Ljava/lang/String;

    return-void
.end method
