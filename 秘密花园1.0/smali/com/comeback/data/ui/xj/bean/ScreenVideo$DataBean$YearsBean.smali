.class public Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$YearsBean;
.super Ljava/lang/Object;
.source "ScreenVideo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "YearsBean"
.end annotation


# instance fields
.field public sortnum:Ljava/lang/String;

.field public yearid:Ljava/lang/String;

.field public yearname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSortnum()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$YearsBean;->sortnum:Ljava/lang/String;

    return-object v0
.end method

.method public getYearid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$YearsBean;->yearid:Ljava/lang/String;

    return-object v0
.end method

.method public getYearname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$YearsBean;->yearname:Ljava/lang/String;

    return-object v0
.end method

.method public setSortnum(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$YearsBean;->sortnum:Ljava/lang/String;

    return-void
.end method

.method public setYearid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$YearsBean;->yearid:Ljava/lang/String;

    return-void
.end method

.method public setYearname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$YearsBean;->yearname:Ljava/lang/String;

    return-void
.end method
