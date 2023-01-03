.class public Lcom/comeback/data/ui/km2/AreaChooseActivity;
.super Lcom/comeback/data/base/BaseVRefreshActivity;
.source "AreaChooseActivity.java"


# static fields
.field public static f:Lcom/comeback/data/ui/km2/bean/AreaBean;


# instance fields
.field public e:Lcom/comeback/data/ui/km2/TagAdapter$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseVRefreshActivity;-><init>()V

    .line 2
    new-instance v0, Lcom/comeback/data/ui/km2/AreaChooseActivity$a;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/km2/AreaChooseActivity$a;-><init>(Lcom/comeback/data/ui/km2/AreaChooseActivity;)V

    iput-object v0, p0, Lcom/comeback/data/ui/km2/AreaChooseActivity;->e:Lcom/comeback/data/ui/km2/TagAdapter$b;

    return-void
.end method

.method public static synthetic u(Lcom/comeback/data/ui/km2/AreaChooseActivity;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/base/BaseVRefreshActivity;->r()V

    return-void
.end method

.method public static synthetic v(Lcom/comeback/data/ui/km2/AreaChooseActivity;Lcom/comeback/data/ui/km2/bean/AreaBean;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/km2/AreaChooseActivity;->x(Lcom/comeback/data/ui/km2/bean/AreaBean;)V

    return-void
.end method


# virtual methods
.method public e()V
    .locals 3

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->j(I)V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v1, Lf/e/a/j/x/a;

    invoke-direct {v1, p0}, Lf/e/a/j/x/a;-><init>(Lcom/comeback/data/ui/km2/AreaChooseActivity;)V

    .line 3
    iput-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a0:Lf/j/a/a/l/d;

    .line 4
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v1, Lf/e/a/j/x/b;

    invoke-direct {v1, p0}, Lf/e/a/j/x/b;-><init>(Lcom/comeback/data/ui/km2/AreaChooseActivity;)V

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v(Lf/j/a/a/l/b;)Lf/j/a/a/f/i;

    .line 5
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/comeback/data/base/BaseRefreshActivity;->mRvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    const/16 v1, 0x64

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 8
    new-instance v0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;

    invoke-direct {v0, p0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;-><init>(Landroid/content/Context;)V

    .line 9
    iget-object v1, p0, Lcom/comeback/data/base/BaseRefreshActivity;->mRvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 10
    new-instance v1, Lcom/alibaba/android/vlayout/DelegateAdapter;

    invoke-direct {v1, v0, v2}, Lcom/alibaba/android/vlayout/DelegateAdapter;-><init>(Lcom/alibaba/android/vlayout/VirtualLayoutManager;Z)V

    iput-object v1, p0, Lcom/comeback/data/base/BaseVRefreshActivity;->d:Lcom/alibaba/android/vlayout/DelegateAdapter;

    .line 11
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->mRvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 12
    sget-object v0, Lcom/comeback/data/ui/km2/AreaChooseActivity;->f:Lcom/comeback/data/ui/km2/bean/AreaBean;

    if-nez v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h()Z

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/km2/AreaChooseActivity;->x(Lcom/comeback/data/ui/km2/bean/AreaBean;)V

    :goto_0
    return-void
.end method

.method public p(I)V
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "WQMOAQ=="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0u70gNHf3Ivx"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :catch_0
    invoke-static {v0}, Lf/e/a/j/x/j/a;->c(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v0

    .line 4
    invoke-static {}, Lf/e/a/j/x/j/d;->a()Lf/e/a/j/x/j/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lf/e/a/j/x/j/b;->f(Ljava/util/Map;)Lm/e;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/comeback/data/ui/km2/AreaChooseActivity$b;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/km2/AreaChooseActivity$b;-><init>(Lcom/comeback/data/ui/km2/AreaChooseActivity;I)V

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void
.end method

.method public final w(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$CityEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lf/a/a/a/l/i;

    invoke-direct {v0}, Lf/a/a/a/l/i;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/comeback/data/base/BaseVRefreshActivity;->d:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v2, Lcom/comeback/data/ui/km2/AAdapter;

    invoke-direct {v2, p0, p1, v0}, Lcom/comeback/data/ui/km2/AAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Lf/a/a/a/a;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    .line 3
    new-instance p1, Lf/a/a/a/l/g;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lf/a/a/a/l/g;-><init>(I)V

    const/16 v0, 0xf

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1, v0, v1}, Lf/a/a/a/l/j;->q(IIII)V

    .line 5
    invoke-virtual {p1, v0}, Lf/a/a/a/l/g;->D(I)V

    .line 6
    invoke-virtual {p1, v0}, Lf/a/a/a/l/g;->C(I)V

    .line 7
    iput-boolean v1, p1, Lf/a/a/a/l/g;->s:Z

    .line 8
    iget-object v0, p0, Lcom/comeback/data/base/BaseVRefreshActivity;->d:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v1, Lcom/comeback/data/ui/km2/TagAdapter;

    iget-object v2, p0, Lcom/comeback/data/ui/km2/AreaChooseActivity;->e:Lcom/comeback/data/ui/km2/TagAdapter$b;

    invoke-direct {v1, p0, p2, p1, v2}, Lcom/comeback/data/ui/km2/TagAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;Lcom/comeback/data/ui/km2/TagAdapter$b;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    return-void
.end method

.method public final x(Lcom/comeback/data/ui/km2/bean/AreaBean;)V
    .locals 2

    .line 1
    sput-object p1, Lcom/comeback/data/ui/km2/AreaChooseActivity;->f:Lcom/comeback/data/ui/km2/bean/AreaBean;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    .line 4
    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t(Z)Lf/j/a/a/f/i;

    .line 5
    invoke-virtual {p1}, Lcom/comeback/data/ui/km2/bean/AreaBean;->getData()Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity;->getAreaList()Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity;

    move-result-object p1

    const-string v0, "0OHOjfzb3Kz9g4zl"

    .line 6
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity;->getHot()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/ui/km2/AreaChooseActivity;->w(Ljava/lang/String;Ljava/util/List;)V

    const-string v0, "dg=="

    .line 7
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity;->getTotal()Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$TotalEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$TotalEntity;->getA()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/ui/km2/AreaChooseActivity;->w(Ljava/lang/String;Ljava/util/List;)V

    const-string v0, "dQ=="

    .line 8
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity;->getTotal()Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$TotalEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$TotalEntity;->getB()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/ui/km2/AreaChooseActivity;->w(Ljava/lang/String;Ljava/util/List;)V

    const-string v0, "dA=="

    .line 9
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity;->getTotal()Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$TotalEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$TotalEntity;->getC()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/ui/km2/AreaChooseActivity;->w(Ljava/lang/String;Ljava/util/List;)V

    const-string v0, "cw=="

    .line 10
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity;->getTotal()Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$TotalEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$TotalEntity;->getD()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/ui/km2/AreaChooseActivity;->w(Ljava/lang/String;Ljava/util/List;)V

    const-string v0, "cg=="

    .line 11
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity;->getTotal()Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$TotalEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$TotalEntity;->getE()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/ui/km2/AreaChooseActivity;->w(Ljava/lang/String;Ljava/util/List;)V

    const-string v0, "cQ=="

    .line 12
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity;->getTotal()Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$TotalEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$TotalEntity;->getF()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/ui/km2/AreaChooseActivity;->w(Ljava/lang/String;Ljava/util/List;)V

    const-string v0, "cA=="

    .line 13
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity;->getTotal()Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$TotalEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$TotalEntity;->getG()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/ui/km2/AreaChooseActivity;->w(Ljava/lang/String;Ljava/util/List;)V

    const-string v0, "fw=="

    .line 14
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity;->getTotal()Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$TotalEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$TotalEntity;->getH()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/ui/km2/AreaChooseActivity;->w(Ljava/lang/String;Ljava/util/List;)V

    const-string v0, "fQ=="

    .line 15
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity;->getTotal()Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$TotalEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$TotalEntity;->getJ()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/ui/km2/AreaChooseActivity;->w(Ljava/lang/String;Ljava/util/List;)V

    const-string v0, "fA=="

    .line 16
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity;->getTotal()Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$TotalEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$TotalEntity;->getK()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/ui/km2/AreaChooseActivity;->w(Ljava/lang/String;Ljava/util/List;)V

    const-string v0, "ew=="

    .line 17
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity;->getTotal()Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$TotalEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$TotalEntity;->getL()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/ui/km2/AreaChooseActivity;->w(Ljava/lang/String;Ljava/util/List;)V

    const-string v0, "eg=="

    .line 18
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity;->getTotal()Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$TotalEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$TotalEntity;->getM()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/ui/km2/AreaChooseActivity;->w(Ljava/lang/String;Ljava/util/List;)V

    const-string v0, "eQ=="

    .line 19
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity;->getTotal()Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$TotalEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$TotalEntity;->getN()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/ui/km2/AreaChooseActivity;->w(Ljava/lang/String;Ljava/util/List;)V

    const-string v0, "Zw=="

    .line 20
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity;->getTotal()Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$TotalEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$TotalEntity;->getP()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/ui/km2/AreaChooseActivity;->w(Ljava/lang/String;Ljava/util/List;)V

    const-string v0, "Zg=="

    .line 21
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity;->getTotal()Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$TotalEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$TotalEntity;->getQ()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/ui/km2/AreaChooseActivity;->w(Ljava/lang/String;Ljava/util/List;)V

    const-string v0, "ZQ=="

    .line 22
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity;->getTotal()Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$TotalEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$TotalEntity;->getR()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/ui/km2/AreaChooseActivity;->w(Ljava/lang/String;Ljava/util/List;)V

    const-string v0, "ZA=="

    .line 23
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity;->getTotal()Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$TotalEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$TotalEntity;->getS()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/ui/km2/AreaChooseActivity;->w(Ljava/lang/String;Ljava/util/List;)V

    const-string v0, "Yw=="

    .line 24
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity;->getTotal()Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$TotalEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$TotalEntity;->getT()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/ui/km2/AreaChooseActivity;->w(Ljava/lang/String;Ljava/util/List;)V

    const-string v0, "YA=="

    .line 25
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity;->getTotal()Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$TotalEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$TotalEntity;->getW()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/ui/km2/AreaChooseActivity;->w(Ljava/lang/String;Ljava/util/List;)V

    const-string v0, "bw=="

    .line 26
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity;->getTotal()Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$TotalEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$TotalEntity;->getX()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/ui/km2/AreaChooseActivity;->w(Ljava/lang/String;Ljava/util/List;)V

    const-string v0, "bg=="

    .line 27
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity;->getTotal()Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$TotalEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$TotalEntity;->getY()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/ui/km2/AreaChooseActivity;->w(Ljava/lang/String;Ljava/util/List;)V

    const-string v0, "bQ=="

    .line 28
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity;->getTotal()Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$TotalEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$TotalEntity;->getZ()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/comeback/data/ui/km2/AreaChooseActivity;->w(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public synthetic y(Lf/j/a/a/f/i;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lcom/comeback/data/base/BaseRefreshActivity;->b:I

    add-int/lit8 p1, p1, 0x1

    .line 2
    iput p1, p0, Lcom/comeback/data/base/BaseRefreshActivity;->b:I

    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/km2/AreaChooseActivity;->p(I)V

    return-void
.end method

.method public synthetic z(Lf/j/a/a/f/i;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/comeback/data/base/BaseRefreshActivity;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/comeback/data/base/BaseRefreshActivity;->b:I

    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/km2/AreaChooseActivity;->p(I)V

    return-void
.end method
