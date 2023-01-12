.class public Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean$ComicEpisodesBean$VipInfoBean;
.super Ljava/lang/Object;
.source "ComicDetailBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean$ComicEpisodesBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VipInfoBean"
.end annotation


# instance fields
.field public is_ticket:I

.field public is_vip:I

.field public ticket_price:I

.field public vip_price:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIs_ticket()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean$ComicEpisodesBean$VipInfoBean;->is_ticket:I

    return v0
.end method

.method public getIs_vip()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean$ComicEpisodesBean$VipInfoBean;->is_vip:I

    return v0
.end method

.method public getTicket_price()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean$ComicEpisodesBean$VipInfoBean;->ticket_price:I

    return v0
.end method

.method public getVip_price()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean$ComicEpisodesBean$VipInfoBean;->vip_price:I

    return v0
.end method

.method public setIs_ticket(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean$ComicEpisodesBean$VipInfoBean;->is_ticket:I

    return-void
.end method

.method public setIs_vip(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean$ComicEpisodesBean$VipInfoBean;->is_vip:I

    return-void
.end method

.method public setTicket_price(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean$ComicEpisodesBean$VipInfoBean;->ticket_price:I

    return-void
.end method

.method public setVip_price(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean$ComicEpisodesBean$VipInfoBean;->vip_price:I

    return-void
.end method
