.class public Lcom/comeback/data/ui/movieCloud/bean/XXList$DataBean$VodrowsBean$PlaylistBean;
.super Ljava/lang/Object;
.source "XXList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/movieCloud/bean/XXList$DataBean$VodrowsBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaylistBean"
.end annotation


# instance fields
.field public play_name:Ljava/lang/String;

.field public playindex:I

.field public view_price:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlay_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/movieCloud/bean/XXList$DataBean$VodrowsBean$PlaylistBean;->play_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayindex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/movieCloud/bean/XXList$DataBean$VodrowsBean$PlaylistBean;->playindex:I

    return v0
.end method

.method public getView_price()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/movieCloud/bean/XXList$DataBean$VodrowsBean$PlaylistBean;->view_price:I

    return v0
.end method

.method public setPlay_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/movieCloud/bean/XXList$DataBean$VodrowsBean$PlaylistBean;->play_name:Ljava/lang/String;

    return-void
.end method

.method public setPlayindex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/movieCloud/bean/XXList$DataBean$VodrowsBean$PlaylistBean;->playindex:I

    return-void
.end method

.method public setView_price(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/movieCloud/bean/XXList$DataBean$VodrowsBean$PlaylistBean;->view_price:I

    return-void
.end method
