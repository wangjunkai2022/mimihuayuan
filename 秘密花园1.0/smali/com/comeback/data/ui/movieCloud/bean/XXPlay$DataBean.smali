.class public Lcom/comeback/data/ui/movieCloud/bean/XXPlay$DataBean;
.super Ljava/lang/Object;
.source "XXPlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/movieCloud/bean/XXPlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/movieCloud/bean/XXPlay$DataBean$VodrowBean;
    }
.end annotation


# instance fields
.field public vodrow:Lcom/comeback/data/ui/movieCloud/bean/XXPlay$DataBean$VodrowBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getVodrow()Lcom/comeback/data/ui/movieCloud/bean/XXPlay$DataBean$VodrowBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/movieCloud/bean/XXPlay$DataBean;->vodrow:Lcom/comeback/data/ui/movieCloud/bean/XXPlay$DataBean$VodrowBean;

    return-object v0
.end method

.method public setVodrow(Lcom/comeback/data/ui/movieCloud/bean/XXPlay$DataBean$VodrowBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/movieCloud/bean/XXPlay$DataBean;->vodrow:Lcom/comeback/data/ui/movieCloud/bean/XXPlay$DataBean$VodrowBean;

    return-void
.end method
