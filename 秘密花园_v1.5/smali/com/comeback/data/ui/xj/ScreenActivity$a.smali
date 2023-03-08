.class public Lcom/comeback/data/ui/xj/ScreenActivity$a;
.super Ljava/lang/Object;
.source "ScreenActivity.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/xj/ScreenActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/xj/ScreenActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/xj/ScreenActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xj/ScreenActivity$a;->a:Lcom/comeback/data/ui/xj/ScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 2
    instance-of v0, p1, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$CategoriesBean;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/xj/ScreenActivity$a;->a:Lcom/comeback/data/ui/xj/ScreenActivity;

    iget-object v0, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->d:[Ljava/lang/String;

    const/4 v1, 0x0

    check-cast p1, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$CategoriesBean;

    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$CategoriesBean;->getCateid()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    goto/16 :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$AreasBean;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/xj/ScreenActivity$a;->a:Lcom/comeback/data/ui/xj/ScreenActivity;

    iget-object v0, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->d:[Ljava/lang/String;

    const/4 v1, 0x1

    check-cast p1, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$AreasBean;

    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$AreasBean;->getAreaid()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    goto :goto_0

    .line 6
    :cond_1
    instance-of v0, p1, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$YearsBean;

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/comeback/data/ui/xj/ScreenActivity$a;->a:Lcom/comeback/data/ui/xj/ScreenActivity;

    iget-object v0, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->d:[Ljava/lang/String;

    const/4 v1, 0x2

    check-cast p1, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$YearsBean;

    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$YearsBean;->getYearid()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    goto :goto_0

    .line 8
    :cond_2
    instance-of v0, p1, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$DefinitionsBean;

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/comeback/data/ui/xj/ScreenActivity$a;->a:Lcom/comeback/data/ui/xj/ScreenActivity;

    iget-object v0, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->d:[Ljava/lang/String;

    const/4 v1, 0x3

    check-cast p1, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$DefinitionsBean;

    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$DefinitionsBean;->getKeyid()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    goto :goto_0

    .line 10
    :cond_3
    instance-of v0, p1, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$DurationsBean;

    if-eqz v0, :cond_4

    .line 11
    iget-object v0, p0, Lcom/comeback/data/ui/xj/ScreenActivity$a;->a:Lcom/comeback/data/ui/xj/ScreenActivity;

    iget-object v0, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->d:[Ljava/lang/String;

    const/4 v1, 0x4

    check-cast p1, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$DurationsBean;

    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$DurationsBean;->getKeyid()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    goto :goto_0

    .line 12
    :cond_4
    instance-of v0, p1, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$MosaicsBean;

    if-eqz v0, :cond_5

    .line 13
    iget-object v0, p0, Lcom/comeback/data/ui/xj/ScreenActivity$a;->a:Lcom/comeback/data/ui/xj/ScreenActivity;

    iget-object v0, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->d:[Ljava/lang/String;

    const/4 v1, 0x5

    check-cast p1, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$MosaicsBean;

    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$MosaicsBean;->getKeyid()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    goto :goto_0

    .line 14
    :cond_5
    instance-of v0, p1, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$LangvoicesBean;

    if-eqz v0, :cond_6

    .line 15
    iget-object v0, p0, Lcom/comeback/data/ui/xj/ScreenActivity$a;->a:Lcom/comeback/data/ui/xj/ScreenActivity;

    iget-object v0, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->d:[Ljava/lang/String;

    const/4 v1, 0x6

    check-cast p1, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$LangvoicesBean;

    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$LangvoicesBean;->getKeyid()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    goto :goto_0

    .line 16
    :cond_6
    instance-of v0, p1, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$OrdersBean;

    if-eqz v0, :cond_7

    .line 17
    iget-object v0, p0, Lcom/comeback/data/ui/xj/ScreenActivity$a;->a:Lcom/comeback/data/ui/xj/ScreenActivity;

    iget-object v0, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->d:[Ljava/lang/String;

    const/4 v1, 0x7

    check-cast p1, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$OrdersBean;

    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$OrdersBean;->getKeyid()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    .line 18
    :goto_0
    iget-object p1, p0, Lcom/comeback/data/ui/xj/ScreenActivity$a;->a:Lcom/comeback/data/ui/xj/ScreenActivity;

    invoke-static {p1}, Lcom/comeback/data/ui/xj/ScreenActivity;->r(Lcom/comeback/data/ui/xj/ScreenActivity;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h()Z

    nop

    :cond_7
    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method
